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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// S3InvocationsReporting.swift
// S3Client
//

import Foundation
import SmokeAWSCore
import SmokeAWSHttp
import S3Model

/**
 Operation reporting for the S3Model.
 */
public struct S3InvocationsReporting<InvocationReportingType: SmokeAWSInvocationReporting> {
    let abortMultipartUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let completeMultipartUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let copyObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createBucket: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createMultipartUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucket: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketAnalyticsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketCors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketEncryption: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketInventoryConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketLifecycle: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketMetricsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBucketWebsite: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteObjectTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteObjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deletePublicAccessBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketAccelerateConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketAnalyticsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketCors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketEncryption: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketInventoryConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketLifecycle: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketLifecycleConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketLocation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketLogging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketMetricsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketNotificationConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketPolicyStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketRequestPayment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketVersioning: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getBucketWebsite: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObjectAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObjectLegalHold: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObjectLockConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObjectRetention: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObjectTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getObjectTorrent: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getPublicAccessBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let headBucket: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let headObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBucketAnalyticsConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBucketInventoryConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBucketMetricsConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBuckets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listMultipartUploads: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listObjectVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listObjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listObjectsV2: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listParts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketAccelerateConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketAnalyticsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketCors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketEncryption: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketInventoryConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketLifecycle: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketLifecycleConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketLogging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketMetricsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketNotificationConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketRequestPayment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketVersioning: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putBucketWebsite: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putObjectAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putObjectLegalHold: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putObjectLockConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putObjectRetention: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putObjectTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putPublicAccessBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let selectObjectContent: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let uploadPart: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let uploadPartCopy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: S3OperationsReporting) {
        self.abortMultipartUpload = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.abortMultipartUpload)
        self.completeMultipartUpload = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.completeMultipartUpload)
        self.copyObject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.copyObject)
        self.createBucket = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createBucket)
        self.createMultipartUpload = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createMultipartUpload)
        self.deleteBucket = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucket)
        self.deleteBucketAnalyticsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketAnalyticsConfiguration)
        self.deleteBucketCors = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketCors)
        self.deleteBucketEncryption = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketEncryption)
        self.deleteBucketInventoryConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketInventoryConfiguration)
        self.deleteBucketLifecycle = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketLifecycle)
        self.deleteBucketMetricsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketMetricsConfiguration)
        self.deleteBucketPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketPolicy)
        self.deleteBucketReplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketReplication)
        self.deleteBucketTagging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketTagging)
        self.deleteBucketWebsite = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketWebsite)
        self.deleteObject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteObject)
        self.deleteObjectTagging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteObjectTagging)
        self.deleteObjects = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteObjects)
        self.deletePublicAccessBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deletePublicAccessBlock)
        self.getBucketAccelerateConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketAccelerateConfiguration)
        self.getBucketAcl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketAcl)
        self.getBucketAnalyticsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketAnalyticsConfiguration)
        self.getBucketCors = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketCors)
        self.getBucketEncryption = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketEncryption)
        self.getBucketInventoryConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketInventoryConfiguration)
        self.getBucketLifecycle = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketLifecycle)
        self.getBucketLifecycleConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketLifecycleConfiguration)
        self.getBucketLocation = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketLocation)
        self.getBucketLogging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketLogging)
        self.getBucketMetricsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketMetricsConfiguration)
        self.getBucketNotification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketNotification)
        self.getBucketNotificationConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketNotificationConfiguration)
        self.getBucketPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketPolicy)
        self.getBucketPolicyStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketPolicyStatus)
        self.getBucketReplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketReplication)
        self.getBucketRequestPayment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketRequestPayment)
        self.getBucketTagging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketTagging)
        self.getBucketVersioning = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketVersioning)
        self.getBucketWebsite = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketWebsite)
        self.getObject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObject)
        self.getObjectAcl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObjectAcl)
        self.getObjectLegalHold = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObjectLegalHold)
        self.getObjectLockConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObjectLockConfiguration)
        self.getObjectRetention = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObjectRetention)
        self.getObjectTagging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObjectTagging)
        self.getObjectTorrent = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getObjectTorrent)
        self.getPublicAccessBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPublicAccessBlock)
        self.headBucket = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.headBucket)
        self.headObject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.headObject)
        self.listBucketAnalyticsConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBucketAnalyticsConfigurations)
        self.listBucketInventoryConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBucketInventoryConfigurations)
        self.listBucketMetricsConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBucketMetricsConfigurations)
        self.listBuckets = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBuckets)
        self.listMultipartUploads = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listMultipartUploads)
        self.listObjectVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listObjectVersions)
        self.listObjects = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listObjects)
        self.listObjectsV2 = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listObjectsV2)
        self.listParts = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listParts)
        self.putBucketAccelerateConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketAccelerateConfiguration)
        self.putBucketAcl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketAcl)
        self.putBucketAnalyticsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketAnalyticsConfiguration)
        self.putBucketCors = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketCors)
        self.putBucketEncryption = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketEncryption)
        self.putBucketInventoryConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketInventoryConfiguration)
        self.putBucketLifecycle = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketLifecycle)
        self.putBucketLifecycleConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketLifecycleConfiguration)
        self.putBucketLogging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketLogging)
        self.putBucketMetricsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketMetricsConfiguration)
        self.putBucketNotification = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketNotification)
        self.putBucketNotificationConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketNotificationConfiguration)
        self.putBucketPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketPolicy)
        self.putBucketReplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketReplication)
        self.putBucketRequestPayment = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketRequestPayment)
        self.putBucketTagging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketTagging)
        self.putBucketVersioning = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketVersioning)
        self.putBucketWebsite = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketWebsite)
        self.putObject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putObject)
        self.putObjectAcl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putObjectAcl)
        self.putObjectLegalHold = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putObjectLegalHold)
        self.putObjectLockConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putObjectLockConfiguration)
        self.putObjectRetention = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putObjectRetention)
        self.putObjectTagging = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putObjectTagging)
        self.putPublicAccessBlock = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putPublicAccessBlock)
        self.restoreObject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreObject)
        self.selectObjectContent = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.selectObjectContent)
        self.uploadPart = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.uploadPart)
        self.uploadPartCopy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.uploadPartCopy)
    }
}
