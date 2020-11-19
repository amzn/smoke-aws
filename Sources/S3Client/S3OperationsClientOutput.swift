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
// S3OperationsClientOutput.swift
// S3Client
//

import Foundation
import SmokeHTTPClient
import S3Model

/**
 Type to handle the output from the AbortMultipartUpload operation in a HTTP client.
 */
extension AbortMultipartUploadOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = AbortMultipartUploadOutput
    public typealias HeadersType = AbortMultipartUploadOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AbortMultipartUploadOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the CompleteMultipartUpload operation in a HTTP client.
 */
extension CompleteMultipartUploadOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CompleteMultipartUploadOperationOutputBody
    public typealias HeadersType = CompleteMultipartUploadOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CompleteMultipartUploadOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.CompleteMultipartUploadOutput(
            bucket: body.bucket,
            eTag: body.eTag,
            expiration: headers.expiration,
            key: body.key,
            location: body.location,
            requestCharged: headers.requestCharged,
            sSEKMSKeyId: headers.sSEKMSKeyId,
            serverSideEncryption: headers.serverSideEncryption,
            versionId: headers.versionId)
    }
}

/**
 Type to handle the output from the CopyObject operation in a HTTP client.
 */
extension CopyObjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyObjectResult
    public typealias HeadersType = CopyObjectOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CopyObjectOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.CopyObjectOutput(
            copyObjectResult: body,
            copySourceVersionId: headers.copySourceVersionId,
            expiration: headers.expiration,
            requestCharged: headers.requestCharged,
            sSECustomerAlgorithm: headers.sSECustomerAlgorithm,
            sSECustomerKeyMD5: headers.sSECustomerKeyMD5,
            sSEKMSEncryptionContext: headers.sSEKMSEncryptionContext,
            sSEKMSKeyId: headers.sSEKMSKeyId,
            serverSideEncryption: headers.serverSideEncryption,
            versionId: headers.versionId)
    }
}

/**
 Type to handle the output from the CreateBucket operation in a HTTP client.
 */
extension CreateBucketOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateBucketOutput
    public typealias HeadersType = CreateBucketOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateBucketOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateMultipartUpload operation in a HTTP client.
 */
extension CreateMultipartUploadOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateMultipartUploadOperationOutputBody
    public typealias HeadersType = CreateMultipartUploadOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateMultipartUploadOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.CreateMultipartUploadOutput(
            abortDate: headers.abortDate,
            abortRuleId: headers.abortRuleId,
            bucket: body.bucket,
            key: body.key,
            requestCharged: headers.requestCharged,
            sSECustomerAlgorithm: headers.sSECustomerAlgorithm,
            sSECustomerKeyMD5: headers.sSECustomerKeyMD5,
            sSEKMSEncryptionContext: headers.sSEKMSEncryptionContext,
            sSEKMSKeyId: headers.sSEKMSKeyId,
            serverSideEncryption: headers.serverSideEncryption,
            uploadId: body.uploadId)
    }
}

/**
 Type to handle the output from the DeleteObject operation in a HTTP client.
 */
extension DeleteObjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteObjectOutput
    public typealias HeadersType = DeleteObjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteObjectOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteObjectTagging operation in a HTTP client.
 */
extension DeleteObjectTaggingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteObjectTaggingOutput
    public typealias HeadersType = DeleteObjectTaggingOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteObjectTaggingOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteObjects operation in a HTTP client.
 */
extension DeleteObjectsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteObjectsOperationOutputBody
    public typealias HeadersType = DeleteObjectsOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteObjectsOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.DeleteObjectsOutput(
            deleted: body.deleted,
            errors: body.errors,
            requestCharged: headers.requestCharged)
    }
}

/**
 Type to handle the output from the GetBucketAccelerateConfiguration operation in a HTTP client.
 */
extension GetBucketAccelerateConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketAccelerateConfigurationOutput
    public typealias HeadersType = GetBucketAccelerateConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketAccelerateConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketAcl operation in a HTTP client.
 */
extension GetBucketAclOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketAclOutput
    public typealias HeadersType = GetBucketAclOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketAclOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketAnalyticsConfiguration operation in a HTTP client.
 */
extension GetBucketAnalyticsConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketAnalyticsConfigurationOutput
    public typealias HeadersType = GetBucketAnalyticsConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketAnalyticsConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketCors operation in a HTTP client.
 */
extension GetBucketCorsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketCorsOutput
    public typealias HeadersType = GetBucketCorsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketCorsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketEncryption operation in a HTTP client.
 */
extension GetBucketEncryptionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketEncryptionOutput
    public typealias HeadersType = GetBucketEncryptionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketEncryptionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketIntelligentTieringConfiguration operation in a HTTP client.
 */
extension GetBucketIntelligentTieringConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketIntelligentTieringConfigurationOutput
    public typealias HeadersType = GetBucketIntelligentTieringConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketIntelligentTieringConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketInventoryConfiguration operation in a HTTP client.
 */
extension GetBucketInventoryConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketInventoryConfigurationOutput
    public typealias HeadersType = GetBucketInventoryConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketInventoryConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketLifecycle operation in a HTTP client.
 */
extension GetBucketLifecycleOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketLifecycleOutput
    public typealias HeadersType = GetBucketLifecycleOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketLifecycleOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketLifecycleConfiguration operation in a HTTP client.
 */
extension GetBucketLifecycleConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketLifecycleConfigurationOutput
    public typealias HeadersType = GetBucketLifecycleConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketLifecycleConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketLocation operation in a HTTP client.
 */
extension GetBucketLocationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketLocationOutput
    public typealias HeadersType = GetBucketLocationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketLocationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketLogging operation in a HTTP client.
 */
extension GetBucketLoggingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketLoggingOutput
    public typealias HeadersType = GetBucketLoggingOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketLoggingOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketMetricsConfiguration operation in a HTTP client.
 */
extension GetBucketMetricsConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketMetricsConfigurationOutput
    public typealias HeadersType = GetBucketMetricsConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketMetricsConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketNotification operation in a HTTP client.
 */
extension NotificationConfigurationDeprecated: HTTPResponseOutputProtocol {
    public typealias BodyType = NotificationConfigurationDeprecated
    public typealias HeadersType = NotificationConfigurationDeprecated

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> NotificationConfigurationDeprecated {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketNotificationConfiguration operation in a HTTP client.
 */
extension NotificationConfiguration: HTTPResponseOutputProtocol {
    public typealias BodyType = NotificationConfiguration
    public typealias HeadersType = NotificationConfiguration

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> NotificationConfiguration {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketOwnershipControls operation in a HTTP client.
 */
extension GetBucketOwnershipControlsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketOwnershipControlsOutput
    public typealias HeadersType = GetBucketOwnershipControlsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketOwnershipControlsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketPolicy operation in a HTTP client.
 */
extension GetBucketPolicyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketPolicyOutput
    public typealias HeadersType = GetBucketPolicyOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketPolicyOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketPolicyStatus operation in a HTTP client.
 */
extension GetBucketPolicyStatusOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketPolicyStatusOutput
    public typealias HeadersType = GetBucketPolicyStatusOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketPolicyStatusOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketReplication operation in a HTTP client.
 */
extension GetBucketReplicationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketReplicationOutput
    public typealias HeadersType = GetBucketReplicationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketReplicationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketRequestPayment operation in a HTTP client.
 */
extension GetBucketRequestPaymentOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketRequestPaymentOutput
    public typealias HeadersType = GetBucketRequestPaymentOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketRequestPaymentOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketTagging operation in a HTTP client.
 */
extension GetBucketTaggingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketTaggingOutput
    public typealias HeadersType = GetBucketTaggingOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketTaggingOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketVersioning operation in a HTTP client.
 */
extension GetBucketVersioningOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketVersioningOutput
    public typealias HeadersType = GetBucketVersioningOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketVersioningOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetBucketWebsite operation in a HTTP client.
 */
extension GetBucketWebsiteOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetBucketWebsiteOutput
    public typealias HeadersType = GetBucketWebsiteOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetBucketWebsiteOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetObject operation in a HTTP client.
 */
extension GetObjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = Body
    public typealias HeadersType = GetObjectOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.GetObjectOutput(
            acceptRanges: headers.acceptRanges,
            body: body,
            cacheControl: headers.cacheControl,
            contentDisposition: headers.contentDisposition,
            contentEncoding: headers.contentEncoding,
            contentLanguage: headers.contentLanguage,
            contentLength: headers.contentLength,
            contentRange: headers.contentRange,
            contentType: headers.contentType,
            deleteMarker: headers.deleteMarker,
            eTag: headers.eTag,
            expiration: headers.expiration,
            expires: headers.expires,
            lastModified: headers.lastModified,
            metadata: headers.metadata,
            missingMeta: headers.missingMeta,
            objectLockLegalHoldStatus: headers.objectLockLegalHoldStatus,
            objectLockMode: headers.objectLockMode,
            objectLockRetainUntilDate: headers.objectLockRetainUntilDate,
            partsCount: headers.partsCount,
            replicationStatus: headers.replicationStatus,
            requestCharged: headers.requestCharged,
            restore: headers.restore,
            sSECustomerAlgorithm: headers.sSECustomerAlgorithm,
            sSECustomerKeyMD5: headers.sSECustomerKeyMD5,
            sSEKMSKeyId: headers.sSEKMSKeyId,
            serverSideEncryption: headers.serverSideEncryption,
            storageClass: headers.storageClass,
            tagCount: headers.tagCount,
            versionId: headers.versionId,
            websiteRedirectLocation: headers.websiteRedirectLocation)
    }
}

/**
 Type to handle the output from the GetObjectAcl operation in a HTTP client.
 */
extension GetObjectAclOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetObjectAclOperationOutputBody
    public typealias HeadersType = GetObjectAclOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectAclOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.GetObjectAclOutput(
            grants: body.grants,
            owner: body.owner,
            requestCharged: headers.requestCharged)
    }
}

/**
 Type to handle the output from the GetObjectLegalHold operation in a HTTP client.
 */
extension GetObjectLegalHoldOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetObjectLegalHoldOutput
    public typealias HeadersType = GetObjectLegalHoldOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectLegalHoldOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetObjectLockConfiguration operation in a HTTP client.
 */
extension GetObjectLockConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetObjectLockConfigurationOutput
    public typealias HeadersType = GetObjectLockConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectLockConfigurationOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetObjectRetention operation in a HTTP client.
 */
extension GetObjectRetentionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetObjectRetentionOutput
    public typealias HeadersType = GetObjectRetentionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectRetentionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetObjectTagging operation in a HTTP client.
 */
extension GetObjectTaggingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetObjectTaggingOperationOutputBody
    public typealias HeadersType = GetObjectTaggingOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectTaggingOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.GetObjectTaggingOutput(
            tagSet: body.tagSet,
            versionId: headers.versionId)
    }
}

/**
 Type to handle the output from the GetObjectTorrent operation in a HTTP client.
 */
extension GetObjectTorrentOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = Body
    public typealias HeadersType = GetObjectTorrentOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetObjectTorrentOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.GetObjectTorrentOutput(
            body: body,
            requestCharged: headers.requestCharged)
    }
}

/**
 Type to handle the output from the GetPublicAccessBlock operation in a HTTP client.
 */
extension GetPublicAccessBlockOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPublicAccessBlockOutput
    public typealias HeadersType = GetPublicAccessBlockOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPublicAccessBlockOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the HeadObject operation in a HTTP client.
 */
extension HeadObjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = HeadObjectOutput
    public typealias HeadersType = HeadObjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> HeadObjectOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBucketAnalyticsConfigurations operation in a HTTP client.
 */
extension ListBucketAnalyticsConfigurationsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBucketAnalyticsConfigurationsOutput
    public typealias HeadersType = ListBucketAnalyticsConfigurationsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBucketAnalyticsConfigurationsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBucketIntelligentTieringConfigurations operation in a HTTP client.
 */
extension ListBucketIntelligentTieringConfigurationsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBucketIntelligentTieringConfigurationsOutput
    public typealias HeadersType = ListBucketIntelligentTieringConfigurationsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBucketIntelligentTieringConfigurationsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBucketInventoryConfigurations operation in a HTTP client.
 */
extension ListBucketInventoryConfigurationsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBucketInventoryConfigurationsOutput
    public typealias HeadersType = ListBucketInventoryConfigurationsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBucketInventoryConfigurationsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBucketMetricsConfigurations operation in a HTTP client.
 */
extension ListBucketMetricsConfigurationsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBucketMetricsConfigurationsOutput
    public typealias HeadersType = ListBucketMetricsConfigurationsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBucketMetricsConfigurationsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListBuckets operation in a HTTP client.
 */
extension ListBucketsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListBucketsOutput
    public typealias HeadersType = ListBucketsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListBucketsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListMultipartUploads operation in a HTTP client.
 */
extension ListMultipartUploadsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListMultipartUploadsOutput
    public typealias HeadersType = ListMultipartUploadsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListMultipartUploadsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListObjectVersions operation in a HTTP client.
 */
extension ListObjectVersionsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListObjectVersionsOutput
    public typealias HeadersType = ListObjectVersionsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListObjectVersionsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListObjects operation in a HTTP client.
 */
extension ListObjectsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListObjectsOutput
    public typealias HeadersType = ListObjectsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListObjectsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListObjectsV2 operation in a HTTP client.
 */
extension ListObjectsV2Output: HTTPResponseOutputProtocol {
    public typealias BodyType = ListObjectsV2Output
    public typealias HeadersType = ListObjectsV2Output

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListObjectsV2Output {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListParts operation in a HTTP client.
 */
extension ListPartsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPartsOperationOutputBody
    public typealias HeadersType = ListPartsOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPartsOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.ListPartsOutput(
            abortDate: headers.abortDate,
            abortRuleId: headers.abortRuleId,
            bucket: body.bucket,
            initiator: body.initiator,
            isTruncated: body.isTruncated,
            key: body.key,
            maxParts: body.maxParts,
            nextPartNumberMarker: body.nextPartNumberMarker,
            owner: body.owner,
            partNumberMarker: body.partNumberMarker,
            parts: body.parts,
            requestCharged: headers.requestCharged,
            storageClass: body.storageClass,
            uploadId: body.uploadId)
    }
}

/**
 Type to handle the output from the PutObject operation in a HTTP client.
 */
extension PutObjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutObjectOutput
    public typealias HeadersType = PutObjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutObjectOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the PutObjectAcl operation in a HTTP client.
 */
extension PutObjectAclOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutObjectAclOutput
    public typealias HeadersType = PutObjectAclOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutObjectAclOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the PutObjectLegalHold operation in a HTTP client.
 */
extension PutObjectLegalHoldOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutObjectLegalHoldOutput
    public typealias HeadersType = PutObjectLegalHoldOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutObjectLegalHoldOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the PutObjectLockConfiguration operation in a HTTP client.
 */
extension PutObjectLockConfigurationOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutObjectLockConfigurationOutput
    public typealias HeadersType = PutObjectLockConfigurationOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutObjectLockConfigurationOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the PutObjectRetention operation in a HTTP client.
 */
extension PutObjectRetentionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutObjectRetentionOutput
    public typealias HeadersType = PutObjectRetentionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutObjectRetentionOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the PutObjectTagging operation in a HTTP client.
 */
extension PutObjectTaggingOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutObjectTaggingOutput
    public typealias HeadersType = PutObjectTaggingOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutObjectTaggingOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the RestoreObject operation in a HTTP client.
 */
extension RestoreObjectOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RestoreObjectOutput
    public typealias HeadersType = RestoreObjectOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RestoreObjectOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the SelectObjectContent operation in a HTTP client.
 */
extension SelectObjectContentOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = SelectObjectContentOutput
    public typealias HeadersType = SelectObjectContentOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SelectObjectContentOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UploadPart operation in a HTTP client.
 */
extension UploadPartOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UploadPartOutput
    public typealias HeadersType = UploadPartOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UploadPartOutput {
        return try headersDecodableProvider()
    }
}

/**
 Type to handle the output from the UploadPartCopy operation in a HTTP client.
 */
extension UploadPartCopyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CopyPartResult
    public typealias HeadersType = UploadPartCopyOperationOutputHeaders

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UploadPartCopyOutput {
        let body = try bodyDecodableProvider()
        let headers = try headersDecodableProvider()

        return S3Model.UploadPartCopyOutput(
            copyPartResult: body,
            copySourceVersionId: headers.copySourceVersionId,
            requestCharged: headers.requestCharged,
            sSECustomerAlgorithm: headers.sSECustomerAlgorithm,
            sSECustomerKeyMD5: headers.sSECustomerKeyMD5,
            sSEKMSKeyId: headers.sSEKMSKeyId,
            serverSideEncryption: headers.serverSideEncryption)
    }
}
