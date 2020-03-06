// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// S3OperationsReporting.swift
// S3Client
//

import Foundation
import SmokeAWSCore
import S3Model

/**
 Operation reporting for the S3Model.
 */
public struct S3OperationsReporting {
    let abortMultipartUpload: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let completeMultipartUpload: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let copyObject: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let createBucket: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let createMultipartUpload: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucket: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketAnalyticsConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketCors: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketEncryption: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketInventoryConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketLifecycle: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketMetricsConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketPolicy: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketReplication: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketTagging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteBucketWebsite: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteObject: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteObjectTagging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deleteObjects: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let deletePublicAccessBlock: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketAccelerateConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketAcl: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketAnalyticsConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketCors: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketEncryption: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketInventoryConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLifecycle: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLifecycleConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLocation: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketLogging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketMetricsConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketNotification: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketNotificationConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketPolicy: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketPolicyStatus: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketReplication: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketRequestPayment: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketTagging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketVersioning: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getBucketWebsite: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObject: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectAcl: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectLegalHold: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectLockConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectRetention: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectTagging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getObjectTorrent: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let getPublicAccessBlock: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let headBucket: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let headObject: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketAnalyticsConfigurations: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketInventoryConfigurations: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBucketMetricsConfigurations: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listBuckets: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listMultipartUploads: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listObjectVersions: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listObjects: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listObjectsV2: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let listParts: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketAccelerateConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketAcl: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketAnalyticsConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketCors: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketEncryption: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketInventoryConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketLifecycle: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketLifecycleConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketLogging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketMetricsConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketNotification: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketNotificationConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketPolicy: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketReplication: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketRequestPayment: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketTagging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketVersioning: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putBucketWebsite: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObject: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectAcl: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectLegalHold: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectLockConfiguration: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectRetention: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putObjectTagging: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let putPublicAccessBlock: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let restoreObject: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let selectObjectContent: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let uploadPart: StandardSmokeAWSOperationReporting<S3ModelOperations>
    let uploadPartCopy: StandardSmokeAWSOperationReporting<S3ModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<S3ModelOperations>) {
        self.abortMultipartUpload = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .abortMultipartUpload, configuration: reportingConfiguration)
        self.completeMultipartUpload = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .completeMultipartUpload, configuration: reportingConfiguration)
        self.copyObject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .copyObject, configuration: reportingConfiguration)
        self.createBucket = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createBucket, configuration: reportingConfiguration)
        self.createMultipartUpload = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createMultipartUpload, configuration: reportingConfiguration)
        self.deleteBucket = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucket, configuration: reportingConfiguration)
        self.deleteBucketAnalyticsConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketAnalyticsConfiguration, configuration: reportingConfiguration)
        self.deleteBucketCors = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketCors, configuration: reportingConfiguration)
        self.deleteBucketEncryption = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketEncryption, configuration: reportingConfiguration)
        self.deleteBucketInventoryConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketInventoryConfiguration, configuration: reportingConfiguration)
        self.deleteBucketLifecycle = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketLifecycle, configuration: reportingConfiguration)
        self.deleteBucketMetricsConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketMetricsConfiguration, configuration: reportingConfiguration)
        self.deleteBucketPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketPolicy, configuration: reportingConfiguration)
        self.deleteBucketReplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketReplication, configuration: reportingConfiguration)
        self.deleteBucketTagging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketTagging, configuration: reportingConfiguration)
        self.deleteBucketWebsite = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBucketWebsite, configuration: reportingConfiguration)
        self.deleteObject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteObject, configuration: reportingConfiguration)
        self.deleteObjectTagging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteObjectTagging, configuration: reportingConfiguration)
        self.deleteObjects = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteObjects, configuration: reportingConfiguration)
        self.deletePublicAccessBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deletePublicAccessBlock, configuration: reportingConfiguration)
        self.getBucketAccelerateConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketAccelerateConfiguration, configuration: reportingConfiguration)
        self.getBucketAcl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketAcl, configuration: reportingConfiguration)
        self.getBucketAnalyticsConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketAnalyticsConfiguration, configuration: reportingConfiguration)
        self.getBucketCors = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketCors, configuration: reportingConfiguration)
        self.getBucketEncryption = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketEncryption, configuration: reportingConfiguration)
        self.getBucketInventoryConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketInventoryConfiguration, configuration: reportingConfiguration)
        self.getBucketLifecycle = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketLifecycle, configuration: reportingConfiguration)
        self.getBucketLifecycleConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketLifecycleConfiguration, configuration: reportingConfiguration)
        self.getBucketLocation = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketLocation, configuration: reportingConfiguration)
        self.getBucketLogging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketLogging, configuration: reportingConfiguration)
        self.getBucketMetricsConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketMetricsConfiguration, configuration: reportingConfiguration)
        self.getBucketNotification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketNotification, configuration: reportingConfiguration)
        self.getBucketNotificationConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketNotificationConfiguration, configuration: reportingConfiguration)
        self.getBucketPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketPolicy, configuration: reportingConfiguration)
        self.getBucketPolicyStatus = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketPolicyStatus, configuration: reportingConfiguration)
        self.getBucketReplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketReplication, configuration: reportingConfiguration)
        self.getBucketRequestPayment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketRequestPayment, configuration: reportingConfiguration)
        self.getBucketTagging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketTagging, configuration: reportingConfiguration)
        self.getBucketVersioning = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketVersioning, configuration: reportingConfiguration)
        self.getBucketWebsite = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getBucketWebsite, configuration: reportingConfiguration)
        self.getObject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObject, configuration: reportingConfiguration)
        self.getObjectAcl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObjectAcl, configuration: reportingConfiguration)
        self.getObjectLegalHold = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObjectLegalHold, configuration: reportingConfiguration)
        self.getObjectLockConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObjectLockConfiguration, configuration: reportingConfiguration)
        self.getObjectRetention = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObjectRetention, configuration: reportingConfiguration)
        self.getObjectTagging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObjectTagging, configuration: reportingConfiguration)
        self.getObjectTorrent = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getObjectTorrent, configuration: reportingConfiguration)
        self.getPublicAccessBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getPublicAccessBlock, configuration: reportingConfiguration)
        self.headBucket = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .headBucket, configuration: reportingConfiguration)
        self.headObject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .headObject, configuration: reportingConfiguration)
        self.listBucketAnalyticsConfigurations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBucketAnalyticsConfigurations, configuration: reportingConfiguration)
        self.listBucketInventoryConfigurations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBucketInventoryConfigurations, configuration: reportingConfiguration)
        self.listBucketMetricsConfigurations = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBucketMetricsConfigurations, configuration: reportingConfiguration)
        self.listBuckets = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBuckets, configuration: reportingConfiguration)
        self.listMultipartUploads = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listMultipartUploads, configuration: reportingConfiguration)
        self.listObjectVersions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listObjectVersions, configuration: reportingConfiguration)
        self.listObjects = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listObjects, configuration: reportingConfiguration)
        self.listObjectsV2 = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listObjectsV2, configuration: reportingConfiguration)
        self.listParts = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listParts, configuration: reportingConfiguration)
        self.putBucketAccelerateConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketAccelerateConfiguration, configuration: reportingConfiguration)
        self.putBucketAcl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketAcl, configuration: reportingConfiguration)
        self.putBucketAnalyticsConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketAnalyticsConfiguration, configuration: reportingConfiguration)
        self.putBucketCors = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketCors, configuration: reportingConfiguration)
        self.putBucketEncryption = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketEncryption, configuration: reportingConfiguration)
        self.putBucketInventoryConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketInventoryConfiguration, configuration: reportingConfiguration)
        self.putBucketLifecycle = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketLifecycle, configuration: reportingConfiguration)
        self.putBucketLifecycleConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketLifecycleConfiguration, configuration: reportingConfiguration)
        self.putBucketLogging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketLogging, configuration: reportingConfiguration)
        self.putBucketMetricsConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketMetricsConfiguration, configuration: reportingConfiguration)
        self.putBucketNotification = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketNotification, configuration: reportingConfiguration)
        self.putBucketNotificationConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketNotificationConfiguration, configuration: reportingConfiguration)
        self.putBucketPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketPolicy, configuration: reportingConfiguration)
        self.putBucketReplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketReplication, configuration: reportingConfiguration)
        self.putBucketRequestPayment = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketRequestPayment, configuration: reportingConfiguration)
        self.putBucketTagging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketTagging, configuration: reportingConfiguration)
        self.putBucketVersioning = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketVersioning, configuration: reportingConfiguration)
        self.putBucketWebsite = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putBucketWebsite, configuration: reportingConfiguration)
        self.putObject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putObject, configuration: reportingConfiguration)
        self.putObjectAcl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putObjectAcl, configuration: reportingConfiguration)
        self.putObjectLegalHold = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putObjectLegalHold, configuration: reportingConfiguration)
        self.putObjectLockConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putObjectLockConfiguration, configuration: reportingConfiguration)
        self.putObjectRetention = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putObjectRetention, configuration: reportingConfiguration)
        self.putObjectTagging = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putObjectTagging, configuration: reportingConfiguration)
        self.putPublicAccessBlock = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putPublicAccessBlock, configuration: reportingConfiguration)
        self.restoreObject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreObject, configuration: reportingConfiguration)
        self.selectObjectContent = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .selectObjectContent, configuration: reportingConfiguration)
        self.uploadPart = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .uploadPart, configuration: reportingConfiguration)
        self.uploadPartCopy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .uploadPartCopy, configuration: reportingConfiguration)
    }
}
