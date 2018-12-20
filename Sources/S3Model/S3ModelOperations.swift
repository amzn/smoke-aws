// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// S3ModelOperations.swift
// S3Model
//

import Foundation

/**
 Operation enumeration for the S3Model.
 */
public enum S3ModelOperations: String {
    case abortMultipartUpload = "AbortMultipartUpload"
    case completeMultipartUpload = "CompleteMultipartUpload"
    case copyObject = "CopyObject"
    case createBucket = "CreateBucket"
    case createMultipartUpload = "CreateMultipartUpload"
    case deleteBucket = "DeleteBucket"
    case deleteBucketAnalyticsConfiguration = "DeleteBucketAnalyticsConfiguration"
    case deleteBucketCors = "DeleteBucketCors"
    case deleteBucketEncryption = "DeleteBucketEncryption"
    case deleteBucketInventoryConfiguration = "DeleteBucketInventoryConfiguration"
    case deleteBucketLifecycle = "DeleteBucketLifecycle"
    case deleteBucketMetricsConfiguration = "DeleteBucketMetricsConfiguration"
    case deleteBucketPolicy = "DeleteBucketPolicy"
    case deleteBucketReplication = "DeleteBucketReplication"
    case deleteBucketTagging = "DeleteBucketTagging"
    case deleteBucketWebsite = "DeleteBucketWebsite"
    case deleteObject = "DeleteObject"
    case deleteObjectTagging = "DeleteObjectTagging"
    case deleteObjects = "DeleteObjects"
    case deletePublicAccessBlock = "DeletePublicAccessBlock"
    case getBucketAccelerateConfiguration = "GetBucketAccelerateConfiguration"
    case getBucketAcl = "GetBucketAcl"
    case getBucketAnalyticsConfiguration = "GetBucketAnalyticsConfiguration"
    case getBucketCors = "GetBucketCors"
    case getBucketEncryption = "GetBucketEncryption"
    case getBucketInventoryConfiguration = "GetBucketInventoryConfiguration"
    case getBucketLifecycle = "GetBucketLifecycle"
    case getBucketLifecycleConfiguration = "GetBucketLifecycleConfiguration"
    case getBucketLocation = "GetBucketLocation"
    case getBucketLogging = "GetBucketLogging"
    case getBucketMetricsConfiguration = "GetBucketMetricsConfiguration"
    case getBucketNotification = "GetBucketNotification"
    case getBucketNotificationConfiguration = "GetBucketNotificationConfiguration"
    case getBucketPolicy = "GetBucketPolicy"
    case getBucketPolicyStatus = "GetBucketPolicyStatus"
    case getBucketReplication = "GetBucketReplication"
    case getBucketRequestPayment = "GetBucketRequestPayment"
    case getBucketTagging = "GetBucketTagging"
    case getBucketVersioning = "GetBucketVersioning"
    case getBucketWebsite = "GetBucketWebsite"
    case getObject = "GetObject"
    case getObjectAcl = "GetObjectAcl"
    case getObjectLegalHold = "GetObjectLegalHold"
    case getObjectLockConfiguration = "GetObjectLockConfiguration"
    case getObjectRetention = "GetObjectRetention"
    case getObjectTagging = "GetObjectTagging"
    case getObjectTorrent = "GetObjectTorrent"
    case getPublicAccessBlock = "GetPublicAccessBlock"
    case headBucket = "HeadBucket"
    case headObject = "HeadObject"
    case listBucketAnalyticsConfigurations = "ListBucketAnalyticsConfigurations"
    case listBucketInventoryConfigurations = "ListBucketInventoryConfigurations"
    case listBucketMetricsConfigurations = "ListBucketMetricsConfigurations"
    case listBuckets = "ListBuckets"
    case listMultipartUploads = "ListMultipartUploads"
    case listObjectVersions = "ListObjectVersions"
    case listObjects = "ListObjects"
    case listObjectsV2 = "ListObjectsV2"
    case listParts = "ListParts"
    case putBucketAccelerateConfiguration = "PutBucketAccelerateConfiguration"
    case putBucketAcl = "PutBucketAcl"
    case putBucketAnalyticsConfiguration = "PutBucketAnalyticsConfiguration"
    case putBucketCors = "PutBucketCors"
    case putBucketEncryption = "PutBucketEncryption"
    case putBucketInventoryConfiguration = "PutBucketInventoryConfiguration"
    case putBucketLifecycle = "PutBucketLifecycle"
    case putBucketLifecycleConfiguration = "PutBucketLifecycleConfiguration"
    case putBucketLogging = "PutBucketLogging"
    case putBucketMetricsConfiguration = "PutBucketMetricsConfiguration"
    case putBucketNotification = "PutBucketNotification"
    case putBucketNotificationConfiguration = "PutBucketNotificationConfiguration"
    case putBucketPolicy = "PutBucketPolicy"
    case putBucketReplication = "PutBucketReplication"
    case putBucketRequestPayment = "PutBucketRequestPayment"
    case putBucketTagging = "PutBucketTagging"
    case putBucketVersioning = "PutBucketVersioning"
    case putBucketWebsite = "PutBucketWebsite"
    case putObject = "PutObject"
    case putObjectAcl = "PutObjectAcl"
    case putObjectLegalHold = "PutObjectLegalHold"
    case putObjectLockConfiguration = "PutObjectLockConfiguration"
    case putObjectRetention = "PutObjectRetention"
    case putObjectTagging = "PutObjectTagging"
    case putPublicAccessBlock = "PutPublicAccessBlock"
    case restoreObject = "RestoreObject"
    case selectObjectContent = "SelectObjectContent"
    case uploadPart = "UploadPart"
    case uploadPartCopy = "UploadPartCopy"

    public var operationPath: String {
        switch self {
        case .abortMultipartUpload:
            return "/{Bucket}/{Key+}"
        case .completeMultipartUpload:
            return "/{Bucket}/{Key+}"
        case .copyObject:
            return "/{Bucket}/{Key+}"
        case .createBucket:
            return "/{Bucket}"
        case .createMultipartUpload:
            return "/{Bucket}/{Key+}?uploads"
        case .deleteBucket:
            return "/{Bucket}"
        case .deleteBucketAnalyticsConfiguration:
            return "/{Bucket}?analytics"
        case .deleteBucketCors:
            return "/{Bucket}?cors"
        case .deleteBucketEncryption:
            return "/{Bucket}?encryption"
        case .deleteBucketInventoryConfiguration:
            return "/{Bucket}?inventory"
        case .deleteBucketLifecycle:
            return "/{Bucket}?lifecycle"
        case .deleteBucketMetricsConfiguration:
            return "/{Bucket}?metrics"
        case .deleteBucketPolicy:
            return "/{Bucket}?policy"
        case .deleteBucketReplication:
            return "/{Bucket}?replication"
        case .deleteBucketTagging:
            return "/{Bucket}?tagging"
        case .deleteBucketWebsite:
            return "/{Bucket}?website"
        case .deleteObject:
            return "/{Bucket}/{Key+}"
        case .deleteObjectTagging:
            return "/{Bucket}/{Key+}?tagging"
        case .deleteObjects:
            return "/{Bucket}?delete"
        case .deletePublicAccessBlock:
            return "/{Bucket}?publicAccessBlock"
        case .getBucketAccelerateConfiguration:
            return "/{Bucket}?accelerate"
        case .getBucketAcl:
            return "/{Bucket}?acl"
        case .getBucketAnalyticsConfiguration:
            return "/{Bucket}?analytics"
        case .getBucketCors:
            return "/{Bucket}?cors"
        case .getBucketEncryption:
            return "/{Bucket}?encryption"
        case .getBucketInventoryConfiguration:
            return "/{Bucket}?inventory"
        case .getBucketLifecycle:
            return "/{Bucket}?lifecycle"
        case .getBucketLifecycleConfiguration:
            return "/{Bucket}?lifecycle"
        case .getBucketLocation:
            return "/{Bucket}?location"
        case .getBucketLogging:
            return "/{Bucket}?logging"
        case .getBucketMetricsConfiguration:
            return "/{Bucket}?metrics"
        case .getBucketNotification:
            return "/{Bucket}?notification"
        case .getBucketNotificationConfiguration:
            return "/{Bucket}?notification"
        case .getBucketPolicy:
            return "/{Bucket}?policy"
        case .getBucketPolicyStatus:
            return "/{Bucket}?policyStatus"
        case .getBucketReplication:
            return "/{Bucket}?replication"
        case .getBucketRequestPayment:
            return "/{Bucket}?requestPayment"
        case .getBucketTagging:
            return "/{Bucket}?tagging"
        case .getBucketVersioning:
            return "/{Bucket}?versioning"
        case .getBucketWebsite:
            return "/{Bucket}?website"
        case .getObject:
            return "/{Bucket}/{Key+}"
        case .getObjectAcl:
            return "/{Bucket}/{Key+}?acl"
        case .getObjectLegalHold:
            return "/{Bucket}/{Key+}?legal-hold"
        case .getObjectLockConfiguration:
            return "/{Bucket}?object-lock"
        case .getObjectRetention:
            return "/{Bucket}/{Key+}?retention"
        case .getObjectTagging:
            return "/{Bucket}/{Key+}?tagging"
        case .getObjectTorrent:
            return "/{Bucket}/{Key+}?torrent"
        case .getPublicAccessBlock:
            return "/{Bucket}?publicAccessBlock"
        case .headBucket:
            return "/{Bucket}"
        case .headObject:
            return "/{Bucket}/{Key+}"
        case .listBucketAnalyticsConfigurations:
            return "/{Bucket}?analytics"
        case .listBucketInventoryConfigurations:
            return "/{Bucket}?inventory"
        case .listBucketMetricsConfigurations:
            return "/{Bucket}?metrics"
        case .listBuckets:
            return "/"
        case .listMultipartUploads:
            return "/{Bucket}?uploads"
        case .listObjectVersions:
            return "/{Bucket}?versions"
        case .listObjects:
            return "/{Bucket}"
        case .listObjectsV2:
            return "/{Bucket}?list-type=2"
        case .listParts:
            return "/{Bucket}/{Key+}"
        case .putBucketAccelerateConfiguration:
            return "/{Bucket}?accelerate"
        case .putBucketAcl:
            return "/{Bucket}?acl"
        case .putBucketAnalyticsConfiguration:
            return "/{Bucket}?analytics"
        case .putBucketCors:
            return "/{Bucket}?cors"
        case .putBucketEncryption:
            return "/{Bucket}?encryption"
        case .putBucketInventoryConfiguration:
            return "/{Bucket}?inventory"
        case .putBucketLifecycle:
            return "/{Bucket}?lifecycle"
        case .putBucketLifecycleConfiguration:
            return "/{Bucket}?lifecycle"
        case .putBucketLogging:
            return "/{Bucket}?logging"
        case .putBucketMetricsConfiguration:
            return "/{Bucket}?metrics"
        case .putBucketNotification:
            return "/{Bucket}?notification"
        case .putBucketNotificationConfiguration:
            return "/{Bucket}?notification"
        case .putBucketPolicy:
            return "/{Bucket}?policy"
        case .putBucketReplication:
            return "/{Bucket}?replication"
        case .putBucketRequestPayment:
            return "/{Bucket}?requestPayment"
        case .putBucketTagging:
            return "/{Bucket}?tagging"
        case .putBucketVersioning:
            return "/{Bucket}?versioning"
        case .putBucketWebsite:
            return "/{Bucket}?website"
        case .putObject:
            return "/{Bucket}/{Key+}"
        case .putObjectAcl:
            return "/{Bucket}/{Key+}?acl"
        case .putObjectLegalHold:
            return "/{Bucket}/{Key+}?legal-hold"
        case .putObjectLockConfiguration:
            return "/{Bucket}?object-lock"
        case .putObjectRetention:
            return "/{Bucket}/{Key+}?retention"
        case .putObjectTagging:
            return "/{Bucket}/{Key+}?tagging"
        case .putPublicAccessBlock:
            return "/{Bucket}?publicAccessBlock"
        case .restoreObject:
            return "/{Bucket}/{Key+}?restore"
        case .selectObjectContent:
            return "/{Bucket}/{Key+}?select&select-type=2"
        case .uploadPart:
            return "/{Bucket}/{Key+}"
        case .uploadPartCopy:
            return "/{Bucket}/{Key+}"
        }
    }
}


/**
 Structure to encode the path input for the AbortMultipartUpload
 operation.
 */
public struct AbortMultipartUploadOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension AbortMultipartUploadRequest {
    public func asS3ModelAbortMultipartUploadOperationInputPath() -> AbortMultipartUploadOperationInputPath {
        return AbortMultipartUploadOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the AbortMultipartUpload
 operation.
 */
public struct AbortMultipartUploadOperationInputQuery: Codable, Equatable {
    public var uploadId: MultipartUploadId

    public init(uploadId: MultipartUploadId) {
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case uploadId
    }

    public func validate() throws {
    }
}

public extension AbortMultipartUploadRequest {
    public func asS3ModelAbortMultipartUploadOperationInputQuery() -> AbortMultipartUploadOperationInputQuery {
        return AbortMultipartUploadOperationInputQuery(
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the AbortMultipartUpload
 operation.
 */
public struct AbortMultipartUploadOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension AbortMultipartUploadRequest {
    public func asS3ModelAbortMultipartUploadOperationInputAdditionalHeaders() -> AbortMultipartUploadOperationInputAdditionalHeaders {
        return AbortMultipartUploadOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the CompleteMultipartUpload
 operation.
 */
public struct CompleteMultipartUploadOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension CompleteMultipartUploadRequest {
    public func asS3ModelCompleteMultipartUploadOperationInputPath() -> CompleteMultipartUploadOperationInputPath {
        return CompleteMultipartUploadOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the CompleteMultipartUpload
 operation.
 */
public struct CompleteMultipartUploadOperationInputQuery: Codable, Equatable {
    public var uploadId: MultipartUploadId

    public init(uploadId: MultipartUploadId) {
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case uploadId
    }

    public func validate() throws {
    }
}

public extension CompleteMultipartUploadRequest {
    public func asS3ModelCompleteMultipartUploadOperationInputQuery() -> CompleteMultipartUploadOperationInputQuery {
        return CompleteMultipartUploadOperationInputQuery(
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the CompleteMultipartUpload
 operation.
 */
public struct CompleteMultipartUploadOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension CompleteMultipartUploadRequest {
    public func asS3ModelCompleteMultipartUploadOperationInputAdditionalHeaders() -> CompleteMultipartUploadOperationInputAdditionalHeaders {
        return CompleteMultipartUploadOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the body input for the CompleteMultipartUpload
 operation.
 */
public struct CompleteMultipartUploadOperationOutputBody: Codable, Equatable {
    public var bucket: BucketName?
    public var eTag: ETag?
    public var key: ObjectKey?
    public var location: Location?

    public init(bucket: BucketName? = nil,
                eTag: ETag? = nil,
                key: ObjectKey? = nil,
                location: Location? = nil) {
        self.bucket = bucket
        self.eTag = eTag
        self.key = key
        self.location = location
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case eTag = "ETag"
        case key = "Key"
        case location = "Location"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
    }
}

public extension CompleteMultipartUploadOutput {
    public func asS3ModelCompleteMultipartUploadOperationOutputBody() -> CompleteMultipartUploadOperationOutputBody {
        return CompleteMultipartUploadOperationOutputBody(
            bucket: bucket,
            eTag: eTag,
            key: key,
            location: location)
    }
}


/**
 Structure to encode the body input for the CompleteMultipartUpload
 operation.
 */
public struct CompleteMultipartUploadOperationOutputHeaders: Codable, Equatable {
    public var expiration: Expiration?
    public var requestCharged: RequestCharged?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var versionId: ObjectVersionId?

    public init(expiration: Expiration? = nil,
                requestCharged: RequestCharged? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                versionId: ObjectVersionId? = nil) {
        self.expiration = expiration
        self.requestCharged = requestCharged
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case expiration = "x-amz-expiration"
        case requestCharged = "x-amz-request-charged"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case versionId = "x-amz-version-id"
    }

    public func validate() throws {
    }
}

public extension CompleteMultipartUploadOutput {
    public func asS3ModelCompleteMultipartUploadOperationOutputHeaders() -> CompleteMultipartUploadOperationOutputHeaders {
        return CompleteMultipartUploadOperationOutputHeaders(
            expiration: expiration,
            requestCharged: requestCharged,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption,
            versionId: versionId)
    }
}


/**
 Structure to encode the path input for the CopyObject
 operation.
 */
public struct CopyObjectOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension CopyObjectRequest {
    public func asS3ModelCopyObjectOperationInputPath() -> CopyObjectOperationInputPath {
        return CopyObjectOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the body input for the CopyObject
 operation.
 */
public struct CopyObjectOperationInputAdditionalHeaders: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var cacheControl: CacheControl?
    public var contentDisposition: ContentDisposition?
    public var contentEncoding: ContentEncoding?
    public var contentLanguage: ContentLanguage?
    public var contentType: ContentType?
    public var copySource: CopySource
    public var copySourceIfMatch: CopySourceIfMatch?
    public var copySourceIfModifiedSince: CopySourceIfModifiedSince?
    public var copySourceIfNoneMatch: CopySourceIfNoneMatch?
    public var copySourceIfUnmodifiedSince: CopySourceIfUnmodifiedSince?
    public var copySourceSSECustomerAlgorithm: CopySourceSSECustomerAlgorithm?
    public var copySourceSSECustomerKey: CopySourceSSECustomerKey?
    public var copySourceSSECustomerKeyMD5: CopySourceSSECustomerKeyMD5?
    public var expires: Expires?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWriteACP: GrantWriteACP?
    public var metadata: Metadata?
    public var metadataDirective: MetadataDirective?
    public var objectLockLegalHoldStatus: ObjectLockLegalHoldStatus?
    public var objectLockMode: ObjectLockMode?
    public var objectLockRetainUntilDate: ObjectLockRetainUntilDate?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var storageClass: StorageClass?
    public var tagging: TaggingHeader?
    public var taggingDirective: TaggingDirective?
    public var websiteRedirectLocation: WebsiteRedirectLocation?

    public init(aCL: ObjectCannedACL? = nil,
                cacheControl: CacheControl? = nil,
                contentDisposition: ContentDisposition? = nil,
                contentEncoding: ContentEncoding? = nil,
                contentLanguage: ContentLanguage? = nil,
                contentType: ContentType? = nil,
                copySource: CopySource,
                copySourceIfMatch: CopySourceIfMatch? = nil,
                copySourceIfModifiedSince: CopySourceIfModifiedSince? = nil,
                copySourceIfNoneMatch: CopySourceIfNoneMatch? = nil,
                copySourceIfUnmodifiedSince: CopySourceIfUnmodifiedSince? = nil,
                copySourceSSECustomerAlgorithm: CopySourceSSECustomerAlgorithm? = nil,
                copySourceSSECustomerKey: CopySourceSSECustomerKey? = nil,
                copySourceSSECustomerKeyMD5: CopySourceSSECustomerKeyMD5? = nil,
                expires: Expires? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                metadata: Metadata? = nil,
                metadataDirective: MetadataDirective? = nil,
                objectLockLegalHoldStatus: ObjectLockLegalHoldStatus? = nil,
                objectLockMode: ObjectLockMode? = nil,
                objectLockRetainUntilDate: ObjectLockRetainUntilDate? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                storageClass: StorageClass? = nil,
                tagging: TaggingHeader? = nil,
                taggingDirective: TaggingDirective? = nil,
                websiteRedirectLocation: WebsiteRedirectLocation? = nil) {
        self.aCL = aCL
        self.cacheControl = cacheControl
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentType = contentType
        self.copySource = copySource
        self.copySourceIfMatch = copySourceIfMatch
        self.copySourceIfModifiedSince = copySourceIfModifiedSince
        self.copySourceIfNoneMatch = copySourceIfNoneMatch
        self.copySourceIfUnmodifiedSince = copySourceIfUnmodifiedSince
        self.copySourceSSECustomerAlgorithm = copySourceSSECustomerAlgorithm
        self.copySourceSSECustomerKey = copySourceSSECustomerKey
        self.copySourceSSECustomerKeyMD5 = copySourceSSECustomerKeyMD5
        self.expires = expires
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWriteACP = grantWriteACP
        self.metadata = metadata
        self.metadataDirective = metadataDirective
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.storageClass = storageClass
        self.tagging = tagging
        self.taggingDirective = taggingDirective
        self.websiteRedirectLocation = websiteRedirectLocation
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case cacheControl = "Cache-Control"
        case contentDisposition = "Content-Disposition"
        case contentEncoding = "Content-Encoding"
        case contentLanguage = "Content-Language"
        case contentType = "Content-Type"
        case copySource = "x-amz-copy-source"
        case copySourceIfMatch = "x-amz-copy-source-if-match"
        case copySourceIfModifiedSince = "x-amz-copy-source-if-modified-since"
        case copySourceIfNoneMatch = "x-amz-copy-source-if-none-match"
        case copySourceIfUnmodifiedSince = "x-amz-copy-source-if-unmodified-since"
        case copySourceSSECustomerAlgorithm = "x-amz-copy-source-server-side-encryption-customer-algorithm"
        case copySourceSSECustomerKey = "x-amz-copy-source-server-side-encryption-customer-key"
        case copySourceSSECustomerKeyMD5 = "x-amz-copy-source-server-side-encryption-customer-key-MD5"
        case expires = "Expires"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWriteACP = "x-amz-grant-write-acp"
        case metadata = "x-amz-meta-"
        case metadataDirective = "x-amz-metadata-directive"
        case objectLockLegalHoldStatus = "x-amz-object-lock-legal-hold"
        case objectLockMode = "x-amz-object-lock-mode"
        case objectLockRetainUntilDate = "x-amz-object-lock-retain-until-date"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case storageClass = "x-amz-storage-class"
        case tagging = "x-amz-tagging"
        case taggingDirective = "x-amz-tagging-directive"
        case websiteRedirectLocation = "x-amz-website-redirect-location"
    }

    public func validate() throws {
        try copySource.validateAsCopySource()
    }
}

public extension CopyObjectRequest {
    public func asS3ModelCopyObjectOperationInputAdditionalHeaders() -> CopyObjectOperationInputAdditionalHeaders {
        return CopyObjectOperationInputAdditionalHeaders(
            aCL: aCL,
            cacheControl: cacheControl,
            contentDisposition: contentDisposition,
            contentEncoding: contentEncoding,
            contentLanguage: contentLanguage,
            contentType: contentType,
            copySource: copySource,
            copySourceIfMatch: copySourceIfMatch,
            copySourceIfModifiedSince: copySourceIfModifiedSince,
            copySourceIfNoneMatch: copySourceIfNoneMatch,
            copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
            copySourceSSECustomerAlgorithm: copySourceSSECustomerAlgorithm,
            copySourceSSECustomerKey: copySourceSSECustomerKey,
            copySourceSSECustomerKeyMD5: copySourceSSECustomerKeyMD5,
            expires: expires,
            grantFullControl: grantFullControl,
            grantRead: grantRead,
            grantReadACP: grantReadACP,
            grantWriteACP: grantWriteACP,
            metadata: metadata,
            metadataDirective: metadataDirective,
            objectLockLegalHoldStatus: objectLockLegalHoldStatus,
            objectLockMode: objectLockMode,
            objectLockRetainUntilDate: objectLockRetainUntilDate,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption,
            storageClass: storageClass,
            tagging: tagging,
            taggingDirective: taggingDirective,
            websiteRedirectLocation: websiteRedirectLocation)
    }
}


/**
 Structure to encode the body input for the CopyObject
 operation.
 */
public struct CopyObjectOperationOutputHeaders: Codable, Equatable {
    public var copySourceVersionId: CopySourceVersionId?
    public var expiration: Expiration?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var versionId: ObjectVersionId?

    public init(copySourceVersionId: CopySourceVersionId? = nil,
                expiration: Expiration? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                versionId: ObjectVersionId? = nil) {
        self.copySourceVersionId = copySourceVersionId
        self.expiration = expiration
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case copySourceVersionId = "x-amz-copy-source-version-id"
        case expiration = "x-amz-expiration"
        case requestCharged = "x-amz-request-charged"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case versionId = "x-amz-version-id"
    }

    public func validate() throws {
    }
}

public extension CopyObjectOutput {
    public func asS3ModelCopyObjectOperationOutputHeaders() -> CopyObjectOperationOutputHeaders {
        return CopyObjectOperationOutputHeaders(
            copySourceVersionId: copySourceVersionId,
            expiration: expiration,
            requestCharged: requestCharged,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption,
            versionId: versionId)
    }
}


/**
 Structure to encode the path input for the CreateBucket
 operation.
 */
public struct CreateBucketOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension CreateBucketRequest {
    public func asS3ModelCreateBucketOperationInputPath() -> CreateBucketOperationInputPath {
        return CreateBucketOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the CreateBucket
 operation.
 */
public struct CreateBucketOperationInputAdditionalHeaders: Codable, Equatable {
    public var aCL: BucketCannedACL?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWrite: GrantWrite?
    public var grantWriteACP: GrantWriteACP?
    public var objectLockEnabledForBucket: ObjectLockEnabledForBucket?

    public init(aCL: BucketCannedACL? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWrite: GrantWrite? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                objectLockEnabledForBucket: ObjectLockEnabledForBucket? = nil) {
        self.aCL = aCL
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWrite = grantWrite
        self.grantWriteACP = grantWriteACP
        self.objectLockEnabledForBucket = objectLockEnabledForBucket
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWrite = "x-amz-grant-write"
        case grantWriteACP = "x-amz-grant-write-acp"
        case objectLockEnabledForBucket = "x-amz-bucket-object-lock-enabled"
    }

    public func validate() throws {
    }
}

public extension CreateBucketRequest {
    public func asS3ModelCreateBucketOperationInputAdditionalHeaders() -> CreateBucketOperationInputAdditionalHeaders {
        return CreateBucketOperationInputAdditionalHeaders(
            aCL: aCL,
            grantFullControl: grantFullControl,
            grantRead: grantRead,
            grantReadACP: grantReadACP,
            grantWrite: grantWrite,
            grantWriteACP: grantWriteACP,
            objectLockEnabledForBucket: objectLockEnabledForBucket)
    }
}


/**
 Structure to encode the path input for the CreateMultipartUpload
 operation.
 */
public struct CreateMultipartUploadOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension CreateMultipartUploadRequest {
    public func asS3ModelCreateMultipartUploadOperationInputPath() -> CreateMultipartUploadOperationInputPath {
        return CreateMultipartUploadOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the body input for the CreateMultipartUpload
 operation.
 */
public struct CreateMultipartUploadOperationInputAdditionalHeaders: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var cacheControl: CacheControl?
    public var contentDisposition: ContentDisposition?
    public var contentEncoding: ContentEncoding?
    public var contentLanguage: ContentLanguage?
    public var contentType: ContentType?
    public var expires: Expires?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWriteACP: GrantWriteACP?
    public var metadata: Metadata?
    public var objectLockLegalHoldStatus: ObjectLockLegalHoldStatus?
    public var objectLockMode: ObjectLockMode?
    public var objectLockRetainUntilDate: ObjectLockRetainUntilDate?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var storageClass: StorageClass?
    public var tagging: TaggingHeader?
    public var websiteRedirectLocation: WebsiteRedirectLocation?

    public init(aCL: ObjectCannedACL? = nil,
                cacheControl: CacheControl? = nil,
                contentDisposition: ContentDisposition? = nil,
                contentEncoding: ContentEncoding? = nil,
                contentLanguage: ContentLanguage? = nil,
                contentType: ContentType? = nil,
                expires: Expires? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                metadata: Metadata? = nil,
                objectLockLegalHoldStatus: ObjectLockLegalHoldStatus? = nil,
                objectLockMode: ObjectLockMode? = nil,
                objectLockRetainUntilDate: ObjectLockRetainUntilDate? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                storageClass: StorageClass? = nil,
                tagging: TaggingHeader? = nil,
                websiteRedirectLocation: WebsiteRedirectLocation? = nil) {
        self.aCL = aCL
        self.cacheControl = cacheControl
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentType = contentType
        self.expires = expires
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWriteACP = grantWriteACP
        self.metadata = metadata
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.storageClass = storageClass
        self.tagging = tagging
        self.websiteRedirectLocation = websiteRedirectLocation
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case cacheControl = "Cache-Control"
        case contentDisposition = "Content-Disposition"
        case contentEncoding = "Content-Encoding"
        case contentLanguage = "Content-Language"
        case contentType = "Content-Type"
        case expires = "Expires"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWriteACP = "x-amz-grant-write-acp"
        case metadata = "x-amz-meta-"
        case objectLockLegalHoldStatus = "x-amz-object-lock-legal-hold"
        case objectLockMode = "x-amz-object-lock-mode"
        case objectLockRetainUntilDate = "x-amz-object-lock-retain-until-date"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case storageClass = "x-amz-storage-class"
        case tagging = "x-amz-tagging"
        case websiteRedirectLocation = "x-amz-website-redirect-location"
    }

    public func validate() throws {
    }
}

public extension CreateMultipartUploadRequest {
    public func asS3ModelCreateMultipartUploadOperationInputAdditionalHeaders() -> CreateMultipartUploadOperationInputAdditionalHeaders {
        return CreateMultipartUploadOperationInputAdditionalHeaders(
            aCL: aCL,
            cacheControl: cacheControl,
            contentDisposition: contentDisposition,
            contentEncoding: contentEncoding,
            contentLanguage: contentLanguage,
            contentType: contentType,
            expires: expires,
            grantFullControl: grantFullControl,
            grantRead: grantRead,
            grantReadACP: grantReadACP,
            grantWriteACP: grantWriteACP,
            metadata: metadata,
            objectLockLegalHoldStatus: objectLockLegalHoldStatus,
            objectLockMode: objectLockMode,
            objectLockRetainUntilDate: objectLockRetainUntilDate,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption,
            storageClass: storageClass,
            tagging: tagging,
            websiteRedirectLocation: websiteRedirectLocation)
    }
}


/**
 Structure to encode the body input for the CreateMultipartUpload
 operation.
 */
public struct CreateMultipartUploadOperationOutputBody: Codable, Equatable {
    public var bucket: BucketName?
    public var key: ObjectKey?
    public var uploadId: MultipartUploadId?

    public init(bucket: BucketName? = nil,
                key: ObjectKey? = nil,
                uploadId: MultipartUploadId? = nil) {
        self.bucket = bucket
        self.key = key
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case uploadId = "UploadId"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
    }
}

public extension CreateMultipartUploadOutput {
    public func asS3ModelCreateMultipartUploadOperationOutputBody() -> CreateMultipartUploadOperationOutputBody {
        return CreateMultipartUploadOperationOutputBody(
            bucket: bucket,
            key: key,
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the CreateMultipartUpload
 operation.
 */
public struct CreateMultipartUploadOperationOutputHeaders: Codable, Equatable {
    public var abortDate: AbortDate?
    public var abortRuleId: AbortRuleId?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?

    public init(abortDate: AbortDate? = nil,
                abortRuleId: AbortRuleId? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil) {
        self.abortDate = abortDate
        self.abortRuleId = abortRuleId
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
    }

    enum CodingKeys: String, CodingKey {
        case abortDate = "x-amz-abort-date"
        case abortRuleId = "x-amz-abort-rule-id"
        case requestCharged = "x-amz-request-charged"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
    }

    public func validate() throws {
    }
}

public extension CreateMultipartUploadOutput {
    public func asS3ModelCreateMultipartUploadOperationOutputHeaders() -> CreateMultipartUploadOperationOutputHeaders {
        return CreateMultipartUploadOperationOutputHeaders(
            abortDate: abortDate,
            abortRuleId: abortRuleId,
            requestCharged: requestCharged,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption)
    }
}


/**
 Structure to encode the path input for the DeleteBucket
 operation.
 */
public struct DeleteBucketOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketRequest {
    public func asS3ModelDeleteBucketOperationInputPath() -> DeleteBucketOperationInputPath {
        return DeleteBucketOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketAnalyticsConfiguration
 operation.
 */
public struct DeleteBucketAnalyticsConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketAnalyticsConfigurationRequest {
    public func asS3ModelDeleteBucketAnalyticsConfigurationOperationInputPath() -> DeleteBucketAnalyticsConfigurationOperationInputPath {
        return DeleteBucketAnalyticsConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the DeleteBucketAnalyticsConfiguration
 operation.
 */
public struct DeleteBucketAnalyticsConfigurationOperationInputQuery: Codable, Equatable {
    public var id: AnalyticsId

    public init(id: AnalyticsId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension DeleteBucketAnalyticsConfigurationRequest {
    public func asS3ModelDeleteBucketAnalyticsConfigurationOperationInputQuery() -> DeleteBucketAnalyticsConfigurationOperationInputQuery {
        return DeleteBucketAnalyticsConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the DeleteBucketCors
 operation.
 */
public struct DeleteBucketCorsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketCorsRequest {
    public func asS3ModelDeleteBucketCorsOperationInputPath() -> DeleteBucketCorsOperationInputPath {
        return DeleteBucketCorsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketEncryption
 operation.
 */
public struct DeleteBucketEncryptionOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketEncryptionRequest {
    public func asS3ModelDeleteBucketEncryptionOperationInputPath() -> DeleteBucketEncryptionOperationInputPath {
        return DeleteBucketEncryptionOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketInventoryConfiguration
 operation.
 */
public struct DeleteBucketInventoryConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketInventoryConfigurationRequest {
    public func asS3ModelDeleteBucketInventoryConfigurationOperationInputPath() -> DeleteBucketInventoryConfigurationOperationInputPath {
        return DeleteBucketInventoryConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the DeleteBucketInventoryConfiguration
 operation.
 */
public struct DeleteBucketInventoryConfigurationOperationInputQuery: Codable, Equatable {
    public var id: InventoryId

    public init(id: InventoryId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension DeleteBucketInventoryConfigurationRequest {
    public func asS3ModelDeleteBucketInventoryConfigurationOperationInputQuery() -> DeleteBucketInventoryConfigurationOperationInputQuery {
        return DeleteBucketInventoryConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the DeleteBucketLifecycle
 operation.
 */
public struct DeleteBucketLifecycleOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketLifecycleRequest {
    public func asS3ModelDeleteBucketLifecycleOperationInputPath() -> DeleteBucketLifecycleOperationInputPath {
        return DeleteBucketLifecycleOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketMetricsConfiguration
 operation.
 */
public struct DeleteBucketMetricsConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketMetricsConfigurationRequest {
    public func asS3ModelDeleteBucketMetricsConfigurationOperationInputPath() -> DeleteBucketMetricsConfigurationOperationInputPath {
        return DeleteBucketMetricsConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the DeleteBucketMetricsConfiguration
 operation.
 */
public struct DeleteBucketMetricsConfigurationOperationInputQuery: Codable, Equatable {
    public var id: MetricsId

    public init(id: MetricsId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension DeleteBucketMetricsConfigurationRequest {
    public func asS3ModelDeleteBucketMetricsConfigurationOperationInputQuery() -> DeleteBucketMetricsConfigurationOperationInputQuery {
        return DeleteBucketMetricsConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the DeleteBucketPolicy
 operation.
 */
public struct DeleteBucketPolicyOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketPolicyRequest {
    public func asS3ModelDeleteBucketPolicyOperationInputPath() -> DeleteBucketPolicyOperationInputPath {
        return DeleteBucketPolicyOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketReplication
 operation.
 */
public struct DeleteBucketReplicationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketReplicationRequest {
    public func asS3ModelDeleteBucketReplicationOperationInputPath() -> DeleteBucketReplicationOperationInputPath {
        return DeleteBucketReplicationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketTagging
 operation.
 */
public struct DeleteBucketTaggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketTaggingRequest {
    public func asS3ModelDeleteBucketTaggingOperationInputPath() -> DeleteBucketTaggingOperationInputPath {
        return DeleteBucketTaggingOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteBucketWebsite
 operation.
 */
public struct DeleteBucketWebsiteOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteBucketWebsiteRequest {
    public func asS3ModelDeleteBucketWebsiteOperationInputPath() -> DeleteBucketWebsiteOperationInputPath {
        return DeleteBucketWebsiteOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the DeleteObject
 operation.
 */
public struct DeleteObjectOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension DeleteObjectRequest {
    public func asS3ModelDeleteObjectOperationInputPath() -> DeleteObjectOperationInputPath {
        return DeleteObjectOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the DeleteObject
 operation.
 */
public struct DeleteObjectOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension DeleteObjectRequest {
    public func asS3ModelDeleteObjectOperationInputQuery() -> DeleteObjectOperationInputQuery {
        return DeleteObjectOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the DeleteObject
 operation.
 */
public struct DeleteObjectOperationInputAdditionalHeaders: Codable, Equatable {
    public var bypassGovernanceRetention: BypassGovernanceRetention?
    public var mFA: MFA?
    public var requestPayer: RequestPayer?

    public init(bypassGovernanceRetention: BypassGovernanceRetention? = nil,
                mFA: MFA? = nil,
                requestPayer: RequestPayer? = nil) {
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.mFA = mFA
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case bypassGovernanceRetention = "x-amz-bypass-governance-retention"
        case mFA = "x-amz-mfa"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension DeleteObjectRequest {
    public func asS3ModelDeleteObjectOperationInputAdditionalHeaders() -> DeleteObjectOperationInputAdditionalHeaders {
        return DeleteObjectOperationInputAdditionalHeaders(
            bypassGovernanceRetention: bypassGovernanceRetention,
            mFA: mFA,
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the DeleteObjectTagging
 operation.
 */
public struct DeleteObjectTaggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension DeleteObjectTaggingRequest {
    public func asS3ModelDeleteObjectTaggingOperationInputPath() -> DeleteObjectTaggingOperationInputPath {
        return DeleteObjectTaggingOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the DeleteObjectTagging
 operation.
 */
public struct DeleteObjectTaggingOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension DeleteObjectTaggingRequest {
    public func asS3ModelDeleteObjectTaggingOperationInputQuery() -> DeleteObjectTaggingOperationInputQuery {
        return DeleteObjectTaggingOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the path input for the DeleteObjects
 operation.
 */
public struct DeleteObjectsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeleteObjectsRequest {
    public func asS3ModelDeleteObjectsOperationInputPath() -> DeleteObjectsOperationInputPath {
        return DeleteObjectsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the DeleteObjects
 operation.
 */
public struct DeleteObjectsOperationInputAdditionalHeaders: Codable, Equatable {
    public var bypassGovernanceRetention: BypassGovernanceRetention?
    public var mFA: MFA?
    public var requestPayer: RequestPayer?

    public init(bypassGovernanceRetention: BypassGovernanceRetention? = nil,
                mFA: MFA? = nil,
                requestPayer: RequestPayer? = nil) {
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.mFA = mFA
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case bypassGovernanceRetention = "x-amz-bypass-governance-retention"
        case mFA = "x-amz-mfa"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension DeleteObjectsRequest {
    public func asS3ModelDeleteObjectsOperationInputAdditionalHeaders() -> DeleteObjectsOperationInputAdditionalHeaders {
        return DeleteObjectsOperationInputAdditionalHeaders(
            bypassGovernanceRetention: bypassGovernanceRetention,
            mFA: mFA,
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the body input for the DeleteObjects
 operation.
 */
public struct DeleteObjectsOperationOutputBody: Codable, Equatable {
    public var deleted: DeletedObjects?
    public var errors: Errors?

    public init(deleted: DeletedObjects? = nil,
                errors: Errors? = nil) {
        self.deleted = deleted
        self.errors = errors
    }

    enum CodingKeys: String, CodingKey {
        case deleted = "Deleted"
        case errors = "Error"
    }

    public func validate() throws {
    }
}

public extension DeleteObjectsOutput {
    public func asS3ModelDeleteObjectsOperationOutputBody() -> DeleteObjectsOperationOutputBody {
        return DeleteObjectsOperationOutputBody(
            deleted: deleted,
            errors: errors)
    }
}


/**
 Structure to encode the body input for the DeleteObjects
 operation.
 */
public struct DeleteObjectsOperationOutputHeaders: Codable, Equatable {
    public var requestCharged: RequestCharged?

    public init(requestCharged: RequestCharged? = nil) {
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
    }
}

public extension DeleteObjectsOutput {
    public func asS3ModelDeleteObjectsOperationOutputHeaders() -> DeleteObjectsOperationOutputHeaders {
        return DeleteObjectsOperationOutputHeaders(
            requestCharged: requestCharged)
    }
}


/**
 Structure to encode the path input for the DeletePublicAccessBlock
 operation.
 */
public struct DeletePublicAccessBlockOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension DeletePublicAccessBlockRequest {
    public func asS3ModelDeletePublicAccessBlockOperationInputPath() -> DeletePublicAccessBlockOperationInputPath {
        return DeletePublicAccessBlockOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketAccelerateConfiguration
 operation.
 */
public struct GetBucketAccelerateConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketAccelerateConfigurationRequest {
    public func asS3ModelGetBucketAccelerateConfigurationOperationInputPath() -> GetBucketAccelerateConfigurationOperationInputPath {
        return GetBucketAccelerateConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketAcl
 operation.
 */
public struct GetBucketAclOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketAclRequest {
    public func asS3ModelGetBucketAclOperationInputPath() -> GetBucketAclOperationInputPath {
        return GetBucketAclOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketAnalyticsConfiguration
 operation.
 */
public struct GetBucketAnalyticsConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketAnalyticsConfigurationRequest {
    public func asS3ModelGetBucketAnalyticsConfigurationOperationInputPath() -> GetBucketAnalyticsConfigurationOperationInputPath {
        return GetBucketAnalyticsConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the GetBucketAnalyticsConfiguration
 operation.
 */
public struct GetBucketAnalyticsConfigurationOperationInputQuery: Codable, Equatable {
    public var id: AnalyticsId

    public init(id: AnalyticsId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension GetBucketAnalyticsConfigurationRequest {
    public func asS3ModelGetBucketAnalyticsConfigurationOperationInputQuery() -> GetBucketAnalyticsConfigurationOperationInputQuery {
        return GetBucketAnalyticsConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the GetBucketCors
 operation.
 */
public struct GetBucketCorsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketCorsRequest {
    public func asS3ModelGetBucketCorsOperationInputPath() -> GetBucketCorsOperationInputPath {
        return GetBucketCorsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketEncryption
 operation.
 */
public struct GetBucketEncryptionOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketEncryptionRequest {
    public func asS3ModelGetBucketEncryptionOperationInputPath() -> GetBucketEncryptionOperationInputPath {
        return GetBucketEncryptionOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketInventoryConfiguration
 operation.
 */
public struct GetBucketInventoryConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketInventoryConfigurationRequest {
    public func asS3ModelGetBucketInventoryConfigurationOperationInputPath() -> GetBucketInventoryConfigurationOperationInputPath {
        return GetBucketInventoryConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the GetBucketInventoryConfiguration
 operation.
 */
public struct GetBucketInventoryConfigurationOperationInputQuery: Codable, Equatable {
    public var id: InventoryId

    public init(id: InventoryId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension GetBucketInventoryConfigurationRequest {
    public func asS3ModelGetBucketInventoryConfigurationOperationInputQuery() -> GetBucketInventoryConfigurationOperationInputQuery {
        return GetBucketInventoryConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the GetBucketLifecycle
 operation.
 */
public struct GetBucketLifecycleOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketLifecycleRequest {
    public func asS3ModelGetBucketLifecycleOperationInputPath() -> GetBucketLifecycleOperationInputPath {
        return GetBucketLifecycleOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketLifecycleConfiguration
 operation.
 */
public struct GetBucketLifecycleConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketLifecycleConfigurationRequest {
    public func asS3ModelGetBucketLifecycleConfigurationOperationInputPath() -> GetBucketLifecycleConfigurationOperationInputPath {
        return GetBucketLifecycleConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketLocation
 operation.
 */
public struct GetBucketLocationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketLocationRequest {
    public func asS3ModelGetBucketLocationOperationInputPath() -> GetBucketLocationOperationInputPath {
        return GetBucketLocationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketLogging
 operation.
 */
public struct GetBucketLoggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketLoggingRequest {
    public func asS3ModelGetBucketLoggingOperationInputPath() -> GetBucketLoggingOperationInputPath {
        return GetBucketLoggingOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketMetricsConfiguration
 operation.
 */
public struct GetBucketMetricsConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketMetricsConfigurationRequest {
    public func asS3ModelGetBucketMetricsConfigurationOperationInputPath() -> GetBucketMetricsConfigurationOperationInputPath {
        return GetBucketMetricsConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the GetBucketMetricsConfiguration
 operation.
 */
public struct GetBucketMetricsConfigurationOperationInputQuery: Codable, Equatable {
    public var id: MetricsId

    public init(id: MetricsId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension GetBucketMetricsConfigurationRequest {
    public func asS3ModelGetBucketMetricsConfigurationOperationInputQuery() -> GetBucketMetricsConfigurationOperationInputQuery {
        return GetBucketMetricsConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the GetBucketNotification
 operation.
 */
public struct GetBucketNotificationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketNotificationConfigurationRequest {
    public func asS3ModelGetBucketNotificationOperationInputPath() -> GetBucketNotificationOperationInputPath {
        return GetBucketNotificationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketNotificationConfiguration
 operation.
 */
public struct GetBucketNotificationConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketNotificationConfigurationRequest {
    public func asS3ModelGetBucketNotificationConfigurationOperationInputPath() -> GetBucketNotificationConfigurationOperationInputPath {
        return GetBucketNotificationConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketPolicy
 operation.
 */
public struct GetBucketPolicyOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketPolicyRequest {
    public func asS3ModelGetBucketPolicyOperationInputPath() -> GetBucketPolicyOperationInputPath {
        return GetBucketPolicyOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketPolicyStatus
 operation.
 */
public struct GetBucketPolicyStatusOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketPolicyStatusRequest {
    public func asS3ModelGetBucketPolicyStatusOperationInputPath() -> GetBucketPolicyStatusOperationInputPath {
        return GetBucketPolicyStatusOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketReplication
 operation.
 */
public struct GetBucketReplicationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketReplicationRequest {
    public func asS3ModelGetBucketReplicationOperationInputPath() -> GetBucketReplicationOperationInputPath {
        return GetBucketReplicationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketRequestPayment
 operation.
 */
public struct GetBucketRequestPaymentOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketRequestPaymentRequest {
    public func asS3ModelGetBucketRequestPaymentOperationInputPath() -> GetBucketRequestPaymentOperationInputPath {
        return GetBucketRequestPaymentOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketTagging
 operation.
 */
public struct GetBucketTaggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketTaggingRequest {
    public func asS3ModelGetBucketTaggingOperationInputPath() -> GetBucketTaggingOperationInputPath {
        return GetBucketTaggingOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketVersioning
 operation.
 */
public struct GetBucketVersioningOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketVersioningRequest {
    public func asS3ModelGetBucketVersioningOperationInputPath() -> GetBucketVersioningOperationInputPath {
        return GetBucketVersioningOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetBucketWebsite
 operation.
 */
public struct GetBucketWebsiteOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetBucketWebsiteRequest {
    public func asS3ModelGetBucketWebsiteOperationInputPath() -> GetBucketWebsiteOperationInputPath {
        return GetBucketWebsiteOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetObject
 operation.
 */
public struct GetObjectOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension GetObjectRequest {
    public func asS3ModelGetObjectOperationInputPath() -> GetObjectOperationInputPath {
        return GetObjectOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the GetObject
 operation.
 */
public struct GetObjectOperationInputQuery: Codable, Equatable {
    public var partNumber: PartNumber?
    public var responseCacheControl: ResponseCacheControl?
    public var responseContentDisposition: ResponseContentDisposition?
    public var responseContentEncoding: ResponseContentEncoding?
    public var responseContentLanguage: ResponseContentLanguage?
    public var responseContentType: ResponseContentType?
    public var responseExpires: ResponseExpires?
    public var versionId: ObjectVersionId?

    public init(partNumber: PartNumber? = nil,
                responseCacheControl: ResponseCacheControl? = nil,
                responseContentDisposition: ResponseContentDisposition? = nil,
                responseContentEncoding: ResponseContentEncoding? = nil,
                responseContentLanguage: ResponseContentLanguage? = nil,
                responseContentType: ResponseContentType? = nil,
                responseExpires: ResponseExpires? = nil,
                versionId: ObjectVersionId? = nil) {
        self.partNumber = partNumber
        self.responseCacheControl = responseCacheControl
        self.responseContentDisposition = responseContentDisposition
        self.responseContentEncoding = responseContentEncoding
        self.responseContentLanguage = responseContentLanguage
        self.responseContentType = responseContentType
        self.responseExpires = responseExpires
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case partNumber
        case responseCacheControl = "response-cache-control"
        case responseContentDisposition = "response-content-disposition"
        case responseContentEncoding = "response-content-encoding"
        case responseContentLanguage = "response-content-language"
        case responseContentType = "response-content-type"
        case responseExpires = "response-expires"
        case versionId
    }

    public func validate() throws {
    }
}

public extension GetObjectRequest {
    public func asS3ModelGetObjectOperationInputQuery() -> GetObjectOperationInputQuery {
        return GetObjectOperationInputQuery(
            partNumber: partNumber,
            responseCacheControl: responseCacheControl,
            responseContentDisposition: responseContentDisposition,
            responseContentEncoding: responseContentEncoding,
            responseContentLanguage: responseContentLanguage,
            responseContentType: responseContentType,
            responseExpires: responseExpires,
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the GetObject
 operation.
 */
public struct GetObjectOperationInputAdditionalHeaders: Codable, Equatable {
    public var ifMatch: IfMatch?
    public var ifModifiedSince: IfModifiedSince?
    public var ifNoneMatch: IfNoneMatch?
    public var ifUnmodifiedSince: IfUnmodifiedSince?
    public var range: Range?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?

    public init(ifMatch: IfMatch? = nil,
                ifModifiedSince: IfModifiedSince? = nil,
                ifNoneMatch: IfNoneMatch? = nil,
                ifUnmodifiedSince: IfUnmodifiedSince? = nil,
                range: Range? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil) {
        self.ifMatch = ifMatch
        self.ifModifiedSince = ifModifiedSince
        self.ifNoneMatch = ifNoneMatch
        self.ifUnmodifiedSince = ifUnmodifiedSince
        self.range = range
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
    }

    enum CodingKeys: String, CodingKey {
        case ifMatch = "If-Match"
        case ifModifiedSince = "If-Modified-Since"
        case ifNoneMatch = "If-None-Match"
        case ifUnmodifiedSince = "If-Unmodified-Since"
        case range = "Range"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
    }

    public func validate() throws {
    }
}

public extension GetObjectRequest {
    public func asS3ModelGetObjectOperationInputAdditionalHeaders() -> GetObjectOperationInputAdditionalHeaders {
        return GetObjectOperationInputAdditionalHeaders(
            ifMatch: ifMatch,
            ifModifiedSince: ifModifiedSince,
            ifNoneMatch: ifNoneMatch,
            ifUnmodifiedSince: ifUnmodifiedSince,
            range: range,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5)
    }
}


/**
 Structure to encode the body input for the GetObject
 operation.
 */
public struct GetObjectOperationOutputHeaders: Codable, Equatable {
    public var acceptRanges: AcceptRanges?
    public var cacheControl: CacheControl?
    public var contentDisposition: ContentDisposition?
    public var contentEncoding: ContentEncoding?
    public var contentLanguage: ContentLanguage?
    public var contentLength: ContentLength?
    public var contentRange: ContentRange?
    public var contentType: ContentType?
    public var deleteMarker: DeleteMarker?
    public var eTag: ETag?
    public var expiration: Expiration?
    public var expires: Expires?
    public var lastModified: LastModified?
    public var metadata: Metadata?
    public var missingMeta: MissingMeta?
    public var objectLockLegalHoldStatus: ObjectLockLegalHoldStatus?
    public var objectLockMode: ObjectLockMode?
    public var objectLockRetainUntilDate: ObjectLockRetainUntilDate?
    public var partsCount: PartsCount?
    public var replicationStatus: ReplicationStatus?
    public var requestCharged: RequestCharged?
    public var restore: Restore?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var storageClass: StorageClass?
    public var tagCount: TagCount?
    public var versionId: ObjectVersionId?
    public var websiteRedirectLocation: WebsiteRedirectLocation?

    public init(acceptRanges: AcceptRanges? = nil,
                cacheControl: CacheControl? = nil,
                contentDisposition: ContentDisposition? = nil,
                contentEncoding: ContentEncoding? = nil,
                contentLanguage: ContentLanguage? = nil,
                contentLength: ContentLength? = nil,
                contentRange: ContentRange? = nil,
                contentType: ContentType? = nil,
                deleteMarker: DeleteMarker? = nil,
                eTag: ETag? = nil,
                expiration: Expiration? = nil,
                expires: Expires? = nil,
                lastModified: LastModified? = nil,
                metadata: Metadata? = nil,
                missingMeta: MissingMeta? = nil,
                objectLockLegalHoldStatus: ObjectLockLegalHoldStatus? = nil,
                objectLockMode: ObjectLockMode? = nil,
                objectLockRetainUntilDate: ObjectLockRetainUntilDate? = nil,
                partsCount: PartsCount? = nil,
                replicationStatus: ReplicationStatus? = nil,
                requestCharged: RequestCharged? = nil,
                restore: Restore? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                storageClass: StorageClass? = nil,
                tagCount: TagCount? = nil,
                versionId: ObjectVersionId? = nil,
                websiteRedirectLocation: WebsiteRedirectLocation? = nil) {
        self.acceptRanges = acceptRanges
        self.cacheControl = cacheControl
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentLength = contentLength
        self.contentRange = contentRange
        self.contentType = contentType
        self.deleteMarker = deleteMarker
        self.eTag = eTag
        self.expiration = expiration
        self.expires = expires
        self.lastModified = lastModified
        self.metadata = metadata
        self.missingMeta = missingMeta
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.partsCount = partsCount
        self.replicationStatus = replicationStatus
        self.requestCharged = requestCharged
        self.restore = restore
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.storageClass = storageClass
        self.tagCount = tagCount
        self.versionId = versionId
        self.websiteRedirectLocation = websiteRedirectLocation
    }

    enum CodingKeys: String, CodingKey {
        case acceptRanges = "accept-ranges"
        case cacheControl = "Cache-Control"
        case contentDisposition = "Content-Disposition"
        case contentEncoding = "Content-Encoding"
        case contentLanguage = "Content-Language"
        case contentLength = "Content-Length"
        case contentRange = "Content-Range"
        case contentType = "Content-Type"
        case deleteMarker = "x-amz-delete-marker"
        case eTag = "ETag"
        case expiration = "x-amz-expiration"
        case expires = "Expires"
        case lastModified = "Last-Modified"
        case metadata = "x-amz-meta-"
        case missingMeta = "x-amz-missing-meta"
        case objectLockLegalHoldStatus = "x-amz-object-lock-legal-hold"
        case objectLockMode = "x-amz-object-lock-mode"
        case objectLockRetainUntilDate = "x-amz-object-lock-retain-until-date"
        case partsCount = "x-amz-mp-parts-count"
        case replicationStatus = "x-amz-replication-status"
        case requestCharged = "x-amz-request-charged"
        case restore = "x-amz-restore"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case storageClass = "x-amz-storage-class"
        case tagCount = "x-amz-tagging-count"
        case versionId = "x-amz-version-id"
        case websiteRedirectLocation = "x-amz-website-redirect-location"
    }

    public func validate() throws {
    }
}

public extension GetObjectOutput {
    public func asS3ModelGetObjectOperationOutputHeaders() -> GetObjectOperationOutputHeaders {
        return GetObjectOperationOutputHeaders(
            acceptRanges: acceptRanges,
            cacheControl: cacheControl,
            contentDisposition: contentDisposition,
            contentEncoding: contentEncoding,
            contentLanguage: contentLanguage,
            contentLength: contentLength,
            contentRange: contentRange,
            contentType: contentType,
            deleteMarker: deleteMarker,
            eTag: eTag,
            expiration: expiration,
            expires: expires,
            lastModified: lastModified,
            metadata: metadata,
            missingMeta: missingMeta,
            objectLockLegalHoldStatus: objectLockLegalHoldStatus,
            objectLockMode: objectLockMode,
            objectLockRetainUntilDate: objectLockRetainUntilDate,
            partsCount: partsCount,
            replicationStatus: replicationStatus,
            requestCharged: requestCharged,
            restore: restore,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption,
            storageClass: storageClass,
            tagCount: tagCount,
            versionId: versionId,
            websiteRedirectLocation: websiteRedirectLocation)
    }
}


/**
 Structure to encode the path input for the GetObjectAcl
 operation.
 */
public struct GetObjectAclOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension GetObjectAclRequest {
    public func asS3ModelGetObjectAclOperationInputPath() -> GetObjectAclOperationInputPath {
        return GetObjectAclOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the GetObjectAcl
 operation.
 */
public struct GetObjectAclOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension GetObjectAclRequest {
    public func asS3ModelGetObjectAclOperationInputQuery() -> GetObjectAclOperationInputQuery {
        return GetObjectAclOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the GetObjectAcl
 operation.
 */
public struct GetObjectAclOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension GetObjectAclRequest {
    public func asS3ModelGetObjectAclOperationInputAdditionalHeaders() -> GetObjectAclOperationInputAdditionalHeaders {
        return GetObjectAclOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the body input for the GetObjectAcl
 operation.
 */
public struct GetObjectAclOperationOutputBody: Codable, Equatable {
    public var grants: Grants?
    public var owner: Owner?

    public init(grants: Grants? = nil,
                owner: Owner? = nil) {
        self.grants = grants
        self.owner = owner
    }

    enum CodingKeys: String, CodingKey {
        case grants = "AccessControlList"
        case owner = "Owner"
    }

    public func validate() throws {
        try owner?.validate()
    }
}

public extension GetObjectAclOutput {
    public func asS3ModelGetObjectAclOperationOutputBody() -> GetObjectAclOperationOutputBody {
        return GetObjectAclOperationOutputBody(
            grants: grants,
            owner: owner)
    }
}


/**
 Structure to encode the body input for the GetObjectAcl
 operation.
 */
public struct GetObjectAclOperationOutputHeaders: Codable, Equatable {
    public var requestCharged: RequestCharged?

    public init(requestCharged: RequestCharged? = nil) {
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
    }
}

public extension GetObjectAclOutput {
    public func asS3ModelGetObjectAclOperationOutputHeaders() -> GetObjectAclOperationOutputHeaders {
        return GetObjectAclOperationOutputHeaders(
            requestCharged: requestCharged)
    }
}


/**
 Structure to encode the path input for the GetObjectLegalHold
 operation.
 */
public struct GetObjectLegalHoldOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension GetObjectLegalHoldRequest {
    public func asS3ModelGetObjectLegalHoldOperationInputPath() -> GetObjectLegalHoldOperationInputPath {
        return GetObjectLegalHoldOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the GetObjectLegalHold
 operation.
 */
public struct GetObjectLegalHoldOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension GetObjectLegalHoldRequest {
    public func asS3ModelGetObjectLegalHoldOperationInputQuery() -> GetObjectLegalHoldOperationInputQuery {
        return GetObjectLegalHoldOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the GetObjectLegalHold
 operation.
 */
public struct GetObjectLegalHoldOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension GetObjectLegalHoldRequest {
    public func asS3ModelGetObjectLegalHoldOperationInputAdditionalHeaders() -> GetObjectLegalHoldOperationInputAdditionalHeaders {
        return GetObjectLegalHoldOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the GetObjectLockConfiguration
 operation.
 */
public struct GetObjectLockConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetObjectLockConfigurationRequest {
    public func asS3ModelGetObjectLockConfigurationOperationInputPath() -> GetObjectLockConfigurationOperationInputPath {
        return GetObjectLockConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the GetObjectRetention
 operation.
 */
public struct GetObjectRetentionOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension GetObjectRetentionRequest {
    public func asS3ModelGetObjectRetentionOperationInputPath() -> GetObjectRetentionOperationInputPath {
        return GetObjectRetentionOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the GetObjectRetention
 operation.
 */
public struct GetObjectRetentionOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension GetObjectRetentionRequest {
    public func asS3ModelGetObjectRetentionOperationInputQuery() -> GetObjectRetentionOperationInputQuery {
        return GetObjectRetentionOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the GetObjectRetention
 operation.
 */
public struct GetObjectRetentionOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension GetObjectRetentionRequest {
    public func asS3ModelGetObjectRetentionOperationInputAdditionalHeaders() -> GetObjectRetentionOperationInputAdditionalHeaders {
        return GetObjectRetentionOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the GetObjectTagging
 operation.
 */
public struct GetObjectTaggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension GetObjectTaggingRequest {
    public func asS3ModelGetObjectTaggingOperationInputPath() -> GetObjectTaggingOperationInputPath {
        return GetObjectTaggingOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the GetObjectTagging
 operation.
 */
public struct GetObjectTaggingOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension GetObjectTaggingRequest {
    public func asS3ModelGetObjectTaggingOperationInputQuery() -> GetObjectTaggingOperationInputQuery {
        return GetObjectTaggingOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the GetObjectTagging
 operation.
 */
public struct GetObjectTaggingOperationOutputBody: Codable, Equatable {
    public var tagSet: TagSet

    public init(tagSet: TagSet) {
        self.tagSet = tagSet
    }

    enum CodingKeys: String, CodingKey {
        case tagSet = "TagSet"
    }

    public func validate() throws {
    }
}

public extension GetObjectTaggingOutput {
    public func asS3ModelGetObjectTaggingOperationOutputBody() -> GetObjectTaggingOperationOutputBody {
        return GetObjectTaggingOperationOutputBody(
            tagSet: tagSet)
    }
}


/**
 Structure to encode the body input for the GetObjectTagging
 operation.
 */
public struct GetObjectTaggingOperationOutputHeaders: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId = "x-amz-version-id"
    }

    public func validate() throws {
    }
}

public extension GetObjectTaggingOutput {
    public func asS3ModelGetObjectTaggingOperationOutputHeaders() -> GetObjectTaggingOperationOutputHeaders {
        return GetObjectTaggingOperationOutputHeaders(
            versionId: versionId)
    }
}


/**
 Structure to encode the path input for the GetObjectTorrent
 operation.
 */
public struct GetObjectTorrentOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension GetObjectTorrentRequest {
    public func asS3ModelGetObjectTorrentOperationInputPath() -> GetObjectTorrentOperationInputPath {
        return GetObjectTorrentOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the body input for the GetObjectTorrent
 operation.
 */
public struct GetObjectTorrentOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension GetObjectTorrentRequest {
    public func asS3ModelGetObjectTorrentOperationInputAdditionalHeaders() -> GetObjectTorrentOperationInputAdditionalHeaders {
        return GetObjectTorrentOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the body input for the GetObjectTorrent
 operation.
 */
public struct GetObjectTorrentOperationOutputHeaders: Codable, Equatable {
    public var requestCharged: RequestCharged?

    public init(requestCharged: RequestCharged? = nil) {
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
    }
}

public extension GetObjectTorrentOutput {
    public func asS3ModelGetObjectTorrentOperationOutputHeaders() -> GetObjectTorrentOperationOutputHeaders {
        return GetObjectTorrentOperationOutputHeaders(
            requestCharged: requestCharged)
    }
}


/**
 Structure to encode the path input for the GetPublicAccessBlock
 operation.
 */
public struct GetPublicAccessBlockOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension GetPublicAccessBlockRequest {
    public func asS3ModelGetPublicAccessBlockOperationInputPath() -> GetPublicAccessBlockOperationInputPath {
        return GetPublicAccessBlockOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the HeadBucket
 operation.
 */
public struct HeadBucketOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension HeadBucketRequest {
    public func asS3ModelHeadBucketOperationInputPath() -> HeadBucketOperationInputPath {
        return HeadBucketOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the HeadObject
 operation.
 */
public struct HeadObjectOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension HeadObjectRequest {
    public func asS3ModelHeadObjectOperationInputPath() -> HeadObjectOperationInputPath {
        return HeadObjectOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the HeadObject
 operation.
 */
public struct HeadObjectOperationInputQuery: Codable, Equatable {
    public var partNumber: PartNumber?
    public var versionId: ObjectVersionId?

    public init(partNumber: PartNumber? = nil,
                versionId: ObjectVersionId? = nil) {
        self.partNumber = partNumber
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case partNumber
        case versionId
    }

    public func validate() throws {
    }
}

public extension HeadObjectRequest {
    public func asS3ModelHeadObjectOperationInputQuery() -> HeadObjectOperationInputQuery {
        return HeadObjectOperationInputQuery(
            partNumber: partNumber,
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the HeadObject
 operation.
 */
public struct HeadObjectOperationInputAdditionalHeaders: Codable, Equatable {
    public var ifMatch: IfMatch?
    public var ifModifiedSince: IfModifiedSince?
    public var ifNoneMatch: IfNoneMatch?
    public var ifUnmodifiedSince: IfUnmodifiedSince?
    public var range: Range?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?

    public init(ifMatch: IfMatch? = nil,
                ifModifiedSince: IfModifiedSince? = nil,
                ifNoneMatch: IfNoneMatch? = nil,
                ifUnmodifiedSince: IfUnmodifiedSince? = nil,
                range: Range? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil) {
        self.ifMatch = ifMatch
        self.ifModifiedSince = ifModifiedSince
        self.ifNoneMatch = ifNoneMatch
        self.ifUnmodifiedSince = ifUnmodifiedSince
        self.range = range
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
    }

    enum CodingKeys: String, CodingKey {
        case ifMatch = "If-Match"
        case ifModifiedSince = "If-Modified-Since"
        case ifNoneMatch = "If-None-Match"
        case ifUnmodifiedSince = "If-Unmodified-Since"
        case range = "Range"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
    }

    public func validate() throws {
    }
}

public extension HeadObjectRequest {
    public func asS3ModelHeadObjectOperationInputAdditionalHeaders() -> HeadObjectOperationInputAdditionalHeaders {
        return HeadObjectOperationInputAdditionalHeaders(
            ifMatch: ifMatch,
            ifModifiedSince: ifModifiedSince,
            ifNoneMatch: ifNoneMatch,
            ifUnmodifiedSince: ifUnmodifiedSince,
            range: range,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5)
    }
}


/**
 Structure to encode the path input for the ListBucketAnalyticsConfigurations
 operation.
 */
public struct ListBucketAnalyticsConfigurationsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListBucketAnalyticsConfigurationsRequest {
    public func asS3ModelListBucketAnalyticsConfigurationsOperationInputPath() -> ListBucketAnalyticsConfigurationsOperationInputPath {
        return ListBucketAnalyticsConfigurationsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListBucketAnalyticsConfigurations
 operation.
 */
public struct ListBucketAnalyticsConfigurationsOperationInputQuery: Codable, Equatable {
    public var continuationToken: Token?

    public init(continuationToken: Token? = nil) {
        self.continuationToken = continuationToken
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken = "continuation-token"
    }

    public func validate() throws {
    }
}

public extension ListBucketAnalyticsConfigurationsRequest {
    public func asS3ModelListBucketAnalyticsConfigurationsOperationInputQuery() -> ListBucketAnalyticsConfigurationsOperationInputQuery {
        return ListBucketAnalyticsConfigurationsOperationInputQuery(
            continuationToken: continuationToken)
    }
}


/**
 Structure to encode the path input for the ListBucketInventoryConfigurations
 operation.
 */
public struct ListBucketInventoryConfigurationsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListBucketInventoryConfigurationsRequest {
    public func asS3ModelListBucketInventoryConfigurationsOperationInputPath() -> ListBucketInventoryConfigurationsOperationInputPath {
        return ListBucketInventoryConfigurationsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListBucketInventoryConfigurations
 operation.
 */
public struct ListBucketInventoryConfigurationsOperationInputQuery: Codable, Equatable {
    public var continuationToken: Token?

    public init(continuationToken: Token? = nil) {
        self.continuationToken = continuationToken
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken = "continuation-token"
    }

    public func validate() throws {
    }
}

public extension ListBucketInventoryConfigurationsRequest {
    public func asS3ModelListBucketInventoryConfigurationsOperationInputQuery() -> ListBucketInventoryConfigurationsOperationInputQuery {
        return ListBucketInventoryConfigurationsOperationInputQuery(
            continuationToken: continuationToken)
    }
}


/**
 Structure to encode the path input for the ListBucketMetricsConfigurations
 operation.
 */
public struct ListBucketMetricsConfigurationsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListBucketMetricsConfigurationsRequest {
    public func asS3ModelListBucketMetricsConfigurationsOperationInputPath() -> ListBucketMetricsConfigurationsOperationInputPath {
        return ListBucketMetricsConfigurationsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListBucketMetricsConfigurations
 operation.
 */
public struct ListBucketMetricsConfigurationsOperationInputQuery: Codable, Equatable {
    public var continuationToken: Token?

    public init(continuationToken: Token? = nil) {
        self.continuationToken = continuationToken
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken = "continuation-token"
    }

    public func validate() throws {
    }
}

public extension ListBucketMetricsConfigurationsRequest {
    public func asS3ModelListBucketMetricsConfigurationsOperationInputQuery() -> ListBucketMetricsConfigurationsOperationInputQuery {
        return ListBucketMetricsConfigurationsOperationInputQuery(
            continuationToken: continuationToken)
    }
}


/**
 Structure to encode the path input for the ListMultipartUploads
 operation.
 */
public struct ListMultipartUploadsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListMultipartUploadsRequest {
    public func asS3ModelListMultipartUploadsOperationInputPath() -> ListMultipartUploadsOperationInputPath {
        return ListMultipartUploadsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListMultipartUploads
 operation.
 */
public struct ListMultipartUploadsOperationInputQuery: Codable, Equatable {
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var keyMarker: KeyMarker?
    public var maxUploads: MaxUploads?
    public var prefix: Prefix?
    public var uploadIdMarker: UploadIdMarker?

    public init(delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                keyMarker: KeyMarker? = nil,
                maxUploads: MaxUploads? = nil,
                prefix: Prefix? = nil,
                uploadIdMarker: UploadIdMarker? = nil) {
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.keyMarker = keyMarker
        self.maxUploads = maxUploads
        self.prefix = prefix
        self.uploadIdMarker = uploadIdMarker
    }

    enum CodingKeys: String, CodingKey {
        case delimiter
        case encodingType = "encoding-type"
        case keyMarker = "key-marker"
        case maxUploads = "max-uploads"
        case prefix
        case uploadIdMarker = "upload-id-marker"
    }

    public func validate() throws {
    }
}

public extension ListMultipartUploadsRequest {
    public func asS3ModelListMultipartUploadsOperationInputQuery() -> ListMultipartUploadsOperationInputQuery {
        return ListMultipartUploadsOperationInputQuery(
            delimiter: delimiter,
            encodingType: encodingType,
            keyMarker: keyMarker,
            maxUploads: maxUploads,
            prefix: prefix,
            uploadIdMarker: uploadIdMarker)
    }
}


/**
 Structure to encode the path input for the ListObjectVersions
 operation.
 */
public struct ListObjectVersionsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListObjectVersionsRequest {
    public func asS3ModelListObjectVersionsOperationInputPath() -> ListObjectVersionsOperationInputPath {
        return ListObjectVersionsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListObjectVersions
 operation.
 */
public struct ListObjectVersionsOperationInputQuery: Codable, Equatable {
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var keyMarker: KeyMarker?
    public var maxKeys: MaxKeys?
    public var prefix: Prefix?
    public var versionIdMarker: VersionIdMarker?

    public init(delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                keyMarker: KeyMarker? = nil,
                maxKeys: MaxKeys? = nil,
                prefix: Prefix? = nil,
                versionIdMarker: VersionIdMarker? = nil) {
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.keyMarker = keyMarker
        self.maxKeys = maxKeys
        self.prefix = prefix
        self.versionIdMarker = versionIdMarker
    }

    enum CodingKeys: String, CodingKey {
        case delimiter
        case encodingType = "encoding-type"
        case keyMarker = "key-marker"
        case maxKeys = "max-keys"
        case prefix
        case versionIdMarker = "version-id-marker"
    }

    public func validate() throws {
    }
}

public extension ListObjectVersionsRequest {
    public func asS3ModelListObjectVersionsOperationInputQuery() -> ListObjectVersionsOperationInputQuery {
        return ListObjectVersionsOperationInputQuery(
            delimiter: delimiter,
            encodingType: encodingType,
            keyMarker: keyMarker,
            maxKeys: maxKeys,
            prefix: prefix,
            versionIdMarker: versionIdMarker)
    }
}


/**
 Structure to encode the path input for the ListObjects
 operation.
 */
public struct ListObjectsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListObjectsRequest {
    public func asS3ModelListObjectsOperationInputPath() -> ListObjectsOperationInputPath {
        return ListObjectsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListObjects
 operation.
 */
public struct ListObjectsOperationInputQuery: Codable, Equatable {
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var marker: Marker?
    public var maxKeys: MaxKeys?
    public var prefix: Prefix?

    public init(delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                marker: Marker? = nil,
                maxKeys: MaxKeys? = nil,
                prefix: Prefix? = nil) {
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.marker = marker
        self.maxKeys = maxKeys
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case delimiter
        case encodingType = "encoding-type"
        case marker
        case maxKeys = "max-keys"
        case prefix
    }

    public func validate() throws {
    }
}

public extension ListObjectsRequest {
    public func asS3ModelListObjectsOperationInputQuery() -> ListObjectsOperationInputQuery {
        return ListObjectsOperationInputQuery(
            delimiter: delimiter,
            encodingType: encodingType,
            marker: marker,
            maxKeys: maxKeys,
            prefix: prefix)
    }
}


/**
 Structure to encode the body input for the ListObjects
 operation.
 */
public struct ListObjectsOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension ListObjectsRequest {
    public func asS3ModelListObjectsOperationInputAdditionalHeaders() -> ListObjectsOperationInputAdditionalHeaders {
        return ListObjectsOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the ListObjectsV2
 operation.
 */
public struct ListObjectsV2OperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension ListObjectsV2Request {
    public func asS3ModelListObjectsV2OperationInputPath() -> ListObjectsV2OperationInputPath {
        return ListObjectsV2OperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the ListObjectsV2
 operation.
 */
public struct ListObjectsV2OperationInputQuery: Codable, Equatable {
    public var continuationToken: Token?
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var fetchOwner: FetchOwner?
    public var maxKeys: MaxKeys?
    public var prefix: Prefix?
    public var startAfter: StartAfter?

    public init(continuationToken: Token? = nil,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                fetchOwner: FetchOwner? = nil,
                maxKeys: MaxKeys? = nil,
                prefix: Prefix? = nil,
                startAfter: StartAfter? = nil) {
        self.continuationToken = continuationToken
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.fetchOwner = fetchOwner
        self.maxKeys = maxKeys
        self.prefix = prefix
        self.startAfter = startAfter
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken = "continuation-token"
        case delimiter
        case encodingType = "encoding-type"
        case fetchOwner = "fetch-owner"
        case maxKeys = "max-keys"
        case prefix
        case startAfter = "start-after"
    }

    public func validate() throws {
    }
}

public extension ListObjectsV2Request {
    public func asS3ModelListObjectsV2OperationInputQuery() -> ListObjectsV2OperationInputQuery {
        return ListObjectsV2OperationInputQuery(
            continuationToken: continuationToken,
            delimiter: delimiter,
            encodingType: encodingType,
            fetchOwner: fetchOwner,
            maxKeys: maxKeys,
            prefix: prefix,
            startAfter: startAfter)
    }
}


/**
 Structure to encode the body input for the ListObjectsV2
 operation.
 */
public struct ListObjectsV2OperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension ListObjectsV2Request {
    public func asS3ModelListObjectsV2OperationInputAdditionalHeaders() -> ListObjectsV2OperationInputAdditionalHeaders {
        return ListObjectsV2OperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the ListParts
 operation.
 */
public struct ListPartsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension ListPartsRequest {
    public func asS3ModelListPartsOperationInputPath() -> ListPartsOperationInputPath {
        return ListPartsOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the ListParts
 operation.
 */
public struct ListPartsOperationInputQuery: Codable, Equatable {
    public var maxParts: MaxParts?
    public var partNumberMarker: PartNumberMarker?
    public var uploadId: MultipartUploadId

    public init(maxParts: MaxParts? = nil,
                partNumberMarker: PartNumberMarker? = nil,
                uploadId: MultipartUploadId) {
        self.maxParts = maxParts
        self.partNumberMarker = partNumberMarker
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case maxParts = "max-parts"
        case partNumberMarker = "part-number-marker"
        case uploadId
    }

    public func validate() throws {
    }
}

public extension ListPartsRequest {
    public func asS3ModelListPartsOperationInputQuery() -> ListPartsOperationInputQuery {
        return ListPartsOperationInputQuery(
            maxParts: maxParts,
            partNumberMarker: partNumberMarker,
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the ListParts
 operation.
 */
public struct ListPartsOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension ListPartsRequest {
    public func asS3ModelListPartsOperationInputAdditionalHeaders() -> ListPartsOperationInputAdditionalHeaders {
        return ListPartsOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the body input for the ListParts
 operation.
 */
public struct ListPartsOperationOutputBody: Codable, Equatable {
    public var bucket: BucketName?
    public var initiator: Initiator?
    public var isTruncated: IsTruncated?
    public var key: ObjectKey?
    public var maxParts: MaxParts?
    public var nextPartNumberMarker: NextPartNumberMarker?
    public var owner: Owner?
    public var partNumberMarker: PartNumberMarker?
    public var parts: Parts?
    public var storageClass: StorageClass?
    public var uploadId: MultipartUploadId?

    public init(bucket: BucketName? = nil,
                initiator: Initiator? = nil,
                isTruncated: IsTruncated? = nil,
                key: ObjectKey? = nil,
                maxParts: MaxParts? = nil,
                nextPartNumberMarker: NextPartNumberMarker? = nil,
                owner: Owner? = nil,
                partNumberMarker: PartNumberMarker? = nil,
                parts: Parts? = nil,
                storageClass: StorageClass? = nil,
                uploadId: MultipartUploadId? = nil) {
        self.bucket = bucket
        self.initiator = initiator
        self.isTruncated = isTruncated
        self.key = key
        self.maxParts = maxParts
        self.nextPartNumberMarker = nextPartNumberMarker
        self.owner = owner
        self.partNumberMarker = partNumberMarker
        self.parts = parts
        self.storageClass = storageClass
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case initiator = "Initiator"
        case isTruncated = "IsTruncated"
        case key = "Key"
        case maxParts = "MaxParts"
        case nextPartNumberMarker = "NextPartNumberMarker"
        case owner = "Owner"
        case partNumberMarker = "PartNumberMarker"
        case parts = "Part"
        case storageClass = "StorageClass"
        case uploadId = "UploadId"
    }

    public func validate() throws {
        try initiator?.validate()
        try key?.validateAsObjectKey()
        try owner?.validate()
    }
}

public extension ListPartsOutput {
    public func asS3ModelListPartsOperationOutputBody() -> ListPartsOperationOutputBody {
        return ListPartsOperationOutputBody(
            bucket: bucket,
            initiator: initiator,
            isTruncated: isTruncated,
            key: key,
            maxParts: maxParts,
            nextPartNumberMarker: nextPartNumberMarker,
            owner: owner,
            partNumberMarker: partNumberMarker,
            parts: parts,
            storageClass: storageClass,
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the ListParts
 operation.
 */
public struct ListPartsOperationOutputHeaders: Codable, Equatable {
    public var abortDate: AbortDate?
    public var abortRuleId: AbortRuleId?
    public var requestCharged: RequestCharged?

    public init(abortDate: AbortDate? = nil,
                abortRuleId: AbortRuleId? = nil,
                requestCharged: RequestCharged? = nil) {
        self.abortDate = abortDate
        self.abortRuleId = abortRuleId
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case abortDate = "x-amz-abort-date"
        case abortRuleId = "x-amz-abort-rule-id"
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
    }
}

public extension ListPartsOutput {
    public func asS3ModelListPartsOperationOutputHeaders() -> ListPartsOperationOutputHeaders {
        return ListPartsOperationOutputHeaders(
            abortDate: abortDate,
            abortRuleId: abortRuleId,
            requestCharged: requestCharged)
    }
}


/**
 Structure to encode the path input for the PutBucketAccelerateConfiguration
 operation.
 */
public struct PutBucketAccelerateConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketAccelerateConfigurationRequest {
    public func asS3ModelPutBucketAccelerateConfigurationOperationInputPath() -> PutBucketAccelerateConfigurationOperationInputPath {
        return PutBucketAccelerateConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the PutBucketAcl
 operation.
 */
public struct PutBucketAclOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketAclRequest {
    public func asS3ModelPutBucketAclOperationInputPath() -> PutBucketAclOperationInputPath {
        return PutBucketAclOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketAcl
 operation.
 */
public struct PutBucketAclOperationInputAdditionalHeaders: Codable, Equatable {
    public var aCL: BucketCannedACL?
    public var contentMD5: ContentMD5?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWrite: GrantWrite?
    public var grantWriteACP: GrantWriteACP?

    public init(aCL: BucketCannedACL? = nil,
                contentMD5: ContentMD5? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWrite: GrantWrite? = nil,
                grantWriteACP: GrantWriteACP? = nil) {
        self.aCL = aCL
        self.contentMD5 = contentMD5
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWrite = grantWrite
        self.grantWriteACP = grantWriteACP
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case contentMD5 = "Content-MD5"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWrite = "x-amz-grant-write"
        case grantWriteACP = "x-amz-grant-write-acp"
    }

    public func validate() throws {
    }
}

public extension PutBucketAclRequest {
    public func asS3ModelPutBucketAclOperationInputAdditionalHeaders() -> PutBucketAclOperationInputAdditionalHeaders {
        return PutBucketAclOperationInputAdditionalHeaders(
            aCL: aCL,
            contentMD5: contentMD5,
            grantFullControl: grantFullControl,
            grantRead: grantRead,
            grantReadACP: grantReadACP,
            grantWrite: grantWrite,
            grantWriteACP: grantWriteACP)
    }
}


/**
 Structure to encode the path input for the PutBucketAnalyticsConfiguration
 operation.
 */
public struct PutBucketAnalyticsConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketAnalyticsConfigurationRequest {
    public func asS3ModelPutBucketAnalyticsConfigurationOperationInputPath() -> PutBucketAnalyticsConfigurationOperationInputPath {
        return PutBucketAnalyticsConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the PutBucketAnalyticsConfiguration
 operation.
 */
public struct PutBucketAnalyticsConfigurationOperationInputQuery: Codable, Equatable {
    public var id: AnalyticsId

    public init(id: AnalyticsId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension PutBucketAnalyticsConfigurationRequest {
    public func asS3ModelPutBucketAnalyticsConfigurationOperationInputQuery() -> PutBucketAnalyticsConfigurationOperationInputQuery {
        return PutBucketAnalyticsConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the PutBucketCors
 operation.
 */
public struct PutBucketCorsOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketCorsRequest {
    public func asS3ModelPutBucketCorsOperationInputPath() -> PutBucketCorsOperationInputPath {
        return PutBucketCorsOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketCors
 operation.
 */
public struct PutBucketCorsOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketCorsRequest {
    public func asS3ModelPutBucketCorsOperationInputAdditionalHeaders() -> PutBucketCorsOperationInputAdditionalHeaders {
        return PutBucketCorsOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketEncryption
 operation.
 */
public struct PutBucketEncryptionOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketEncryptionRequest {
    public func asS3ModelPutBucketEncryptionOperationInputPath() -> PutBucketEncryptionOperationInputPath {
        return PutBucketEncryptionOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketEncryption
 operation.
 */
public struct PutBucketEncryptionOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketEncryptionRequest {
    public func asS3ModelPutBucketEncryptionOperationInputAdditionalHeaders() -> PutBucketEncryptionOperationInputAdditionalHeaders {
        return PutBucketEncryptionOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketInventoryConfiguration
 operation.
 */
public struct PutBucketInventoryConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketInventoryConfigurationRequest {
    public func asS3ModelPutBucketInventoryConfigurationOperationInputPath() -> PutBucketInventoryConfigurationOperationInputPath {
        return PutBucketInventoryConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the PutBucketInventoryConfiguration
 operation.
 */
public struct PutBucketInventoryConfigurationOperationInputQuery: Codable, Equatable {
    public var id: InventoryId

    public init(id: InventoryId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension PutBucketInventoryConfigurationRequest {
    public func asS3ModelPutBucketInventoryConfigurationOperationInputQuery() -> PutBucketInventoryConfigurationOperationInputQuery {
        return PutBucketInventoryConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the PutBucketLifecycle
 operation.
 */
public struct PutBucketLifecycleOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketLifecycleRequest {
    public func asS3ModelPutBucketLifecycleOperationInputPath() -> PutBucketLifecycleOperationInputPath {
        return PutBucketLifecycleOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketLifecycle
 operation.
 */
public struct PutBucketLifecycleOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketLifecycleRequest {
    public func asS3ModelPutBucketLifecycleOperationInputAdditionalHeaders() -> PutBucketLifecycleOperationInputAdditionalHeaders {
        return PutBucketLifecycleOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketLifecycleConfiguration
 operation.
 */
public struct PutBucketLifecycleConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketLifecycleConfigurationRequest {
    public func asS3ModelPutBucketLifecycleConfigurationOperationInputPath() -> PutBucketLifecycleConfigurationOperationInputPath {
        return PutBucketLifecycleConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the PutBucketLogging
 operation.
 */
public struct PutBucketLoggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketLoggingRequest {
    public func asS3ModelPutBucketLoggingOperationInputPath() -> PutBucketLoggingOperationInputPath {
        return PutBucketLoggingOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketLogging
 operation.
 */
public struct PutBucketLoggingOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketLoggingRequest {
    public func asS3ModelPutBucketLoggingOperationInputAdditionalHeaders() -> PutBucketLoggingOperationInputAdditionalHeaders {
        return PutBucketLoggingOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketMetricsConfiguration
 operation.
 */
public struct PutBucketMetricsConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketMetricsConfigurationRequest {
    public func asS3ModelPutBucketMetricsConfigurationOperationInputPath() -> PutBucketMetricsConfigurationOperationInputPath {
        return PutBucketMetricsConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the query input for the PutBucketMetricsConfiguration
 operation.
 */
public struct PutBucketMetricsConfigurationOperationInputQuery: Codable, Equatable {
    public var id: MetricsId

    public init(id: MetricsId) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
    }
}

public extension PutBucketMetricsConfigurationRequest {
    public func asS3ModelPutBucketMetricsConfigurationOperationInputQuery() -> PutBucketMetricsConfigurationOperationInputQuery {
        return PutBucketMetricsConfigurationOperationInputQuery(
            id: id)
    }
}


/**
 Structure to encode the path input for the PutBucketNotification
 operation.
 */
public struct PutBucketNotificationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketNotificationRequest {
    public func asS3ModelPutBucketNotificationOperationInputPath() -> PutBucketNotificationOperationInputPath {
        return PutBucketNotificationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketNotification
 operation.
 */
public struct PutBucketNotificationOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketNotificationRequest {
    public func asS3ModelPutBucketNotificationOperationInputAdditionalHeaders() -> PutBucketNotificationOperationInputAdditionalHeaders {
        return PutBucketNotificationOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketNotificationConfiguration
 operation.
 */
public struct PutBucketNotificationConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketNotificationConfigurationRequest {
    public func asS3ModelPutBucketNotificationConfigurationOperationInputPath() -> PutBucketNotificationConfigurationOperationInputPath {
        return PutBucketNotificationConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the path input for the PutBucketPolicy
 operation.
 */
public struct PutBucketPolicyOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketPolicyRequest {
    public func asS3ModelPutBucketPolicyOperationInputPath() -> PutBucketPolicyOperationInputPath {
        return PutBucketPolicyOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketPolicy
 operation.
 */
public struct PutBucketPolicyOperationInputAdditionalHeaders: Codable, Equatable {
    public var confirmRemoveSelfBucketAccess: ConfirmRemoveSelfBucketAccess?
    public var contentMD5: ContentMD5?

    public init(confirmRemoveSelfBucketAccess: ConfirmRemoveSelfBucketAccess? = nil,
                contentMD5: ContentMD5? = nil) {
        self.confirmRemoveSelfBucketAccess = confirmRemoveSelfBucketAccess
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case confirmRemoveSelfBucketAccess = "x-amz-confirm-remove-self-bucket-access"
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketPolicyRequest {
    public func asS3ModelPutBucketPolicyOperationInputAdditionalHeaders() -> PutBucketPolicyOperationInputAdditionalHeaders {
        return PutBucketPolicyOperationInputAdditionalHeaders(
            confirmRemoveSelfBucketAccess: confirmRemoveSelfBucketAccess,
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketReplication
 operation.
 */
public struct PutBucketReplicationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketReplicationRequest {
    public func asS3ModelPutBucketReplicationOperationInputPath() -> PutBucketReplicationOperationInputPath {
        return PutBucketReplicationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketReplication
 operation.
 */
public struct PutBucketReplicationOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketReplicationRequest {
    public func asS3ModelPutBucketReplicationOperationInputAdditionalHeaders() -> PutBucketReplicationOperationInputAdditionalHeaders {
        return PutBucketReplicationOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketRequestPayment
 operation.
 */
public struct PutBucketRequestPaymentOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketRequestPaymentRequest {
    public func asS3ModelPutBucketRequestPaymentOperationInputPath() -> PutBucketRequestPaymentOperationInputPath {
        return PutBucketRequestPaymentOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketRequestPayment
 operation.
 */
public struct PutBucketRequestPaymentOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketRequestPaymentRequest {
    public func asS3ModelPutBucketRequestPaymentOperationInputAdditionalHeaders() -> PutBucketRequestPaymentOperationInputAdditionalHeaders {
        return PutBucketRequestPaymentOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketTagging
 operation.
 */
public struct PutBucketTaggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketTaggingRequest {
    public func asS3ModelPutBucketTaggingOperationInputPath() -> PutBucketTaggingOperationInputPath {
        return PutBucketTaggingOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketTagging
 operation.
 */
public struct PutBucketTaggingOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketTaggingRequest {
    public func asS3ModelPutBucketTaggingOperationInputAdditionalHeaders() -> PutBucketTaggingOperationInputAdditionalHeaders {
        return PutBucketTaggingOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutBucketVersioning
 operation.
 */
public struct PutBucketVersioningOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketVersioningRequest {
    public func asS3ModelPutBucketVersioningOperationInputPath() -> PutBucketVersioningOperationInputPath {
        return PutBucketVersioningOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketVersioning
 operation.
 */
public struct PutBucketVersioningOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?
    public var mFA: MFA?

    public init(contentMD5: ContentMD5? = nil,
                mFA: MFA? = nil) {
        self.contentMD5 = contentMD5
        self.mFA = mFA
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
        case mFA = "x-amz-mfa"
    }

    public func validate() throws {
    }
}

public extension PutBucketVersioningRequest {
    public func asS3ModelPutBucketVersioningOperationInputAdditionalHeaders() -> PutBucketVersioningOperationInputAdditionalHeaders {
        return PutBucketVersioningOperationInputAdditionalHeaders(
            contentMD5: contentMD5,
            mFA: mFA)
    }
}


/**
 Structure to encode the path input for the PutBucketWebsite
 operation.
 */
public struct PutBucketWebsiteOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutBucketWebsiteRequest {
    public func asS3ModelPutBucketWebsiteOperationInputPath() -> PutBucketWebsiteOperationInputPath {
        return PutBucketWebsiteOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutBucketWebsite
 operation.
 */
public struct PutBucketWebsiteOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutBucketWebsiteRequest {
    public func asS3ModelPutBucketWebsiteOperationInputAdditionalHeaders() -> PutBucketWebsiteOperationInputAdditionalHeaders {
        return PutBucketWebsiteOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutObject
 operation.
 */
public struct PutObjectOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension PutObjectRequest {
    public func asS3ModelPutObjectOperationInputPath() -> PutObjectOperationInputPath {
        return PutObjectOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the body input for the PutObject
 operation.
 */
public struct PutObjectOperationInputAdditionalHeaders: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var cacheControl: CacheControl?
    public var contentDisposition: ContentDisposition?
    public var contentEncoding: ContentEncoding?
    public var contentLanguage: ContentLanguage?
    public var contentLength: ContentLength?
    public var contentMD5: ContentMD5?
    public var contentType: ContentType?
    public var expires: Expires?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWriteACP: GrantWriteACP?
    public var metadata: Metadata?
    public var objectLockLegalHoldStatus: ObjectLockLegalHoldStatus?
    public var objectLockMode: ObjectLockMode?
    public var objectLockRetainUntilDate: ObjectLockRetainUntilDate?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var storageClass: StorageClass?
    public var tagging: TaggingHeader?
    public var websiteRedirectLocation: WebsiteRedirectLocation?

    public init(aCL: ObjectCannedACL? = nil,
                cacheControl: CacheControl? = nil,
                contentDisposition: ContentDisposition? = nil,
                contentEncoding: ContentEncoding? = nil,
                contentLanguage: ContentLanguage? = nil,
                contentLength: ContentLength? = nil,
                contentMD5: ContentMD5? = nil,
                contentType: ContentType? = nil,
                expires: Expires? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                metadata: Metadata? = nil,
                objectLockLegalHoldStatus: ObjectLockLegalHoldStatus? = nil,
                objectLockMode: ObjectLockMode? = nil,
                objectLockRetainUntilDate: ObjectLockRetainUntilDate? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                storageClass: StorageClass? = nil,
                tagging: TaggingHeader? = nil,
                websiteRedirectLocation: WebsiteRedirectLocation? = nil) {
        self.aCL = aCL
        self.cacheControl = cacheControl
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentLength = contentLength
        self.contentMD5 = contentMD5
        self.contentType = contentType
        self.expires = expires
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWriteACP = grantWriteACP
        self.metadata = metadata
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.storageClass = storageClass
        self.tagging = tagging
        self.websiteRedirectLocation = websiteRedirectLocation
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case cacheControl = "Cache-Control"
        case contentDisposition = "Content-Disposition"
        case contentEncoding = "Content-Encoding"
        case contentLanguage = "Content-Language"
        case contentLength = "Content-Length"
        case contentMD5 = "Content-MD5"
        case contentType = "Content-Type"
        case expires = "Expires"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWriteACP = "x-amz-grant-write-acp"
        case metadata = "x-amz-meta-"
        case objectLockLegalHoldStatus = "x-amz-object-lock-legal-hold"
        case objectLockMode = "x-amz-object-lock-mode"
        case objectLockRetainUntilDate = "x-amz-object-lock-retain-until-date"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case storageClass = "x-amz-storage-class"
        case tagging = "x-amz-tagging"
        case websiteRedirectLocation = "x-amz-website-redirect-location"
    }

    public func validate() throws {
    }
}

public extension PutObjectRequest {
    public func asS3ModelPutObjectOperationInputAdditionalHeaders() -> PutObjectOperationInputAdditionalHeaders {
        return PutObjectOperationInputAdditionalHeaders(
            aCL: aCL,
            cacheControl: cacheControl,
            contentDisposition: contentDisposition,
            contentEncoding: contentEncoding,
            contentLanguage: contentLanguage,
            contentLength: contentLength,
            contentMD5: contentMD5,
            contentType: contentType,
            expires: expires,
            grantFullControl: grantFullControl,
            grantRead: grantRead,
            grantReadACP: grantReadACP,
            grantWriteACP: grantWriteACP,
            metadata: metadata,
            objectLockLegalHoldStatus: objectLockLegalHoldStatus,
            objectLockMode: objectLockMode,
            objectLockRetainUntilDate: objectLockRetainUntilDate,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption,
            storageClass: storageClass,
            tagging: tagging,
            websiteRedirectLocation: websiteRedirectLocation)
    }
}


/**
 Structure to encode the path input for the PutObjectAcl
 operation.
 */
public struct PutObjectAclOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension PutObjectAclRequest {
    public func asS3ModelPutObjectAclOperationInputPath() -> PutObjectAclOperationInputPath {
        return PutObjectAclOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the PutObjectAcl
 operation.
 */
public struct PutObjectAclOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension PutObjectAclRequest {
    public func asS3ModelPutObjectAclOperationInputQuery() -> PutObjectAclOperationInputQuery {
        return PutObjectAclOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the PutObjectAcl
 operation.
 */
public struct PutObjectAclOperationInputAdditionalHeaders: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var contentMD5: ContentMD5?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWrite: GrantWrite?
    public var grantWriteACP: GrantWriteACP?
    public var requestPayer: RequestPayer?

    public init(aCL: ObjectCannedACL? = nil,
                contentMD5: ContentMD5? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWrite: GrantWrite? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                requestPayer: RequestPayer? = nil) {
        self.aCL = aCL
        self.contentMD5 = contentMD5
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWrite = grantWrite
        self.grantWriteACP = grantWriteACP
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case contentMD5 = "Content-MD5"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWrite = "x-amz-grant-write"
        case grantWriteACP = "x-amz-grant-write-acp"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension PutObjectAclRequest {
    public func asS3ModelPutObjectAclOperationInputAdditionalHeaders() -> PutObjectAclOperationInputAdditionalHeaders {
        return PutObjectAclOperationInputAdditionalHeaders(
            aCL: aCL,
            contentMD5: contentMD5,
            grantFullControl: grantFullControl,
            grantRead: grantRead,
            grantReadACP: grantReadACP,
            grantWrite: grantWrite,
            grantWriteACP: grantWriteACP,
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the PutObjectLegalHold
 operation.
 */
public struct PutObjectLegalHoldOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension PutObjectLegalHoldRequest {
    public func asS3ModelPutObjectLegalHoldOperationInputPath() -> PutObjectLegalHoldOperationInputPath {
        return PutObjectLegalHoldOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the PutObjectLegalHold
 operation.
 */
public struct PutObjectLegalHoldOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension PutObjectLegalHoldRequest {
    public func asS3ModelPutObjectLegalHoldOperationInputQuery() -> PutObjectLegalHoldOperationInputQuery {
        return PutObjectLegalHoldOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the PutObjectLegalHold
 operation.
 */
public struct PutObjectLegalHoldOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?
    public var requestPayer: RequestPayer?

    public init(contentMD5: ContentMD5? = nil,
                requestPayer: RequestPayer? = nil) {
        self.contentMD5 = contentMD5
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension PutObjectLegalHoldRequest {
    public func asS3ModelPutObjectLegalHoldOperationInputAdditionalHeaders() -> PutObjectLegalHoldOperationInputAdditionalHeaders {
        return PutObjectLegalHoldOperationInputAdditionalHeaders(
            contentMD5: contentMD5,
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the PutObjectLockConfiguration
 operation.
 */
public struct PutObjectLockConfigurationOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutObjectLockConfigurationRequest {
    public func asS3ModelPutObjectLockConfigurationOperationInputPath() -> PutObjectLockConfigurationOperationInputPath {
        return PutObjectLockConfigurationOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutObjectLockConfiguration
 operation.
 */
public struct PutObjectLockConfigurationOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?
    public var requestPayer: RequestPayer?
    public var token: ObjectLockToken?

    public init(contentMD5: ContentMD5? = nil,
                requestPayer: RequestPayer? = nil,
                token: ObjectLockToken? = nil) {
        self.contentMD5 = contentMD5
        self.requestPayer = requestPayer
        self.token = token
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
        case requestPayer = "x-amz-request-payer"
        case token = "x-amz-bucket-object-lock-token"
    }

    public func validate() throws {
    }
}

public extension PutObjectLockConfigurationRequest {
    public func asS3ModelPutObjectLockConfigurationOperationInputAdditionalHeaders() -> PutObjectLockConfigurationOperationInputAdditionalHeaders {
        return PutObjectLockConfigurationOperationInputAdditionalHeaders(
            contentMD5: contentMD5,
            requestPayer: requestPayer,
            token: token)
    }
}


/**
 Structure to encode the path input for the PutObjectRetention
 operation.
 */
public struct PutObjectRetentionOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension PutObjectRetentionRequest {
    public func asS3ModelPutObjectRetentionOperationInputPath() -> PutObjectRetentionOperationInputPath {
        return PutObjectRetentionOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the PutObjectRetention
 operation.
 */
public struct PutObjectRetentionOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension PutObjectRetentionRequest {
    public func asS3ModelPutObjectRetentionOperationInputQuery() -> PutObjectRetentionOperationInputQuery {
        return PutObjectRetentionOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the PutObjectRetention
 operation.
 */
public struct PutObjectRetentionOperationInputAdditionalHeaders: Codable, Equatable {
    public var bypassGovernanceRetention: BypassGovernanceRetention?
    public var contentMD5: ContentMD5?
    public var requestPayer: RequestPayer?

    public init(bypassGovernanceRetention: BypassGovernanceRetention? = nil,
                contentMD5: ContentMD5? = nil,
                requestPayer: RequestPayer? = nil) {
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.contentMD5 = contentMD5
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case bypassGovernanceRetention = "x-amz-bypass-governance-retention"
        case contentMD5 = "Content-MD5"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension PutObjectRetentionRequest {
    public func asS3ModelPutObjectRetentionOperationInputAdditionalHeaders() -> PutObjectRetentionOperationInputAdditionalHeaders {
        return PutObjectRetentionOperationInputAdditionalHeaders(
            bypassGovernanceRetention: bypassGovernanceRetention,
            contentMD5: contentMD5,
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the PutObjectTagging
 operation.
 */
public struct PutObjectTaggingOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension PutObjectTaggingRequest {
    public func asS3ModelPutObjectTaggingOperationInputPath() -> PutObjectTaggingOperationInputPath {
        return PutObjectTaggingOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the PutObjectTagging
 operation.
 */
public struct PutObjectTaggingOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension PutObjectTaggingRequest {
    public func asS3ModelPutObjectTaggingOperationInputQuery() -> PutObjectTaggingOperationInputQuery {
        return PutObjectTaggingOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the PutObjectTagging
 operation.
 */
public struct PutObjectTaggingOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutObjectTaggingRequest {
    public func asS3ModelPutObjectTaggingOperationInputAdditionalHeaders() -> PutObjectTaggingOperationInputAdditionalHeaders {
        return PutObjectTaggingOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the PutPublicAccessBlock
 operation.
 */
public struct PutPublicAccessBlockOperationInputPath: Codable, Equatable {
    public var bucket: BucketName

    public init(bucket: BucketName) {
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
    }

    public func validate() throws {
    }
}

public extension PutPublicAccessBlockRequest {
    public func asS3ModelPutPublicAccessBlockOperationInputPath() -> PutPublicAccessBlockOperationInputPath {
        return PutPublicAccessBlockOperationInputPath(
            bucket: bucket)
    }
}


/**
 Structure to encode the body input for the PutPublicAccessBlock
 operation.
 */
public struct PutPublicAccessBlockOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentMD5: ContentMD5?

    public init(contentMD5: ContentMD5? = nil) {
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
    }
}

public extension PutPublicAccessBlockRequest {
    public func asS3ModelPutPublicAccessBlockOperationInputAdditionalHeaders() -> PutPublicAccessBlockOperationInputAdditionalHeaders {
        return PutPublicAccessBlockOperationInputAdditionalHeaders(
            contentMD5: contentMD5)
    }
}


/**
 Structure to encode the path input for the RestoreObject
 operation.
 */
public struct RestoreObjectOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension RestoreObjectRequest {
    public func asS3ModelRestoreObjectOperationInputPath() -> RestoreObjectOperationInputPath {
        return RestoreObjectOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the RestoreObject
 operation.
 */
public struct RestoreObjectOperationInputQuery: Codable, Equatable {
    public var versionId: ObjectVersionId?

    public init(versionId: ObjectVersionId? = nil) {
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case versionId
    }

    public func validate() throws {
    }
}

public extension RestoreObjectRequest {
    public func asS3ModelRestoreObjectOperationInputQuery() -> RestoreObjectOperationInputQuery {
        return RestoreObjectOperationInputQuery(
            versionId: versionId)
    }
}


/**
 Structure to encode the body input for the RestoreObject
 operation.
 */
public struct RestoreObjectOperationInputAdditionalHeaders: Codable, Equatable {
    public var requestPayer: RequestPayer?

    public init(requestPayer: RequestPayer? = nil) {
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public extension RestoreObjectRequest {
    public func asS3ModelRestoreObjectOperationInputAdditionalHeaders() -> RestoreObjectOperationInputAdditionalHeaders {
        return RestoreObjectOperationInputAdditionalHeaders(
            requestPayer: requestPayer)
    }
}


/**
 Structure to encode the path input for the SelectObjectContent
 operation.
 */
public struct SelectObjectContentOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension SelectObjectContentRequest {
    public func asS3ModelSelectObjectContentOperationInputPath() -> SelectObjectContentOperationInputPath {
        return SelectObjectContentOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the body input for the SelectObjectContent
 operation.
 */
public struct SelectObjectContentOperationInputBody: Codable, Equatable {
    public var expression: Expression
    public var expressionType: ExpressionType
    public var inputSerialization: InputSerialization
    public var outputSerialization: OutputSerialization
    public var requestProgress: RequestProgress?

    public init(expression: Expression,
                expressionType: ExpressionType,
                inputSerialization: InputSerialization,
                outputSerialization: OutputSerialization,
                requestProgress: RequestProgress? = nil) {
        self.expression = expression
        self.expressionType = expressionType
        self.inputSerialization = inputSerialization
        self.outputSerialization = outputSerialization
        self.requestProgress = requestProgress
    }

    enum CodingKeys: String, CodingKey {
        case expression = "Expression"
        case expressionType = "ExpressionType"
        case inputSerialization = "InputSerialization"
        case outputSerialization = "OutputSerialization"
        case requestProgress = "RequestProgress"
    }

    public func validate() throws {
        try inputSerialization.validate()
        try outputSerialization.validate()
        try requestProgress?.validate()
    }
}

public extension SelectObjectContentRequest {
    public func asS3ModelSelectObjectContentOperationInputBody() -> SelectObjectContentOperationInputBody {
        return SelectObjectContentOperationInputBody(
            expression: expression,
            expressionType: expressionType,
            inputSerialization: inputSerialization,
            outputSerialization: outputSerialization,
            requestProgress: requestProgress)
    }
}


/**
 Structure to encode the body input for the SelectObjectContent
 operation.
 */
public struct SelectObjectContentOperationInputAdditionalHeaders: Codable, Equatable {
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?

    public init(sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil) {
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
    }

    enum CodingKeys: String, CodingKey {
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
    }

    public func validate() throws {
    }
}

public extension SelectObjectContentRequest {
    public func asS3ModelSelectObjectContentOperationInputAdditionalHeaders() -> SelectObjectContentOperationInputAdditionalHeaders {
        return SelectObjectContentOperationInputAdditionalHeaders(
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5)
    }
}


/**
 Structure to encode the path input for the UploadPart
 operation.
 */
public struct UploadPartOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension UploadPartRequest {
    public func asS3ModelUploadPartOperationInputPath() -> UploadPartOperationInputPath {
        return UploadPartOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the UploadPart
 operation.
 */
public struct UploadPartOperationInputQuery: Codable, Equatable {
    public var partNumber: PartNumber
    public var uploadId: MultipartUploadId

    public init(partNumber: PartNumber,
                uploadId: MultipartUploadId) {
        self.partNumber = partNumber
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case partNumber
        case uploadId
    }

    public func validate() throws {
    }
}

public extension UploadPartRequest {
    public func asS3ModelUploadPartOperationInputQuery() -> UploadPartOperationInputQuery {
        return UploadPartOperationInputQuery(
            partNumber: partNumber,
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the UploadPart
 operation.
 */
public struct UploadPartOperationInputAdditionalHeaders: Codable, Equatable {
    public var contentLength: ContentLength?
    public var contentMD5: ContentMD5?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?

    public init(contentLength: ContentLength? = nil,
                contentMD5: ContentMD5? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil) {
        self.contentLength = contentLength
        self.contentMD5 = contentMD5
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
    }

    enum CodingKeys: String, CodingKey {
        case contentLength = "Content-Length"
        case contentMD5 = "Content-MD5"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
    }

    public func validate() throws {
    }
}

public extension UploadPartRequest {
    public func asS3ModelUploadPartOperationInputAdditionalHeaders() -> UploadPartOperationInputAdditionalHeaders {
        return UploadPartOperationInputAdditionalHeaders(
            contentLength: contentLength,
            contentMD5: contentMD5,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5)
    }
}


/**
 Structure to encode the path input for the UploadPartCopy
 operation.
 */
public struct UploadPartCopyOperationInputPath: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey

    public init(bucket: BucketName,
                key: ObjectKey) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public extension UploadPartCopyRequest {
    public func asS3ModelUploadPartCopyOperationInputPath() -> UploadPartCopyOperationInputPath {
        return UploadPartCopyOperationInputPath(
            bucket: bucket,
            key: key)
    }
}


/**
 Structure to encode the query input for the UploadPartCopy
 operation.
 */
public struct UploadPartCopyOperationInputQuery: Codable, Equatable {
    public var partNumber: PartNumber
    public var uploadId: MultipartUploadId

    public init(partNumber: PartNumber,
                uploadId: MultipartUploadId) {
        self.partNumber = partNumber
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case partNumber
        case uploadId
    }

    public func validate() throws {
    }
}

public extension UploadPartCopyRequest {
    public func asS3ModelUploadPartCopyOperationInputQuery() -> UploadPartCopyOperationInputQuery {
        return UploadPartCopyOperationInputQuery(
            partNumber: partNumber,
            uploadId: uploadId)
    }
}


/**
 Structure to encode the body input for the UploadPartCopy
 operation.
 */
public struct UploadPartCopyOperationInputAdditionalHeaders: Codable, Equatable {
    public var copySource: CopySource
    public var copySourceIfMatch: CopySourceIfMatch?
    public var copySourceIfModifiedSince: CopySourceIfModifiedSince?
    public var copySourceIfNoneMatch: CopySourceIfNoneMatch?
    public var copySourceIfUnmodifiedSince: CopySourceIfUnmodifiedSince?
    public var copySourceRange: CopySourceRange?
    public var copySourceSSECustomerAlgorithm: CopySourceSSECustomerAlgorithm?
    public var copySourceSSECustomerKey: CopySourceSSECustomerKey?
    public var copySourceSSECustomerKeyMD5: CopySourceSSECustomerKeyMD5?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?

    public init(copySource: CopySource,
                copySourceIfMatch: CopySourceIfMatch? = nil,
                copySourceIfModifiedSince: CopySourceIfModifiedSince? = nil,
                copySourceIfNoneMatch: CopySourceIfNoneMatch? = nil,
                copySourceIfUnmodifiedSince: CopySourceIfUnmodifiedSince? = nil,
                copySourceRange: CopySourceRange? = nil,
                copySourceSSECustomerAlgorithm: CopySourceSSECustomerAlgorithm? = nil,
                copySourceSSECustomerKey: CopySourceSSECustomerKey? = nil,
                copySourceSSECustomerKeyMD5: CopySourceSSECustomerKeyMD5? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil) {
        self.copySource = copySource
        self.copySourceIfMatch = copySourceIfMatch
        self.copySourceIfModifiedSince = copySourceIfModifiedSince
        self.copySourceIfNoneMatch = copySourceIfNoneMatch
        self.copySourceIfUnmodifiedSince = copySourceIfUnmodifiedSince
        self.copySourceRange = copySourceRange
        self.copySourceSSECustomerAlgorithm = copySourceSSECustomerAlgorithm
        self.copySourceSSECustomerKey = copySourceSSECustomerKey
        self.copySourceSSECustomerKeyMD5 = copySourceSSECustomerKeyMD5
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
    }

    enum CodingKeys: String, CodingKey {
        case copySource = "x-amz-copy-source"
        case copySourceIfMatch = "x-amz-copy-source-if-match"
        case copySourceIfModifiedSince = "x-amz-copy-source-if-modified-since"
        case copySourceIfNoneMatch = "x-amz-copy-source-if-none-match"
        case copySourceIfUnmodifiedSince = "x-amz-copy-source-if-unmodified-since"
        case copySourceRange = "x-amz-copy-source-range"
        case copySourceSSECustomerAlgorithm = "x-amz-copy-source-server-side-encryption-customer-algorithm"
        case copySourceSSECustomerKey = "x-amz-copy-source-server-side-encryption-customer-key"
        case copySourceSSECustomerKeyMD5 = "x-amz-copy-source-server-side-encryption-customer-key-MD5"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
    }

    public func validate() throws {
        try copySource.validateAsCopySource()
    }
}

public extension UploadPartCopyRequest {
    public func asS3ModelUploadPartCopyOperationInputAdditionalHeaders() -> UploadPartCopyOperationInputAdditionalHeaders {
        return UploadPartCopyOperationInputAdditionalHeaders(
            copySource: copySource,
            copySourceIfMatch: copySourceIfMatch,
            copySourceIfModifiedSince: copySourceIfModifiedSince,
            copySourceIfNoneMatch: copySourceIfNoneMatch,
            copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
            copySourceRange: copySourceRange,
            copySourceSSECustomerAlgorithm: copySourceSSECustomerAlgorithm,
            copySourceSSECustomerKey: copySourceSSECustomerKey,
            copySourceSSECustomerKeyMD5: copySourceSSECustomerKeyMD5,
            requestPayer: requestPayer,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKey: sSECustomerKey,
            sSECustomerKeyMD5: sSECustomerKeyMD5)
    }
}


/**
 Structure to encode the body input for the UploadPartCopy
 operation.
 */
public struct UploadPartCopyOperationOutputHeaders: Codable, Equatable {
    public var copySourceVersionId: CopySourceVersionId?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?

    public init(copySourceVersionId: CopySourceVersionId? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil) {
        self.copySourceVersionId = copySourceVersionId
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
    }

    enum CodingKeys: String, CodingKey {
        case copySourceVersionId = "x-amz-copy-source-version-id"
        case requestCharged = "x-amz-request-charged"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
    }

    public func validate() throws {
    }
}

public extension UploadPartCopyOutput {
    public func asS3ModelUploadPartCopyOperationOutputHeaders() -> UploadPartCopyOperationOutputHeaders {
        return UploadPartCopyOperationOutputHeaders(
            copySourceVersionId: copySourceVersionId,
            requestCharged: requestCharged,
            sSECustomerAlgorithm: sSECustomerAlgorithm,
            sSECustomerKeyMD5: sSECustomerKeyMD5,
            sSEKMSKeyId: sSEKMSKeyId,
            serverSideEncryption: serverSideEncryption)
    }
}

