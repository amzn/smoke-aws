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
// S3InvocationsReporting.swift
// S3Client
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import S3Model

/**
 Invocations reporting for the S3Model.
 */
public struct S3InvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let abortMultipartUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let completeMultipartUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let copyObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createBucket: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createMultipartUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucket: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketAnalyticsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketCors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketEncryption: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketIntelligentTieringConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketInventoryConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketLifecycle: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketMetricsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketOwnershipControls: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBucketWebsite: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteObjectTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteObjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deletePublicAccessBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketAccelerateConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketAnalyticsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketCors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketEncryption: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketIntelligentTieringConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketInventoryConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketLifecycle: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketLifecycleConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketLocation: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketLogging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketMetricsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketNotificationConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketOwnershipControls: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketPolicyStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketRequestPayment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketVersioning: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getBucketWebsite: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObjectAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObjectLegalHold: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObjectLockConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObjectRetention: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObjectTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getObjectTorrent: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getPublicAccessBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let headBucket: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let headObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listBucketAnalyticsConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listBucketIntelligentTieringConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listBucketInventoryConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listBucketMetricsConfigurations: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listBuckets: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listMultipartUploads: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listObjectVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listObjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listObjectsV2: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listParts: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketAccelerateConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketAnalyticsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketCors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketEncryption: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketIntelligentTieringConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketInventoryConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketLifecycle: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketLifecycleConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketLogging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketMetricsConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketNotification: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketNotificationConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketOwnershipControls: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketReplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketRequestPayment: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketVersioning: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putBucketWebsite: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putObjectAcl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putObjectLegalHold: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putObjectLockConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putObjectRetention: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putObjectTagging: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putPublicAccessBlock: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreObject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let selectObjectContent: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let uploadPart: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let uploadPartCopy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

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
        self.deleteBucketIntelligentTieringConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketIntelligentTieringConfiguration)
        self.deleteBucketInventoryConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketInventoryConfiguration)
        self.deleteBucketLifecycle = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketLifecycle)
        self.deleteBucketMetricsConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketMetricsConfiguration)
        self.deleteBucketOwnershipControls = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBucketOwnershipControls)
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
        self.getBucketIntelligentTieringConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketIntelligentTieringConfiguration)
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
        self.getBucketOwnershipControls = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getBucketOwnershipControls)
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
        self.listBucketIntelligentTieringConfigurations = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBucketIntelligentTieringConfigurations)
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
        self.putBucketIntelligentTieringConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketIntelligentTieringConfiguration)
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
        self.putBucketOwnershipControls = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putBucketOwnershipControls)
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
