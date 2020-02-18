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
// AWSS3Client.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum S3ClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension S3Error {
    func isRetriable() -> Bool {
        return false
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? S3Error {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the S3 service.
 */
public struct AWSS3Client: S3ClientProtocol {
    let httpClient: HTTPClient
    let dataHttpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider

    let abortMultipartUploadOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let completeMultipartUploadOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let copyObjectOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let createBucketOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let createMultipartUploadOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketAnalyticsConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketCorsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketEncryptionOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketInventoryConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketLifecycleOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketMetricsConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketPolicyOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketReplicationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketTaggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketWebsiteOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteObjectOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteObjectTaggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteObjectsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deletePublicAccessBlockOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketAccelerateConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketAclOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketAnalyticsConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketCorsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketEncryptionOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketInventoryConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLifecycleOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLifecycleConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLocationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLoggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketMetricsConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketNotificationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketNotificationConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketPolicyOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketPolicyStatusOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketReplicationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketRequestPaymentOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketTaggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketVersioningOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketWebsiteOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectAclOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectLegalHoldOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectLockConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectRetentionOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectTaggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectTorrentOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getPublicAccessBlockOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let headBucketOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let headObjectOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketAnalyticsConfigurationsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketInventoryConfigurationsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketMetricsConfigurationsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listMultipartUploadsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listObjectVersionsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listObjectsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listObjectsV2OperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listPartsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketAccelerateConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketAclOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketAnalyticsConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketCorsOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketEncryptionOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketInventoryConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketLifecycleOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketLifecycleConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketLoggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketMetricsConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketNotificationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketNotificationConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketPolicyOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketReplicationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketRequestPaymentOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketTaggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketVersioningOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketWebsiteOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectAclOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectLegalHoldOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectLockConfigurationOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectRetentionOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectTaggingOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putPublicAccessBlockOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let restoreObjectOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let selectObjectContentOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let uploadPartOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let uploadPartCopyOperationReporting: StandardSmokeAWSOperationReporting<S3ModelOperations>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                endpointHostName: String = "s3.amazonaws.com",
                endpointPort: Int = 443,
                service: String = "s3",
                contentType: String = "application/x-amz-rest-xml",
                target: String? = nil,
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<S3ModelOperations>
                    = SmokeAWSClientReportingConfiguration<S3ModelOperations>() ) {
        let clientDelegate = XMLAWSHttpClientDelegate<S3Error>()

        let clientDelegateForDataHttpClient = DataAWSHttpClientDelegate<S3Error>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.dataHttpClient = HTTPClient(endpointHostName: endpointHostName,
                                          endpointPort: endpointPort,
                                          contentType: contentType,
                                          clientDelegate: clientDelegateForDataHttpClient,
                                          connectionTimeoutSeconds: connectionTimeoutSeconds,
                                          eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }

        self.abortMultipartUploadOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .abortMultipartUpload, configuration: reportingConfiguration)
        self.completeMultipartUploadOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .completeMultipartUpload, configuration: reportingConfiguration)
        self.copyObjectOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .copyObject, configuration: reportingConfiguration)
        self.createBucketOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .createBucket, configuration: reportingConfiguration)
        self.createMultipartUploadOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .createMultipartUpload, configuration: reportingConfiguration)
        self.deleteBucketOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucket, configuration: reportingConfiguration)
        self.deleteBucketAnalyticsConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketAnalyticsConfiguration, configuration: reportingConfiguration)
        self.deleteBucketCorsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketCors, configuration: reportingConfiguration)
        self.deleteBucketEncryptionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketEncryption, configuration: reportingConfiguration)
        self.deleteBucketInventoryConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketInventoryConfiguration, configuration: reportingConfiguration)
        self.deleteBucketLifecycleOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketLifecycle, configuration: reportingConfiguration)
        self.deleteBucketMetricsConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketMetricsConfiguration, configuration: reportingConfiguration)
        self.deleteBucketPolicyOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketPolicy, configuration: reportingConfiguration)
        self.deleteBucketReplicationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketReplication, configuration: reportingConfiguration)
        self.deleteBucketTaggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketTagging, configuration: reportingConfiguration)
        self.deleteBucketWebsiteOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteBucketWebsite, configuration: reportingConfiguration)
        self.deleteObjectOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteObject, configuration: reportingConfiguration)
        self.deleteObjectTaggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteObjectTagging, configuration: reportingConfiguration)
        self.deleteObjectsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deleteObjects, configuration: reportingConfiguration)
        self.deletePublicAccessBlockOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .deletePublicAccessBlock, configuration: reportingConfiguration)
        self.getBucketAccelerateConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketAccelerateConfiguration, configuration: reportingConfiguration)
        self.getBucketAclOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketAcl, configuration: reportingConfiguration)
        self.getBucketAnalyticsConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketAnalyticsConfiguration, configuration: reportingConfiguration)
        self.getBucketCorsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketCors, configuration: reportingConfiguration)
        self.getBucketEncryptionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketEncryption, configuration: reportingConfiguration)
        self.getBucketInventoryConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketInventoryConfiguration, configuration: reportingConfiguration)
        self.getBucketLifecycleOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketLifecycle, configuration: reportingConfiguration)
        self.getBucketLifecycleConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketLifecycleConfiguration, configuration: reportingConfiguration)
        self.getBucketLocationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketLocation, configuration: reportingConfiguration)
        self.getBucketLoggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketLogging, configuration: reportingConfiguration)
        self.getBucketMetricsConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketMetricsConfiguration, configuration: reportingConfiguration)
        self.getBucketNotificationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketNotification, configuration: reportingConfiguration)
        self.getBucketNotificationConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketNotificationConfiguration, configuration: reportingConfiguration)
        self.getBucketPolicyOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketPolicy, configuration: reportingConfiguration)
        self.getBucketPolicyStatusOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketPolicyStatus, configuration: reportingConfiguration)
        self.getBucketReplicationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketReplication, configuration: reportingConfiguration)
        self.getBucketRequestPaymentOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketRequestPayment, configuration: reportingConfiguration)
        self.getBucketTaggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketTagging, configuration: reportingConfiguration)
        self.getBucketVersioningOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketVersioning, configuration: reportingConfiguration)
        self.getBucketWebsiteOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getBucketWebsite, configuration: reportingConfiguration)
        self.getObjectOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObject, configuration: reportingConfiguration)
        self.getObjectAclOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObjectAcl, configuration: reportingConfiguration)
        self.getObjectLegalHoldOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObjectLegalHold, configuration: reportingConfiguration)
        self.getObjectLockConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObjectLockConfiguration, configuration: reportingConfiguration)
        self.getObjectRetentionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObjectRetention, configuration: reportingConfiguration)
        self.getObjectTaggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObjectTagging, configuration: reportingConfiguration)
        self.getObjectTorrentOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getObjectTorrent, configuration: reportingConfiguration)
        self.getPublicAccessBlockOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .getPublicAccessBlock, configuration: reportingConfiguration)
        self.headBucketOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .headBucket, configuration: reportingConfiguration)
        self.headObjectOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .headObject, configuration: reportingConfiguration)
        self.listBucketAnalyticsConfigurationsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listBucketAnalyticsConfigurations, configuration: reportingConfiguration)
        self.listBucketInventoryConfigurationsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listBucketInventoryConfigurations, configuration: reportingConfiguration)
        self.listBucketMetricsConfigurationsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listBucketMetricsConfigurations, configuration: reportingConfiguration)
        self.listBucketsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listBuckets, configuration: reportingConfiguration)
        self.listMultipartUploadsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listMultipartUploads, configuration: reportingConfiguration)
        self.listObjectVersionsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listObjectVersions, configuration: reportingConfiguration)
        self.listObjectsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listObjects, configuration: reportingConfiguration)
        self.listObjectsV2OperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listObjectsV2, configuration: reportingConfiguration)
        self.listPartsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .listParts, configuration: reportingConfiguration)
        self.putBucketAccelerateConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketAccelerateConfiguration, configuration: reportingConfiguration)
        self.putBucketAclOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketAcl, configuration: reportingConfiguration)
        self.putBucketAnalyticsConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketAnalyticsConfiguration, configuration: reportingConfiguration)
        self.putBucketCorsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketCors, configuration: reportingConfiguration)
        self.putBucketEncryptionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketEncryption, configuration: reportingConfiguration)
        self.putBucketInventoryConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketInventoryConfiguration, configuration: reportingConfiguration)
        self.putBucketLifecycleOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketLifecycle, configuration: reportingConfiguration)
        self.putBucketLifecycleConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketLifecycleConfiguration, configuration: reportingConfiguration)
        self.putBucketLoggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketLogging, configuration: reportingConfiguration)
        self.putBucketMetricsConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketMetricsConfiguration, configuration: reportingConfiguration)
        self.putBucketNotificationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketNotification, configuration: reportingConfiguration)
        self.putBucketNotificationConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketNotificationConfiguration, configuration: reportingConfiguration)
        self.putBucketPolicyOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketPolicy, configuration: reportingConfiguration)
        self.putBucketReplicationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketReplication, configuration: reportingConfiguration)
        self.putBucketRequestPaymentOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketRequestPayment, configuration: reportingConfiguration)
        self.putBucketTaggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketTagging, configuration: reportingConfiguration)
        self.putBucketVersioningOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketVersioning, configuration: reportingConfiguration)
        self.putBucketWebsiteOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putBucketWebsite, configuration: reportingConfiguration)
        self.putObjectOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putObject, configuration: reportingConfiguration)
        self.putObjectAclOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putObjectAcl, configuration: reportingConfiguration)
        self.putObjectLegalHoldOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putObjectLegalHold, configuration: reportingConfiguration)
        self.putObjectLockConfigurationOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putObjectLockConfiguration, configuration: reportingConfiguration)
        self.putObjectRetentionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putObjectRetention, configuration: reportingConfiguration)
        self.putObjectTaggingOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putObjectTagging, configuration: reportingConfiguration)
        self.putPublicAccessBlockOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .putPublicAccessBlock, configuration: reportingConfiguration)
        self.restoreObjectOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .restoreObject, configuration: reportingConfiguration)
        self.selectObjectContentOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .selectObjectContent, configuration: reportingConfiguration)
        self.uploadPartOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .uploadPart, configuration: reportingConfiguration)
        self.uploadPartCopyOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSS3Client", operation: .uploadPartCopy, configuration: reportingConfiguration)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
        dataHttpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
        dataHttpClient.wait()
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.abortMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: abortMultipartUploadOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = AbortMultipartUploadOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.abortMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: abortMultipartUploadOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = AbortMultipartUploadOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.completeMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: completeMultipartUploadOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CompleteMultipartUploadOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.completeMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: completeMultipartUploadOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CompleteMultipartUploadOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.copyObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: copyObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CopyObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.copyObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: copyObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CopyObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: createBucketOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CreateBucketOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: createBucketOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CreateBucketOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: createMultipartUploadOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CreateMultipartUploadOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?uploads",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: createMultipartUploadOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CreateMultipartUploadOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?uploads",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketAnalyticsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketAnalyticsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketCorsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketCorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketCorsRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketCorsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketCorsOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketEncryptionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketEncryptionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketEncryptionRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketEncryptionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketEncryptionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketInventoryConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketInventoryConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketLifecycleOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketLifecycleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketLifecycleRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketLifecycleOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketLifecycleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketMetricsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketMetricsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketPolicyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketPolicyRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketPolicyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketReplicationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketReplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketReplicationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketReplicationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketReplicationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketTaggingRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketTaggingOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketWebsiteOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketWebsiteOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketWebsiteRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteBucketWebsiteOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteBucketWebsiteOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteObjectTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteObjectTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteObjectTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteObjectTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteObjectsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteObjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?delete",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteObjectsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeleteObjectsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?delete",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deletePublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deletePublicAccessBlockOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeletePublicAccessBlockOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeletePublicAccessBlockRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deletePublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deletePublicAccessBlockOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = DeletePublicAccessBlockOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .DELETE,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketAccelerateConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketAccelerateConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketAclOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketAnalyticsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketAnalyticsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketCorsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketCorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketCorsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketCorsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketEncryptionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketEncryptionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketEncryptionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketEncryptionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketInventoryConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketInventoryConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLifecycleOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLifecycleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLifecycleOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLifecycleOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLifecycleConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLifecycleConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLocation.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLocationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLocationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?location",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLocation.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLocationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLocationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?location",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLoggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLoggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketLoggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketLoggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketMetricsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketMetricsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketNotificationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketNotificationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketNotificationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketNotificationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketNotificationConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketNotificationConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketPolicyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketPolicyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketPolicyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicyStatus.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketPolicyStatusOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketPolicyStatusOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policyStatus",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicyStatus.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketPolicyStatusOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketPolicyStatusOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policyStatus",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketReplicationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketReplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketReplicationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketReplicationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketRequestPaymentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketRequestPaymentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketVersioningOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketVersioningOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketVersioningOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketVersioningOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketWebsiteOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketWebsiteOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getBucketWebsiteOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetBucketWebsiteOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectAclOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectLegalHoldOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectLegalHoldOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectLockConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectLockConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectRetentionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectRetentionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectRetentionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectRetentionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTorrent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectTorrentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectTorrentOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?torrent",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTorrent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getObjectTorrentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetObjectTorrentOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?torrent",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getPublicAccessBlockOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getPublicAccessBlockOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = GetPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: headBucketOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = HeadBucketOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .HEAD,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: headBucketOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = HeadBucketOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .HEAD,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: headObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = HeadObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .HEAD,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: headObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = HeadObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .HEAD,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketAnalyticsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketAnalyticsConfigurationsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListBucketAnalyticsConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketAnalyticsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketAnalyticsConfigurationsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListBucketAnalyticsConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketInventoryConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketInventoryConfigurationsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListBucketInventoryConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketInventoryConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketInventoryConfigurationsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListBucketInventoryConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketMetricsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketMetricsConfigurationsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListBucketMetricsConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketMetricsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketMetricsConfigurationsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListBucketMetricsConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBuckets.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = NoHTTPRequestInput()

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            reporting: InvocationReportingType) throws -> S3Model.ListBucketsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBuckets.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listBucketsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = NoHTTPRequestInput()

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listMultipartUploads.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listMultipartUploadsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListMultipartUploadsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?uploads",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listMultipartUploads.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listMultipartUploadsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListMultipartUploadsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?uploads",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectVersions.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listObjectVersionsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListObjectVersionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectVersions.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listObjectVersionsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListObjectVersionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versions",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listObjectsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListObjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listObjectsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListObjectsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectsV2.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listObjectsV2OperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListObjectsV2OperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?list-type=2",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectsV2.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listObjectsV2OperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListObjectsV2OperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?list-type=2",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listParts.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listPartsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListPartsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listParts.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listPartsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ListPartsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketAccelerateConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAccelerateConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketAccelerateConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAclRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketAclOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketAnalyticsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketAnalyticsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketCorsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketCorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketCorsRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketCorsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketCorsOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketEncryptionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketEncryptionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketEncryptionRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketEncryptionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketEncryptionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketInventoryConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketInventoryConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketLifecycleOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketLifecycleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketLifecycleOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketLifecycleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketLifecycleConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketLifecycleConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketLoggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketLoggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLoggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLoggingRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketLoggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketLoggingOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketMetricsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketMetricsConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketNotificationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketNotificationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketNotificationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketNotificationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketNotificationConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketNotificationConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketPolicyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketPolicyRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketPolicyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketReplicationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketReplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketReplicationRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketReplicationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketReplicationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketRequestPaymentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPaymentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketRequestPaymentRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketRequestPaymentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketTaggingRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketTaggingOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketVersioningOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketVersioningOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioningSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketVersioningRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketVersioningOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketVersioningOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketWebsiteOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketWebsiteOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketWebsiteRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putBucketWebsiteOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutBucketWebsiteOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectAclOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectAclOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectLegalHoldOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectLegalHoldOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectLockConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectLockConfigurationOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectRetentionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectRetentionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectRetentionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectRetentionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putObjectTaggingOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutObjectTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putPublicAccessBlockOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutPublicAccessBlockRequest,
            reporting: InvocationReportingType) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: putPublicAccessBlockOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = PutPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.restoreObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: restoreObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = RestoreObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?restore",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.restoreObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: restoreObjectOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = RestoreObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?restore",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.selectObjectContent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: selectObjectContentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = SelectObjectContentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?select&select-type=2",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.selectObjectContent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: selectObjectContentOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = SelectObjectContentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?select&select-type=2",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPart.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: uploadPartOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = UploadPartOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPart.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: uploadPartOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = UploadPartOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPartCopy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: uploadPartCopyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = UploadPartCopyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPartCopy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: uploadPartCopyOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = UploadPartCopyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
