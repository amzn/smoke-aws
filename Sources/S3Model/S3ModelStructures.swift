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
// S3ModelStructures.swift
// S3Model
//

import Foundation

public struct AbortIncompleteMultipartUpload: Codable, Equatable {
    public var daysAfterInitiation: DaysAfterInitiation?

    public init(daysAfterInitiation: DaysAfterInitiation? = nil) {
        self.daysAfterInitiation = daysAfterInitiation
    }

    enum CodingKeys: String, CodingKey {
        case daysAfterInitiation = "DaysAfterInitiation"
    }

    public func validate() throws {
    }
}

public struct AbortMultipartUploadOutput: Codable, Equatable {
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

public struct AbortMultipartUploadRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var uploadId: MultipartUploadId

    public init(bucket: BucketName,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                uploadId: MultipartUploadId) {
        self.bucket = bucket
        self.key = key
        self.requestPayer = requestPayer
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case uploadId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct AccelerateConfiguration: Codable, Equatable {
    public var status: BucketAccelerateStatus?

    public init(status: BucketAccelerateStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct AccessControlPolicy: Codable, Equatable {
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

public struct AccessControlTranslation: Codable, Equatable {
    public var owner: OwnerOverride

    public init(owner: OwnerOverride) {
        self.owner = owner
    }

    enum CodingKeys: String, CodingKey {
        case owner = "Owner"
    }

    public func validate() throws {
    }
}

public struct AnalyticsAndOperator: Codable, Equatable {
    public var prefix: Prefix?
    public var tags: TagSet?

    public init(prefix: Prefix? = nil,
                tags: TagSet? = nil) {
        self.prefix = prefix
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct AnalyticsConfiguration: Codable, Equatable {
    public var filter: AnalyticsFilter?
    public var id: AnalyticsId
    public var storageClassAnalysis: StorageClassAnalysis

    public init(filter: AnalyticsFilter? = nil,
                id: AnalyticsId,
                storageClassAnalysis: StorageClassAnalysis) {
        self.filter = filter
        self.id = id
        self.storageClassAnalysis = storageClassAnalysis
    }

    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case id = "Id"
        case storageClassAnalysis = "StorageClassAnalysis"
    }

    public func validate() throws {
        try filter?.validate()
        try storageClassAnalysis.validate()
    }
}

public struct AnalyticsExportDestination: Codable, Equatable {
    public var s3BucketDestination: AnalyticsS3BucketDestination

    public init(s3BucketDestination: AnalyticsS3BucketDestination) {
        self.s3BucketDestination = s3BucketDestination
    }

    enum CodingKeys: String, CodingKey {
        case s3BucketDestination = "S3BucketDestination"
    }

    public func validate() throws {
        try s3BucketDestination.validate()
    }
}

public struct AnalyticsFilter: Codable, Equatable {
    public var and: AnalyticsAndOperator?
    public var prefix: Prefix?
    public var tag: Tag?

    public init(and: AnalyticsAndOperator? = nil,
                prefix: Prefix? = nil,
                tag: Tag? = nil) {
        self.and = and
        self.prefix = prefix
        self.tag = tag
    }

    enum CodingKeys: String, CodingKey {
        case and = "And"
        case prefix = "Prefix"
        case tag = "Tag"
    }

    public func validate() throws {
        try and?.validate()
        try tag?.validate()
    }
}

public struct AnalyticsS3BucketDestination: Codable, Equatable {
    public var bucket: BucketName
    public var bucketAccountId: AccountId?
    public var format: AnalyticsS3ExportFileFormat
    public var prefix: Prefix?

    public init(bucket: BucketName,
                bucketAccountId: AccountId? = nil,
                format: AnalyticsS3ExportFileFormat,
                prefix: Prefix? = nil) {
        self.bucket = bucket
        self.bucketAccountId = bucketAccountId
        self.format = format
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case bucketAccountId = "BucketAccountId"
        case format = "Format"
        case prefix = "Prefix"
    }

    public func validate() throws {
    }
}

public struct Bucket: Codable, Equatable {
    public var creationDate: CreationDate?
    public var name: BucketName?

    public init(creationDate: CreationDate? = nil,
                name: BucketName? = nil) {
        self.creationDate = creationDate
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case creationDate = "CreationDate"
        case name = "Name"
    }

    public func validate() throws {
    }
}

public struct BucketAlreadyExists: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct BucketAlreadyOwnedByYou: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct BucketLifecycleConfiguration: Codable, Equatable {
    public var rules: LifecycleRules

    public init(rules: LifecycleRules) {
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case rules = "Rule"
    }

    public func validate() throws {
    }
}

public struct BucketLoggingStatus: Codable, Equatable {
    public var loggingEnabled: LoggingEnabled?

    public init(loggingEnabled: LoggingEnabled? = nil) {
        self.loggingEnabled = loggingEnabled
    }

    enum CodingKeys: String, CodingKey {
        case loggingEnabled = "LoggingEnabled"
    }

    public func validate() throws {
        try loggingEnabled?.validate()
    }
}

public struct CORSConfiguration: Codable, Equatable {
    public var cORSRules: CORSRules

    public init(cORSRules: CORSRules) {
        self.cORSRules = cORSRules
    }

    enum CodingKeys: String, CodingKey {
        case cORSRules = "CORSRule"
    }

    public func validate() throws {
    }
}

public struct CORSRule: Codable, Equatable {
    public var allowedHeaders: AllowedHeaders?
    public var allowedMethods: AllowedMethods
    public var allowedOrigins: AllowedOrigins
    public var exposeHeaders: ExposeHeaders?
    public var maxAgeSeconds: MaxAgeSeconds?

    public init(allowedHeaders: AllowedHeaders? = nil,
                allowedMethods: AllowedMethods,
                allowedOrigins: AllowedOrigins,
                exposeHeaders: ExposeHeaders? = nil,
                maxAgeSeconds: MaxAgeSeconds? = nil) {
        self.allowedHeaders = allowedHeaders
        self.allowedMethods = allowedMethods
        self.allowedOrigins = allowedOrigins
        self.exposeHeaders = exposeHeaders
        self.maxAgeSeconds = maxAgeSeconds
    }

    enum CodingKeys: String, CodingKey {
        case allowedHeaders = "AllowedHeader"
        case allowedMethods = "AllowedMethod"
        case allowedOrigins = "AllowedOrigin"
        case exposeHeaders = "ExposeHeader"
        case maxAgeSeconds = "MaxAgeSeconds"
    }

    public func validate() throws {
    }
}

public struct CSVInput: Codable, Equatable {
    public var allowQuotedRecordDelimiter: AllowQuotedRecordDelimiter?
    public var comments: Comments?
    public var fieldDelimiter: FieldDelimiter?
    public var fileHeaderInfo: FileHeaderInfo?
    public var quoteCharacter: QuoteCharacter?
    public var quoteEscapeCharacter: QuoteEscapeCharacter?
    public var recordDelimiter: RecordDelimiter?

    public init(allowQuotedRecordDelimiter: AllowQuotedRecordDelimiter? = nil,
                comments: Comments? = nil,
                fieldDelimiter: FieldDelimiter? = nil,
                fileHeaderInfo: FileHeaderInfo? = nil,
                quoteCharacter: QuoteCharacter? = nil,
                quoteEscapeCharacter: QuoteEscapeCharacter? = nil,
                recordDelimiter: RecordDelimiter? = nil) {
        self.allowQuotedRecordDelimiter = allowQuotedRecordDelimiter
        self.comments = comments
        self.fieldDelimiter = fieldDelimiter
        self.fileHeaderInfo = fileHeaderInfo
        self.quoteCharacter = quoteCharacter
        self.quoteEscapeCharacter = quoteEscapeCharacter
        self.recordDelimiter = recordDelimiter
    }

    enum CodingKeys: String, CodingKey {
        case allowQuotedRecordDelimiter = "AllowQuotedRecordDelimiter"
        case comments = "Comments"
        case fieldDelimiter = "FieldDelimiter"
        case fileHeaderInfo = "FileHeaderInfo"
        case quoteCharacter = "QuoteCharacter"
        case quoteEscapeCharacter = "QuoteEscapeCharacter"
        case recordDelimiter = "RecordDelimiter"
    }

    public func validate() throws {
    }
}

public struct CSVOutput: Codable, Equatable {
    public var fieldDelimiter: FieldDelimiter?
    public var quoteCharacter: QuoteCharacter?
    public var quoteEscapeCharacter: QuoteEscapeCharacter?
    public var quoteFields: QuoteFields?
    public var recordDelimiter: RecordDelimiter?

    public init(fieldDelimiter: FieldDelimiter? = nil,
                quoteCharacter: QuoteCharacter? = nil,
                quoteEscapeCharacter: QuoteEscapeCharacter? = nil,
                quoteFields: QuoteFields? = nil,
                recordDelimiter: RecordDelimiter? = nil) {
        self.fieldDelimiter = fieldDelimiter
        self.quoteCharacter = quoteCharacter
        self.quoteEscapeCharacter = quoteEscapeCharacter
        self.quoteFields = quoteFields
        self.recordDelimiter = recordDelimiter
    }

    enum CodingKeys: String, CodingKey {
        case fieldDelimiter = "FieldDelimiter"
        case quoteCharacter = "QuoteCharacter"
        case quoteEscapeCharacter = "QuoteEscapeCharacter"
        case quoteFields = "QuoteFields"
        case recordDelimiter = "RecordDelimiter"
    }

    public func validate() throws {
    }
}

public struct CloudFunctionConfiguration: Codable, Equatable {
    public var cloudFunction: CloudFunction?
    public var events: EventList?
    public var id: NotificationId?
    public var invocationRole: CloudFunctionInvocationRole?

    public init(cloudFunction: CloudFunction? = nil,
                events: EventList? = nil,
                id: NotificationId? = nil,
                invocationRole: CloudFunctionInvocationRole? = nil) {
        self.cloudFunction = cloudFunction
        self.events = events
        self.id = id
        self.invocationRole = invocationRole
    }

    enum CodingKeys: String, CodingKey {
        case cloudFunction = "CloudFunction"
        case events = "Event"
        case id = "Id"
        case invocationRole = "InvocationRole"
    }

    public func validate() throws {
    }
}

public struct CommonPrefix: Codable, Equatable {
    public var prefix: Prefix?

    public init(prefix: Prefix? = nil) {
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
    }

    public func validate() throws {
    }
}

public struct CompleteMultipartUploadOutput: Codable, Equatable {
    public var bucket: BucketName?
    public var eTag: ETag?
    public var expiration: Expiration?
    public var key: ObjectKey?
    public var location: Location?
    public var requestCharged: RequestCharged?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName? = nil,
                eTag: ETag? = nil,
                expiration: Expiration? = nil,
                key: ObjectKey? = nil,
                location: Location? = nil,
                requestCharged: RequestCharged? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.eTag = eTag
        self.expiration = expiration
        self.key = key
        self.location = location
        self.requestCharged = requestCharged
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case eTag = "ETag"
        case expiration = "x-amz-expiration"
        case key = "Key"
        case location = "Location"
        case requestCharged = "x-amz-request-charged"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case versionId = "x-amz-version-id"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
    }
}

public struct CompleteMultipartUploadRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var multipartUpload: CompletedMultipartUpload?
    public var requestPayer: RequestPayer?
    public var uploadId: MultipartUploadId

    public init(bucket: BucketName,
                key: ObjectKey,
                multipartUpload: CompletedMultipartUpload? = nil,
                requestPayer: RequestPayer? = nil,
                uploadId: MultipartUploadId) {
        self.bucket = bucket
        self.key = key
        self.multipartUpload = multipartUpload
        self.requestPayer = requestPayer
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case multipartUpload = "CompleteMultipartUpload"
        case requestPayer = "x-amz-request-payer"
        case uploadId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
        try multipartUpload?.validate()
    }
}

public struct CompletedMultipartUpload: Codable, Equatable {
    public var parts: CompletedPartList?

    public init(parts: CompletedPartList? = nil) {
        self.parts = parts
    }

    enum CodingKeys: String, CodingKey {
        case parts = "Part"
    }

    public func validate() throws {
    }
}

public struct CompletedPart: Codable, Equatable {
    public var eTag: ETag?
    public var partNumber: PartNumber?

    public init(eTag: ETag? = nil,
                partNumber: PartNumber? = nil) {
        self.eTag = eTag
        self.partNumber = partNumber
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case partNumber = "PartNumber"
    }

    public func validate() throws {
    }
}

public struct Condition: Codable, Equatable {
    public var httpErrorCodeReturnedEquals: HttpErrorCodeReturnedEquals?
    public var keyPrefixEquals: KeyPrefixEquals?

    public init(httpErrorCodeReturnedEquals: HttpErrorCodeReturnedEquals? = nil,
                keyPrefixEquals: KeyPrefixEquals? = nil) {
        self.httpErrorCodeReturnedEquals = httpErrorCodeReturnedEquals
        self.keyPrefixEquals = keyPrefixEquals
    }

    enum CodingKeys: String, CodingKey {
        case httpErrorCodeReturnedEquals = "HttpErrorCodeReturnedEquals"
        case keyPrefixEquals = "KeyPrefixEquals"
    }

    public func validate() throws {
    }
}

public struct ContinuationEvent: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CopyObjectOutput: Codable, Equatable {
    public var copyObjectResult: CopyObjectResult?
    public var copySourceVersionId: CopySourceVersionId?
    public var expiration: Expiration?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var versionId: ObjectVersionId?

    public init(copyObjectResult: CopyObjectResult? = nil,
                copySourceVersionId: CopySourceVersionId? = nil,
                expiration: Expiration? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                versionId: ObjectVersionId? = nil) {
        self.copyObjectResult = copyObjectResult
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
        case copyObjectResult = "CopyObjectResult"
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
        try copyObjectResult?.validate()
    }
}

public struct CopyObjectRequest: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var bucket: BucketName
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
    public var key: ObjectKey
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
                bucket: BucketName,
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
                key: ObjectKey,
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
        self.bucket = bucket
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
        self.key = key
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
        case bucket = "Bucket"
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
        case key = "Key"
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
        try key.validateAsObjectKey()
    }
}

public struct CopyObjectResult: Codable, Equatable {
    public var eTag: ETag?
    public var lastModified: LastModified?

    public init(eTag: ETag? = nil,
                lastModified: LastModified? = nil) {
        self.eTag = eTag
        self.lastModified = lastModified
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case lastModified = "LastModified"
    }

    public func validate() throws {
    }
}

public struct CopyPartResult: Codable, Equatable {
    public var eTag: ETag?
    public var lastModified: LastModified?

    public init(eTag: ETag? = nil,
                lastModified: LastModified? = nil) {
        self.eTag = eTag
        self.lastModified = lastModified
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case lastModified = "LastModified"
    }

    public func validate() throws {
    }
}

public struct CreateBucketConfiguration: Codable, Equatable {
    public var locationConstraint: BucketLocationConstraint?

    public init(locationConstraint: BucketLocationConstraint? = nil) {
        self.locationConstraint = locationConstraint
    }

    enum CodingKeys: String, CodingKey {
        case locationConstraint = "LocationConstraint"
    }

    public func validate() throws {
    }
}

public struct CreateBucketOutput: Codable, Equatable {
    public var location: Location?

    public init(location: Location? = nil) {
        self.location = location
    }

    enum CodingKeys: String, CodingKey {
        case location = "Location"
    }

    public func validate() throws {
    }
}

public struct CreateBucketRequest: Codable, Equatable {
    public var aCL: BucketCannedACL?
    public var bucket: BucketName
    public var createBucketConfiguration: CreateBucketConfiguration?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWrite: GrantWrite?
    public var grantWriteACP: GrantWriteACP?
    public var objectLockEnabledForBucket: ObjectLockEnabledForBucket?

    public init(aCL: BucketCannedACL? = nil,
                bucket: BucketName,
                createBucketConfiguration: CreateBucketConfiguration? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWrite: GrantWrite? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                objectLockEnabledForBucket: ObjectLockEnabledForBucket? = nil) {
        self.aCL = aCL
        self.bucket = bucket
        self.createBucketConfiguration = createBucketConfiguration
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWrite = grantWrite
        self.grantWriteACP = grantWriteACP
        self.objectLockEnabledForBucket = objectLockEnabledForBucket
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case bucket = "Bucket"
        case createBucketConfiguration = "CreateBucketConfiguration"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWrite = "x-amz-grant-write"
        case grantWriteACP = "x-amz-grant-write-acp"
        case objectLockEnabledForBucket = "x-amz-bucket-object-lock-enabled"
    }

    public func validate() throws {
        try createBucketConfiguration?.validate()
    }
}

public struct CreateMultipartUploadOutput: Codable, Equatable {
    public var abortDate: AbortDate?
    public var abortRuleId: AbortRuleId?
    public var bucket: BucketName?
    public var key: ObjectKey?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var uploadId: MultipartUploadId?

    public init(abortDate: AbortDate? = nil,
                abortRuleId: AbortRuleId? = nil,
                bucket: BucketName? = nil,
                key: ObjectKey? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                uploadId: MultipartUploadId? = nil) {
        self.abortDate = abortDate
        self.abortRuleId = abortRuleId
        self.bucket = bucket
        self.key = key
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case abortDate = "x-amz-abort-date"
        case abortRuleId = "x-amz-abort-rule-id"
        case bucket = "Bucket"
        case key = "Key"
        case requestCharged = "x-amz-request-charged"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
        case uploadId = "UploadId"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
    }
}

public struct CreateMultipartUploadRequest: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var bucket: BucketName
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
    public var key: ObjectKey
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
                bucket: BucketName,
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
                key: ObjectKey,
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
        self.bucket = bucket
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
        self.key = key
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
        case bucket = "Bucket"
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
        case key = "Key"
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
        try key.validateAsObjectKey()
    }
}

public struct DefaultRetention: Codable, Equatable {
    public var days: Days?
    public var mode: ObjectLockRetentionMode?
    public var years: Years?

    public init(days: Days? = nil,
                mode: ObjectLockRetentionMode? = nil,
                years: Years? = nil) {
        self.days = days
        self.mode = mode
        self.years = years
    }

    enum CodingKeys: String, CodingKey {
        case days = "Days"
        case mode = "Mode"
        case years = "Years"
    }

    public func validate() throws {
    }
}

public struct Delete: Codable, Equatable {
    public var objects: ObjectIdentifierList
    public var quiet: Quiet?

    public init(objects: ObjectIdentifierList,
                quiet: Quiet? = nil) {
        self.objects = objects
        self.quiet = quiet
    }

    enum CodingKeys: String, CodingKey {
        case objects = "Object"
        case quiet = "Quiet"
    }

    public func validate() throws {
    }
}

public struct DeleteBucketAnalyticsConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: AnalyticsId

    public init(bucket: BucketName,
                id: AnalyticsId) {
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
    }
}

public struct DeleteBucketCorsRequest: Codable, Equatable {
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

public struct DeleteBucketEncryptionRequest: Codable, Equatable {
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

public struct DeleteBucketInventoryConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: InventoryId

    public init(bucket: BucketName,
                id: InventoryId) {
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
    }
}

public struct DeleteBucketLifecycleRequest: Codable, Equatable {
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

public struct DeleteBucketMetricsConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: MetricsId

    public init(bucket: BucketName,
                id: MetricsId) {
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
    }
}

public struct DeleteBucketPolicyRequest: Codable, Equatable {
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

public struct DeleteBucketReplicationRequest: Codable, Equatable {
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

public struct DeleteBucketRequest: Codable, Equatable {
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

public struct DeleteBucketTaggingRequest: Codable, Equatable {
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

public struct DeleteBucketWebsiteRequest: Codable, Equatable {
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

public struct DeleteMarkerEntry: Codable, Equatable {
    public var isLatest: IsLatest?
    public var key: ObjectKey?
    public var lastModified: LastModified?
    public var owner: Owner?
    public var versionId: ObjectVersionId?

    public init(isLatest: IsLatest? = nil,
                key: ObjectKey? = nil,
                lastModified: LastModified? = nil,
                owner: Owner? = nil,
                versionId: ObjectVersionId? = nil) {
        self.isLatest = isLatest
        self.key = key
        self.lastModified = lastModified
        self.owner = owner
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case isLatest = "IsLatest"
        case key = "Key"
        case lastModified = "LastModified"
        case owner = "Owner"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
        try owner?.validate()
    }
}

public struct DeleteMarkerReplication: Codable, Equatable {
    public var status: DeleteMarkerReplicationStatus?

    public init(status: DeleteMarkerReplicationStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct DeleteObjectOutput: Codable, Equatable {
    public var deleteMarker: DeleteMarker?
    public var requestCharged: RequestCharged?
    public var versionId: ObjectVersionId?

    public init(deleteMarker: DeleteMarker? = nil,
                requestCharged: RequestCharged? = nil,
                versionId: ObjectVersionId? = nil) {
        self.deleteMarker = deleteMarker
        self.requestCharged = requestCharged
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case deleteMarker = "x-amz-delete-marker"
        case requestCharged = "x-amz-request-charged"
        case versionId = "x-amz-version-id"
    }

    public func validate() throws {
    }
}

public struct DeleteObjectRequest: Codable, Equatable {
    public var bucket: BucketName
    public var bypassGovernanceRetention: BypassGovernanceRetention?
    public var key: ObjectKey
    public var mFA: MFA?
    public var requestPayer: RequestPayer?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                bypassGovernanceRetention: BypassGovernanceRetention? = nil,
                key: ObjectKey,
                mFA: MFA? = nil,
                requestPayer: RequestPayer? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.key = key
        self.mFA = mFA
        self.requestPayer = requestPayer
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case bypassGovernanceRetention = "x-amz-bypass-governance-retention"
        case key = "Key"
        case mFA = "x-amz-mfa"
        case requestPayer = "x-amz-request-payer"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct DeleteObjectTaggingOutput: Codable, Equatable {
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

public struct DeleteObjectTaggingRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                key: ObjectKey,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.key = key
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct DeleteObjectsOutput: Codable, Equatable {
    public var deleted: DeletedObjects?
    public var errors: Errors?
    public var requestCharged: RequestCharged?

    public init(deleted: DeletedObjects? = nil,
                errors: Errors? = nil,
                requestCharged: RequestCharged? = nil) {
        self.deleted = deleted
        self.errors = errors
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case deleted = "Deleted"
        case errors = "Error"
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
    }
}

public struct DeleteObjectsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var bypassGovernanceRetention: BypassGovernanceRetention?
    public var delete: Delete
    public var mFA: MFA?
    public var requestPayer: RequestPayer?

    public init(bucket: BucketName,
                bypassGovernanceRetention: BypassGovernanceRetention? = nil,
                delete: Delete,
                mFA: MFA? = nil,
                requestPayer: RequestPayer? = nil) {
        self.bucket = bucket
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.delete = delete
        self.mFA = mFA
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case bypassGovernanceRetention = "x-amz-bypass-governance-retention"
        case delete = "Delete"
        case mFA = "x-amz-mfa"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
        try delete.validate()
    }
}

public struct DeletePublicAccessBlockRequest: Codable, Equatable {
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

public struct DeletedObject: Codable, Equatable {
    public var deleteMarker: DeleteMarker?
    public var deleteMarkerVersionId: DeleteMarkerVersionId?
    public var key: ObjectKey?
    public var versionId: ObjectVersionId?

    public init(deleteMarker: DeleteMarker? = nil,
                deleteMarkerVersionId: DeleteMarkerVersionId? = nil,
                key: ObjectKey? = nil,
                versionId: ObjectVersionId? = nil) {
        self.deleteMarker = deleteMarker
        self.deleteMarkerVersionId = deleteMarkerVersionId
        self.key = key
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case deleteMarker = "DeleteMarker"
        case deleteMarkerVersionId = "DeleteMarkerVersionId"
        case key = "Key"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
    }
}

public struct Destination: Codable, Equatable {
    public var accessControlTranslation: AccessControlTranslation?
    public var account: AccountId?
    public var bucket: BucketName
    public var encryptionConfiguration: EncryptionConfiguration?
    public var storageClass: StorageClass?

    public init(accessControlTranslation: AccessControlTranslation? = nil,
                account: AccountId? = nil,
                bucket: BucketName,
                encryptionConfiguration: EncryptionConfiguration? = nil,
                storageClass: StorageClass? = nil) {
        self.accessControlTranslation = accessControlTranslation
        self.account = account
        self.bucket = bucket
        self.encryptionConfiguration = encryptionConfiguration
        self.storageClass = storageClass
    }

    enum CodingKeys: String, CodingKey {
        case accessControlTranslation = "AccessControlTranslation"
        case account = "Account"
        case bucket = "Bucket"
        case encryptionConfiguration = "EncryptionConfiguration"
        case storageClass = "StorageClass"
    }

    public func validate() throws {
        try accessControlTranslation?.validate()
        try encryptionConfiguration?.validate()
    }
}

public struct Encryption: Codable, Equatable {
    public var encryptionType: ServerSideEncryption
    public var kMSContext: KMSContext?
    public var kMSKeyId: SSEKMSKeyId?

    public init(encryptionType: ServerSideEncryption,
                kMSContext: KMSContext? = nil,
                kMSKeyId: SSEKMSKeyId? = nil) {
        self.encryptionType = encryptionType
        self.kMSContext = kMSContext
        self.kMSKeyId = kMSKeyId
    }

    enum CodingKeys: String, CodingKey {
        case encryptionType = "EncryptionType"
        case kMSContext = "KMSContext"
        case kMSKeyId = "KMSKeyId"
    }

    public func validate() throws {
    }
}

public struct EncryptionConfiguration: Codable, Equatable {
    public var replicaKmsKeyID: ReplicaKmsKeyID?

    public init(replicaKmsKeyID: ReplicaKmsKeyID? = nil) {
        self.replicaKmsKeyID = replicaKmsKeyID
    }

    enum CodingKeys: String, CodingKey {
        case replicaKmsKeyID = "ReplicaKmsKeyID"
    }

    public func validate() throws {
    }
}

public struct EndEvent: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Error: Codable, Equatable {
    public var code: Code?
    public var key: ObjectKey?
    public var message: Message?
    public var versionId: ObjectVersionId?

    public init(code: Code? = nil,
                key: ObjectKey? = nil,
                message: Message? = nil,
                versionId: ObjectVersionId? = nil) {
        self.code = code
        self.key = key
        self.message = message
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case key = "Key"
        case message = "Message"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
    }
}

public struct ErrorDocument: Codable, Equatable {
    public var key: ObjectKey

    public init(key: ObjectKey) {
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct FilterRule: Codable, Equatable {
    public var name: FilterRuleName?
    public var value: FilterRuleValue?

    public init(name: FilterRuleName? = nil,
                value: FilterRuleValue? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct GetBucketAccelerateConfigurationOutput: Codable, Equatable {
    public var status: BucketAccelerateStatus?

    public init(status: BucketAccelerateStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct GetBucketAccelerateConfigurationRequest: Codable, Equatable {
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

public struct GetBucketAclOutput: Codable, Equatable {
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

public struct GetBucketAclRequest: Codable, Equatable {
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

public struct GetBucketAnalyticsConfigurationOutput: Codable, Equatable {
    public var analyticsConfiguration: AnalyticsConfiguration?

    public init(analyticsConfiguration: AnalyticsConfiguration? = nil) {
        self.analyticsConfiguration = analyticsConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case analyticsConfiguration = "AnalyticsConfiguration"
    }

    public func validate() throws {
        try analyticsConfiguration?.validate()
    }
}

public struct GetBucketAnalyticsConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: AnalyticsId

    public init(bucket: BucketName,
                id: AnalyticsId) {
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
    }
}

public struct GetBucketCorsOutput: Codable, Equatable {
    public var cORSRules: CORSRules?

    public init(cORSRules: CORSRules? = nil) {
        self.cORSRules = cORSRules
    }

    enum CodingKeys: String, CodingKey {
        case cORSRules = "CORSRule"
    }

    public func validate() throws {
    }
}

public struct GetBucketCorsRequest: Codable, Equatable {
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

public struct GetBucketEncryptionOutput: Codable, Equatable {
    public var serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration?

    public init(serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration? = nil) {
        self.serverSideEncryptionConfiguration = serverSideEncryptionConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case serverSideEncryptionConfiguration = "ServerSideEncryptionConfiguration"
    }

    public func validate() throws {
        try serverSideEncryptionConfiguration?.validate()
    }
}

public struct GetBucketEncryptionRequest: Codable, Equatable {
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

public struct GetBucketInventoryConfigurationOutput: Codable, Equatable {
    public var inventoryConfiguration: InventoryConfiguration?

    public init(inventoryConfiguration: InventoryConfiguration? = nil) {
        self.inventoryConfiguration = inventoryConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case inventoryConfiguration = "InventoryConfiguration"
    }

    public func validate() throws {
        try inventoryConfiguration?.validate()
    }
}

public struct GetBucketInventoryConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: InventoryId

    public init(bucket: BucketName,
                id: InventoryId) {
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
    }
}

public struct GetBucketLifecycleConfigurationOutput: Codable, Equatable {
    public var rules: LifecycleRules?

    public init(rules: LifecycleRules? = nil) {
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case rules = "Rule"
    }

    public func validate() throws {
    }
}

public struct GetBucketLifecycleConfigurationRequest: Codable, Equatable {
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

public struct GetBucketLifecycleOutput: Codable, Equatable {
    public var rules: Rules?

    public init(rules: Rules? = nil) {
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case rules = "Rule"
    }

    public func validate() throws {
    }
}

public struct GetBucketLifecycleRequest: Codable, Equatable {
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

public struct GetBucketLocationOutput: Codable, Equatable {
    public var locationConstraint: BucketLocationConstraint?

    public init(locationConstraint: BucketLocationConstraint? = nil) {
        self.locationConstraint = locationConstraint
    }

    enum CodingKeys: String, CodingKey {
        case locationConstraint = "LocationConstraint"
    }

    public func validate() throws {
    }
}

public struct GetBucketLocationRequest: Codable, Equatable {
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

public struct GetBucketLoggingOutput: Codable, Equatable {
    public var loggingEnabled: LoggingEnabled?

    public init(loggingEnabled: LoggingEnabled? = nil) {
        self.loggingEnabled = loggingEnabled
    }

    enum CodingKeys: String, CodingKey {
        case loggingEnabled = "LoggingEnabled"
    }

    public func validate() throws {
        try loggingEnabled?.validate()
    }
}

public struct GetBucketLoggingRequest: Codable, Equatable {
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

public struct GetBucketMetricsConfigurationOutput: Codable, Equatable {
    public var metricsConfiguration: MetricsConfiguration?

    public init(metricsConfiguration: MetricsConfiguration? = nil) {
        self.metricsConfiguration = metricsConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case metricsConfiguration = "MetricsConfiguration"
    }

    public func validate() throws {
        try metricsConfiguration?.validate()
    }
}

public struct GetBucketMetricsConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: MetricsId

    public init(bucket: BucketName,
                id: MetricsId) {
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
    }
}

public struct GetBucketNotificationConfigurationRequest: Codable, Equatable {
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

public struct GetBucketPolicyOutput: Codable, Equatable {
    public var policy: Policy?

    public init(policy: Policy? = nil) {
        self.policy = policy
    }

    enum CodingKeys: String, CodingKey {
        case policy = "Policy"
    }

    public func validate() throws {
    }
}

public struct GetBucketPolicyRequest: Codable, Equatable {
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

public struct GetBucketPolicyStatusOutput: Codable, Equatable {
    public var policyStatus: PolicyStatus?

    public init(policyStatus: PolicyStatus? = nil) {
        self.policyStatus = policyStatus
    }

    enum CodingKeys: String, CodingKey {
        case policyStatus = "PolicyStatus"
    }

    public func validate() throws {
        try policyStatus?.validate()
    }
}

public struct GetBucketPolicyStatusRequest: Codable, Equatable {
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

public struct GetBucketReplicationOutput: Codable, Equatable {
    public var replicationConfiguration: ReplicationConfiguration?

    public init(replicationConfiguration: ReplicationConfiguration? = nil) {
        self.replicationConfiguration = replicationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case replicationConfiguration = "ReplicationConfiguration"
    }

    public func validate() throws {
        try replicationConfiguration?.validate()
    }
}

public struct GetBucketReplicationRequest: Codable, Equatable {
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

public struct GetBucketRequestPaymentOutput: Codable, Equatable {
    public var payer: Payer?

    public init(payer: Payer? = nil) {
        self.payer = payer
    }

    enum CodingKeys: String, CodingKey {
        case payer = "Payer"
    }

    public func validate() throws {
    }
}

public struct GetBucketRequestPaymentRequest: Codable, Equatable {
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

public struct GetBucketTaggingOutput: Codable, Equatable {
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

public struct GetBucketTaggingRequest: Codable, Equatable {
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

public struct GetBucketVersioningOutput: Codable, Equatable {
    public var mFADelete: MFADeleteStatus?
    public var status: BucketVersioningStatus?

    public init(mFADelete: MFADeleteStatus? = nil,
                status: BucketVersioningStatus? = nil) {
        self.mFADelete = mFADelete
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case mFADelete = "MfaDelete"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct GetBucketVersioningRequest: Codable, Equatable {
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

public struct GetBucketWebsiteOutput: Codable, Equatable {
    public var errorDocument: ErrorDocument?
    public var indexDocument: IndexDocument?
    public var redirectAllRequestsTo: RedirectAllRequestsTo?
    public var routingRules: RoutingRules?

    public init(errorDocument: ErrorDocument? = nil,
                indexDocument: IndexDocument? = nil,
                redirectAllRequestsTo: RedirectAllRequestsTo? = nil,
                routingRules: RoutingRules? = nil) {
        self.errorDocument = errorDocument
        self.indexDocument = indexDocument
        self.redirectAllRequestsTo = redirectAllRequestsTo
        self.routingRules = routingRules
    }

    enum CodingKeys: String, CodingKey {
        case errorDocument = "ErrorDocument"
        case indexDocument = "IndexDocument"
        case redirectAllRequestsTo = "RedirectAllRequestsTo"
        case routingRules = "RoutingRules"
    }

    public func validate() throws {
        try errorDocument?.validate()
        try indexDocument?.validate()
        try redirectAllRequestsTo?.validate()
    }
}

public struct GetBucketWebsiteRequest: Codable, Equatable {
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

public struct GetObjectAclOutput: Codable, Equatable {
    public var grants: Grants?
    public var owner: Owner?
    public var requestCharged: RequestCharged?

    public init(grants: Grants? = nil,
                owner: Owner? = nil,
                requestCharged: RequestCharged? = nil) {
        self.grants = grants
        self.owner = owner
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case grants = "AccessControlList"
        case owner = "Owner"
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
        try owner?.validate()
    }
}

public struct GetObjectAclRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.key = key
        self.requestPayer = requestPayer
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct GetObjectLegalHoldOutput: Codable, Equatable {
    public var legalHold: ObjectLockLegalHold?

    public init(legalHold: ObjectLockLegalHold? = nil) {
        self.legalHold = legalHold
    }

    enum CodingKeys: String, CodingKey {
        case legalHold = "LegalHold"
    }

    public func validate() throws {
        try legalHold?.validate()
    }
}

public struct GetObjectLegalHoldRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.key = key
        self.requestPayer = requestPayer
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct GetObjectLockConfigurationOutput: Codable, Equatable {
    public var objectLockConfiguration: ObjectLockConfiguration?

    public init(objectLockConfiguration: ObjectLockConfiguration? = nil) {
        self.objectLockConfiguration = objectLockConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case objectLockConfiguration = "ObjectLockConfiguration"
    }

    public func validate() throws {
        try objectLockConfiguration?.validate()
    }
}

public struct GetObjectLockConfigurationRequest: Codable, Equatable {
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

public struct GetObjectOutput: Codable, Equatable {
    public var acceptRanges: AcceptRanges?
    public var body: Body?
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
                body: Body? = nil,
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
        self.body = body
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
        case body = "Body"
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

public struct GetObjectRequest: Codable, Equatable {
    public var bucket: BucketName
    public var ifMatch: IfMatch?
    public var ifModifiedSince: IfModifiedSince?
    public var ifNoneMatch: IfNoneMatch?
    public var ifUnmodifiedSince: IfUnmodifiedSince?
    public var key: ObjectKey
    public var partNumber: PartNumber?
    public var range: Range?
    public var requestPayer: RequestPayer?
    public var responseCacheControl: ResponseCacheControl?
    public var responseContentDisposition: ResponseContentDisposition?
    public var responseContentEncoding: ResponseContentEncoding?
    public var responseContentLanguage: ResponseContentLanguage?
    public var responseContentType: ResponseContentType?
    public var responseExpires: ResponseExpires?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                ifMatch: IfMatch? = nil,
                ifModifiedSince: IfModifiedSince? = nil,
                ifNoneMatch: IfNoneMatch? = nil,
                ifUnmodifiedSince: IfUnmodifiedSince? = nil,
                key: ObjectKey,
                partNumber: PartNumber? = nil,
                range: Range? = nil,
                requestPayer: RequestPayer? = nil,
                responseCacheControl: ResponseCacheControl? = nil,
                responseContentDisposition: ResponseContentDisposition? = nil,
                responseContentEncoding: ResponseContentEncoding? = nil,
                responseContentLanguage: ResponseContentLanguage? = nil,
                responseContentType: ResponseContentType? = nil,
                responseExpires: ResponseExpires? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.ifMatch = ifMatch
        self.ifModifiedSince = ifModifiedSince
        self.ifNoneMatch = ifNoneMatch
        self.ifUnmodifiedSince = ifUnmodifiedSince
        self.key = key
        self.partNumber = partNumber
        self.range = range
        self.requestPayer = requestPayer
        self.responseCacheControl = responseCacheControl
        self.responseContentDisposition = responseContentDisposition
        self.responseContentEncoding = responseContentEncoding
        self.responseContentLanguage = responseContentLanguage
        self.responseContentType = responseContentType
        self.responseExpires = responseExpires
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case ifMatch = "If-Match"
        case ifModifiedSince = "If-Modified-Since"
        case ifNoneMatch = "If-None-Match"
        case ifUnmodifiedSince = "If-Unmodified-Since"
        case key = "Key"
        case partNumber
        case range = "Range"
        case requestPayer = "x-amz-request-payer"
        case responseCacheControl = "response-cache-control"
        case responseContentDisposition = "response-content-disposition"
        case responseContentEncoding = "response-content-encoding"
        case responseContentLanguage = "response-content-language"
        case responseContentType = "response-content-type"
        case responseExpires = "response-expires"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct GetObjectRetentionOutput: Codable, Equatable {
    public var retention: ObjectLockRetention?

    public init(retention: ObjectLockRetention? = nil) {
        self.retention = retention
    }

    enum CodingKeys: String, CodingKey {
        case retention = "Retention"
    }

    public func validate() throws {
        try retention?.validate()
    }
}

public struct GetObjectRetentionRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.key = key
        self.requestPayer = requestPayer
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct GetObjectTaggingOutput: Codable, Equatable {
    public var tagSet: TagSet
    public var versionId: ObjectVersionId?

    public init(tagSet: TagSet,
                versionId: ObjectVersionId? = nil) {
        self.tagSet = tagSet
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case tagSet = "TagSet"
        case versionId = "x-amz-version-id"
    }

    public func validate() throws {
    }
}

public struct GetObjectTaggingRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                key: ObjectKey,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.key = key
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct GetObjectTorrentOutput: Codable, Equatable {
    public var body: Body?
    public var requestCharged: RequestCharged?

    public init(body: Body? = nil,
                requestCharged: RequestCharged? = nil) {
        self.body = body
        self.requestCharged = requestCharged
    }

    enum CodingKeys: String, CodingKey {
        case body = "Body"
        case requestCharged = "x-amz-request-charged"
    }

    public func validate() throws {
    }
}

public struct GetObjectTorrentRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var requestPayer: RequestPayer?

    public init(bucket: BucketName,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil) {
        self.bucket = bucket
        self.key = key
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct GetPublicAccessBlockOutput: Codable, Equatable {
    public var publicAccessBlockConfiguration: PublicAccessBlockConfiguration?

    public init(publicAccessBlockConfiguration: PublicAccessBlockConfiguration? = nil) {
        self.publicAccessBlockConfiguration = publicAccessBlockConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case publicAccessBlockConfiguration = "PublicAccessBlockConfiguration"
    }

    public func validate() throws {
        try publicAccessBlockConfiguration?.validate()
    }
}

public struct GetPublicAccessBlockRequest: Codable, Equatable {
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

public struct GlacierJobParameters: Codable, Equatable {
    public var tier: Tier

    public init(tier: Tier) {
        self.tier = tier
    }

    enum CodingKeys: String, CodingKey {
        case tier = "Tier"
    }

    public func validate() throws {
    }
}

public struct Grant: Codable, Equatable {
    public var grantee: Grantee?
    public var permission: Permission?

    public init(grantee: Grantee? = nil,
                permission: Permission? = nil) {
        self.grantee = grantee
        self.permission = permission
    }

    enum CodingKeys: String, CodingKey {
        case grantee = "Grantee"
        case permission = "Permission"
    }

    public func validate() throws {
        try grantee?.validate()
    }
}

public struct Grantee: Codable, Equatable {
    public var displayName: DisplayName?
    public var emailAddress: EmailAddress?
    public var iD: ID?
    public var type: Type
    public var uRI: URI?

    public init(displayName: DisplayName? = nil,
                emailAddress: EmailAddress? = nil,
                iD: ID? = nil,
                type: Type,
                uRI: URI? = nil) {
        self.displayName = displayName
        self.emailAddress = emailAddress
        self.iD = iD
        self.type = type
        self.uRI = uRI
    }

    enum CodingKeys: String, CodingKey {
        case displayName = "DisplayName"
        case emailAddress = "EmailAddress"
        case iD = "ID"
        case type = "xsi:type"
        case uRI = "URI"
    }

    public func validate() throws {
    }
}

public struct HeadBucketRequest: Codable, Equatable {
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

public struct HeadObjectOutput: Codable, Equatable {
    public var acceptRanges: AcceptRanges?
    public var cacheControl: CacheControl?
    public var contentDisposition: ContentDisposition?
    public var contentEncoding: ContentEncoding?
    public var contentLanguage: ContentLanguage?
    public var contentLength: ContentLength?
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
    public var versionId: ObjectVersionId?
    public var websiteRedirectLocation: WebsiteRedirectLocation?

    public init(acceptRanges: AcceptRanges? = nil,
                cacheControl: CacheControl? = nil,
                contentDisposition: ContentDisposition? = nil,
                contentEncoding: ContentEncoding? = nil,
                contentLanguage: ContentLanguage? = nil,
                contentLength: ContentLength? = nil,
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
                versionId: ObjectVersionId? = nil,
                websiteRedirectLocation: WebsiteRedirectLocation? = nil) {
        self.acceptRanges = acceptRanges
        self.cacheControl = cacheControl
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentLength = contentLength
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
        case versionId = "x-amz-version-id"
        case websiteRedirectLocation = "x-amz-website-redirect-location"
    }

    public func validate() throws {
    }
}

public struct HeadObjectRequest: Codable, Equatable {
    public var bucket: BucketName
    public var ifMatch: IfMatch?
    public var ifModifiedSince: IfModifiedSince?
    public var ifNoneMatch: IfNoneMatch?
    public var ifUnmodifiedSince: IfUnmodifiedSince?
    public var key: ObjectKey
    public var partNumber: PartNumber?
    public var range: Range?
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                ifMatch: IfMatch? = nil,
                ifModifiedSince: IfModifiedSince? = nil,
                ifNoneMatch: IfNoneMatch? = nil,
                ifUnmodifiedSince: IfUnmodifiedSince? = nil,
                key: ObjectKey,
                partNumber: PartNumber? = nil,
                range: Range? = nil,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.ifMatch = ifMatch
        self.ifModifiedSince = ifModifiedSince
        self.ifNoneMatch = ifNoneMatch
        self.ifUnmodifiedSince = ifUnmodifiedSince
        self.key = key
        self.partNumber = partNumber
        self.range = range
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case ifMatch = "If-Match"
        case ifModifiedSince = "If-Modified-Since"
        case ifNoneMatch = "If-None-Match"
        case ifUnmodifiedSince = "If-Unmodified-Since"
        case key = "Key"
        case partNumber
        case range = "Range"
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct IndexDocument: Codable, Equatable {
    public var suffix: Suffix

    public init(suffix: Suffix) {
        self.suffix = suffix
    }

    enum CodingKeys: String, CodingKey {
        case suffix = "Suffix"
    }

    public func validate() throws {
    }
}

public struct Initiator: Codable, Equatable {
    public var displayName: DisplayName?
    public var iD: ID?

    public init(displayName: DisplayName? = nil,
                iD: ID? = nil) {
        self.displayName = displayName
        self.iD = iD
    }

    enum CodingKeys: String, CodingKey {
        case displayName = "DisplayName"
        case iD = "ID"
    }

    public func validate() throws {
    }
}

public struct InputSerialization: Codable, Equatable {
    public var cSV: CSVInput?
    public var compressionType: CompressionType?
    public var jSON: JSONInput?
    public var parquet: ParquetInput?

    public init(cSV: CSVInput? = nil,
                compressionType: CompressionType? = nil,
                jSON: JSONInput? = nil,
                parquet: ParquetInput? = nil) {
        self.cSV = cSV
        self.compressionType = compressionType
        self.jSON = jSON
        self.parquet = parquet
    }

    enum CodingKeys: String, CodingKey {
        case cSV = "CSV"
        case compressionType = "CompressionType"
        case jSON = "JSON"
        case parquet = "Parquet"
    }

    public func validate() throws {
        try cSV?.validate()
        try jSON?.validate()
        try parquet?.validate()
    }
}

public struct InventoryConfiguration: Codable, Equatable {
    public var destination: InventoryDestination
    public var filter: InventoryFilter?
    public var id: InventoryId
    public var includedObjectVersions: InventoryIncludedObjectVersions
    public var isEnabled: IsEnabled
    public var optionalFields: InventoryOptionalFields?
    public var schedule: InventorySchedule

    public init(destination: InventoryDestination,
                filter: InventoryFilter? = nil,
                id: InventoryId,
                includedObjectVersions: InventoryIncludedObjectVersions,
                isEnabled: IsEnabled,
                optionalFields: InventoryOptionalFields? = nil,
                schedule: InventorySchedule) {
        self.destination = destination
        self.filter = filter
        self.id = id
        self.includedObjectVersions = includedObjectVersions
        self.isEnabled = isEnabled
        self.optionalFields = optionalFields
        self.schedule = schedule
    }

    enum CodingKeys: String, CodingKey {
        case destination = "Destination"
        case filter = "Filter"
        case id = "Id"
        case includedObjectVersions = "IncludedObjectVersions"
        case isEnabled = "IsEnabled"
        case optionalFields = "OptionalFields"
        case schedule = "Schedule"
    }

    public func validate() throws {
        try destination.validate()
        try filter?.validate()
        try schedule.validate()
    }
}

public struct InventoryDestination: Codable, Equatable {
    public var s3BucketDestination: InventoryS3BucketDestination

    public init(s3BucketDestination: InventoryS3BucketDestination) {
        self.s3BucketDestination = s3BucketDestination
    }

    enum CodingKeys: String, CodingKey {
        case s3BucketDestination = "S3BucketDestination"
    }

    public func validate() throws {
        try s3BucketDestination.validate()
    }
}

public struct InventoryEncryption: Codable, Equatable {
    public var sSEKMS: SSEKMS?
    public var sSES3: SSES3?

    public init(sSEKMS: SSEKMS? = nil,
                sSES3: SSES3? = nil) {
        self.sSEKMS = sSEKMS
        self.sSES3 = sSES3
    }

    enum CodingKeys: String, CodingKey {
        case sSEKMS = "SSE-KMS"
        case sSES3 = "SSE-S3"
    }

    public func validate() throws {
        try sSEKMS?.validate()
        try sSES3?.validate()
    }
}

public struct InventoryFilter: Codable, Equatable {
    public var prefix: Prefix

    public init(prefix: Prefix) {
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
    }

    public func validate() throws {
    }
}

public struct InventoryS3BucketDestination: Codable, Equatable {
    public var accountId: AccountId?
    public var bucket: BucketName
    public var encryption: InventoryEncryption?
    public var format: InventoryFormat
    public var prefix: Prefix?

    public init(accountId: AccountId? = nil,
                bucket: BucketName,
                encryption: InventoryEncryption? = nil,
                format: InventoryFormat,
                prefix: Prefix? = nil) {
        self.accountId = accountId
        self.bucket = bucket
        self.encryption = encryption
        self.format = format
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case bucket = "Bucket"
        case encryption = "Encryption"
        case format = "Format"
        case prefix = "Prefix"
    }

    public func validate() throws {
        try encryption?.validate()
    }
}

public struct InventorySchedule: Codable, Equatable {
    public var frequency: InventoryFrequency

    public init(frequency: InventoryFrequency) {
        self.frequency = frequency
    }

    enum CodingKeys: String, CodingKey {
        case frequency = "Frequency"
    }

    public func validate() throws {
    }
}

public struct JSONInput: Codable, Equatable {
    public var type: JSONType?

    public init(type: JSONType? = nil) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct JSONOutput: Codable, Equatable {
    public var recordDelimiter: RecordDelimiter?

    public init(recordDelimiter: RecordDelimiter? = nil) {
        self.recordDelimiter = recordDelimiter
    }

    enum CodingKeys: String, CodingKey {
        case recordDelimiter = "RecordDelimiter"
    }

    public func validate() throws {
    }
}

public struct LambdaFunctionConfiguration: Codable, Equatable {
    public var events: EventList
    public var filter: NotificationConfigurationFilter?
    public var id: NotificationId?
    public var lambdaFunctionArn: LambdaFunctionArn

    public init(events: EventList,
                filter: NotificationConfigurationFilter? = nil,
                id: NotificationId? = nil,
                lambdaFunctionArn: LambdaFunctionArn) {
        self.events = events
        self.filter = filter
        self.id = id
        self.lambdaFunctionArn = lambdaFunctionArn
    }

    enum CodingKeys: String, CodingKey {
        case events = "Event"
        case filter = "Filter"
        case id = "Id"
        case lambdaFunctionArn = "CloudFunction"
    }

    public func validate() throws {
        try filter?.validate()
    }
}

public struct LifecycleConfiguration: Codable, Equatable {
    public var rules: Rules

    public init(rules: Rules) {
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case rules = "Rule"
    }

    public func validate() throws {
    }
}

public struct LifecycleExpiration: Codable, Equatable {
    public var date: Date?
    public var days: Days?
    public var expiredObjectDeleteMarker: ExpiredObjectDeleteMarker?

    public init(date: Date? = nil,
                days: Days? = nil,
                expiredObjectDeleteMarker: ExpiredObjectDeleteMarker? = nil) {
        self.date = date
        self.days = days
        self.expiredObjectDeleteMarker = expiredObjectDeleteMarker
    }

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case days = "Days"
        case expiredObjectDeleteMarker = "ExpiredObjectDeleteMarker"
    }

    public func validate() throws {
    }
}

public struct LifecycleRule: Codable, Equatable {
    public var abortIncompleteMultipartUpload: AbortIncompleteMultipartUpload?
    public var expiration: LifecycleExpiration?
    public var filter: LifecycleRuleFilter?
    public var iD: ID?
    public var noncurrentVersionExpiration: NoncurrentVersionExpiration?
    public var noncurrentVersionTransitions: NoncurrentVersionTransitionList?
    public var status: ExpirationStatus
    public var transitions: TransitionList?

    public init(abortIncompleteMultipartUpload: AbortIncompleteMultipartUpload? = nil,
                expiration: LifecycleExpiration? = nil,
                filter: LifecycleRuleFilter? = nil,
                iD: ID? = nil,
                noncurrentVersionExpiration: NoncurrentVersionExpiration? = nil,
                noncurrentVersionTransitions: NoncurrentVersionTransitionList? = nil,
                status: ExpirationStatus,
                transitions: TransitionList? = nil) {
        self.abortIncompleteMultipartUpload = abortIncompleteMultipartUpload
        self.expiration = expiration
        self.filter = filter
        self.iD = iD
        self.noncurrentVersionExpiration = noncurrentVersionExpiration
        self.noncurrentVersionTransitions = noncurrentVersionTransitions
        self.status = status
        self.transitions = transitions
    }

    enum CodingKeys: String, CodingKey {
        case abortIncompleteMultipartUpload = "AbortIncompleteMultipartUpload"
        case expiration = "Expiration"
        case filter = "Filter"
        case iD = "ID"
        case noncurrentVersionExpiration = "NoncurrentVersionExpiration"
        case noncurrentVersionTransitions = "NoncurrentVersionTransition"
        case status = "Status"
        case transitions = "Transition"
    }

    public func validate() throws {
        try abortIncompleteMultipartUpload?.validate()
        try expiration?.validate()
        try filter?.validate()
        try noncurrentVersionExpiration?.validate()
    }
}

public struct LifecycleRuleAndOperator: Codable, Equatable {
    public var prefix: Prefix?
    public var tags: TagSet?

    public init(prefix: Prefix? = nil,
                tags: TagSet? = nil) {
        self.prefix = prefix
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct LifecycleRuleFilter: Codable, Equatable {
    public var and: LifecycleRuleAndOperator?
    public var prefix: Prefix?
    public var tag: Tag?

    public init(and: LifecycleRuleAndOperator? = nil,
                prefix: Prefix? = nil,
                tag: Tag? = nil) {
        self.and = and
        self.prefix = prefix
        self.tag = tag
    }

    enum CodingKeys: String, CodingKey {
        case and = "And"
        case prefix = "Prefix"
        case tag = "Tag"
    }

    public func validate() throws {
        try and?.validate()
        try tag?.validate()
    }
}

public struct ListBucketAnalyticsConfigurationsOutput: Codable, Equatable {
    public var analyticsConfigurationList: AnalyticsConfigurationList?
    public var continuationToken: Token?
    public var isTruncated: IsTruncated?
    public var nextContinuationToken: NextToken?

    public init(analyticsConfigurationList: AnalyticsConfigurationList? = nil,
                continuationToken: Token? = nil,
                isTruncated: IsTruncated? = nil,
                nextContinuationToken: NextToken? = nil) {
        self.analyticsConfigurationList = analyticsConfigurationList
        self.continuationToken = continuationToken
        self.isTruncated = isTruncated
        self.nextContinuationToken = nextContinuationToken
    }

    enum CodingKeys: String, CodingKey {
        case analyticsConfigurationList = "AnalyticsConfiguration"
        case continuationToken = "ContinuationToken"
        case isTruncated = "IsTruncated"
        case nextContinuationToken = "NextContinuationToken"
    }

    public func validate() throws {
    }
}

public struct ListBucketAnalyticsConfigurationsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var continuationToken: Token?

    public init(bucket: BucketName,
                continuationToken: Token? = nil) {
        self.bucket = bucket
        self.continuationToken = continuationToken
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case continuationToken = "continuation-token"
    }

    public func validate() throws {
    }
}

public struct ListBucketInventoryConfigurationsOutput: Codable, Equatable {
    public var continuationToken: Token?
    public var inventoryConfigurationList: InventoryConfigurationList?
    public var isTruncated: IsTruncated?
    public var nextContinuationToken: NextToken?

    public init(continuationToken: Token? = nil,
                inventoryConfigurationList: InventoryConfigurationList? = nil,
                isTruncated: IsTruncated? = nil,
                nextContinuationToken: NextToken? = nil) {
        self.continuationToken = continuationToken
        self.inventoryConfigurationList = inventoryConfigurationList
        self.isTruncated = isTruncated
        self.nextContinuationToken = nextContinuationToken
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken = "ContinuationToken"
        case inventoryConfigurationList = "InventoryConfiguration"
        case isTruncated = "IsTruncated"
        case nextContinuationToken = "NextContinuationToken"
    }

    public func validate() throws {
    }
}

public struct ListBucketInventoryConfigurationsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var continuationToken: Token?

    public init(bucket: BucketName,
                continuationToken: Token? = nil) {
        self.bucket = bucket
        self.continuationToken = continuationToken
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case continuationToken = "continuation-token"
    }

    public func validate() throws {
    }
}

public struct ListBucketMetricsConfigurationsOutput: Codable, Equatable {
    public var continuationToken: Token?
    public var isTruncated: IsTruncated?
    public var metricsConfigurationList: MetricsConfigurationList?
    public var nextContinuationToken: NextToken?

    public init(continuationToken: Token? = nil,
                isTruncated: IsTruncated? = nil,
                metricsConfigurationList: MetricsConfigurationList? = nil,
                nextContinuationToken: NextToken? = nil) {
        self.continuationToken = continuationToken
        self.isTruncated = isTruncated
        self.metricsConfigurationList = metricsConfigurationList
        self.nextContinuationToken = nextContinuationToken
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken = "ContinuationToken"
        case isTruncated = "IsTruncated"
        case metricsConfigurationList = "MetricsConfiguration"
        case nextContinuationToken = "NextContinuationToken"
    }

    public func validate() throws {
    }
}

public struct ListBucketMetricsConfigurationsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var continuationToken: Token?

    public init(bucket: BucketName,
                continuationToken: Token? = nil) {
        self.bucket = bucket
        self.continuationToken = continuationToken
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case continuationToken = "continuation-token"
    }

    public func validate() throws {
    }
}

public struct ListBucketsOutput: Codable, Equatable {
    public var buckets: Buckets?
    public var owner: Owner?

    public init(buckets: Buckets? = nil,
                owner: Owner? = nil) {
        self.buckets = buckets
        self.owner = owner
    }

    enum CodingKeys: String, CodingKey {
        case buckets = "Buckets"
        case owner = "Owner"
    }

    public func validate() throws {
        try owner?.validate()
    }
}

public struct ListMultipartUploadsOutput: Codable, Equatable {
    public var bucket: BucketName?
    public var commonPrefixes: CommonPrefixList?
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var isTruncated: IsTruncated?
    public var keyMarker: KeyMarker?
    public var maxUploads: MaxUploads?
    public var nextKeyMarker: NextKeyMarker?
    public var nextUploadIdMarker: NextUploadIdMarker?
    public var prefix: Prefix?
    public var uploadIdMarker: UploadIdMarker?
    public var uploads: MultipartUploadList?

    public init(bucket: BucketName? = nil,
                commonPrefixes: CommonPrefixList? = nil,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                isTruncated: IsTruncated? = nil,
                keyMarker: KeyMarker? = nil,
                maxUploads: MaxUploads? = nil,
                nextKeyMarker: NextKeyMarker? = nil,
                nextUploadIdMarker: NextUploadIdMarker? = nil,
                prefix: Prefix? = nil,
                uploadIdMarker: UploadIdMarker? = nil,
                uploads: MultipartUploadList? = nil) {
        self.bucket = bucket
        self.commonPrefixes = commonPrefixes
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.isTruncated = isTruncated
        self.keyMarker = keyMarker
        self.maxUploads = maxUploads
        self.nextKeyMarker = nextKeyMarker
        self.nextUploadIdMarker = nextUploadIdMarker
        self.prefix = prefix
        self.uploadIdMarker = uploadIdMarker
        self.uploads = uploads
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case commonPrefixes = "CommonPrefixes"
        case delimiter = "Delimiter"
        case encodingType = "EncodingType"
        case isTruncated = "IsTruncated"
        case keyMarker = "KeyMarker"
        case maxUploads = "MaxUploads"
        case nextKeyMarker = "NextKeyMarker"
        case nextUploadIdMarker = "NextUploadIdMarker"
        case prefix = "Prefix"
        case uploadIdMarker = "UploadIdMarker"
        case uploads = "Upload"
    }

    public func validate() throws {
    }
}

public struct ListMultipartUploadsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var keyMarker: KeyMarker?
    public var maxUploads: MaxUploads?
    public var prefix: Prefix?
    public var uploadIdMarker: UploadIdMarker?

    public init(bucket: BucketName,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                keyMarker: KeyMarker? = nil,
                maxUploads: MaxUploads? = nil,
                prefix: Prefix? = nil,
                uploadIdMarker: UploadIdMarker? = nil) {
        self.bucket = bucket
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.keyMarker = keyMarker
        self.maxUploads = maxUploads
        self.prefix = prefix
        self.uploadIdMarker = uploadIdMarker
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
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

public struct ListObjectVersionsOutput: Codable, Equatable {
    public var commonPrefixes: CommonPrefixList?
    public var deleteMarkers: DeleteMarkers?
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var isTruncated: IsTruncated?
    public var keyMarker: KeyMarker?
    public var maxKeys: MaxKeys?
    public var name: BucketName?
    public var nextKeyMarker: NextKeyMarker?
    public var nextVersionIdMarker: NextVersionIdMarker?
    public var prefix: Prefix?
    public var versionIdMarker: VersionIdMarker?
    public var versions: ObjectVersionList?

    public init(commonPrefixes: CommonPrefixList? = nil,
                deleteMarkers: DeleteMarkers? = nil,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                isTruncated: IsTruncated? = nil,
                keyMarker: KeyMarker? = nil,
                maxKeys: MaxKeys? = nil,
                name: BucketName? = nil,
                nextKeyMarker: NextKeyMarker? = nil,
                nextVersionIdMarker: NextVersionIdMarker? = nil,
                prefix: Prefix? = nil,
                versionIdMarker: VersionIdMarker? = nil,
                versions: ObjectVersionList? = nil) {
        self.commonPrefixes = commonPrefixes
        self.deleteMarkers = deleteMarkers
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.isTruncated = isTruncated
        self.keyMarker = keyMarker
        self.maxKeys = maxKeys
        self.name = name
        self.nextKeyMarker = nextKeyMarker
        self.nextVersionIdMarker = nextVersionIdMarker
        self.prefix = prefix
        self.versionIdMarker = versionIdMarker
        self.versions = versions
    }

    enum CodingKeys: String, CodingKey {
        case commonPrefixes = "CommonPrefixes"
        case deleteMarkers = "DeleteMarker"
        case delimiter = "Delimiter"
        case encodingType = "EncodingType"
        case isTruncated = "IsTruncated"
        case keyMarker = "KeyMarker"
        case maxKeys = "MaxKeys"
        case name = "Name"
        case nextKeyMarker = "NextKeyMarker"
        case nextVersionIdMarker = "NextVersionIdMarker"
        case prefix = "Prefix"
        case versionIdMarker = "VersionIdMarker"
        case versions = "Version"
    }

    public func validate() throws {
    }
}

public struct ListObjectVersionsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var keyMarker: KeyMarker?
    public var maxKeys: MaxKeys?
    public var prefix: Prefix?
    public var versionIdMarker: VersionIdMarker?

    public init(bucket: BucketName,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                keyMarker: KeyMarker? = nil,
                maxKeys: MaxKeys? = nil,
                prefix: Prefix? = nil,
                versionIdMarker: VersionIdMarker? = nil) {
        self.bucket = bucket
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.keyMarker = keyMarker
        self.maxKeys = maxKeys
        self.prefix = prefix
        self.versionIdMarker = versionIdMarker
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
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

public struct ListObjectsOutput: Codable, Equatable {
    public var commonPrefixes: CommonPrefixList?
    public var contents: ObjectList?
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var isTruncated: IsTruncated?
    public var marker: Marker?
    public var maxKeys: MaxKeys?
    public var name: BucketName?
    public var nextMarker: NextMarker?
    public var prefix: Prefix?

    public init(commonPrefixes: CommonPrefixList? = nil,
                contents: ObjectList? = nil,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                isTruncated: IsTruncated? = nil,
                marker: Marker? = nil,
                maxKeys: MaxKeys? = nil,
                name: BucketName? = nil,
                nextMarker: NextMarker? = nil,
                prefix: Prefix? = nil) {
        self.commonPrefixes = commonPrefixes
        self.contents = contents
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.isTruncated = isTruncated
        self.marker = marker
        self.maxKeys = maxKeys
        self.name = name
        self.nextMarker = nextMarker
        self.prefix = prefix
    }

    enum CodingKeys: String, CodingKey {
        case commonPrefixes = "CommonPrefixes"
        case contents = "Contents"
        case delimiter = "Delimiter"
        case encodingType = "EncodingType"
        case isTruncated = "IsTruncated"
        case marker = "Marker"
        case maxKeys = "MaxKeys"
        case name = "Name"
        case nextMarker = "NextMarker"
        case prefix = "Prefix"
    }

    public func validate() throws {
    }
}

public struct ListObjectsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var marker: Marker?
    public var maxKeys: MaxKeys?
    public var prefix: Prefix?
    public var requestPayer: RequestPayer?

    public init(bucket: BucketName,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                marker: Marker? = nil,
                maxKeys: MaxKeys? = nil,
                prefix: Prefix? = nil,
                requestPayer: RequestPayer? = nil) {
        self.bucket = bucket
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.marker = marker
        self.maxKeys = maxKeys
        self.prefix = prefix
        self.requestPayer = requestPayer
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case delimiter
        case encodingType = "encoding-type"
        case marker
        case maxKeys = "max-keys"
        case prefix
        case requestPayer = "x-amz-request-payer"
    }

    public func validate() throws {
    }
}

public struct ListObjectsV2Output: Codable, Equatable {
    public var commonPrefixes: CommonPrefixList?
    public var contents: ObjectList?
    public var continuationToken: Token?
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var isTruncated: IsTruncated?
    public var keyCount: KeyCount?
    public var maxKeys: MaxKeys?
    public var name: BucketName?
    public var nextContinuationToken: NextToken?
    public var prefix: Prefix?
    public var startAfter: StartAfter?

    public init(commonPrefixes: CommonPrefixList? = nil,
                contents: ObjectList? = nil,
                continuationToken: Token? = nil,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                isTruncated: IsTruncated? = nil,
                keyCount: KeyCount? = nil,
                maxKeys: MaxKeys? = nil,
                name: BucketName? = nil,
                nextContinuationToken: NextToken? = nil,
                prefix: Prefix? = nil,
                startAfter: StartAfter? = nil) {
        self.commonPrefixes = commonPrefixes
        self.contents = contents
        self.continuationToken = continuationToken
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.isTruncated = isTruncated
        self.keyCount = keyCount
        self.maxKeys = maxKeys
        self.name = name
        self.nextContinuationToken = nextContinuationToken
        self.prefix = prefix
        self.startAfter = startAfter
    }

    enum CodingKeys: String, CodingKey {
        case commonPrefixes = "CommonPrefixes"
        case contents = "Contents"
        case continuationToken = "ContinuationToken"
        case delimiter = "Delimiter"
        case encodingType = "EncodingType"
        case isTruncated = "IsTruncated"
        case keyCount = "KeyCount"
        case maxKeys = "MaxKeys"
        case name = "Name"
        case nextContinuationToken = "NextContinuationToken"
        case prefix = "Prefix"
        case startAfter = "StartAfter"
    }

    public func validate() throws {
    }
}

public struct ListObjectsV2Request: Codable, Equatable {
    public var bucket: BucketName
    public var continuationToken: Token?
    public var delimiter: Delimiter?
    public var encodingType: EncodingType?
    public var fetchOwner: FetchOwner?
    public var maxKeys: MaxKeys?
    public var prefix: Prefix?
    public var requestPayer: RequestPayer?
    public var startAfter: StartAfter?

    public init(bucket: BucketName,
                continuationToken: Token? = nil,
                delimiter: Delimiter? = nil,
                encodingType: EncodingType? = nil,
                fetchOwner: FetchOwner? = nil,
                maxKeys: MaxKeys? = nil,
                prefix: Prefix? = nil,
                requestPayer: RequestPayer? = nil,
                startAfter: StartAfter? = nil) {
        self.bucket = bucket
        self.continuationToken = continuationToken
        self.delimiter = delimiter
        self.encodingType = encodingType
        self.fetchOwner = fetchOwner
        self.maxKeys = maxKeys
        self.prefix = prefix
        self.requestPayer = requestPayer
        self.startAfter = startAfter
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case continuationToken = "continuation-token"
        case delimiter
        case encodingType = "encoding-type"
        case fetchOwner = "fetch-owner"
        case maxKeys = "max-keys"
        case prefix
        case requestPayer = "x-amz-request-payer"
        case startAfter = "start-after"
    }

    public func validate() throws {
    }
}

public struct ListPartsOutput: Codable, Equatable {
    public var abortDate: AbortDate?
    public var abortRuleId: AbortRuleId?
    public var bucket: BucketName?
    public var initiator: Initiator?
    public var isTruncated: IsTruncated?
    public var key: ObjectKey?
    public var maxParts: MaxParts?
    public var nextPartNumberMarker: NextPartNumberMarker?
    public var owner: Owner?
    public var partNumberMarker: PartNumberMarker?
    public var parts: Parts?
    public var requestCharged: RequestCharged?
    public var storageClass: StorageClass?
    public var uploadId: MultipartUploadId?

    public init(abortDate: AbortDate? = nil,
                abortRuleId: AbortRuleId? = nil,
                bucket: BucketName? = nil,
                initiator: Initiator? = nil,
                isTruncated: IsTruncated? = nil,
                key: ObjectKey? = nil,
                maxParts: MaxParts? = nil,
                nextPartNumberMarker: NextPartNumberMarker? = nil,
                owner: Owner? = nil,
                partNumberMarker: PartNumberMarker? = nil,
                parts: Parts? = nil,
                requestCharged: RequestCharged? = nil,
                storageClass: StorageClass? = nil,
                uploadId: MultipartUploadId? = nil) {
        self.abortDate = abortDate
        self.abortRuleId = abortRuleId
        self.bucket = bucket
        self.initiator = initiator
        self.isTruncated = isTruncated
        self.key = key
        self.maxParts = maxParts
        self.nextPartNumberMarker = nextPartNumberMarker
        self.owner = owner
        self.partNumberMarker = partNumberMarker
        self.parts = parts
        self.requestCharged = requestCharged
        self.storageClass = storageClass
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case abortDate = "x-amz-abort-date"
        case abortRuleId = "x-amz-abort-rule-id"
        case bucket = "Bucket"
        case initiator = "Initiator"
        case isTruncated = "IsTruncated"
        case key = "Key"
        case maxParts = "MaxParts"
        case nextPartNumberMarker = "NextPartNumberMarker"
        case owner = "Owner"
        case partNumberMarker = "PartNumberMarker"
        case parts = "Part"
        case requestCharged = "x-amz-request-charged"
        case storageClass = "StorageClass"
        case uploadId = "UploadId"
    }

    public func validate() throws {
        try initiator?.validate()
        try key?.validateAsObjectKey()
        try owner?.validate()
    }
}

public struct ListPartsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var maxParts: MaxParts?
    public var partNumberMarker: PartNumberMarker?
    public var requestPayer: RequestPayer?
    public var uploadId: MultipartUploadId

    public init(bucket: BucketName,
                key: ObjectKey,
                maxParts: MaxParts? = nil,
                partNumberMarker: PartNumberMarker? = nil,
                requestPayer: RequestPayer? = nil,
                uploadId: MultipartUploadId) {
        self.bucket = bucket
        self.key = key
        self.maxParts = maxParts
        self.partNumberMarker = partNumberMarker
        self.requestPayer = requestPayer
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case maxParts = "max-parts"
        case partNumberMarker = "part-number-marker"
        case requestPayer = "x-amz-request-payer"
        case uploadId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct LoggingEnabled: Codable, Equatable {
    public var targetBucket: TargetBucket
    public var targetGrants: TargetGrants?
    public var targetPrefix: TargetPrefix

    public init(targetBucket: TargetBucket,
                targetGrants: TargetGrants? = nil,
                targetPrefix: TargetPrefix) {
        self.targetBucket = targetBucket
        self.targetGrants = targetGrants
        self.targetPrefix = targetPrefix
    }

    enum CodingKeys: String, CodingKey {
        case targetBucket = "TargetBucket"
        case targetGrants = "TargetGrants"
        case targetPrefix = "TargetPrefix"
    }

    public func validate() throws {
    }
}

public struct MetadataEntry: Codable, Equatable {
    public var name: MetadataKey?
    public var value: MetadataValue?

    public init(name: MetadataKey? = nil,
                value: MetadataValue? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct MetricsAndOperator: Codable, Equatable {
    public var prefix: Prefix?
    public var tags: TagSet?

    public init(prefix: Prefix? = nil,
                tags: TagSet? = nil) {
        self.prefix = prefix
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct MetricsConfiguration: Codable, Equatable {
    public var filter: MetricsFilter?
    public var id: MetricsId

    public init(filter: MetricsFilter? = nil,
                id: MetricsId) {
        self.filter = filter
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case id = "Id"
    }

    public func validate() throws {
        try filter?.validate()
    }
}

public struct MetricsFilter: Codable, Equatable {
    public var and: MetricsAndOperator?
    public var prefix: Prefix?
    public var tag: Tag?

    public init(and: MetricsAndOperator? = nil,
                prefix: Prefix? = nil,
                tag: Tag? = nil) {
        self.and = and
        self.prefix = prefix
        self.tag = tag
    }

    enum CodingKeys: String, CodingKey {
        case and = "And"
        case prefix = "Prefix"
        case tag = "Tag"
    }

    public func validate() throws {
        try and?.validate()
        try tag?.validate()
    }
}

public struct MultipartUpload: Codable, Equatable {
    public var initiated: Initiated?
    public var initiator: Initiator?
    public var key: ObjectKey?
    public var owner: Owner?
    public var storageClass: StorageClass?
    public var uploadId: MultipartUploadId?

    public init(initiated: Initiated? = nil,
                initiator: Initiator? = nil,
                key: ObjectKey? = nil,
                owner: Owner? = nil,
                storageClass: StorageClass? = nil,
                uploadId: MultipartUploadId? = nil) {
        self.initiated = initiated
        self.initiator = initiator
        self.key = key
        self.owner = owner
        self.storageClass = storageClass
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case initiated = "Initiated"
        case initiator = "Initiator"
        case key = "Key"
        case owner = "Owner"
        case storageClass = "StorageClass"
        case uploadId = "UploadId"
    }

    public func validate() throws {
        try initiator?.validate()
        try key?.validateAsObjectKey()
        try owner?.validate()
    }
}

public struct NoSuchBucket: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct NoSuchKey: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct NoSuchUpload: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct NoncurrentVersionExpiration: Codable, Equatable {
    public var noncurrentDays: Days?

    public init(noncurrentDays: Days? = nil) {
        self.noncurrentDays = noncurrentDays
    }

    enum CodingKeys: String, CodingKey {
        case noncurrentDays = "NoncurrentDays"
    }

    public func validate() throws {
    }
}

public struct NoncurrentVersionTransition: Codable, Equatable {
    public var noncurrentDays: Days?
    public var storageClass: TransitionStorageClass?

    public init(noncurrentDays: Days? = nil,
                storageClass: TransitionStorageClass? = nil) {
        self.noncurrentDays = noncurrentDays
        self.storageClass = storageClass
    }

    enum CodingKeys: String, CodingKey {
        case noncurrentDays = "NoncurrentDays"
        case storageClass = "StorageClass"
    }

    public func validate() throws {
    }
}

public struct NotificationConfiguration: Codable, Equatable {
    public var lambdaFunctionConfigurations: LambdaFunctionConfigurationList?
    public var queueConfigurations: QueueConfigurationList?
    public var topicConfigurations: TopicConfigurationList?

    public init(lambdaFunctionConfigurations: LambdaFunctionConfigurationList? = nil,
                queueConfigurations: QueueConfigurationList? = nil,
                topicConfigurations: TopicConfigurationList? = nil) {
        self.lambdaFunctionConfigurations = lambdaFunctionConfigurations
        self.queueConfigurations = queueConfigurations
        self.topicConfigurations = topicConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case lambdaFunctionConfigurations = "CloudFunctionConfiguration"
        case queueConfigurations = "QueueConfiguration"
        case topicConfigurations = "TopicConfiguration"
    }

    public func validate() throws {
    }
}

public struct NotificationConfigurationDeprecated: Codable, Equatable {
    public var cloudFunctionConfiguration: CloudFunctionConfiguration?
    public var queueConfiguration: QueueConfigurationDeprecated?
    public var topicConfiguration: TopicConfigurationDeprecated?

    public init(cloudFunctionConfiguration: CloudFunctionConfiguration? = nil,
                queueConfiguration: QueueConfigurationDeprecated? = nil,
                topicConfiguration: TopicConfigurationDeprecated? = nil) {
        self.cloudFunctionConfiguration = cloudFunctionConfiguration
        self.queueConfiguration = queueConfiguration
        self.topicConfiguration = topicConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case cloudFunctionConfiguration = "CloudFunctionConfiguration"
        case queueConfiguration = "QueueConfiguration"
        case topicConfiguration = "TopicConfiguration"
    }

    public func validate() throws {
        try cloudFunctionConfiguration?.validate()
        try queueConfiguration?.validate()
        try topicConfiguration?.validate()
    }
}

public struct NotificationConfigurationFilter: Codable, Equatable {
    public var key: S3KeyFilter?

    public init(key: S3KeyFilter? = nil) {
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case key = "S3Key"
    }

    public func validate() throws {
        try key?.validate()
    }
}

public struct Object: Codable, Equatable {
    public var eTag: ETag?
    public var key: ObjectKey?
    public var lastModified: LastModified?
    public var owner: Owner?
    public var size: Size?
    public var storageClass: ObjectStorageClass?

    public init(eTag: ETag? = nil,
                key: ObjectKey? = nil,
                lastModified: LastModified? = nil,
                owner: Owner? = nil,
                size: Size? = nil,
                storageClass: ObjectStorageClass? = nil) {
        self.eTag = eTag
        self.key = key
        self.lastModified = lastModified
        self.owner = owner
        self.size = size
        self.storageClass = storageClass
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case key = "Key"
        case lastModified = "LastModified"
        case owner = "Owner"
        case size = "Size"
        case storageClass = "StorageClass"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
        try owner?.validate()
    }
}

public struct ObjectAlreadyInActiveTierError: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ObjectIdentifier: Codable, Equatable {
    public var key: ObjectKey
    public var versionId: ObjectVersionId?

    public init(key: ObjectKey,
                versionId: ObjectVersionId? = nil) {
        self.key = key
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct ObjectLockConfiguration: Codable, Equatable {
    public var objectLockEnabled: ObjectLockEnabled?
    public var rule: ObjectLockRule?

    public init(objectLockEnabled: ObjectLockEnabled? = nil,
                rule: ObjectLockRule? = nil) {
        self.objectLockEnabled = objectLockEnabled
        self.rule = rule
    }

    enum CodingKeys: String, CodingKey {
        case objectLockEnabled = "ObjectLockEnabled"
        case rule = "Rule"
    }

    public func validate() throws {
        try rule?.validate()
    }
}

public struct ObjectLockLegalHold: Codable, Equatable {
    public var status: ObjectLockLegalHoldStatus?

    public init(status: ObjectLockLegalHoldStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct ObjectLockRetention: Codable, Equatable {
    public var mode: ObjectLockRetentionMode?
    public var retainUntilDate: Date?

    public init(mode: ObjectLockRetentionMode? = nil,
                retainUntilDate: Date? = nil) {
        self.mode = mode
        self.retainUntilDate = retainUntilDate
    }

    enum CodingKeys: String, CodingKey {
        case mode = "Mode"
        case retainUntilDate = "RetainUntilDate"
    }

    public func validate() throws {
    }
}

public struct ObjectLockRule: Codable, Equatable {
    public var defaultRetention: DefaultRetention?

    public init(defaultRetention: DefaultRetention? = nil) {
        self.defaultRetention = defaultRetention
    }

    enum CodingKeys: String, CodingKey {
        case defaultRetention = "DefaultRetention"
    }

    public func validate() throws {
        try defaultRetention?.validate()
    }
}

public struct ObjectNotInActiveTierError: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ObjectVersion: Codable, Equatable {
    public var eTag: ETag?
    public var isLatest: IsLatest?
    public var key: ObjectKey?
    public var lastModified: LastModified?
    public var owner: Owner?
    public var size: Size?
    public var storageClass: ObjectVersionStorageClass?
    public var versionId: ObjectVersionId?

    public init(eTag: ETag? = nil,
                isLatest: IsLatest? = nil,
                key: ObjectKey? = nil,
                lastModified: LastModified? = nil,
                owner: Owner? = nil,
                size: Size? = nil,
                storageClass: ObjectVersionStorageClass? = nil,
                versionId: ObjectVersionId? = nil) {
        self.eTag = eTag
        self.isLatest = isLatest
        self.key = key
        self.lastModified = lastModified
        self.owner = owner
        self.size = size
        self.storageClass = storageClass
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case isLatest = "IsLatest"
        case key = "Key"
        case lastModified = "LastModified"
        case owner = "Owner"
        case size = "Size"
        case storageClass = "StorageClass"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try key?.validateAsObjectKey()
        try owner?.validate()
    }
}

public struct OutputLocation: Codable, Equatable {
    public var s3: S3Location?

    public init(s3: S3Location? = nil) {
        self.s3 = s3
    }

    enum CodingKeys: String, CodingKey {
        case s3 = "S3"
    }

    public func validate() throws {
        try s3?.validate()
    }
}

public struct OutputSerialization: Codable, Equatable {
    public var cSV: CSVOutput?
    public var jSON: JSONOutput?

    public init(cSV: CSVOutput? = nil,
                jSON: JSONOutput? = nil) {
        self.cSV = cSV
        self.jSON = jSON
    }

    enum CodingKeys: String, CodingKey {
        case cSV = "CSV"
        case jSON = "JSON"
    }

    public func validate() throws {
        try cSV?.validate()
        try jSON?.validate()
    }
}

public struct Owner: Codable, Equatable {
    public var displayName: DisplayName?
    public var iD: ID?

    public init(displayName: DisplayName? = nil,
                iD: ID? = nil) {
        self.displayName = displayName
        self.iD = iD
    }

    enum CodingKeys: String, CodingKey {
        case displayName = "DisplayName"
        case iD = "ID"
    }

    public func validate() throws {
    }
}

public struct ParquetInput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Part: Codable, Equatable {
    public var eTag: ETag?
    public var lastModified: LastModified?
    public var partNumber: PartNumber?
    public var size: Size?

    public init(eTag: ETag? = nil,
                lastModified: LastModified? = nil,
                partNumber: PartNumber? = nil,
                size: Size? = nil) {
        self.eTag = eTag
        self.lastModified = lastModified
        self.partNumber = partNumber
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case lastModified = "LastModified"
        case partNumber = "PartNumber"
        case size = "Size"
    }

    public func validate() throws {
    }
}

public struct PolicyStatus: Codable, Equatable {
    public var isPublic: IsPublic?

    public init(isPublic: IsPublic? = nil) {
        self.isPublic = isPublic
    }

    enum CodingKeys: String, CodingKey {
        case isPublic = "IsPublic"
    }

    public func validate() throws {
    }
}

public struct Progress: Codable, Equatable {
    public var bytesProcessed: BytesProcessed?
    public var bytesReturned: BytesReturned?
    public var bytesScanned: BytesScanned?

    public init(bytesProcessed: BytesProcessed? = nil,
                bytesReturned: BytesReturned? = nil,
                bytesScanned: BytesScanned? = nil) {
        self.bytesProcessed = bytesProcessed
        self.bytesReturned = bytesReturned
        self.bytesScanned = bytesScanned
    }

    enum CodingKeys: String, CodingKey {
        case bytesProcessed = "BytesProcessed"
        case bytesReturned = "BytesReturned"
        case bytesScanned = "BytesScanned"
    }

    public func validate() throws {
    }
}

public struct ProgressEvent: Codable, Equatable {
    public var details: Progress?

    public init(details: Progress? = nil) {
        self.details = details
    }

    enum CodingKeys: String, CodingKey {
        case details = "Details"
    }

    public func validate() throws {
        try details?.validate()
    }
}

public struct PublicAccessBlockConfiguration: Codable, Equatable {
    public var blockPublicAcls: Setting?
    public var blockPublicPolicy: Setting?
    public var ignorePublicAcls: Setting?
    public var restrictPublicBuckets: Setting?

    public init(blockPublicAcls: Setting? = nil,
                blockPublicPolicy: Setting? = nil,
                ignorePublicAcls: Setting? = nil,
                restrictPublicBuckets: Setting? = nil) {
        self.blockPublicAcls = blockPublicAcls
        self.blockPublicPolicy = blockPublicPolicy
        self.ignorePublicAcls = ignorePublicAcls
        self.restrictPublicBuckets = restrictPublicBuckets
    }

    enum CodingKeys: String, CodingKey {
        case blockPublicAcls = "BlockPublicAcls"
        case blockPublicPolicy = "BlockPublicPolicy"
        case ignorePublicAcls = "IgnorePublicAcls"
        case restrictPublicBuckets = "RestrictPublicBuckets"
    }

    public func validate() throws {
    }
}

public struct PutBucketAccelerateConfigurationRequest: Codable, Equatable {
    public var accelerateConfiguration: AccelerateConfiguration
    public var bucket: BucketName

    public init(accelerateConfiguration: AccelerateConfiguration,
                bucket: BucketName) {
        self.accelerateConfiguration = accelerateConfiguration
        self.bucket = bucket
    }

    enum CodingKeys: String, CodingKey {
        case accelerateConfiguration = "AccelerateConfiguration"
        case bucket = "Bucket"
    }

    public func validate() throws {
        try accelerateConfiguration.validate()
    }
}

public struct PutBucketAclRequest: Codable, Equatable {
    public var aCL: BucketCannedACL?
    public var accessControlPolicy: AccessControlPolicy?
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWrite: GrantWrite?
    public var grantWriteACP: GrantWriteACP?

    public init(aCL: BucketCannedACL? = nil,
                accessControlPolicy: AccessControlPolicy? = nil,
                bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWrite: GrantWrite? = nil,
                grantWriteACP: GrantWriteACP? = nil) {
        self.aCL = aCL
        self.accessControlPolicy = accessControlPolicy
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWrite = grantWrite
        self.grantWriteACP = grantWriteACP
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case accessControlPolicy = "AccessControlPolicy"
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWrite = "x-amz-grant-write"
        case grantWriteACP = "x-amz-grant-write-acp"
    }

    public func validate() throws {
        try accessControlPolicy?.validate()
    }
}

public struct PutBucketAnalyticsConfigurationRequest: Codable, Equatable {
    public var analyticsConfiguration: AnalyticsConfiguration
    public var bucket: BucketName
    public var id: AnalyticsId

    public init(analyticsConfiguration: AnalyticsConfiguration,
                bucket: BucketName,
                id: AnalyticsId) {
        self.analyticsConfiguration = analyticsConfiguration
        self.bucket = bucket
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case analyticsConfiguration = "AnalyticsConfiguration"
        case bucket = "Bucket"
        case id
    }

    public func validate() throws {
        try analyticsConfiguration.validate()
    }
}

public struct PutBucketCorsRequest: Codable, Equatable {
    public var bucket: BucketName
    public var cORSConfiguration: CORSConfiguration
    public var contentMD5: ContentMD5?

    public init(bucket: BucketName,
                cORSConfiguration: CORSConfiguration,
                contentMD5: ContentMD5? = nil) {
        self.bucket = bucket
        self.cORSConfiguration = cORSConfiguration
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case cORSConfiguration = "CORSConfiguration"
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
        try cORSConfiguration.validate()
    }
}

public struct PutBucketEncryptionRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.serverSideEncryptionConfiguration = serverSideEncryptionConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case serverSideEncryptionConfiguration = "ServerSideEncryptionConfiguration"
    }

    public func validate() throws {
        try serverSideEncryptionConfiguration.validate()
    }
}

public struct PutBucketInventoryConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: InventoryId
    public var inventoryConfiguration: InventoryConfiguration

    public init(bucket: BucketName,
                id: InventoryId,
                inventoryConfiguration: InventoryConfiguration) {
        self.bucket = bucket
        self.id = id
        self.inventoryConfiguration = inventoryConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
        case inventoryConfiguration = "InventoryConfiguration"
    }

    public func validate() throws {
        try inventoryConfiguration.validate()
    }
}

public struct PutBucketLifecycleConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var lifecycleConfiguration: BucketLifecycleConfiguration?

    public init(bucket: BucketName,
                lifecycleConfiguration: BucketLifecycleConfiguration? = nil) {
        self.bucket = bucket
        self.lifecycleConfiguration = lifecycleConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case lifecycleConfiguration = "LifecycleConfiguration"
    }

    public func validate() throws {
        try lifecycleConfiguration?.validate()
    }
}

public struct PutBucketLifecycleRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var lifecycleConfiguration: LifecycleConfiguration?

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                lifecycleConfiguration: LifecycleConfiguration? = nil) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.lifecycleConfiguration = lifecycleConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case lifecycleConfiguration = "LifecycleConfiguration"
    }

    public func validate() throws {
        try lifecycleConfiguration?.validate()
    }
}

public struct PutBucketLoggingRequest: Codable, Equatable {
    public var bucket: BucketName
    public var bucketLoggingStatus: BucketLoggingStatus
    public var contentMD5: ContentMD5?

    public init(bucket: BucketName,
                bucketLoggingStatus: BucketLoggingStatus,
                contentMD5: ContentMD5? = nil) {
        self.bucket = bucket
        self.bucketLoggingStatus = bucketLoggingStatus
        self.contentMD5 = contentMD5
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case bucketLoggingStatus = "BucketLoggingStatus"
        case contentMD5 = "Content-MD5"
    }

    public func validate() throws {
        try bucketLoggingStatus.validate()
    }
}

public struct PutBucketMetricsConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var id: MetricsId
    public var metricsConfiguration: MetricsConfiguration

    public init(bucket: BucketName,
                id: MetricsId,
                metricsConfiguration: MetricsConfiguration) {
        self.bucket = bucket
        self.id = id
        self.metricsConfiguration = metricsConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case id
        case metricsConfiguration = "MetricsConfiguration"
    }

    public func validate() throws {
        try metricsConfiguration.validate()
    }
}

public struct PutBucketNotificationConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var notificationConfiguration: NotificationConfiguration

    public init(bucket: BucketName,
                notificationConfiguration: NotificationConfiguration) {
        self.bucket = bucket
        self.notificationConfiguration = notificationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case notificationConfiguration = "NotificationConfiguration"
    }

    public func validate() throws {
        try notificationConfiguration.validate()
    }
}

public struct PutBucketNotificationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var notificationConfiguration: NotificationConfigurationDeprecated

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                notificationConfiguration: NotificationConfigurationDeprecated) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.notificationConfiguration = notificationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case notificationConfiguration = "NotificationConfiguration"
    }

    public func validate() throws {
        try notificationConfiguration.validate()
    }
}

public struct PutBucketPolicyRequest: Codable, Equatable {
    public var bucket: BucketName
    public var confirmRemoveSelfBucketAccess: ConfirmRemoveSelfBucketAccess?
    public var contentMD5: ContentMD5?
    public var policy: Policy

    public init(bucket: BucketName,
                confirmRemoveSelfBucketAccess: ConfirmRemoveSelfBucketAccess? = nil,
                contentMD5: ContentMD5? = nil,
                policy: Policy) {
        self.bucket = bucket
        self.confirmRemoveSelfBucketAccess = confirmRemoveSelfBucketAccess
        self.contentMD5 = contentMD5
        self.policy = policy
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case confirmRemoveSelfBucketAccess = "x-amz-confirm-remove-self-bucket-access"
        case contentMD5 = "Content-MD5"
        case policy = "Policy"
    }

    public func validate() throws {
    }
}

public struct PutBucketReplicationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var replicationConfiguration: ReplicationConfiguration

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                replicationConfiguration: ReplicationConfiguration) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.replicationConfiguration = replicationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case replicationConfiguration = "ReplicationConfiguration"
    }

    public func validate() throws {
        try replicationConfiguration.validate()
    }
}

public struct PutBucketRequestPaymentRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var requestPaymentConfiguration: RequestPaymentConfiguration

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                requestPaymentConfiguration: RequestPaymentConfiguration) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.requestPaymentConfiguration = requestPaymentConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case requestPaymentConfiguration = "RequestPaymentConfiguration"
    }

    public func validate() throws {
        try requestPaymentConfiguration.validate()
    }
}

public struct PutBucketTaggingRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var tagging: Tagging

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                tagging: Tagging) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.tagging = tagging
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case tagging = "Tagging"
    }

    public func validate() throws {
        try tagging.validate()
    }
}

public struct PutBucketVersioningRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var mFA: MFA?
    public var versioningConfiguration: VersioningConfiguration

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                mFA: MFA? = nil,
                versioningConfiguration: VersioningConfiguration) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.mFA = mFA
        self.versioningConfiguration = versioningConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case mFA = "x-amz-mfa"
        case versioningConfiguration = "VersioningConfiguration"
    }

    public func validate() throws {
        try versioningConfiguration.validate()
    }
}

public struct PutBucketWebsiteRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var websiteConfiguration: WebsiteConfiguration

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                websiteConfiguration: WebsiteConfiguration) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.websiteConfiguration = websiteConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case websiteConfiguration = "WebsiteConfiguration"
    }

    public func validate() throws {
        try websiteConfiguration.validate()
    }
}

public struct PutObjectAclOutput: Codable, Equatable {
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

public struct PutObjectAclRequest: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var accessControlPolicy: AccessControlPolicy?
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var grantFullControl: GrantFullControl?
    public var grantRead: GrantRead?
    public var grantReadACP: GrantReadACP?
    public var grantWrite: GrantWrite?
    public var grantWriteACP: GrantWriteACP?
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var versionId: ObjectVersionId?

    public init(aCL: ObjectCannedACL? = nil,
                accessControlPolicy: AccessControlPolicy? = nil,
                bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                grantFullControl: GrantFullControl? = nil,
                grantRead: GrantRead? = nil,
                grantReadACP: GrantReadACP? = nil,
                grantWrite: GrantWrite? = nil,
                grantWriteACP: GrantWriteACP? = nil,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                versionId: ObjectVersionId? = nil) {
        self.aCL = aCL
        self.accessControlPolicy = accessControlPolicy
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.grantFullControl = grantFullControl
        self.grantRead = grantRead
        self.grantReadACP = grantReadACP
        self.grantWrite = grantWrite
        self.grantWriteACP = grantWriteACP
        self.key = key
        self.requestPayer = requestPayer
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case aCL = "x-amz-acl"
        case accessControlPolicy = "AccessControlPolicy"
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case grantFullControl = "x-amz-grant-full-control"
        case grantRead = "x-amz-grant-read"
        case grantReadACP = "x-amz-grant-read-acp"
        case grantWrite = "x-amz-grant-write"
        case grantWriteACP = "x-amz-grant-write-acp"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case versionId
    }

    public func validate() throws {
        try accessControlPolicy?.validate()
        try key.validateAsObjectKey()
    }
}

public struct PutObjectLegalHoldOutput: Codable, Equatable {
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

public struct PutObjectLegalHoldRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var key: ObjectKey
    public var legalHold: ObjectLockLegalHold?
    public var requestPayer: RequestPayer?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                key: ObjectKey,
                legalHold: ObjectLockLegalHold? = nil,
                requestPayer: RequestPayer? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.key = key
        self.legalHold = legalHold
        self.requestPayer = requestPayer
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case key = "Key"
        case legalHold = "LegalHold"
        case requestPayer = "x-amz-request-payer"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
        try legalHold?.validate()
    }
}

public struct PutObjectLockConfigurationOutput: Codable, Equatable {
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

public struct PutObjectLockConfigurationRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var objectLockConfiguration: ObjectLockConfiguration?
    public var requestPayer: RequestPayer?
    public var token: ObjectLockToken?

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                objectLockConfiguration: ObjectLockConfiguration? = nil,
                requestPayer: RequestPayer? = nil,
                token: ObjectLockToken? = nil) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.objectLockConfiguration = objectLockConfiguration
        self.requestPayer = requestPayer
        self.token = token
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case objectLockConfiguration = "ObjectLockConfiguration"
        case requestPayer = "x-amz-request-payer"
        case token = "x-amz-bucket-object-lock-token"
    }

    public func validate() throws {
        try objectLockConfiguration?.validate()
    }
}

public struct PutObjectOutput: Codable, Equatable {
    public var eTag: ETag?
    public var expiration: Expiration?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?
    public var versionId: ObjectVersionId?

    public init(eTag: ETag? = nil,
                expiration: Expiration? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil,
                versionId: ObjectVersionId? = nil) {
        self.eTag = eTag
        self.expiration = expiration
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
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

public struct PutObjectRequest: Codable, Equatable {
    public var aCL: ObjectCannedACL?
    public var body: Body?
    public var bucket: BucketName
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
    public var key: ObjectKey
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
                body: Body? = nil,
                bucket: BucketName,
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
                key: ObjectKey,
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
        self.body = body
        self.bucket = bucket
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
        self.key = key
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
        case body = "Body"
        case bucket = "Bucket"
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
        case key = "Key"
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
        try key.validateAsObjectKey()
    }
}

public struct PutObjectRetentionOutput: Codable, Equatable {
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

public struct PutObjectRetentionRequest: Codable, Equatable {
    public var bucket: BucketName
    public var bypassGovernanceRetention: BypassGovernanceRetention?
    public var contentMD5: ContentMD5?
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var retention: ObjectLockRetention?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                bypassGovernanceRetention: BypassGovernanceRetention? = nil,
                contentMD5: ContentMD5? = nil,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                retention: ObjectLockRetention? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.contentMD5 = contentMD5
        self.key = key
        self.requestPayer = requestPayer
        self.retention = retention
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case bypassGovernanceRetention = "x-amz-bypass-governance-retention"
        case contentMD5 = "Content-MD5"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case retention = "Retention"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
        try retention?.validate()
    }
}

public struct PutObjectTaggingOutput: Codable, Equatable {
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

public struct PutObjectTaggingRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var key: ObjectKey
    public var tagging: Tagging
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                key: ObjectKey,
                tagging: Tagging,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.key = key
        self.tagging = tagging
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case key = "Key"
        case tagging = "Tagging"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
        try tagging.validate()
    }
}

public struct PutPublicAccessBlockRequest: Codable, Equatable {
    public var bucket: BucketName
    public var contentMD5: ContentMD5?
    public var publicAccessBlockConfiguration: PublicAccessBlockConfiguration

    public init(bucket: BucketName,
                contentMD5: ContentMD5? = nil,
                publicAccessBlockConfiguration: PublicAccessBlockConfiguration) {
        self.bucket = bucket
        self.contentMD5 = contentMD5
        self.publicAccessBlockConfiguration = publicAccessBlockConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case contentMD5 = "Content-MD5"
        case publicAccessBlockConfiguration = "PublicAccessBlockConfiguration"
    }

    public func validate() throws {
        try publicAccessBlockConfiguration.validate()
    }
}

public struct QueueConfiguration: Codable, Equatable {
    public var events: EventList
    public var filter: NotificationConfigurationFilter?
    public var id: NotificationId?
    public var queueArn: QueueArn

    public init(events: EventList,
                filter: NotificationConfigurationFilter? = nil,
                id: NotificationId? = nil,
                queueArn: QueueArn) {
        self.events = events
        self.filter = filter
        self.id = id
        self.queueArn = queueArn
    }

    enum CodingKeys: String, CodingKey {
        case events = "Event"
        case filter = "Filter"
        case id = "Id"
        case queueArn = "Queue"
    }

    public func validate() throws {
        try filter?.validate()
    }
}

public struct QueueConfigurationDeprecated: Codable, Equatable {
    public var events: EventList?
    public var id: NotificationId?
    public var queue: QueueArn?

    public init(events: EventList? = nil,
                id: NotificationId? = nil,
                queue: QueueArn? = nil) {
        self.events = events
        self.id = id
        self.queue = queue
    }

    enum CodingKeys: String, CodingKey {
        case events = "Event"
        case id = "Id"
        case queue = "Queue"
    }

    public func validate() throws {
    }
}

public struct RecordsEvent: Codable, Equatable {
    public var payload: Body?

    public init(payload: Body? = nil) {
        self.payload = payload
    }

    enum CodingKeys: String, CodingKey {
        case payload = "Payload"
    }

    public func validate() throws {
    }
}

public struct Redirect: Codable, Equatable {
    public var hostName: HostName?
    public var httpRedirectCode: HttpRedirectCode?
    public var `protocol`: Protocol?
    public var replaceKeyPrefixWith: ReplaceKeyPrefixWith?
    public var replaceKeyWith: ReplaceKeyWith?

    public init(hostName: HostName? = nil,
                httpRedirectCode: HttpRedirectCode? = nil,
                `protocol`: Protocol? = nil,
                replaceKeyPrefixWith: ReplaceKeyPrefixWith? = nil,
                replaceKeyWith: ReplaceKeyWith? = nil) {
        self.hostName = hostName
        self.httpRedirectCode = httpRedirectCode
        self.`protocol` = `protocol`
        self.replaceKeyPrefixWith = replaceKeyPrefixWith
        self.replaceKeyWith = replaceKeyWith
    }

    enum CodingKeys: String, CodingKey {
        case hostName = "HostName"
        case httpRedirectCode = "HttpRedirectCode"
        case `protocol` = "Protocol"
        case replaceKeyPrefixWith = "ReplaceKeyPrefixWith"
        case replaceKeyWith = "ReplaceKeyWith"
    }

    public func validate() throws {
    }
}

public struct RedirectAllRequestsTo: Codable, Equatable {
    public var hostName: HostName
    public var `protocol`: Protocol?

    public init(hostName: HostName,
                `protocol`: Protocol? = nil) {
        self.hostName = hostName
        self.`protocol` = `protocol`
    }

    enum CodingKeys: String, CodingKey {
        case hostName = "HostName"
        case `protocol` = "Protocol"
    }

    public func validate() throws {
    }
}

public struct ReplicationConfiguration: Codable, Equatable {
    public var role: Role
    public var rules: ReplicationRules

    public init(role: Role,
                rules: ReplicationRules) {
        self.role = role
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case role = "Role"
        case rules = "Rule"
    }

    public func validate() throws {
    }
}

public struct ReplicationRule: Codable, Equatable {
    public var deleteMarkerReplication: DeleteMarkerReplication?
    public var destination: Destination
    public var filter: ReplicationRuleFilter?
    public var iD: ID?
    public var priority: Priority?
    public var sourceSelectionCriteria: SourceSelectionCriteria?
    public var status: ReplicationRuleStatus

    public init(deleteMarkerReplication: DeleteMarkerReplication? = nil,
                destination: Destination,
                filter: ReplicationRuleFilter? = nil,
                iD: ID? = nil,
                priority: Priority? = nil,
                sourceSelectionCriteria: SourceSelectionCriteria? = nil,
                status: ReplicationRuleStatus) {
        self.deleteMarkerReplication = deleteMarkerReplication
        self.destination = destination
        self.filter = filter
        self.iD = iD
        self.priority = priority
        self.sourceSelectionCriteria = sourceSelectionCriteria
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case deleteMarkerReplication = "DeleteMarkerReplication"
        case destination = "Destination"
        case filter = "Filter"
        case iD = "ID"
        case priority = "Priority"
        case sourceSelectionCriteria = "SourceSelectionCriteria"
        case status = "Status"
    }

    public func validate() throws {
        try deleteMarkerReplication?.validate()
        try destination.validate()
        try filter?.validate()
        try sourceSelectionCriteria?.validate()
    }
}

public struct ReplicationRuleAndOperator: Codable, Equatable {
    public var prefix: Prefix?
    public var tags: TagSet?

    public init(prefix: Prefix? = nil,
                tags: TagSet? = nil) {
        self.prefix = prefix
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case prefix = "Prefix"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct ReplicationRuleFilter: Codable, Equatable {
    public var and: ReplicationRuleAndOperator?
    public var prefix: Prefix?
    public var tag: Tag?

    public init(and: ReplicationRuleAndOperator? = nil,
                prefix: Prefix? = nil,
                tag: Tag? = nil) {
        self.and = and
        self.prefix = prefix
        self.tag = tag
    }

    enum CodingKeys: String, CodingKey {
        case and = "And"
        case prefix = "Prefix"
        case tag = "Tag"
    }

    public func validate() throws {
        try and?.validate()
        try tag?.validate()
    }
}

public struct RequestPaymentConfiguration: Codable, Equatable {
    public var payer: Payer

    public init(payer: Payer) {
        self.payer = payer
    }

    enum CodingKeys: String, CodingKey {
        case payer = "Payer"
    }

    public func validate() throws {
    }
}

public struct RequestProgress: Codable, Equatable {
    public var enabled: EnableRequestProgress?

    public init(enabled: EnableRequestProgress? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
    }

    public func validate() throws {
    }
}

public struct RestoreObjectOutput: Codable, Equatable {
    public var requestCharged: RequestCharged?
    public var restoreOutputPath: RestoreOutputPath?

    public init(requestCharged: RequestCharged? = nil,
                restoreOutputPath: RestoreOutputPath? = nil) {
        self.requestCharged = requestCharged
        self.restoreOutputPath = restoreOutputPath
    }

    enum CodingKeys: String, CodingKey {
        case requestCharged = "x-amz-request-charged"
        case restoreOutputPath = "x-amz-restore-output-path"
    }

    public func validate() throws {
    }
}

public struct RestoreObjectRequest: Codable, Equatable {
    public var bucket: BucketName
    public var key: ObjectKey
    public var requestPayer: RequestPayer?
    public var restoreRequest: RestoreRequest?
    public var versionId: ObjectVersionId?

    public init(bucket: BucketName,
                key: ObjectKey,
                requestPayer: RequestPayer? = nil,
                restoreRequest: RestoreRequest? = nil,
                versionId: ObjectVersionId? = nil) {
        self.bucket = bucket
        self.key = key
        self.requestPayer = requestPayer
        self.restoreRequest = restoreRequest
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case key = "Key"
        case requestPayer = "x-amz-request-payer"
        case restoreRequest = "RestoreRequest"
        case versionId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
        try restoreRequest?.validate()
    }
}

public struct RestoreRequest: Codable, Equatable {
    public var days: Days?
    public var description: Description?
    public var glacierJobParameters: GlacierJobParameters?
    public var outputLocation: OutputLocation?
    public var selectParameters: SelectParameters?
    public var tier: Tier?
    public var type: RestoreRequestType?

    public init(days: Days? = nil,
                description: Description? = nil,
                glacierJobParameters: GlacierJobParameters? = nil,
                outputLocation: OutputLocation? = nil,
                selectParameters: SelectParameters? = nil,
                tier: Tier? = nil,
                type: RestoreRequestType? = nil) {
        self.days = days
        self.description = description
        self.glacierJobParameters = glacierJobParameters
        self.outputLocation = outputLocation
        self.selectParameters = selectParameters
        self.tier = tier
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case days = "Days"
        case description = "Description"
        case glacierJobParameters = "GlacierJobParameters"
        case outputLocation = "OutputLocation"
        case selectParameters = "SelectParameters"
        case tier = "Tier"
        case type = "Type"
    }

    public func validate() throws {
        try glacierJobParameters?.validate()
        try outputLocation?.validate()
        try selectParameters?.validate()
    }
}

public struct RoutingRule: Codable, Equatable {
    public var condition: Condition?
    public var redirect: Redirect

    public init(condition: Condition? = nil,
                redirect: Redirect) {
        self.condition = condition
        self.redirect = redirect
    }

    enum CodingKeys: String, CodingKey {
        case condition = "Condition"
        case redirect = "Redirect"
    }

    public func validate() throws {
        try condition?.validate()
        try redirect.validate()
    }
}

public struct Rule: Codable, Equatable {
    public var abortIncompleteMultipartUpload: AbortIncompleteMultipartUpload?
    public var expiration: LifecycleExpiration?
    public var iD: ID?
    public var noncurrentVersionExpiration: NoncurrentVersionExpiration?
    public var noncurrentVersionTransition: NoncurrentVersionTransition?
    public var prefix: Prefix
    public var status: ExpirationStatus
    public var transition: Transition?

    public init(abortIncompleteMultipartUpload: AbortIncompleteMultipartUpload? = nil,
                expiration: LifecycleExpiration? = nil,
                iD: ID? = nil,
                noncurrentVersionExpiration: NoncurrentVersionExpiration? = nil,
                noncurrentVersionTransition: NoncurrentVersionTransition? = nil,
                prefix: Prefix,
                status: ExpirationStatus,
                transition: Transition? = nil) {
        self.abortIncompleteMultipartUpload = abortIncompleteMultipartUpload
        self.expiration = expiration
        self.iD = iD
        self.noncurrentVersionExpiration = noncurrentVersionExpiration
        self.noncurrentVersionTransition = noncurrentVersionTransition
        self.prefix = prefix
        self.status = status
        self.transition = transition
    }

    enum CodingKeys: String, CodingKey {
        case abortIncompleteMultipartUpload = "AbortIncompleteMultipartUpload"
        case expiration = "Expiration"
        case iD = "ID"
        case noncurrentVersionExpiration = "NoncurrentVersionExpiration"
        case noncurrentVersionTransition = "NoncurrentVersionTransition"
        case prefix = "Prefix"
        case status = "Status"
        case transition = "Transition"
    }

    public func validate() throws {
        try abortIncompleteMultipartUpload?.validate()
        try expiration?.validate()
        try noncurrentVersionExpiration?.validate()
        try noncurrentVersionTransition?.validate()
        try transition?.validate()
    }
}

public struct S3KeyFilter: Codable, Equatable {
    public var filterRules: FilterRuleList?

    public init(filterRules: FilterRuleList? = nil) {
        self.filterRules = filterRules
    }

    enum CodingKeys: String, CodingKey {
        case filterRules = "FilterRule"
    }

    public func validate() throws {
    }
}

public struct S3Location: Codable, Equatable {
    public var accessControlList: Grants?
    public var bucketName: BucketName
    public var cannedACL: ObjectCannedACL?
    public var encryption: Encryption?
    public var prefix: LocationPrefix
    public var storageClass: StorageClass?
    public var tagging: Tagging?
    public var userMetadata: UserMetadata?

    public init(accessControlList: Grants? = nil,
                bucketName: BucketName,
                cannedACL: ObjectCannedACL? = nil,
                encryption: Encryption? = nil,
                prefix: LocationPrefix,
                storageClass: StorageClass? = nil,
                tagging: Tagging? = nil,
                userMetadata: UserMetadata? = nil) {
        self.accessControlList = accessControlList
        self.bucketName = bucketName
        self.cannedACL = cannedACL
        self.encryption = encryption
        self.prefix = prefix
        self.storageClass = storageClass
        self.tagging = tagging
        self.userMetadata = userMetadata
    }

    enum CodingKeys: String, CodingKey {
        case accessControlList = "AccessControlList"
        case bucketName = "BucketName"
        case cannedACL = "CannedACL"
        case encryption = "Encryption"
        case prefix = "Prefix"
        case storageClass = "StorageClass"
        case tagging = "Tagging"
        case userMetadata = "UserMetadata"
    }

    public func validate() throws {
        try encryption?.validate()
        try tagging?.validate()
    }
}

public struct SSEKMS: Codable, Equatable {
    public var keyId: SSEKMSKeyId

    public init(keyId: SSEKMSKeyId) {
        self.keyId = keyId
    }

    enum CodingKeys: String, CodingKey {
        case keyId = "KeyId"
    }

    public func validate() throws {
    }
}

public struct SSES3: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SelectObjectContentEventStream: Codable, Equatable {
    public var cont: ContinuationEvent?
    public var end: EndEvent?
    public var progress: ProgressEvent?
    public var records: RecordsEvent?
    public var stats: StatsEvent?

    public init(cont: ContinuationEvent? = nil,
                end: EndEvent? = nil,
                progress: ProgressEvent? = nil,
                records: RecordsEvent? = nil,
                stats: StatsEvent? = nil) {
        self.cont = cont
        self.end = end
        self.progress = progress
        self.records = records
        self.stats = stats
    }

    enum CodingKeys: String, CodingKey {
        case cont = "Cont"
        case end = "End"
        case progress = "Progress"
        case records = "Records"
        case stats = "Stats"
    }

    public func validate() throws {
        try cont?.validate()
        try end?.validate()
        try progress?.validate()
        try records?.validate()
        try stats?.validate()
    }
}

public struct SelectObjectContentOutput: Codable, Equatable {
    public var payload: SelectObjectContentEventStream?

    public init(payload: SelectObjectContentEventStream? = nil) {
        self.payload = payload
    }

    enum CodingKeys: String, CodingKey {
        case payload = "Payload"
    }

    public func validate() throws {
        try payload?.validate()
    }
}

public struct SelectObjectContentRequest: Codable, Equatable {
    public var bucket: BucketName
    public var expression: Expression
    public var expressionType: ExpressionType
    public var inputSerialization: InputSerialization
    public var key: ObjectKey
    public var outputSerialization: OutputSerialization
    public var requestProgress: RequestProgress?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?

    public init(bucket: BucketName,
                expression: Expression,
                expressionType: ExpressionType,
                inputSerialization: InputSerialization,
                key: ObjectKey,
                outputSerialization: OutputSerialization,
                requestProgress: RequestProgress? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil) {
        self.bucket = bucket
        self.expression = expression
        self.expressionType = expressionType
        self.inputSerialization = inputSerialization
        self.key = key
        self.outputSerialization = outputSerialization
        self.requestProgress = requestProgress
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case expression = "Expression"
        case expressionType = "ExpressionType"
        case inputSerialization = "InputSerialization"
        case key = "Key"
        case outputSerialization = "OutputSerialization"
        case requestProgress = "RequestProgress"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
    }

    public func validate() throws {
        try inputSerialization.validate()
        try key.validateAsObjectKey()
        try outputSerialization.validate()
        try requestProgress?.validate()
    }
}

public struct SelectParameters: Codable, Equatable {
    public var expression: Expression
    public var expressionType: ExpressionType
    public var inputSerialization: InputSerialization
    public var outputSerialization: OutputSerialization

    public init(expression: Expression,
                expressionType: ExpressionType,
                inputSerialization: InputSerialization,
                outputSerialization: OutputSerialization) {
        self.expression = expression
        self.expressionType = expressionType
        self.inputSerialization = inputSerialization
        self.outputSerialization = outputSerialization
    }

    enum CodingKeys: String, CodingKey {
        case expression = "Expression"
        case expressionType = "ExpressionType"
        case inputSerialization = "InputSerialization"
        case outputSerialization = "OutputSerialization"
    }

    public func validate() throws {
        try inputSerialization.validate()
        try outputSerialization.validate()
    }
}

public struct ServerSideEncryptionByDefault: Codable, Equatable {
    public var kMSMasterKeyID: SSEKMSKeyId?
    public var sSEAlgorithm: ServerSideEncryption

    public init(kMSMasterKeyID: SSEKMSKeyId? = nil,
                sSEAlgorithm: ServerSideEncryption) {
        self.kMSMasterKeyID = kMSMasterKeyID
        self.sSEAlgorithm = sSEAlgorithm
    }

    enum CodingKeys: String, CodingKey {
        case kMSMasterKeyID = "KMSMasterKeyID"
        case sSEAlgorithm = "SSEAlgorithm"
    }

    public func validate() throws {
    }
}

public struct ServerSideEncryptionConfiguration: Codable, Equatable {
    public var rules: ServerSideEncryptionRules

    public init(rules: ServerSideEncryptionRules) {
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case rules = "Rule"
    }

    public func validate() throws {
    }
}

public struct ServerSideEncryptionRule: Codable, Equatable {
    public var applyServerSideEncryptionByDefault: ServerSideEncryptionByDefault?

    public init(applyServerSideEncryptionByDefault: ServerSideEncryptionByDefault? = nil) {
        self.applyServerSideEncryptionByDefault = applyServerSideEncryptionByDefault
    }

    enum CodingKeys: String, CodingKey {
        case applyServerSideEncryptionByDefault = "ApplyServerSideEncryptionByDefault"
    }

    public func validate() throws {
        try applyServerSideEncryptionByDefault?.validate()
    }
}

public struct SourceSelectionCriteria: Codable, Equatable {
    public var sseKmsEncryptedObjects: SseKmsEncryptedObjects?

    public init(sseKmsEncryptedObjects: SseKmsEncryptedObjects? = nil) {
        self.sseKmsEncryptedObjects = sseKmsEncryptedObjects
    }

    enum CodingKeys: String, CodingKey {
        case sseKmsEncryptedObjects = "SseKmsEncryptedObjects"
    }

    public func validate() throws {
        try sseKmsEncryptedObjects?.validate()
    }
}

public struct SseKmsEncryptedObjects: Codable, Equatable {
    public var status: SseKmsEncryptedObjectsStatus

    public init(status: SseKmsEncryptedObjectsStatus) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct Stats: Codable, Equatable {
    public var bytesProcessed: BytesProcessed?
    public var bytesReturned: BytesReturned?
    public var bytesScanned: BytesScanned?

    public init(bytesProcessed: BytesProcessed? = nil,
                bytesReturned: BytesReturned? = nil,
                bytesScanned: BytesScanned? = nil) {
        self.bytesProcessed = bytesProcessed
        self.bytesReturned = bytesReturned
        self.bytesScanned = bytesScanned
    }

    enum CodingKeys: String, CodingKey {
        case bytesProcessed = "BytesProcessed"
        case bytesReturned = "BytesReturned"
        case bytesScanned = "BytesScanned"
    }

    public func validate() throws {
    }
}

public struct StatsEvent: Codable, Equatable {
    public var details: Stats?

    public init(details: Stats? = nil) {
        self.details = details
    }

    enum CodingKeys: String, CodingKey {
        case details = "Details"
    }

    public func validate() throws {
        try details?.validate()
    }
}

public struct StorageClassAnalysis: Codable, Equatable {
    public var dataExport: StorageClassAnalysisDataExport?

    public init(dataExport: StorageClassAnalysisDataExport? = nil) {
        self.dataExport = dataExport
    }

    enum CodingKeys: String, CodingKey {
        case dataExport = "DataExport"
    }

    public func validate() throws {
        try dataExport?.validate()
    }
}

public struct StorageClassAnalysisDataExport: Codable, Equatable {
    public var destination: AnalyticsExportDestination
    public var outputSchemaVersion: StorageClassAnalysisSchemaVersion

    public init(destination: AnalyticsExportDestination,
                outputSchemaVersion: StorageClassAnalysisSchemaVersion) {
        self.destination = destination
        self.outputSchemaVersion = outputSchemaVersion
    }

    enum CodingKeys: String, CodingKey {
        case destination = "Destination"
        case outputSchemaVersion = "OutputSchemaVersion"
    }

    public func validate() throws {
        try destination.validate()
    }
}

public struct Tag: Codable, Equatable {
    public var key: ObjectKey
    public var value: Value

    public init(key: ObjectKey,
                value: Value) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct Tagging: Codable, Equatable {
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

public struct TargetGrant: Codable, Equatable {
    public var grantee: Grantee?
    public var permission: BucketLogsPermission?

    public init(grantee: Grantee? = nil,
                permission: BucketLogsPermission? = nil) {
        self.grantee = grantee
        self.permission = permission
    }

    enum CodingKeys: String, CodingKey {
        case grantee = "Grantee"
        case permission = "Permission"
    }

    public func validate() throws {
        try grantee?.validate()
    }
}

public struct TopicConfiguration: Codable, Equatable {
    public var events: EventList
    public var filter: NotificationConfigurationFilter?
    public var id: NotificationId?
    public var topicArn: TopicArn

    public init(events: EventList,
                filter: NotificationConfigurationFilter? = nil,
                id: NotificationId? = nil,
                topicArn: TopicArn) {
        self.events = events
        self.filter = filter
        self.id = id
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case events = "Event"
        case filter = "Filter"
        case id = "Id"
        case topicArn = "Topic"
    }

    public func validate() throws {
        try filter?.validate()
    }
}

public struct TopicConfigurationDeprecated: Codable, Equatable {
    public var events: EventList?
    public var id: NotificationId?
    public var topic: TopicArn?

    public init(events: EventList? = nil,
                id: NotificationId? = nil,
                topic: TopicArn? = nil) {
        self.events = events
        self.id = id
        self.topic = topic
    }

    enum CodingKeys: String, CodingKey {
        case events = "Event"
        case id = "Id"
        case topic = "Topic"
    }

    public func validate() throws {
    }
}

public struct Transition: Codable, Equatable {
    public var date: Date?
    public var days: Days?
    public var storageClass: TransitionStorageClass?

    public init(date: Date? = nil,
                days: Days? = nil,
                storageClass: TransitionStorageClass? = nil) {
        self.date = date
        self.days = days
        self.storageClass = storageClass
    }

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case days = "Days"
        case storageClass = "StorageClass"
    }

    public func validate() throws {
    }
}

public struct UploadPartCopyOutput: Codable, Equatable {
    public var copyPartResult: CopyPartResult?
    public var copySourceVersionId: CopySourceVersionId?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?

    public init(copyPartResult: CopyPartResult? = nil,
                copySourceVersionId: CopySourceVersionId? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil) {
        self.copyPartResult = copyPartResult
        self.copySourceVersionId = copySourceVersionId
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
    }

    enum CodingKeys: String, CodingKey {
        case copyPartResult = "CopyPartResult"
        case copySourceVersionId = "x-amz-copy-source-version-id"
        case requestCharged = "x-amz-request-charged"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
    }

    public func validate() throws {
        try copyPartResult?.validate()
    }
}

public struct UploadPartCopyRequest: Codable, Equatable {
    public var bucket: BucketName
    public var copySource: CopySource
    public var copySourceIfMatch: CopySourceIfMatch?
    public var copySourceIfModifiedSince: CopySourceIfModifiedSince?
    public var copySourceIfNoneMatch: CopySourceIfNoneMatch?
    public var copySourceIfUnmodifiedSince: CopySourceIfUnmodifiedSince?
    public var copySourceRange: CopySourceRange?
    public var copySourceSSECustomerAlgorithm: CopySourceSSECustomerAlgorithm?
    public var copySourceSSECustomerKey: CopySourceSSECustomerKey?
    public var copySourceSSECustomerKeyMD5: CopySourceSSECustomerKeyMD5?
    public var key: ObjectKey
    public var partNumber: PartNumber
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var uploadId: MultipartUploadId

    public init(bucket: BucketName,
                copySource: CopySource,
                copySourceIfMatch: CopySourceIfMatch? = nil,
                copySourceIfModifiedSince: CopySourceIfModifiedSince? = nil,
                copySourceIfNoneMatch: CopySourceIfNoneMatch? = nil,
                copySourceIfUnmodifiedSince: CopySourceIfUnmodifiedSince? = nil,
                copySourceRange: CopySourceRange? = nil,
                copySourceSSECustomerAlgorithm: CopySourceSSECustomerAlgorithm? = nil,
                copySourceSSECustomerKey: CopySourceSSECustomerKey? = nil,
                copySourceSSECustomerKeyMD5: CopySourceSSECustomerKeyMD5? = nil,
                key: ObjectKey,
                partNumber: PartNumber,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                uploadId: MultipartUploadId) {
        self.bucket = bucket
        self.copySource = copySource
        self.copySourceIfMatch = copySourceIfMatch
        self.copySourceIfModifiedSince = copySourceIfModifiedSince
        self.copySourceIfNoneMatch = copySourceIfNoneMatch
        self.copySourceIfUnmodifiedSince = copySourceIfUnmodifiedSince
        self.copySourceRange = copySourceRange
        self.copySourceSSECustomerAlgorithm = copySourceSSECustomerAlgorithm
        self.copySourceSSECustomerKey = copySourceSSECustomerKey
        self.copySourceSSECustomerKeyMD5 = copySourceSSECustomerKeyMD5
        self.key = key
        self.partNumber = partNumber
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case copySource = "x-amz-copy-source"
        case copySourceIfMatch = "x-amz-copy-source-if-match"
        case copySourceIfModifiedSince = "x-amz-copy-source-if-modified-since"
        case copySourceIfNoneMatch = "x-amz-copy-source-if-none-match"
        case copySourceIfUnmodifiedSince = "x-amz-copy-source-if-unmodified-since"
        case copySourceRange = "x-amz-copy-source-range"
        case copySourceSSECustomerAlgorithm = "x-amz-copy-source-server-side-encryption-customer-algorithm"
        case copySourceSSECustomerKey = "x-amz-copy-source-server-side-encryption-customer-key"
        case copySourceSSECustomerKeyMD5 = "x-amz-copy-source-server-side-encryption-customer-key-MD5"
        case key = "Key"
        case partNumber
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case uploadId
    }

    public func validate() throws {
        try copySource.validateAsCopySource()
        try key.validateAsObjectKey()
    }
}

public struct UploadPartOutput: Codable, Equatable {
    public var eTag: ETag?
    public var requestCharged: RequestCharged?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var sSEKMSKeyId: SSEKMSKeyId?
    public var serverSideEncryption: ServerSideEncryption?

    public init(eTag: ETag? = nil,
                requestCharged: RequestCharged? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                sSEKMSKeyId: SSEKMSKeyId? = nil,
                serverSideEncryption: ServerSideEncryption? = nil) {
        self.eTag = eTag
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
    }

    enum CodingKeys: String, CodingKey {
        case eTag = "ETag"
        case requestCharged = "x-amz-request-charged"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case sSEKMSKeyId = "x-amz-server-side-encryption-aws-kms-key-id"
        case serverSideEncryption = "x-amz-server-side-encryption"
    }

    public func validate() throws {
    }
}

public struct UploadPartRequest: Codable, Equatable {
    public var body: Body?
    public var bucket: BucketName
    public var contentLength: ContentLength?
    public var contentMD5: ContentMD5?
    public var key: ObjectKey
    public var partNumber: PartNumber
    public var requestPayer: RequestPayer?
    public var sSECustomerAlgorithm: SSECustomerAlgorithm?
    public var sSECustomerKey: SSECustomerKey?
    public var sSECustomerKeyMD5: SSECustomerKeyMD5?
    public var uploadId: MultipartUploadId

    public init(body: Body? = nil,
                bucket: BucketName,
                contentLength: ContentLength? = nil,
                contentMD5: ContentMD5? = nil,
                key: ObjectKey,
                partNumber: PartNumber,
                requestPayer: RequestPayer? = nil,
                sSECustomerAlgorithm: SSECustomerAlgorithm? = nil,
                sSECustomerKey: SSECustomerKey? = nil,
                sSECustomerKeyMD5: SSECustomerKeyMD5? = nil,
                uploadId: MultipartUploadId) {
        self.body = body
        self.bucket = bucket
        self.contentLength = contentLength
        self.contentMD5 = contentMD5
        self.key = key
        self.partNumber = partNumber
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case body = "Body"
        case bucket = "Bucket"
        case contentLength = "Content-Length"
        case contentMD5 = "Content-MD5"
        case key = "Key"
        case partNumber
        case requestPayer = "x-amz-request-payer"
        case sSECustomerAlgorithm = "x-amz-server-side-encryption-customer-algorithm"
        case sSECustomerKey = "x-amz-server-side-encryption-customer-key"
        case sSECustomerKeyMD5 = "x-amz-server-side-encryption-customer-key-MD5"
        case uploadId
    }

    public func validate() throws {
        try key.validateAsObjectKey()
    }
}

public struct VersioningConfiguration: Codable, Equatable {
    public var mFADelete: MFADelete?
    public var status: BucketVersioningStatus?

    public init(mFADelete: MFADelete? = nil,
                status: BucketVersioningStatus? = nil) {
        self.mFADelete = mFADelete
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case mFADelete = "MfaDelete"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct WebsiteConfiguration: Codable, Equatable {
    public var errorDocument: ErrorDocument?
    public var indexDocument: IndexDocument?
    public var redirectAllRequestsTo: RedirectAllRequestsTo?
    public var routingRules: RoutingRules?

    public init(errorDocument: ErrorDocument? = nil,
                indexDocument: IndexDocument? = nil,
                redirectAllRequestsTo: RedirectAllRequestsTo? = nil,
                routingRules: RoutingRules? = nil) {
        self.errorDocument = errorDocument
        self.indexDocument = indexDocument
        self.redirectAllRequestsTo = redirectAllRequestsTo
        self.routingRules = routingRules
    }

    enum CodingKeys: String, CodingKey {
        case errorDocument = "ErrorDocument"
        case indexDocument = "IndexDocument"
        case redirectAllRequestsTo = "RedirectAllRequestsTo"
        case routingRules = "RoutingRules"
    }

    public func validate() throws {
        try errorDocument?.validate()
        try indexDocument?.validate()
        try redirectAllRequestsTo?.validate()
    }
}
