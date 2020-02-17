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
// S3ModelDefaultInstances.swift
// S3Model
//

import Foundation

public extension AbortIncompleteMultipartUpload {
    /**
     Default instance of the AbortIncompleteMultipartUpload structure.
     */
    static let __default: S3Model.AbortIncompleteMultipartUpload = {
        let defaultInstance = S3Model.AbortIncompleteMultipartUpload(
            daysAfterInitiation: nil)

        return defaultInstance
    }()
}

public extension AbortMultipartUploadOutput {
    /**
     Default instance of the AbortMultipartUploadOutput structure.
     */
    static let __default: S3Model.AbortMultipartUploadOutput = {
        let defaultInstance = S3Model.AbortMultipartUploadOutput(
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension AbortMultipartUploadRequest {
    /**
     Default instance of the AbortMultipartUploadRequest structure.
     */
    static let __default: S3Model.AbortMultipartUploadRequest = {
        let defaultInstance = S3Model.AbortMultipartUploadRequest(
            bucket: "value",
            key: "0",
            requestPayer: nil,
            uploadId: "value")

        return defaultInstance
    }()
}

public extension AccelerateConfiguration {
    /**
     Default instance of the AccelerateConfiguration structure.
     */
    static let __default: S3Model.AccelerateConfiguration = {
        let defaultInstance = S3Model.AccelerateConfiguration(
            status: nil)

        return defaultInstance
    }()
}

public extension AccessControlPolicy {
    /**
     Default instance of the AccessControlPolicy structure.
     */
    static let __default: S3Model.AccessControlPolicy = {
        let defaultInstance = S3Model.AccessControlPolicy(
            grants: nil,
            owner: nil)

        return defaultInstance
    }()
}

public extension AccessControlTranslation {
    /**
     Default instance of the AccessControlTranslation structure.
     */
    static let __default: S3Model.AccessControlTranslation = {
        let defaultInstance = S3Model.AccessControlTranslation(
            owner: .__default)

        return defaultInstance
    }()
}

public extension AnalyticsAndOperator {
    /**
     Default instance of the AnalyticsAndOperator structure.
     */
    static let __default: S3Model.AnalyticsAndOperator = {
        let defaultInstance = S3Model.AnalyticsAndOperator(
            prefix: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension AnalyticsConfiguration {
    /**
     Default instance of the AnalyticsConfiguration structure.
     */
    static let __default: S3Model.AnalyticsConfiguration = {
        let defaultInstance = S3Model.AnalyticsConfiguration(
            filter: nil,
            id: "value",
            storageClassAnalysis: StorageClassAnalysis.__default)

        return defaultInstance
    }()
}

public extension AnalyticsExportDestination {
    /**
     Default instance of the AnalyticsExportDestination structure.
     */
    static let __default: S3Model.AnalyticsExportDestination = {
        let defaultInstance = S3Model.AnalyticsExportDestination(
            s3BucketDestination: AnalyticsS3BucketDestination.__default)

        return defaultInstance
    }()
}

public extension AnalyticsFilter {
    /**
     Default instance of the AnalyticsFilter structure.
     */
    static let __default: S3Model.AnalyticsFilter = {
        let defaultInstance = S3Model.AnalyticsFilter(
            and: nil,
            prefix: nil,
            tag: nil)

        return defaultInstance
    }()
}

public extension AnalyticsS3BucketDestination {
    /**
     Default instance of the AnalyticsS3BucketDestination structure.
     */
    static let __default: S3Model.AnalyticsS3BucketDestination = {
        let defaultInstance = S3Model.AnalyticsS3BucketDestination(
            bucket: "value",
            bucketAccountId: nil,
            format: .__default,
            prefix: nil)

        return defaultInstance
    }()
}

public extension Bucket {
    /**
     Default instance of the Bucket structure.
     */
    static let __default: S3Model.Bucket = {
        let defaultInstance = S3Model.Bucket(
            creationDate: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension BucketAlreadyExists {
    /**
     Default instance of the BucketAlreadyExists structure.
     */
    static let __default: S3Model.BucketAlreadyExists = {
        let defaultInstance = S3Model.BucketAlreadyExists()

        return defaultInstance
    }()
}

public extension BucketAlreadyOwnedByYou {
    /**
     Default instance of the BucketAlreadyOwnedByYou structure.
     */
    static let __default: S3Model.BucketAlreadyOwnedByYou = {
        let defaultInstance = S3Model.BucketAlreadyOwnedByYou()

        return defaultInstance
    }()
}

public extension BucketLifecycleConfiguration {
    /**
     Default instance of the BucketLifecycleConfiguration structure.
     */
    static let __default: S3Model.BucketLifecycleConfiguration = {
        let defaultInstance = S3Model.BucketLifecycleConfiguration(
            rules: [])

        return defaultInstance
    }()
}

public extension BucketLoggingStatus {
    /**
     Default instance of the BucketLoggingStatus structure.
     */
    static let __default: S3Model.BucketLoggingStatus = {
        let defaultInstance = S3Model.BucketLoggingStatus(
            loggingEnabled: nil)

        return defaultInstance
    }()
}

public extension CORSConfiguration {
    /**
     Default instance of the CORSConfiguration structure.
     */
    static let __default: S3Model.CORSConfiguration = {
        let defaultInstance = S3Model.CORSConfiguration(
            cORSRules: [])

        return defaultInstance
    }()
}

public extension CORSRule {
    /**
     Default instance of the CORSRule structure.
     */
    static let __default: S3Model.CORSRule = {
        let defaultInstance = S3Model.CORSRule(
            allowedHeaders: nil,
            allowedMethods: [],
            allowedOrigins: [],
            exposeHeaders: nil,
            maxAgeSeconds: nil)

        return defaultInstance
    }()
}

public extension CSVInput {
    /**
     Default instance of the CSVInput structure.
     */
    static let __default: S3Model.CSVInput = {
        let defaultInstance = S3Model.CSVInput(
            allowQuotedRecordDelimiter: nil,
            comments: nil,
            fieldDelimiter: nil,
            fileHeaderInfo: nil,
            quoteCharacter: nil,
            quoteEscapeCharacter: nil,
            recordDelimiter: nil)

        return defaultInstance
    }()
}

public extension CSVOutput {
    /**
     Default instance of the CSVOutput structure.
     */
    static let __default: S3Model.CSVOutput = {
        let defaultInstance = S3Model.CSVOutput(
            fieldDelimiter: nil,
            quoteCharacter: nil,
            quoteEscapeCharacter: nil,
            quoteFields: nil,
            recordDelimiter: nil)

        return defaultInstance
    }()
}

public extension CloudFunctionConfiguration {
    /**
     Default instance of the CloudFunctionConfiguration structure.
     */
    static let __default: S3Model.CloudFunctionConfiguration = {
        let defaultInstance = S3Model.CloudFunctionConfiguration(
            cloudFunction: nil,
            events: nil,
            id: nil,
            invocationRole: nil)

        return defaultInstance
    }()
}

public extension CommonPrefix {
    /**
     Default instance of the CommonPrefix structure.
     */
    static let __default: S3Model.CommonPrefix = {
        let defaultInstance = S3Model.CommonPrefix(
            prefix: nil)

        return defaultInstance
    }()
}

public extension CompleteMultipartUploadOutput {
    /**
     Default instance of the CompleteMultipartUploadOutput structure.
     */
    static let __default: S3Model.CompleteMultipartUploadOutput = {
        let defaultInstance = S3Model.CompleteMultipartUploadOutput(
            bucket: nil,
            eTag: nil,
            expiration: nil,
            key: nil,
            location: nil,
            requestCharged: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension CompleteMultipartUploadRequest {
    /**
     Default instance of the CompleteMultipartUploadRequest structure.
     */
    static let __default: S3Model.CompleteMultipartUploadRequest = {
        let defaultInstance = S3Model.CompleteMultipartUploadRequest(
            bucket: "value",
            key: "0",
            multipartUpload: nil,
            requestPayer: nil,
            uploadId: "value")

        return defaultInstance
    }()
}

public extension CompletedMultipartUpload {
    /**
     Default instance of the CompletedMultipartUpload structure.
     */
    static let __default: S3Model.CompletedMultipartUpload = {
        let defaultInstance = S3Model.CompletedMultipartUpload(
            parts: nil)

        return defaultInstance
    }()
}

public extension CompletedPart {
    /**
     Default instance of the CompletedPart structure.
     */
    static let __default: S3Model.CompletedPart = {
        let defaultInstance = S3Model.CompletedPart(
            eTag: nil,
            partNumber: nil)

        return defaultInstance
    }()
}

public extension Condition {
    /**
     Default instance of the Condition structure.
     */
    static let __default: S3Model.Condition = {
        let defaultInstance = S3Model.Condition(
            httpErrorCodeReturnedEquals: nil,
            keyPrefixEquals: nil)

        return defaultInstance
    }()
}

public extension ContinuationEvent {
    /**
     Default instance of the ContinuationEvent structure.
     */
    static let __default: S3Model.ContinuationEvent = {
        let defaultInstance = S3Model.ContinuationEvent()

        return defaultInstance
    }()
}

public extension CopyObjectOutput {
    /**
     Default instance of the CopyObjectOutput structure.
     */
    static let __default: S3Model.CopyObjectOutput = {
        let defaultInstance = S3Model.CopyObjectOutput(
            copyObjectResult: nil,
            copySourceVersionId: nil,
            expiration: nil,
            requestCharged: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSEncryptionContext: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension CopyObjectRequest {
    /**
     Default instance of the CopyObjectRequest structure.
     */
    static let __default: S3Model.CopyObjectRequest = {
        let defaultInstance = S3Model.CopyObjectRequest(
            aCL: nil,
            bucket: "value",
            cacheControl: nil,
            contentDisposition: nil,
            contentEncoding: nil,
            contentLanguage: nil,
            contentType: nil,
            copySource: "",
            copySourceIfMatch: nil,
            copySourceIfModifiedSince: nil,
            copySourceIfNoneMatch: nil,
            copySourceIfUnmodifiedSince: nil,
            copySourceSSECustomerAlgorithm: nil,
            copySourceSSECustomerKey: nil,
            copySourceSSECustomerKeyMD5: nil,
            expires: nil,
            grantFullControl: nil,
            grantRead: nil,
            grantReadACP: nil,
            grantWriteACP: nil,
            key: "0",
            metadata: nil,
            metadataDirective: nil,
            objectLockLegalHoldStatus: nil,
            objectLockMode: nil,
            objectLockRetainUntilDate: nil,
            requestPayer: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSEncryptionContext: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            storageClass: nil,
            tagging: nil,
            taggingDirective: nil,
            websiteRedirectLocation: nil)

        return defaultInstance
    }()
}

public extension CopyObjectResult {
    /**
     Default instance of the CopyObjectResult structure.
     */
    static let __default: S3Model.CopyObjectResult = {
        let defaultInstance = S3Model.CopyObjectResult(
            eTag: nil,
            lastModified: nil)

        return defaultInstance
    }()
}

public extension CopyPartResult {
    /**
     Default instance of the CopyPartResult structure.
     */
    static let __default: S3Model.CopyPartResult = {
        let defaultInstance = S3Model.CopyPartResult(
            eTag: nil,
            lastModified: nil)

        return defaultInstance
    }()
}

public extension CreateBucketConfiguration {
    /**
     Default instance of the CreateBucketConfiguration structure.
     */
    static let __default: S3Model.CreateBucketConfiguration = {
        let defaultInstance = S3Model.CreateBucketConfiguration(
            locationConstraint: nil)

        return defaultInstance
    }()
}

public extension CreateBucketOutput {
    /**
     Default instance of the CreateBucketOutput structure.
     */
    static let __default: S3Model.CreateBucketOutput = {
        let defaultInstance = S3Model.CreateBucketOutput(
            location: nil)

        return defaultInstance
    }()
}

public extension CreateBucketRequest {
    /**
     Default instance of the CreateBucketRequest structure.
     */
    static let __default: S3Model.CreateBucketRequest = {
        let defaultInstance = S3Model.CreateBucketRequest(
            aCL: nil,
            bucket: "value",
            createBucketConfiguration: nil,
            grantFullControl: nil,
            grantRead: nil,
            grantReadACP: nil,
            grantWrite: nil,
            grantWriteACP: nil,
            objectLockEnabledForBucket: nil)

        return defaultInstance
    }()
}

public extension CreateMultipartUploadOutput {
    /**
     Default instance of the CreateMultipartUploadOutput structure.
     */
    static let __default: S3Model.CreateMultipartUploadOutput = {
        let defaultInstance = S3Model.CreateMultipartUploadOutput(
            abortDate: nil,
            abortRuleId: nil,
            bucket: nil,
            key: nil,
            requestCharged: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSEncryptionContext: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension CreateMultipartUploadRequest {
    /**
     Default instance of the CreateMultipartUploadRequest structure.
     */
    static let __default: S3Model.CreateMultipartUploadRequest = {
        let defaultInstance = S3Model.CreateMultipartUploadRequest(
            aCL: nil,
            bucket: "value",
            cacheControl: nil,
            contentDisposition: nil,
            contentEncoding: nil,
            contentLanguage: nil,
            contentType: nil,
            expires: nil,
            grantFullControl: nil,
            grantRead: nil,
            grantReadACP: nil,
            grantWriteACP: nil,
            key: "0",
            metadata: nil,
            objectLockLegalHoldStatus: nil,
            objectLockMode: nil,
            objectLockRetainUntilDate: nil,
            requestPayer: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSEncryptionContext: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            storageClass: nil,
            tagging: nil,
            websiteRedirectLocation: nil)

        return defaultInstance
    }()
}

public extension DefaultRetention {
    /**
     Default instance of the DefaultRetention structure.
     */
    static let __default: S3Model.DefaultRetention = {
        let defaultInstance = S3Model.DefaultRetention(
            days: nil,
            mode: nil,
            years: nil)

        return defaultInstance
    }()
}

public extension Delete {
    /**
     Default instance of the Delete structure.
     */
    static let __default: S3Model.Delete = {
        let defaultInstance = S3Model.Delete(
            objects: [],
            quiet: nil)

        return defaultInstance
    }()
}

public extension DeleteBucketAnalyticsConfigurationRequest {
    /**
     Default instance of the DeleteBucketAnalyticsConfigurationRequest structure.
     */
    static let __default: S3Model.DeleteBucketAnalyticsConfigurationRequest = {
        let defaultInstance = S3Model.DeleteBucketAnalyticsConfigurationRequest(
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketCorsRequest {
    /**
     Default instance of the DeleteBucketCorsRequest structure.
     */
    static let __default: S3Model.DeleteBucketCorsRequest = {
        let defaultInstance = S3Model.DeleteBucketCorsRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketEncryptionRequest {
    /**
     Default instance of the DeleteBucketEncryptionRequest structure.
     */
    static let __default: S3Model.DeleteBucketEncryptionRequest = {
        let defaultInstance = S3Model.DeleteBucketEncryptionRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketInventoryConfigurationRequest {
    /**
     Default instance of the DeleteBucketInventoryConfigurationRequest structure.
     */
    static let __default: S3Model.DeleteBucketInventoryConfigurationRequest = {
        let defaultInstance = S3Model.DeleteBucketInventoryConfigurationRequest(
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketLifecycleRequest {
    /**
     Default instance of the DeleteBucketLifecycleRequest structure.
     */
    static let __default: S3Model.DeleteBucketLifecycleRequest = {
        let defaultInstance = S3Model.DeleteBucketLifecycleRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketMetricsConfigurationRequest {
    /**
     Default instance of the DeleteBucketMetricsConfigurationRequest structure.
     */
    static let __default: S3Model.DeleteBucketMetricsConfigurationRequest = {
        let defaultInstance = S3Model.DeleteBucketMetricsConfigurationRequest(
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketPolicyRequest {
    /**
     Default instance of the DeleteBucketPolicyRequest structure.
     */
    static let __default: S3Model.DeleteBucketPolicyRequest = {
        let defaultInstance = S3Model.DeleteBucketPolicyRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketReplicationRequest {
    /**
     Default instance of the DeleteBucketReplicationRequest structure.
     */
    static let __default: S3Model.DeleteBucketReplicationRequest = {
        let defaultInstance = S3Model.DeleteBucketReplicationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketRequest {
    /**
     Default instance of the DeleteBucketRequest structure.
     */
    static let __default: S3Model.DeleteBucketRequest = {
        let defaultInstance = S3Model.DeleteBucketRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketTaggingRequest {
    /**
     Default instance of the DeleteBucketTaggingRequest structure.
     */
    static let __default: S3Model.DeleteBucketTaggingRequest = {
        let defaultInstance = S3Model.DeleteBucketTaggingRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteBucketWebsiteRequest {
    /**
     Default instance of the DeleteBucketWebsiteRequest structure.
     */
    static let __default: S3Model.DeleteBucketWebsiteRequest = {
        let defaultInstance = S3Model.DeleteBucketWebsiteRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeleteMarkerEntry {
    /**
     Default instance of the DeleteMarkerEntry structure.
     */
    static let __default: S3Model.DeleteMarkerEntry = {
        let defaultInstance = S3Model.DeleteMarkerEntry(
            isLatest: nil,
            key: nil,
            lastModified: nil,
            owner: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension DeleteMarkerReplication {
    /**
     Default instance of the DeleteMarkerReplication structure.
     */
    static let __default: S3Model.DeleteMarkerReplication = {
        let defaultInstance = S3Model.DeleteMarkerReplication(
            status: nil)

        return defaultInstance
    }()
}

public extension DeleteObjectOutput {
    /**
     Default instance of the DeleteObjectOutput structure.
     */
    static let __default: S3Model.DeleteObjectOutput = {
        let defaultInstance = S3Model.DeleteObjectOutput(
            deleteMarker: nil,
            requestCharged: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension DeleteObjectRequest {
    /**
     Default instance of the DeleteObjectRequest structure.
     */
    static let __default: S3Model.DeleteObjectRequest = {
        let defaultInstance = S3Model.DeleteObjectRequest(
            bucket: "value",
            bypassGovernanceRetention: nil,
            key: "0",
            mFA: nil,
            requestPayer: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension DeleteObjectTaggingOutput {
    /**
     Default instance of the DeleteObjectTaggingOutput structure.
     */
    static let __default: S3Model.DeleteObjectTaggingOutput = {
        let defaultInstance = S3Model.DeleteObjectTaggingOutput(
            versionId: nil)

        return defaultInstance
    }()
}

public extension DeleteObjectTaggingRequest {
    /**
     Default instance of the DeleteObjectTaggingRequest structure.
     */
    static let __default: S3Model.DeleteObjectTaggingRequest = {
        let defaultInstance = S3Model.DeleteObjectTaggingRequest(
            bucket: "value",
            key: "0",
            versionId: nil)

        return defaultInstance
    }()
}

public extension DeleteObjectsOutput {
    /**
     Default instance of the DeleteObjectsOutput structure.
     */
    static let __default: S3Model.DeleteObjectsOutput = {
        let defaultInstance = S3Model.DeleteObjectsOutput(
            deleted: nil,
            errors: nil,
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension DeleteObjectsRequest {
    /**
     Default instance of the DeleteObjectsRequest structure.
     */
    static let __default: S3Model.DeleteObjectsRequest = {
        let defaultInstance = S3Model.DeleteObjectsRequest(
            bucket: "value",
            bypassGovernanceRetention: nil,
            delete: Delete.__default,
            mFA: nil,
            requestPayer: nil)

        return defaultInstance
    }()
}

public extension DeletePublicAccessBlockRequest {
    /**
     Default instance of the DeletePublicAccessBlockRequest structure.
     */
    static let __default: S3Model.DeletePublicAccessBlockRequest = {
        let defaultInstance = S3Model.DeletePublicAccessBlockRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension DeletedObject {
    /**
     Default instance of the DeletedObject structure.
     */
    static let __default: S3Model.DeletedObject = {
        let defaultInstance = S3Model.DeletedObject(
            deleteMarker: nil,
            deleteMarkerVersionId: nil,
            key: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension Destination {
    /**
     Default instance of the Destination structure.
     */
    static let __default: S3Model.Destination = {
        let defaultInstance = S3Model.Destination(
            accessControlTranslation: nil,
            account: nil,
            bucket: "value",
            encryptionConfiguration: nil,
            metrics: nil,
            replicationTime: nil,
            storageClass: nil)

        return defaultInstance
    }()
}

public extension Encryption {
    /**
     Default instance of the Encryption structure.
     */
    static let __default: S3Model.Encryption = {
        let defaultInstance = S3Model.Encryption(
            encryptionType: .__default,
            kMSContext: nil,
            kMSKeyId: nil)

        return defaultInstance
    }()
}

public extension EncryptionConfiguration {
    /**
     Default instance of the EncryptionConfiguration structure.
     */
    static let __default: S3Model.EncryptionConfiguration = {
        let defaultInstance = S3Model.EncryptionConfiguration(
            replicaKmsKeyID: nil)

        return defaultInstance
    }()
}

public extension EndEvent {
    /**
     Default instance of the EndEvent structure.
     */
    static let __default: S3Model.EndEvent = {
        let defaultInstance = S3Model.EndEvent()

        return defaultInstance
    }()
}

public extension Error {
    /**
     Default instance of the Error structure.
     */
    static let __default: S3Model.Error = {
        let defaultInstance = S3Model.Error(
            code: nil,
            key: nil,
            message: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension ErrorDocument {
    /**
     Default instance of the ErrorDocument structure.
     */
    static let __default: S3Model.ErrorDocument = {
        let defaultInstance = S3Model.ErrorDocument(
            key: "0")

        return defaultInstance
    }()
}

public extension ExistingObjectReplication {
    /**
     Default instance of the ExistingObjectReplication structure.
     */
    static let __default: S3Model.ExistingObjectReplication = {
        let defaultInstance = S3Model.ExistingObjectReplication(
            status: .__default)

        return defaultInstance
    }()
}

public extension FilterRule {
    /**
     Default instance of the FilterRule structure.
     */
    static let __default: S3Model.FilterRule = {
        let defaultInstance = S3Model.FilterRule(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension GetBucketAccelerateConfigurationOutput {
    /**
     Default instance of the GetBucketAccelerateConfigurationOutput structure.
     */
    static let __default: S3Model.GetBucketAccelerateConfigurationOutput = {
        let defaultInstance = S3Model.GetBucketAccelerateConfigurationOutput(
            status: nil)

        return defaultInstance
    }()
}

public extension GetBucketAccelerateConfigurationRequest {
    /**
     Default instance of the GetBucketAccelerateConfigurationRequest structure.
     */
    static let __default: S3Model.GetBucketAccelerateConfigurationRequest = {
        let defaultInstance = S3Model.GetBucketAccelerateConfigurationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketAclOutput {
    /**
     Default instance of the GetBucketAclOutput structure.
     */
    static let __default: S3Model.GetBucketAclOutput = {
        let defaultInstance = S3Model.GetBucketAclOutput(
            grants: nil,
            owner: nil)

        return defaultInstance
    }()
}

public extension GetBucketAclRequest {
    /**
     Default instance of the GetBucketAclRequest structure.
     */
    static let __default: S3Model.GetBucketAclRequest = {
        let defaultInstance = S3Model.GetBucketAclRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketAnalyticsConfigurationOutput {
    /**
     Default instance of the GetBucketAnalyticsConfigurationOutput structure.
     */
    static let __default: S3Model.GetBucketAnalyticsConfigurationOutput = {
        let defaultInstance = S3Model.GetBucketAnalyticsConfigurationOutput(
            analyticsConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetBucketAnalyticsConfigurationRequest {
    /**
     Default instance of the GetBucketAnalyticsConfigurationRequest structure.
     */
    static let __default: S3Model.GetBucketAnalyticsConfigurationRequest = {
        let defaultInstance = S3Model.GetBucketAnalyticsConfigurationRequest(
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension GetBucketCorsOutput {
    /**
     Default instance of the GetBucketCorsOutput structure.
     */
    static let __default: S3Model.GetBucketCorsOutput = {
        let defaultInstance = S3Model.GetBucketCorsOutput(
            cORSRules: nil)

        return defaultInstance
    }()
}

public extension GetBucketCorsRequest {
    /**
     Default instance of the GetBucketCorsRequest structure.
     */
    static let __default: S3Model.GetBucketCorsRequest = {
        let defaultInstance = S3Model.GetBucketCorsRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketEncryptionOutput {
    /**
     Default instance of the GetBucketEncryptionOutput structure.
     */
    static let __default: S3Model.GetBucketEncryptionOutput = {
        let defaultInstance = S3Model.GetBucketEncryptionOutput(
            serverSideEncryptionConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetBucketEncryptionRequest {
    /**
     Default instance of the GetBucketEncryptionRequest structure.
     */
    static let __default: S3Model.GetBucketEncryptionRequest = {
        let defaultInstance = S3Model.GetBucketEncryptionRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketInventoryConfigurationOutput {
    /**
     Default instance of the GetBucketInventoryConfigurationOutput structure.
     */
    static let __default: S3Model.GetBucketInventoryConfigurationOutput = {
        let defaultInstance = S3Model.GetBucketInventoryConfigurationOutput(
            inventoryConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetBucketInventoryConfigurationRequest {
    /**
     Default instance of the GetBucketInventoryConfigurationRequest structure.
     */
    static let __default: S3Model.GetBucketInventoryConfigurationRequest = {
        let defaultInstance = S3Model.GetBucketInventoryConfigurationRequest(
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension GetBucketLifecycleConfigurationOutput {
    /**
     Default instance of the GetBucketLifecycleConfigurationOutput structure.
     */
    static let __default: S3Model.GetBucketLifecycleConfigurationOutput = {
        let defaultInstance = S3Model.GetBucketLifecycleConfigurationOutput(
            rules: nil)

        return defaultInstance
    }()
}

public extension GetBucketLifecycleConfigurationRequest {
    /**
     Default instance of the GetBucketLifecycleConfigurationRequest structure.
     */
    static let __default: S3Model.GetBucketLifecycleConfigurationRequest = {
        let defaultInstance = S3Model.GetBucketLifecycleConfigurationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketLifecycleOutput {
    /**
     Default instance of the GetBucketLifecycleOutput structure.
     */
    static let __default: S3Model.GetBucketLifecycleOutput = {
        let defaultInstance = S3Model.GetBucketLifecycleOutput(
            rules: nil)

        return defaultInstance
    }()
}

public extension GetBucketLifecycleRequest {
    /**
     Default instance of the GetBucketLifecycleRequest structure.
     */
    static let __default: S3Model.GetBucketLifecycleRequest = {
        let defaultInstance = S3Model.GetBucketLifecycleRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketLocationOutput {
    /**
     Default instance of the GetBucketLocationOutput structure.
     */
    static let __default: S3Model.GetBucketLocationOutput = {
        let defaultInstance = S3Model.GetBucketLocationOutput(
            locationConstraint: nil)

        return defaultInstance
    }()
}

public extension GetBucketLocationRequest {
    /**
     Default instance of the GetBucketLocationRequest structure.
     */
    static let __default: S3Model.GetBucketLocationRequest = {
        let defaultInstance = S3Model.GetBucketLocationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketLoggingOutput {
    /**
     Default instance of the GetBucketLoggingOutput structure.
     */
    static let __default: S3Model.GetBucketLoggingOutput = {
        let defaultInstance = S3Model.GetBucketLoggingOutput(
            loggingEnabled: nil)

        return defaultInstance
    }()
}

public extension GetBucketLoggingRequest {
    /**
     Default instance of the GetBucketLoggingRequest structure.
     */
    static let __default: S3Model.GetBucketLoggingRequest = {
        let defaultInstance = S3Model.GetBucketLoggingRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketMetricsConfigurationOutput {
    /**
     Default instance of the GetBucketMetricsConfigurationOutput structure.
     */
    static let __default: S3Model.GetBucketMetricsConfigurationOutput = {
        let defaultInstance = S3Model.GetBucketMetricsConfigurationOutput(
            metricsConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetBucketMetricsConfigurationRequest {
    /**
     Default instance of the GetBucketMetricsConfigurationRequest structure.
     */
    static let __default: S3Model.GetBucketMetricsConfigurationRequest = {
        let defaultInstance = S3Model.GetBucketMetricsConfigurationRequest(
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension GetBucketNotificationConfigurationRequest {
    /**
     Default instance of the GetBucketNotificationConfigurationRequest structure.
     */
    static let __default: S3Model.GetBucketNotificationConfigurationRequest = {
        let defaultInstance = S3Model.GetBucketNotificationConfigurationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketPolicyOutput {
    /**
     Default instance of the GetBucketPolicyOutput structure.
     */
    static let __default: S3Model.GetBucketPolicyOutput = {
        let defaultInstance = S3Model.GetBucketPolicyOutput(
            policy: nil)

        return defaultInstance
    }()
}

public extension GetBucketPolicyRequest {
    /**
     Default instance of the GetBucketPolicyRequest structure.
     */
    static let __default: S3Model.GetBucketPolicyRequest = {
        let defaultInstance = S3Model.GetBucketPolicyRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketPolicyStatusOutput {
    /**
     Default instance of the GetBucketPolicyStatusOutput structure.
     */
    static let __default: S3Model.GetBucketPolicyStatusOutput = {
        let defaultInstance = S3Model.GetBucketPolicyStatusOutput(
            policyStatus: nil)

        return defaultInstance
    }()
}

public extension GetBucketPolicyStatusRequest {
    /**
     Default instance of the GetBucketPolicyStatusRequest structure.
     */
    static let __default: S3Model.GetBucketPolicyStatusRequest = {
        let defaultInstance = S3Model.GetBucketPolicyStatusRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketReplicationOutput {
    /**
     Default instance of the GetBucketReplicationOutput structure.
     */
    static let __default: S3Model.GetBucketReplicationOutput = {
        let defaultInstance = S3Model.GetBucketReplicationOutput(
            replicationConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetBucketReplicationRequest {
    /**
     Default instance of the GetBucketReplicationRequest structure.
     */
    static let __default: S3Model.GetBucketReplicationRequest = {
        let defaultInstance = S3Model.GetBucketReplicationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketRequestPaymentOutput {
    /**
     Default instance of the GetBucketRequestPaymentOutput structure.
     */
    static let __default: S3Model.GetBucketRequestPaymentOutput = {
        let defaultInstance = S3Model.GetBucketRequestPaymentOutput(
            payer: nil)

        return defaultInstance
    }()
}

public extension GetBucketRequestPaymentRequest {
    /**
     Default instance of the GetBucketRequestPaymentRequest structure.
     */
    static let __default: S3Model.GetBucketRequestPaymentRequest = {
        let defaultInstance = S3Model.GetBucketRequestPaymentRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketTaggingOutput {
    /**
     Default instance of the GetBucketTaggingOutput structure.
     */
    static let __default: S3Model.GetBucketTaggingOutput = {
        let defaultInstance = S3Model.GetBucketTaggingOutput(
            tagSet: [])

        return defaultInstance
    }()
}

public extension GetBucketTaggingRequest {
    /**
     Default instance of the GetBucketTaggingRequest structure.
     */
    static let __default: S3Model.GetBucketTaggingRequest = {
        let defaultInstance = S3Model.GetBucketTaggingRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketVersioningOutput {
    /**
     Default instance of the GetBucketVersioningOutput structure.
     */
    static let __default: S3Model.GetBucketVersioningOutput = {
        let defaultInstance = S3Model.GetBucketVersioningOutput(
            mFADelete: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension GetBucketVersioningRequest {
    /**
     Default instance of the GetBucketVersioningRequest structure.
     */
    static let __default: S3Model.GetBucketVersioningRequest = {
        let defaultInstance = S3Model.GetBucketVersioningRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetBucketWebsiteOutput {
    /**
     Default instance of the GetBucketWebsiteOutput structure.
     */
    static let __default: S3Model.GetBucketWebsiteOutput = {
        let defaultInstance = S3Model.GetBucketWebsiteOutput(
            errorDocument: nil,
            indexDocument: nil,
            redirectAllRequestsTo: nil,
            routingRules: nil)

        return defaultInstance
    }()
}

public extension GetBucketWebsiteRequest {
    /**
     Default instance of the GetBucketWebsiteRequest structure.
     */
    static let __default: S3Model.GetBucketWebsiteRequest = {
        let defaultInstance = S3Model.GetBucketWebsiteRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetObjectAclOutput {
    /**
     Default instance of the GetObjectAclOutput structure.
     */
    static let __default: S3Model.GetObjectAclOutput = {
        let defaultInstance = S3Model.GetObjectAclOutput(
            grants: nil,
            owner: nil,
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension GetObjectAclRequest {
    /**
     Default instance of the GetObjectAclRequest structure.
     */
    static let __default: S3Model.GetObjectAclRequest = {
        let defaultInstance = S3Model.GetObjectAclRequest(
            bucket: "value",
            key: "0",
            requestPayer: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension GetObjectLegalHoldOutput {
    /**
     Default instance of the GetObjectLegalHoldOutput structure.
     */
    static let __default: S3Model.GetObjectLegalHoldOutput = {
        let defaultInstance = S3Model.GetObjectLegalHoldOutput(
            legalHold: nil)

        return defaultInstance
    }()
}

public extension GetObjectLegalHoldRequest {
    /**
     Default instance of the GetObjectLegalHoldRequest structure.
     */
    static let __default: S3Model.GetObjectLegalHoldRequest = {
        let defaultInstance = S3Model.GetObjectLegalHoldRequest(
            bucket: "value",
            key: "0",
            requestPayer: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension GetObjectLockConfigurationOutput {
    /**
     Default instance of the GetObjectLockConfigurationOutput structure.
     */
    static let __default: S3Model.GetObjectLockConfigurationOutput = {
        let defaultInstance = S3Model.GetObjectLockConfigurationOutput(
            objectLockConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetObjectLockConfigurationRequest {
    /**
     Default instance of the GetObjectLockConfigurationRequest structure.
     */
    static let __default: S3Model.GetObjectLockConfigurationRequest = {
        let defaultInstance = S3Model.GetObjectLockConfigurationRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GetObjectOutput {
    /**
     Default instance of the GetObjectOutput structure.
     */
    static let __default: S3Model.GetObjectOutput = {
        let defaultInstance = S3Model.GetObjectOutput(
            acceptRanges: nil,
            body: nil,
            cacheControl: nil,
            contentDisposition: nil,
            contentEncoding: nil,
            contentLanguage: nil,
            contentLength: nil,
            contentRange: nil,
            contentType: nil,
            deleteMarker: nil,
            eTag: nil,
            expiration: nil,
            expires: nil,
            lastModified: nil,
            metadata: nil,
            missingMeta: nil,
            objectLockLegalHoldStatus: nil,
            objectLockMode: nil,
            objectLockRetainUntilDate: nil,
            partsCount: nil,
            replicationStatus: nil,
            requestCharged: nil,
            restore: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            storageClass: nil,
            tagCount: nil,
            versionId: nil,
            websiteRedirectLocation: nil)

        return defaultInstance
    }()
}

public extension GetObjectRequest {
    /**
     Default instance of the GetObjectRequest structure.
     */
    static let __default: S3Model.GetObjectRequest = {
        let defaultInstance = S3Model.GetObjectRequest(
            bucket: "value",
            ifMatch: nil,
            ifModifiedSince: nil,
            ifNoneMatch: nil,
            ifUnmodifiedSince: nil,
            key: "0",
            partNumber: nil,
            range: nil,
            requestPayer: nil,
            responseCacheControl: nil,
            responseContentDisposition: nil,
            responseContentEncoding: nil,
            responseContentLanguage: nil,
            responseContentType: nil,
            responseExpires: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension GetObjectRetentionOutput {
    /**
     Default instance of the GetObjectRetentionOutput structure.
     */
    static let __default: S3Model.GetObjectRetentionOutput = {
        let defaultInstance = S3Model.GetObjectRetentionOutput(
            retention: nil)

        return defaultInstance
    }()
}

public extension GetObjectRetentionRequest {
    /**
     Default instance of the GetObjectRetentionRequest structure.
     */
    static let __default: S3Model.GetObjectRetentionRequest = {
        let defaultInstance = S3Model.GetObjectRetentionRequest(
            bucket: "value",
            key: "0",
            requestPayer: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension GetObjectTaggingOutput {
    /**
     Default instance of the GetObjectTaggingOutput structure.
     */
    static let __default: S3Model.GetObjectTaggingOutput = {
        let defaultInstance = S3Model.GetObjectTaggingOutput(
            tagSet: [],
            versionId: nil)

        return defaultInstance
    }()
}

public extension GetObjectTaggingRequest {
    /**
     Default instance of the GetObjectTaggingRequest structure.
     */
    static let __default: S3Model.GetObjectTaggingRequest = {
        let defaultInstance = S3Model.GetObjectTaggingRequest(
            bucket: "value",
            key: "0",
            versionId: nil)

        return defaultInstance
    }()
}

public extension GetObjectTorrentOutput {
    /**
     Default instance of the GetObjectTorrentOutput structure.
     */
    static let __default: S3Model.GetObjectTorrentOutput = {
        let defaultInstance = S3Model.GetObjectTorrentOutput(
            body: nil,
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension GetObjectTorrentRequest {
    /**
     Default instance of the GetObjectTorrentRequest structure.
     */
    static let __default: S3Model.GetObjectTorrentRequest = {
        let defaultInstance = S3Model.GetObjectTorrentRequest(
            bucket: "value",
            key: "0",
            requestPayer: nil)

        return defaultInstance
    }()
}

public extension GetPublicAccessBlockOutput {
    /**
     Default instance of the GetPublicAccessBlockOutput structure.
     */
    static let __default: S3Model.GetPublicAccessBlockOutput = {
        let defaultInstance = S3Model.GetPublicAccessBlockOutput(
            publicAccessBlockConfiguration: nil)

        return defaultInstance
    }()
}

public extension GetPublicAccessBlockRequest {
    /**
     Default instance of the GetPublicAccessBlockRequest structure.
     */
    static let __default: S3Model.GetPublicAccessBlockRequest = {
        let defaultInstance = S3Model.GetPublicAccessBlockRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension GlacierJobParameters {
    /**
     Default instance of the GlacierJobParameters structure.
     */
    static let __default: S3Model.GlacierJobParameters = {
        let defaultInstance = S3Model.GlacierJobParameters(
            tier: .__default)

        return defaultInstance
    }()
}

public extension Grant {
    /**
     Default instance of the Grant structure.
     */
    static let __default: S3Model.Grant = {
        let defaultInstance = S3Model.Grant(
            grantee: nil,
            permission: nil)

        return defaultInstance
    }()
}

public extension Grantee {
    /**
     Default instance of the Grantee structure.
     */
    static let __default: S3Model.Grantee = {
        let defaultInstance = S3Model.Grantee(
            displayName: nil,
            emailAddress: nil,
            iD: nil,
            type: .__default,
            uRI: nil)

        return defaultInstance
    }()
}

public extension HeadBucketRequest {
    /**
     Default instance of the HeadBucketRequest structure.
     */
    static let __default: S3Model.HeadBucketRequest = {
        let defaultInstance = S3Model.HeadBucketRequest(
            bucket: "value")

        return defaultInstance
    }()
}

public extension HeadObjectOutput {
    /**
     Default instance of the HeadObjectOutput structure.
     */
    static let __default: S3Model.HeadObjectOutput = {
        let defaultInstance = S3Model.HeadObjectOutput(
            acceptRanges: nil,
            cacheControl: nil,
            contentDisposition: nil,
            contentEncoding: nil,
            contentLanguage: nil,
            contentLength: nil,
            contentType: nil,
            deleteMarker: nil,
            eTag: nil,
            expiration: nil,
            expires: nil,
            lastModified: nil,
            metadata: nil,
            missingMeta: nil,
            objectLockLegalHoldStatus: nil,
            objectLockMode: nil,
            objectLockRetainUntilDate: nil,
            partsCount: nil,
            replicationStatus: nil,
            requestCharged: nil,
            restore: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            storageClass: nil,
            versionId: nil,
            websiteRedirectLocation: nil)

        return defaultInstance
    }()
}

public extension HeadObjectRequest {
    /**
     Default instance of the HeadObjectRequest structure.
     */
    static let __default: S3Model.HeadObjectRequest = {
        let defaultInstance = S3Model.HeadObjectRequest(
            bucket: "value",
            ifMatch: nil,
            ifModifiedSince: nil,
            ifNoneMatch: nil,
            ifUnmodifiedSince: nil,
            key: "0",
            partNumber: nil,
            range: nil,
            requestPayer: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension IndexDocument {
    /**
     Default instance of the IndexDocument structure.
     */
    static let __default: S3Model.IndexDocument = {
        let defaultInstance = S3Model.IndexDocument(
            suffix: "value")

        return defaultInstance
    }()
}

public extension Initiator {
    /**
     Default instance of the Initiator structure.
     */
    static let __default: S3Model.Initiator = {
        let defaultInstance = S3Model.Initiator(
            displayName: nil,
            iD: nil)

        return defaultInstance
    }()
}

public extension InputSerialization {
    /**
     Default instance of the InputSerialization structure.
     */
    static let __default: S3Model.InputSerialization = {
        let defaultInstance = S3Model.InputSerialization(
            cSV: nil,
            compressionType: nil,
            jSON: nil,
            parquet: nil)

        return defaultInstance
    }()
}

public extension InventoryConfiguration {
    /**
     Default instance of the InventoryConfiguration structure.
     */
    static let __default: S3Model.InventoryConfiguration = {
        let defaultInstance = S3Model.InventoryConfiguration(
            destination: InventoryDestination.__default,
            filter: nil,
            id: "value",
            includedObjectVersions: .__default,
            isEnabled: false,
            optionalFields: nil,
            schedule: InventorySchedule.__default)

        return defaultInstance
    }()
}

public extension InventoryDestination {
    /**
     Default instance of the InventoryDestination structure.
     */
    static let __default: S3Model.InventoryDestination = {
        let defaultInstance = S3Model.InventoryDestination(
            s3BucketDestination: InventoryS3BucketDestination.__default)

        return defaultInstance
    }()
}

public extension InventoryEncryption {
    /**
     Default instance of the InventoryEncryption structure.
     */
    static let __default: S3Model.InventoryEncryption = {
        let defaultInstance = S3Model.InventoryEncryption(
            sSEKMS: nil,
            sSES3: nil)

        return defaultInstance
    }()
}

public extension InventoryFilter {
    /**
     Default instance of the InventoryFilter structure.
     */
    static let __default: S3Model.InventoryFilter = {
        let defaultInstance = S3Model.InventoryFilter(
            prefix: "value")

        return defaultInstance
    }()
}

public extension InventoryS3BucketDestination {
    /**
     Default instance of the InventoryS3BucketDestination structure.
     */
    static let __default: S3Model.InventoryS3BucketDestination = {
        let defaultInstance = S3Model.InventoryS3BucketDestination(
            accountId: nil,
            bucket: "value",
            encryption: nil,
            format: .__default,
            prefix: nil)

        return defaultInstance
    }()
}

public extension InventorySchedule {
    /**
     Default instance of the InventorySchedule structure.
     */
    static let __default: S3Model.InventorySchedule = {
        let defaultInstance = S3Model.InventorySchedule(
            frequency: .__default)

        return defaultInstance
    }()
}

public extension JSONInput {
    /**
     Default instance of the JSONInput structure.
     */
    static let __default: S3Model.JSONInput = {
        let defaultInstance = S3Model.JSONInput(
            type: nil)

        return defaultInstance
    }()
}

public extension JSONOutput {
    /**
     Default instance of the JSONOutput structure.
     */
    static let __default: S3Model.JSONOutput = {
        let defaultInstance = S3Model.JSONOutput(
            recordDelimiter: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionConfiguration {
    /**
     Default instance of the LambdaFunctionConfiguration structure.
     */
    static let __default: S3Model.LambdaFunctionConfiguration = {
        let defaultInstance = S3Model.LambdaFunctionConfiguration(
            events: [],
            filter: nil,
            id: nil,
            lambdaFunctionArn: "value")

        return defaultInstance
    }()
}

public extension LifecycleConfiguration {
    /**
     Default instance of the LifecycleConfiguration structure.
     */
    static let __default: S3Model.LifecycleConfiguration = {
        let defaultInstance = S3Model.LifecycleConfiguration(
            rules: [])

        return defaultInstance
    }()
}

public extension LifecycleExpiration {
    /**
     Default instance of the LifecycleExpiration structure.
     */
    static let __default: S3Model.LifecycleExpiration = {
        let defaultInstance = S3Model.LifecycleExpiration(
            date: nil,
            days: nil,
            expiredObjectDeleteMarker: nil)

        return defaultInstance
    }()
}

public extension LifecycleRule {
    /**
     Default instance of the LifecycleRule structure.
     */
    static let __default: S3Model.LifecycleRule = {
        let defaultInstance = S3Model.LifecycleRule(
            abortIncompleteMultipartUpload: nil,
            expiration: nil,
            filter: nil,
            iD: nil,
            noncurrentVersionExpiration: nil,
            noncurrentVersionTransitions: nil,
            status: .__default,
            transitions: nil)

        return defaultInstance
    }()
}

public extension LifecycleRuleAndOperator {
    /**
     Default instance of the LifecycleRuleAndOperator structure.
     */
    static let __default: S3Model.LifecycleRuleAndOperator = {
        let defaultInstance = S3Model.LifecycleRuleAndOperator(
            prefix: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension LifecycleRuleFilter {
    /**
     Default instance of the LifecycleRuleFilter structure.
     */
    static let __default: S3Model.LifecycleRuleFilter = {
        let defaultInstance = S3Model.LifecycleRuleFilter(
            and: nil,
            prefix: nil,
            tag: nil)

        return defaultInstance
    }()
}

public extension ListBucketAnalyticsConfigurationsOutput {
    /**
     Default instance of the ListBucketAnalyticsConfigurationsOutput structure.
     */
    static let __default: S3Model.ListBucketAnalyticsConfigurationsOutput = {
        let defaultInstance = S3Model.ListBucketAnalyticsConfigurationsOutput(
            analyticsConfigurationList: nil,
            continuationToken: nil,
            isTruncated: nil,
            nextContinuationToken: nil)

        return defaultInstance
    }()
}

public extension ListBucketAnalyticsConfigurationsRequest {
    /**
     Default instance of the ListBucketAnalyticsConfigurationsRequest structure.
     */
    static let __default: S3Model.ListBucketAnalyticsConfigurationsRequest = {
        let defaultInstance = S3Model.ListBucketAnalyticsConfigurationsRequest(
            bucket: "value",
            continuationToken: nil)

        return defaultInstance
    }()
}

public extension ListBucketInventoryConfigurationsOutput {
    /**
     Default instance of the ListBucketInventoryConfigurationsOutput structure.
     */
    static let __default: S3Model.ListBucketInventoryConfigurationsOutput = {
        let defaultInstance = S3Model.ListBucketInventoryConfigurationsOutput(
            continuationToken: nil,
            inventoryConfigurationList: nil,
            isTruncated: nil,
            nextContinuationToken: nil)

        return defaultInstance
    }()
}

public extension ListBucketInventoryConfigurationsRequest {
    /**
     Default instance of the ListBucketInventoryConfigurationsRequest structure.
     */
    static let __default: S3Model.ListBucketInventoryConfigurationsRequest = {
        let defaultInstance = S3Model.ListBucketInventoryConfigurationsRequest(
            bucket: "value",
            continuationToken: nil)

        return defaultInstance
    }()
}

public extension ListBucketMetricsConfigurationsOutput {
    /**
     Default instance of the ListBucketMetricsConfigurationsOutput structure.
     */
    static let __default: S3Model.ListBucketMetricsConfigurationsOutput = {
        let defaultInstance = S3Model.ListBucketMetricsConfigurationsOutput(
            continuationToken: nil,
            isTruncated: nil,
            metricsConfigurationList: nil,
            nextContinuationToken: nil)

        return defaultInstance
    }()
}

public extension ListBucketMetricsConfigurationsRequest {
    /**
     Default instance of the ListBucketMetricsConfigurationsRequest structure.
     */
    static let __default: S3Model.ListBucketMetricsConfigurationsRequest = {
        let defaultInstance = S3Model.ListBucketMetricsConfigurationsRequest(
            bucket: "value",
            continuationToken: nil)

        return defaultInstance
    }()
}

public extension ListBucketsOutput {
    /**
     Default instance of the ListBucketsOutput structure.
     */
    static let __default: S3Model.ListBucketsOutput = {
        let defaultInstance = S3Model.ListBucketsOutput(
            buckets: nil,
            owner: nil)

        return defaultInstance
    }()
}

public extension ListMultipartUploadsOutput {
    /**
     Default instance of the ListMultipartUploadsOutput structure.
     */
    static let __default: S3Model.ListMultipartUploadsOutput = {
        let defaultInstance = S3Model.ListMultipartUploadsOutput(
            bucket: nil,
            commonPrefixes: nil,
            delimiter: nil,
            encodingType: nil,
            isTruncated: nil,
            keyMarker: nil,
            maxUploads: nil,
            nextKeyMarker: nil,
            nextUploadIdMarker: nil,
            prefix: nil,
            uploadIdMarker: nil,
            uploads: nil)

        return defaultInstance
    }()
}

public extension ListMultipartUploadsRequest {
    /**
     Default instance of the ListMultipartUploadsRequest structure.
     */
    static let __default: S3Model.ListMultipartUploadsRequest = {
        let defaultInstance = S3Model.ListMultipartUploadsRequest(
            bucket: "value",
            delimiter: nil,
            encodingType: nil,
            keyMarker: nil,
            maxUploads: nil,
            prefix: nil,
            uploadIdMarker: nil)

        return defaultInstance
    }()
}

public extension ListObjectVersionsOutput {
    /**
     Default instance of the ListObjectVersionsOutput structure.
     */
    static let __default: S3Model.ListObjectVersionsOutput = {
        let defaultInstance = S3Model.ListObjectVersionsOutput(
            commonPrefixes: nil,
            deleteMarkers: nil,
            delimiter: nil,
            encodingType: nil,
            isTruncated: nil,
            keyMarker: nil,
            maxKeys: nil,
            name: nil,
            nextKeyMarker: nil,
            nextVersionIdMarker: nil,
            prefix: nil,
            versionIdMarker: nil,
            versions: nil)

        return defaultInstance
    }()
}

public extension ListObjectVersionsRequest {
    /**
     Default instance of the ListObjectVersionsRequest structure.
     */
    static let __default: S3Model.ListObjectVersionsRequest = {
        let defaultInstance = S3Model.ListObjectVersionsRequest(
            bucket: "value",
            delimiter: nil,
            encodingType: nil,
            keyMarker: nil,
            maxKeys: nil,
            prefix: nil,
            versionIdMarker: nil)

        return defaultInstance
    }()
}

public extension ListObjectsOutput {
    /**
     Default instance of the ListObjectsOutput structure.
     */
    static let __default: S3Model.ListObjectsOutput = {
        let defaultInstance = S3Model.ListObjectsOutput(
            commonPrefixes: nil,
            contents: nil,
            delimiter: nil,
            encodingType: nil,
            isTruncated: nil,
            marker: nil,
            maxKeys: nil,
            name: nil,
            nextMarker: nil,
            prefix: nil)

        return defaultInstance
    }()
}

public extension ListObjectsRequest {
    /**
     Default instance of the ListObjectsRequest structure.
     */
    static let __default: S3Model.ListObjectsRequest = {
        let defaultInstance = S3Model.ListObjectsRequest(
            bucket: "value",
            delimiter: nil,
            encodingType: nil,
            marker: nil,
            maxKeys: nil,
            prefix: nil,
            requestPayer: nil)

        return defaultInstance
    }()
}

public extension ListObjectsV2Output {
    /**
     Default instance of the ListObjectsV2Output structure.
     */
    static let __default: S3Model.ListObjectsV2Output = {
        let defaultInstance = S3Model.ListObjectsV2Output(
            commonPrefixes: nil,
            contents: nil,
            continuationToken: nil,
            delimiter: nil,
            encodingType: nil,
            isTruncated: nil,
            keyCount: nil,
            maxKeys: nil,
            name: nil,
            nextContinuationToken: nil,
            prefix: nil,
            startAfter: nil)

        return defaultInstance
    }()
}

public extension ListObjectsV2Request {
    /**
     Default instance of the ListObjectsV2Request structure.
     */
    static let __default: S3Model.ListObjectsV2Request = {
        let defaultInstance = S3Model.ListObjectsV2Request(
            bucket: "value",
            continuationToken: nil,
            delimiter: nil,
            encodingType: nil,
            fetchOwner: nil,
            maxKeys: nil,
            prefix: nil,
            requestPayer: nil,
            startAfter: nil)

        return defaultInstance
    }()
}

public extension ListPartsOutput {
    /**
     Default instance of the ListPartsOutput structure.
     */
    static let __default: S3Model.ListPartsOutput = {
        let defaultInstance = S3Model.ListPartsOutput(
            abortDate: nil,
            abortRuleId: nil,
            bucket: nil,
            initiator: nil,
            isTruncated: nil,
            key: nil,
            maxParts: nil,
            nextPartNumberMarker: nil,
            owner: nil,
            partNumberMarker: nil,
            parts: nil,
            requestCharged: nil,
            storageClass: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension ListPartsRequest {
    /**
     Default instance of the ListPartsRequest structure.
     */
    static let __default: S3Model.ListPartsRequest = {
        let defaultInstance = S3Model.ListPartsRequest(
            bucket: "value",
            key: "0",
            maxParts: nil,
            partNumberMarker: nil,
            requestPayer: nil,
            uploadId: "value")

        return defaultInstance
    }()
}

public extension LoggingEnabled {
    /**
     Default instance of the LoggingEnabled structure.
     */
    static let __default: S3Model.LoggingEnabled = {
        let defaultInstance = S3Model.LoggingEnabled(
            targetBucket: "value",
            targetGrants: nil,
            targetPrefix: "value")

        return defaultInstance
    }()
}

public extension MetadataEntry {
    /**
     Default instance of the MetadataEntry structure.
     */
    static let __default: S3Model.MetadataEntry = {
        let defaultInstance = S3Model.MetadataEntry(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension Metrics {
    /**
     Default instance of the Metrics structure.
     */
    static let __default: S3Model.Metrics = {
        let defaultInstance = S3Model.Metrics(
            eventThreshold: ReplicationTimeValue.__default,
            status: .__default)

        return defaultInstance
    }()
}

public extension MetricsAndOperator {
    /**
     Default instance of the MetricsAndOperator structure.
     */
    static let __default: S3Model.MetricsAndOperator = {
        let defaultInstance = S3Model.MetricsAndOperator(
            prefix: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension MetricsConfiguration {
    /**
     Default instance of the MetricsConfiguration structure.
     */
    static let __default: S3Model.MetricsConfiguration = {
        let defaultInstance = S3Model.MetricsConfiguration(
            filter: nil,
            id: "value")

        return defaultInstance
    }()
}

public extension MetricsFilter {
    /**
     Default instance of the MetricsFilter structure.
     */
    static let __default: S3Model.MetricsFilter = {
        let defaultInstance = S3Model.MetricsFilter(
            and: nil,
            prefix: nil,
            tag: nil)

        return defaultInstance
    }()
}

public extension MultipartUpload {
    /**
     Default instance of the MultipartUpload structure.
     */
    static let __default: S3Model.MultipartUpload = {
        let defaultInstance = S3Model.MultipartUpload(
            initiated: nil,
            initiator: nil,
            key: nil,
            owner: nil,
            storageClass: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension NoSuchBucket {
    /**
     Default instance of the NoSuchBucket structure.
     */
    static let __default: S3Model.NoSuchBucket = {
        let defaultInstance = S3Model.NoSuchBucket()

        return defaultInstance
    }()
}

public extension NoSuchKey {
    /**
     Default instance of the NoSuchKey structure.
     */
    static let __default: S3Model.NoSuchKey = {
        let defaultInstance = S3Model.NoSuchKey()

        return defaultInstance
    }()
}

public extension NoSuchUpload {
    /**
     Default instance of the NoSuchUpload structure.
     */
    static let __default: S3Model.NoSuchUpload = {
        let defaultInstance = S3Model.NoSuchUpload()

        return defaultInstance
    }()
}

public extension NoncurrentVersionExpiration {
    /**
     Default instance of the NoncurrentVersionExpiration structure.
     */
    static let __default: S3Model.NoncurrentVersionExpiration = {
        let defaultInstance = S3Model.NoncurrentVersionExpiration(
            noncurrentDays: nil)

        return defaultInstance
    }()
}

public extension NoncurrentVersionTransition {
    /**
     Default instance of the NoncurrentVersionTransition structure.
     */
    static let __default: S3Model.NoncurrentVersionTransition = {
        let defaultInstance = S3Model.NoncurrentVersionTransition(
            noncurrentDays: nil,
            storageClass: nil)

        return defaultInstance
    }()
}

public extension NotificationConfiguration {
    /**
     Default instance of the NotificationConfiguration structure.
     */
    static let __default: S3Model.NotificationConfiguration = {
        let defaultInstance = S3Model.NotificationConfiguration(
            lambdaFunctionConfigurations: nil,
            queueConfigurations: nil,
            topicConfigurations: nil)

        return defaultInstance
    }()
}

public extension NotificationConfigurationDeprecated {
    /**
     Default instance of the NotificationConfigurationDeprecated structure.
     */
    static let __default: S3Model.NotificationConfigurationDeprecated = {
        let defaultInstance = S3Model.NotificationConfigurationDeprecated(
            cloudFunctionConfiguration: nil,
            queueConfiguration: nil,
            topicConfiguration: nil)

        return defaultInstance
    }()
}

public extension NotificationConfigurationFilter {
    /**
     Default instance of the NotificationConfigurationFilter structure.
     */
    static let __default: S3Model.NotificationConfigurationFilter = {
        let defaultInstance = S3Model.NotificationConfigurationFilter(
            key: nil)

        return defaultInstance
    }()
}

public extension Object {
    /**
     Default instance of the Object structure.
     */
    static let __default: S3Model.Object = {
        let defaultInstance = S3Model.Object(
            eTag: nil,
            key: nil,
            lastModified: nil,
            owner: nil,
            size: nil,
            storageClass: nil)

        return defaultInstance
    }()
}

public extension ObjectAlreadyInActiveTierError {
    /**
     Default instance of the ObjectAlreadyInActiveTierError structure.
     */
    static let __default: S3Model.ObjectAlreadyInActiveTierError = {
        let defaultInstance = S3Model.ObjectAlreadyInActiveTierError()

        return defaultInstance
    }()
}

public extension ObjectIdentifier {
    /**
     Default instance of the ObjectIdentifier structure.
     */
    static let __default: S3Model.ObjectIdentifier = {
        let defaultInstance = S3Model.ObjectIdentifier(
            key: "0",
            versionId: nil)

        return defaultInstance
    }()
}

public extension ObjectLockConfiguration {
    /**
     Default instance of the ObjectLockConfiguration structure.
     */
    static let __default: S3Model.ObjectLockConfiguration = {
        let defaultInstance = S3Model.ObjectLockConfiguration(
            objectLockEnabled: nil,
            rule: nil)

        return defaultInstance
    }()
}

public extension ObjectLockLegalHold {
    /**
     Default instance of the ObjectLockLegalHold structure.
     */
    static let __default: S3Model.ObjectLockLegalHold = {
        let defaultInstance = S3Model.ObjectLockLegalHold(
            status: nil)

        return defaultInstance
    }()
}

public extension ObjectLockRetention {
    /**
     Default instance of the ObjectLockRetention structure.
     */
    static let __default: S3Model.ObjectLockRetention = {
        let defaultInstance = S3Model.ObjectLockRetention(
            mode: nil,
            retainUntilDate: nil)

        return defaultInstance
    }()
}

public extension ObjectLockRule {
    /**
     Default instance of the ObjectLockRule structure.
     */
    static let __default: S3Model.ObjectLockRule = {
        let defaultInstance = S3Model.ObjectLockRule(
            defaultRetention: nil)

        return defaultInstance
    }()
}

public extension ObjectNotInActiveTierError {
    /**
     Default instance of the ObjectNotInActiveTierError structure.
     */
    static let __default: S3Model.ObjectNotInActiveTierError = {
        let defaultInstance = S3Model.ObjectNotInActiveTierError()

        return defaultInstance
    }()
}

public extension ObjectVersion {
    /**
     Default instance of the ObjectVersion structure.
     */
    static let __default: S3Model.ObjectVersion = {
        let defaultInstance = S3Model.ObjectVersion(
            eTag: nil,
            isLatest: nil,
            key: nil,
            lastModified: nil,
            owner: nil,
            size: nil,
            storageClass: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension OutputLocation {
    /**
     Default instance of the OutputLocation structure.
     */
    static let __default: S3Model.OutputLocation = {
        let defaultInstance = S3Model.OutputLocation(
            s3: nil)

        return defaultInstance
    }()
}

public extension OutputSerialization {
    /**
     Default instance of the OutputSerialization structure.
     */
    static let __default: S3Model.OutputSerialization = {
        let defaultInstance = S3Model.OutputSerialization(
            cSV: nil,
            jSON: nil)

        return defaultInstance
    }()
}

public extension Owner {
    /**
     Default instance of the Owner structure.
     */
    static let __default: S3Model.Owner = {
        let defaultInstance = S3Model.Owner(
            displayName: nil,
            iD: nil)

        return defaultInstance
    }()
}

public extension ParquetInput {
    /**
     Default instance of the ParquetInput structure.
     */
    static let __default: S3Model.ParquetInput = {
        let defaultInstance = S3Model.ParquetInput()

        return defaultInstance
    }()
}

public extension Part {
    /**
     Default instance of the Part structure.
     */
    static let __default: S3Model.Part = {
        let defaultInstance = S3Model.Part(
            eTag: nil,
            lastModified: nil,
            partNumber: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension PolicyStatus {
    /**
     Default instance of the PolicyStatus structure.
     */
    static let __default: S3Model.PolicyStatus = {
        let defaultInstance = S3Model.PolicyStatus(
            isPublic: nil)

        return defaultInstance
    }()
}

public extension Progress {
    /**
     Default instance of the Progress structure.
     */
    static let __default: S3Model.Progress = {
        let defaultInstance = S3Model.Progress(
            bytesProcessed: nil,
            bytesReturned: nil,
            bytesScanned: nil)

        return defaultInstance
    }()
}

public extension ProgressEvent {
    /**
     Default instance of the ProgressEvent structure.
     */
    static let __default: S3Model.ProgressEvent = {
        let defaultInstance = S3Model.ProgressEvent(
            details: nil)

        return defaultInstance
    }()
}

public extension PublicAccessBlockConfiguration {
    /**
     Default instance of the PublicAccessBlockConfiguration structure.
     */
    static let __default: S3Model.PublicAccessBlockConfiguration = {
        let defaultInstance = S3Model.PublicAccessBlockConfiguration(
            blockPublicAcls: nil,
            blockPublicPolicy: nil,
            ignorePublicAcls: nil,
            restrictPublicBuckets: nil)

        return defaultInstance
    }()
}

public extension PutBucketAccelerateConfigurationRequest {
    /**
     Default instance of the PutBucketAccelerateConfigurationRequest structure.
     */
    static let __default: S3Model.PutBucketAccelerateConfigurationRequest = {
        let defaultInstance = S3Model.PutBucketAccelerateConfigurationRequest(
            accelerateConfiguration: AccelerateConfiguration.__default,
            bucket: "value")

        return defaultInstance
    }()
}

public extension PutBucketAclRequest {
    /**
     Default instance of the PutBucketAclRequest structure.
     */
    static let __default: S3Model.PutBucketAclRequest = {
        let defaultInstance = S3Model.PutBucketAclRequest(
            aCL: nil,
            accessControlPolicy: nil,
            bucket: "value",
            contentMD5: nil,
            grantFullControl: nil,
            grantRead: nil,
            grantReadACP: nil,
            grantWrite: nil,
            grantWriteACP: nil)

        return defaultInstance
    }()
}

public extension PutBucketAnalyticsConfigurationRequest {
    /**
     Default instance of the PutBucketAnalyticsConfigurationRequest structure.
     */
    static let __default: S3Model.PutBucketAnalyticsConfigurationRequest = {
        let defaultInstance = S3Model.PutBucketAnalyticsConfigurationRequest(
            analyticsConfiguration: AnalyticsConfiguration.__default,
            bucket: "value",
            id: "value")

        return defaultInstance
    }()
}

public extension PutBucketCorsRequest {
    /**
     Default instance of the PutBucketCorsRequest structure.
     */
    static let __default: S3Model.PutBucketCorsRequest = {
        let defaultInstance = S3Model.PutBucketCorsRequest(
            bucket: "value",
            cORSConfiguration: CORSConfiguration.__default,
            contentMD5: nil)

        return defaultInstance
    }()
}

public extension PutBucketEncryptionRequest {
    /**
     Default instance of the PutBucketEncryptionRequest structure.
     */
    static let __default: S3Model.PutBucketEncryptionRequest = {
        let defaultInstance = S3Model.PutBucketEncryptionRequest(
            bucket: "value",
            contentMD5: nil,
            serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutBucketInventoryConfigurationRequest {
    /**
     Default instance of the PutBucketInventoryConfigurationRequest structure.
     */
    static let __default: S3Model.PutBucketInventoryConfigurationRequest = {
        let defaultInstance = S3Model.PutBucketInventoryConfigurationRequest(
            bucket: "value",
            id: "value",
            inventoryConfiguration: InventoryConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutBucketLifecycleConfigurationRequest {
    /**
     Default instance of the PutBucketLifecycleConfigurationRequest structure.
     */
    static let __default: S3Model.PutBucketLifecycleConfigurationRequest = {
        let defaultInstance = S3Model.PutBucketLifecycleConfigurationRequest(
            bucket: "value",
            lifecycleConfiguration: nil)

        return defaultInstance
    }()
}

public extension PutBucketLifecycleRequest {
    /**
     Default instance of the PutBucketLifecycleRequest structure.
     */
    static let __default: S3Model.PutBucketLifecycleRequest = {
        let defaultInstance = S3Model.PutBucketLifecycleRequest(
            bucket: "value",
            contentMD5: nil,
            lifecycleConfiguration: nil)

        return defaultInstance
    }()
}

public extension PutBucketLoggingRequest {
    /**
     Default instance of the PutBucketLoggingRequest structure.
     */
    static let __default: S3Model.PutBucketLoggingRequest = {
        let defaultInstance = S3Model.PutBucketLoggingRequest(
            bucket: "value",
            bucketLoggingStatus: BucketLoggingStatus.__default,
            contentMD5: nil)

        return defaultInstance
    }()
}

public extension PutBucketMetricsConfigurationRequest {
    /**
     Default instance of the PutBucketMetricsConfigurationRequest structure.
     */
    static let __default: S3Model.PutBucketMetricsConfigurationRequest = {
        let defaultInstance = S3Model.PutBucketMetricsConfigurationRequest(
            bucket: "value",
            id: "value",
            metricsConfiguration: MetricsConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutBucketNotificationConfigurationRequest {
    /**
     Default instance of the PutBucketNotificationConfigurationRequest structure.
     */
    static let __default: S3Model.PutBucketNotificationConfigurationRequest = {
        let defaultInstance = S3Model.PutBucketNotificationConfigurationRequest(
            bucket: "value",
            notificationConfiguration: NotificationConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutBucketNotificationRequest {
    /**
     Default instance of the PutBucketNotificationRequest structure.
     */
    static let __default: S3Model.PutBucketNotificationRequest = {
        let defaultInstance = S3Model.PutBucketNotificationRequest(
            bucket: "value",
            contentMD5: nil,
            notificationConfiguration: NotificationConfigurationDeprecated.__default)

        return defaultInstance
    }()
}

public extension PutBucketPolicyRequest {
    /**
     Default instance of the PutBucketPolicyRequest structure.
     */
    static let __default: S3Model.PutBucketPolicyRequest = {
        let defaultInstance = S3Model.PutBucketPolicyRequest(
            bucket: "value",
            confirmRemoveSelfBucketAccess: nil,
            contentMD5: nil,
            policy: "value")

        return defaultInstance
    }()
}

public extension PutBucketReplicationRequest {
    /**
     Default instance of the PutBucketReplicationRequest structure.
     */
    static let __default: S3Model.PutBucketReplicationRequest = {
        let defaultInstance = S3Model.PutBucketReplicationRequest(
            bucket: "value",
            contentMD5: nil,
            replicationConfiguration: ReplicationConfiguration.__default,
            token: nil)

        return defaultInstance
    }()
}

public extension PutBucketRequestPaymentRequest {
    /**
     Default instance of the PutBucketRequestPaymentRequest structure.
     */
    static let __default: S3Model.PutBucketRequestPaymentRequest = {
        let defaultInstance = S3Model.PutBucketRequestPaymentRequest(
            bucket: "value",
            contentMD5: nil,
            requestPaymentConfiguration: RequestPaymentConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutBucketTaggingRequest {
    /**
     Default instance of the PutBucketTaggingRequest structure.
     */
    static let __default: S3Model.PutBucketTaggingRequest = {
        let defaultInstance = S3Model.PutBucketTaggingRequest(
            bucket: "value",
            contentMD5: nil,
            tagging: Tagging.__default)

        return defaultInstance
    }()
}

public extension PutBucketVersioningRequest {
    /**
     Default instance of the PutBucketVersioningRequest structure.
     */
    static let __default: S3Model.PutBucketVersioningRequest = {
        let defaultInstance = S3Model.PutBucketVersioningRequest(
            bucket: "value",
            contentMD5: nil,
            mFA: nil,
            versioningConfiguration: VersioningConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutBucketWebsiteRequest {
    /**
     Default instance of the PutBucketWebsiteRequest structure.
     */
    static let __default: S3Model.PutBucketWebsiteRequest = {
        let defaultInstance = S3Model.PutBucketWebsiteRequest(
            bucket: "value",
            contentMD5: nil,
            websiteConfiguration: WebsiteConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutObjectAclOutput {
    /**
     Default instance of the PutObjectAclOutput structure.
     */
    static let __default: S3Model.PutObjectAclOutput = {
        let defaultInstance = S3Model.PutObjectAclOutput(
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension PutObjectAclRequest {
    /**
     Default instance of the PutObjectAclRequest structure.
     */
    static let __default: S3Model.PutObjectAclRequest = {
        let defaultInstance = S3Model.PutObjectAclRequest(
            aCL: nil,
            accessControlPolicy: nil,
            bucket: "value",
            contentMD5: nil,
            grantFullControl: nil,
            grantRead: nil,
            grantReadACP: nil,
            grantWrite: nil,
            grantWriteACP: nil,
            key: "0",
            requestPayer: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension PutObjectLegalHoldOutput {
    /**
     Default instance of the PutObjectLegalHoldOutput structure.
     */
    static let __default: S3Model.PutObjectLegalHoldOutput = {
        let defaultInstance = S3Model.PutObjectLegalHoldOutput(
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension PutObjectLegalHoldRequest {
    /**
     Default instance of the PutObjectLegalHoldRequest structure.
     */
    static let __default: S3Model.PutObjectLegalHoldRequest = {
        let defaultInstance = S3Model.PutObjectLegalHoldRequest(
            bucket: "value",
            contentMD5: nil,
            key: "0",
            legalHold: nil,
            requestPayer: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension PutObjectLockConfigurationOutput {
    /**
     Default instance of the PutObjectLockConfigurationOutput structure.
     */
    static let __default: S3Model.PutObjectLockConfigurationOutput = {
        let defaultInstance = S3Model.PutObjectLockConfigurationOutput(
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension PutObjectLockConfigurationRequest {
    /**
     Default instance of the PutObjectLockConfigurationRequest structure.
     */
    static let __default: S3Model.PutObjectLockConfigurationRequest = {
        let defaultInstance = S3Model.PutObjectLockConfigurationRequest(
            bucket: "value",
            contentMD5: nil,
            objectLockConfiguration: nil,
            requestPayer: nil,
            token: nil)

        return defaultInstance
    }()
}

public extension PutObjectOutput {
    /**
     Default instance of the PutObjectOutput structure.
     */
    static let __default: S3Model.PutObjectOutput = {
        let defaultInstance = S3Model.PutObjectOutput(
            eTag: nil,
            expiration: nil,
            requestCharged: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSEncryptionContext: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension PutObjectRequest {
    /**
     Default instance of the PutObjectRequest structure.
     */
    static let __default: S3Model.PutObjectRequest = {
        let defaultInstance = S3Model.PutObjectRequest(
            aCL: nil,
            body: nil,
            bucket: "value",
            cacheControl: nil,
            contentDisposition: nil,
            contentEncoding: nil,
            contentLanguage: nil,
            contentLength: nil,
            contentMD5: nil,
            contentType: nil,
            expires: nil,
            grantFullControl: nil,
            grantRead: nil,
            grantReadACP: nil,
            grantWriteACP: nil,
            key: "0",
            metadata: nil,
            objectLockLegalHoldStatus: nil,
            objectLockMode: nil,
            objectLockRetainUntilDate: nil,
            requestPayer: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSEncryptionContext: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil,
            storageClass: nil,
            tagging: nil,
            websiteRedirectLocation: nil)

        return defaultInstance
    }()
}

public extension PutObjectRetentionOutput {
    /**
     Default instance of the PutObjectRetentionOutput structure.
     */
    static let __default: S3Model.PutObjectRetentionOutput = {
        let defaultInstance = S3Model.PutObjectRetentionOutput(
            requestCharged: nil)

        return defaultInstance
    }()
}

public extension PutObjectRetentionRequest {
    /**
     Default instance of the PutObjectRetentionRequest structure.
     */
    static let __default: S3Model.PutObjectRetentionRequest = {
        let defaultInstance = S3Model.PutObjectRetentionRequest(
            bucket: "value",
            bypassGovernanceRetention: nil,
            contentMD5: nil,
            key: "0",
            requestPayer: nil,
            retention: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension PutObjectTaggingOutput {
    /**
     Default instance of the PutObjectTaggingOutput structure.
     */
    static let __default: S3Model.PutObjectTaggingOutput = {
        let defaultInstance = S3Model.PutObjectTaggingOutput(
            versionId: nil)

        return defaultInstance
    }()
}

public extension PutObjectTaggingRequest {
    /**
     Default instance of the PutObjectTaggingRequest structure.
     */
    static let __default: S3Model.PutObjectTaggingRequest = {
        let defaultInstance = S3Model.PutObjectTaggingRequest(
            bucket: "value",
            contentMD5: nil,
            key: "0",
            tagging: Tagging.__default,
            versionId: nil)

        return defaultInstance
    }()
}

public extension PutPublicAccessBlockRequest {
    /**
     Default instance of the PutPublicAccessBlockRequest structure.
     */
    static let __default: S3Model.PutPublicAccessBlockRequest = {
        let defaultInstance = S3Model.PutPublicAccessBlockRequest(
            bucket: "value",
            contentMD5: nil,
            publicAccessBlockConfiguration: PublicAccessBlockConfiguration.__default)

        return defaultInstance
    }()
}

public extension QueueConfiguration {
    /**
     Default instance of the QueueConfiguration structure.
     */
    static let __default: S3Model.QueueConfiguration = {
        let defaultInstance = S3Model.QueueConfiguration(
            events: [],
            filter: nil,
            id: nil,
            queueArn: "value")

        return defaultInstance
    }()
}

public extension QueueConfigurationDeprecated {
    /**
     Default instance of the QueueConfigurationDeprecated structure.
     */
    static let __default: S3Model.QueueConfigurationDeprecated = {
        let defaultInstance = S3Model.QueueConfigurationDeprecated(
            events: nil,
            id: nil,
            queue: nil)

        return defaultInstance
    }()
}

public extension RecordsEvent {
    /**
     Default instance of the RecordsEvent structure.
     */
    static let __default: S3Model.RecordsEvent = {
        let defaultInstance = S3Model.RecordsEvent(
            payload: nil)

        return defaultInstance
    }()
}

public extension Redirect {
    /**
     Default instance of the Redirect structure.
     */
    static let __default: S3Model.Redirect = {
        let defaultInstance = S3Model.Redirect(
            hostName: nil,
            httpRedirectCode: nil,
            protocol: nil,
            replaceKeyPrefixWith: nil,
            replaceKeyWith: nil)

        return defaultInstance
    }()
}

public extension RedirectAllRequestsTo {
    /**
     Default instance of the RedirectAllRequestsTo structure.
     */
    static let __default: S3Model.RedirectAllRequestsTo = {
        let defaultInstance = S3Model.RedirectAllRequestsTo(
            hostName: "value",
            protocol: nil)

        return defaultInstance
    }()
}

public extension ReplicationConfiguration {
    /**
     Default instance of the ReplicationConfiguration structure.
     */
    static let __default: S3Model.ReplicationConfiguration = {
        let defaultInstance = S3Model.ReplicationConfiguration(
            role: "value",
            rules: [])

        return defaultInstance
    }()
}

public extension ReplicationRule {
    /**
     Default instance of the ReplicationRule structure.
     */
    static let __default: S3Model.ReplicationRule = {
        let defaultInstance = S3Model.ReplicationRule(
            deleteMarkerReplication: nil,
            destination: Destination.__default,
            existingObjectReplication: nil,
            filter: nil,
            iD: nil,
            priority: nil,
            sourceSelectionCriteria: nil,
            status: .__default)

        return defaultInstance
    }()
}

public extension ReplicationRuleAndOperator {
    /**
     Default instance of the ReplicationRuleAndOperator structure.
     */
    static let __default: S3Model.ReplicationRuleAndOperator = {
        let defaultInstance = S3Model.ReplicationRuleAndOperator(
            prefix: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension ReplicationRuleFilter {
    /**
     Default instance of the ReplicationRuleFilter structure.
     */
    static let __default: S3Model.ReplicationRuleFilter = {
        let defaultInstance = S3Model.ReplicationRuleFilter(
            and: nil,
            prefix: nil,
            tag: nil)

        return defaultInstance
    }()
}

public extension ReplicationTime {
    /**
     Default instance of the ReplicationTime structure.
     */
    static let __default: S3Model.ReplicationTime = {
        let defaultInstance = S3Model.ReplicationTime(
            status: .__default,
            time: ReplicationTimeValue.__default)

        return defaultInstance
    }()
}

public extension ReplicationTimeValue {
    /**
     Default instance of the ReplicationTimeValue structure.
     */
    static let __default: S3Model.ReplicationTimeValue = {
        let defaultInstance = S3Model.ReplicationTimeValue(
            minutes: nil)

        return defaultInstance
    }()
}

public extension RequestPaymentConfiguration {
    /**
     Default instance of the RequestPaymentConfiguration structure.
     */
    static let __default: S3Model.RequestPaymentConfiguration = {
        let defaultInstance = S3Model.RequestPaymentConfiguration(
            payer: .__default)

        return defaultInstance
    }()
}

public extension RequestProgress {
    /**
     Default instance of the RequestProgress structure.
     */
    static let __default: S3Model.RequestProgress = {
        let defaultInstance = S3Model.RequestProgress(
            enabled: nil)

        return defaultInstance
    }()
}

public extension RestoreObjectOutput {
    /**
     Default instance of the RestoreObjectOutput structure.
     */
    static let __default: S3Model.RestoreObjectOutput = {
        let defaultInstance = S3Model.RestoreObjectOutput(
            requestCharged: nil,
            restoreOutputPath: nil)

        return defaultInstance
    }()
}

public extension RestoreObjectRequest {
    /**
     Default instance of the RestoreObjectRequest structure.
     */
    static let __default: S3Model.RestoreObjectRequest = {
        let defaultInstance = S3Model.RestoreObjectRequest(
            bucket: "value",
            key: "0",
            requestPayer: nil,
            restoreRequest: nil,
            versionId: nil)

        return defaultInstance
    }()
}

public extension RestoreRequest {
    /**
     Default instance of the RestoreRequest structure.
     */
    static let __default: S3Model.RestoreRequest = {
        let defaultInstance = S3Model.RestoreRequest(
            days: nil,
            description: nil,
            glacierJobParameters: nil,
            outputLocation: nil,
            selectParameters: nil,
            tier: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension RoutingRule {
    /**
     Default instance of the RoutingRule structure.
     */
    static let __default: S3Model.RoutingRule = {
        let defaultInstance = S3Model.RoutingRule(
            condition: nil,
            redirect: Redirect.__default)

        return defaultInstance
    }()
}

public extension Rule {
    /**
     Default instance of the Rule structure.
     */
    static let __default: S3Model.Rule = {
        let defaultInstance = S3Model.Rule(
            abortIncompleteMultipartUpload: nil,
            expiration: nil,
            iD: nil,
            noncurrentVersionExpiration: nil,
            noncurrentVersionTransition: nil,
            prefix: "value",
            status: .__default,
            transition: nil)

        return defaultInstance
    }()
}

public extension S3KeyFilter {
    /**
     Default instance of the S3KeyFilter structure.
     */
    static let __default: S3Model.S3KeyFilter = {
        let defaultInstance = S3Model.S3KeyFilter(
            filterRules: nil)

        return defaultInstance
    }()
}

public extension S3Location {
    /**
     Default instance of the S3Location structure.
     */
    static let __default: S3Model.S3Location = {
        let defaultInstance = S3Model.S3Location(
            accessControlList: nil,
            bucketName: "value",
            cannedACL: nil,
            encryption: nil,
            prefix: "value",
            storageClass: nil,
            tagging: nil,
            userMetadata: nil)

        return defaultInstance
    }()
}

public extension SSEKMS {
    /**
     Default instance of the SSEKMS structure.
     */
    static let __default: S3Model.SSEKMS = {
        let defaultInstance = S3Model.SSEKMS(
            keyId: "value")

        return defaultInstance
    }()
}

public extension SSES3 {
    /**
     Default instance of the SSES3 structure.
     */
    static let __default: S3Model.SSES3 = {
        let defaultInstance = S3Model.SSES3()

        return defaultInstance
    }()
}

public extension ScanRange {
    /**
     Default instance of the ScanRange structure.
     */
    static let __default: S3Model.ScanRange = {
        let defaultInstance = S3Model.ScanRange(
            end: nil,
            start: nil)

        return defaultInstance
    }()
}

public extension SelectObjectContentEventStream {
    /**
     Default instance of the SelectObjectContentEventStream structure.
     */
    static let __default: S3Model.SelectObjectContentEventStream = {
        let defaultInstance = S3Model.SelectObjectContentEventStream(
            cont: nil,
            end: nil,
            progress: nil,
            records: nil,
            stats: nil)

        return defaultInstance
    }()
}

public extension SelectObjectContentOutput {
    /**
     Default instance of the SelectObjectContentOutput structure.
     */
    static let __default: S3Model.SelectObjectContentOutput = {
        let defaultInstance = S3Model.SelectObjectContentOutput(
            payload: nil)

        return defaultInstance
    }()
}

public extension SelectObjectContentRequest {
    /**
     Default instance of the SelectObjectContentRequest structure.
     */
    static let __default: S3Model.SelectObjectContentRequest = {
        let defaultInstance = S3Model.SelectObjectContentRequest(
            bucket: "value",
            expression: "value",
            expressionType: .__default,
            inputSerialization: InputSerialization.__default,
            key: "0",
            outputSerialization: OutputSerialization.__default,
            requestProgress: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            scanRange: nil)

        return defaultInstance
    }()
}

public extension SelectParameters {
    /**
     Default instance of the SelectParameters structure.
     */
    static let __default: S3Model.SelectParameters = {
        let defaultInstance = S3Model.SelectParameters(
            expression: "value",
            expressionType: .__default,
            inputSerialization: InputSerialization.__default,
            outputSerialization: OutputSerialization.__default)

        return defaultInstance
    }()
}

public extension ServerSideEncryptionByDefault {
    /**
     Default instance of the ServerSideEncryptionByDefault structure.
     */
    static let __default: S3Model.ServerSideEncryptionByDefault = {
        let defaultInstance = S3Model.ServerSideEncryptionByDefault(
            kMSMasterKeyID: nil,
            sSEAlgorithm: .__default)

        return defaultInstance
    }()
}

public extension ServerSideEncryptionConfiguration {
    /**
     Default instance of the ServerSideEncryptionConfiguration structure.
     */
    static let __default: S3Model.ServerSideEncryptionConfiguration = {
        let defaultInstance = S3Model.ServerSideEncryptionConfiguration(
            rules: [])

        return defaultInstance
    }()
}

public extension ServerSideEncryptionRule {
    /**
     Default instance of the ServerSideEncryptionRule structure.
     */
    static let __default: S3Model.ServerSideEncryptionRule = {
        let defaultInstance = S3Model.ServerSideEncryptionRule(
            applyServerSideEncryptionByDefault: nil)

        return defaultInstance
    }()
}

public extension SourceSelectionCriteria {
    /**
     Default instance of the SourceSelectionCriteria structure.
     */
    static let __default: S3Model.SourceSelectionCriteria = {
        let defaultInstance = S3Model.SourceSelectionCriteria(
            sseKmsEncryptedObjects: nil)

        return defaultInstance
    }()
}

public extension SseKmsEncryptedObjects {
    /**
     Default instance of the SseKmsEncryptedObjects structure.
     */
    static let __default: S3Model.SseKmsEncryptedObjects = {
        let defaultInstance = S3Model.SseKmsEncryptedObjects(
            status: .__default)

        return defaultInstance
    }()
}

public extension Stats {
    /**
     Default instance of the Stats structure.
     */
    static let __default: S3Model.Stats = {
        let defaultInstance = S3Model.Stats(
            bytesProcessed: nil,
            bytesReturned: nil,
            bytesScanned: nil)

        return defaultInstance
    }()
}

public extension StatsEvent {
    /**
     Default instance of the StatsEvent structure.
     */
    static let __default: S3Model.StatsEvent = {
        let defaultInstance = S3Model.StatsEvent(
            details: nil)

        return defaultInstance
    }()
}

public extension StorageClassAnalysis {
    /**
     Default instance of the StorageClassAnalysis structure.
     */
    static let __default: S3Model.StorageClassAnalysis = {
        let defaultInstance = S3Model.StorageClassAnalysis(
            dataExport: nil)

        return defaultInstance
    }()
}

public extension StorageClassAnalysisDataExport {
    /**
     Default instance of the StorageClassAnalysisDataExport structure.
     */
    static let __default: S3Model.StorageClassAnalysisDataExport = {
        let defaultInstance = S3Model.StorageClassAnalysisDataExport(
            destination: AnalyticsExportDestination.__default,
            outputSchemaVersion: .__default)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: S3Model.Tag = {
        let defaultInstance = S3Model.Tag(
            key: "0",
            value: "value")

        return defaultInstance
    }()
}

public extension Tagging {
    /**
     Default instance of the Tagging structure.
     */
    static let __default: S3Model.Tagging = {
        let defaultInstance = S3Model.Tagging(
            tagSet: [])

        return defaultInstance
    }()
}

public extension TargetGrant {
    /**
     Default instance of the TargetGrant structure.
     */
    static let __default: S3Model.TargetGrant = {
        let defaultInstance = S3Model.TargetGrant(
            grantee: nil,
            permission: nil)

        return defaultInstance
    }()
}

public extension TopicConfiguration {
    /**
     Default instance of the TopicConfiguration structure.
     */
    static let __default: S3Model.TopicConfiguration = {
        let defaultInstance = S3Model.TopicConfiguration(
            events: [],
            filter: nil,
            id: nil,
            topicArn: "value")

        return defaultInstance
    }()
}

public extension TopicConfigurationDeprecated {
    /**
     Default instance of the TopicConfigurationDeprecated structure.
     */
    static let __default: S3Model.TopicConfigurationDeprecated = {
        let defaultInstance = S3Model.TopicConfigurationDeprecated(
            events: nil,
            id: nil,
            topic: nil)

        return defaultInstance
    }()
}

public extension Transition {
    /**
     Default instance of the Transition structure.
     */
    static let __default: S3Model.Transition = {
        let defaultInstance = S3Model.Transition(
            date: nil,
            days: nil,
            storageClass: nil)

        return defaultInstance
    }()
}

public extension UploadPartCopyOutput {
    /**
     Default instance of the UploadPartCopyOutput structure.
     */
    static let __default: S3Model.UploadPartCopyOutput = {
        let defaultInstance = S3Model.UploadPartCopyOutput(
            copyPartResult: nil,
            copySourceVersionId: nil,
            requestCharged: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil)

        return defaultInstance
    }()
}

public extension UploadPartCopyRequest {
    /**
     Default instance of the UploadPartCopyRequest structure.
     */
    static let __default: S3Model.UploadPartCopyRequest = {
        let defaultInstance = S3Model.UploadPartCopyRequest(
            bucket: "value",
            copySource: "",
            copySourceIfMatch: nil,
            copySourceIfModifiedSince: nil,
            copySourceIfNoneMatch: nil,
            copySourceIfUnmodifiedSince: nil,
            copySourceRange: nil,
            copySourceSSECustomerAlgorithm: nil,
            copySourceSSECustomerKey: nil,
            copySourceSSECustomerKeyMD5: nil,
            key: "0",
            partNumber: 0,
            requestPayer: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            uploadId: "value")

        return defaultInstance
    }()
}

public extension UploadPartOutput {
    /**
     Default instance of the UploadPartOutput structure.
     */
    static let __default: S3Model.UploadPartOutput = {
        let defaultInstance = S3Model.UploadPartOutput(
            eTag: nil,
            requestCharged: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKeyMD5: nil,
            sSEKMSKeyId: nil,
            serverSideEncryption: nil)

        return defaultInstance
    }()
}

public extension UploadPartRequest {
    /**
     Default instance of the UploadPartRequest structure.
     */
    static let __default: S3Model.UploadPartRequest = {
        let defaultInstance = S3Model.UploadPartRequest(
            body: nil,
            bucket: "value",
            contentLength: nil,
            contentMD5: nil,
            key: "0",
            partNumber: 0,
            requestPayer: nil,
            sSECustomerAlgorithm: nil,
            sSECustomerKey: nil,
            sSECustomerKeyMD5: nil,
            uploadId: "value")

        return defaultInstance
    }()
}

public extension VersioningConfiguration {
    /**
     Default instance of the VersioningConfiguration structure.
     */
    static let __default: S3Model.VersioningConfiguration = {
        let defaultInstance = S3Model.VersioningConfiguration(
            mFADelete: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension WebsiteConfiguration {
    /**
     Default instance of the WebsiteConfiguration structure.
     */
    static let __default: S3Model.WebsiteConfiguration = {
        let defaultInstance = S3Model.WebsiteConfiguration(
            errorDocument: nil,
            indexDocument: nil,
            redirectAllRequestsTo: nil,
            routingRules: nil)

        return defaultInstance
    }()
}
