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
// S3ModelTypes.swift
// S3Model
//

import Foundation

/**
 Type definition for the AbortDate field.
 */
public typealias AbortDate = String

/**
 Type definition for the AbortRuleId field.
 */
public typealias AbortRuleId = String

/**
 Type definition for the AcceptRanges field.
 */
public typealias AcceptRanges = String

/**
 Type definition for the AccountId field.
 */
public typealias AccountId = String

/**
 Type definition for the AllowQuotedRecordDelimiter field.
 */
public typealias AllowQuotedRecordDelimiter = Bool

/**
 Type definition for the AllowedHeader field.
 */
public typealias AllowedHeader = String

/**
 Type definition for the AllowedHeaders field.
 */
public typealias AllowedHeaders = [AllowedHeader]

/**
 Type definition for the AllowedMethod field.
 */
public typealias AllowedMethod = String

/**
 Type definition for the AllowedMethods field.
 */
public typealias AllowedMethods = [AllowedMethod]

/**
 Type definition for the AllowedOrigin field.
 */
public typealias AllowedOrigin = String

/**
 Type definition for the AllowedOrigins field.
 */
public typealias AllowedOrigins = [AllowedOrigin]

/**
 Type definition for the AnalyticsConfigurationList field.
 */
public typealias AnalyticsConfigurationList = [AnalyticsConfiguration]

/**
 Type definition for the AnalyticsId field.
 */
public typealias AnalyticsId = String

/**
 Enumeration restricting the values of the AnalyticsS3ExportFileFormat field.
 */
public enum AnalyticsS3ExportFileFormat: String, Codable, CustomStringConvertible {
    case csv = "CSV"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AnalyticsS3ExportFileFormat = .csv
}

/**
 Type definition for the Body field.
 */
public typealias Body = Data

/**
 Enumeration restricting the values of the BucketAccelerateStatus field.
 */
public enum BucketAccelerateStatus: String, Codable, CustomStringConvertible {
    case enabled = "Enabled"
    case suspended = "Suspended"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BucketAccelerateStatus = .enabled
}

/**
 Enumeration restricting the values of the BucketCannedACL field.
 */
public enum BucketCannedACL: String, Codable, CustomStringConvertible {
    case authenticatedRead = "authenticated-read"
    case `private` = "private"
    case publicRead = "public-read"
    case publicReadWrite = "public-read-write"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BucketCannedACL = .authenticatedRead
}

/**
 Enumeration restricting the values of the BucketLocationConstraint field.
 */
public enum BucketLocationConstraint: String, Codable, CustomStringConvertible {
    case eu = "EU"
    case apNortheast1 = "ap-northeast-1"
    case apSouth1 = "ap-south-1"
    case apSoutheast1 = "ap-southeast-1"
    case apSoutheast2 = "ap-southeast-2"
    case cnNorth1 = "cn-north-1"
    case euCentral1 = "eu-central-1"
    case euWest1 = "eu-west-1"
    case saEast1 = "sa-east-1"
    case usWest1 = "us-west-1"
    case usWest2 = "us-west-2"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BucketLocationConstraint = .eu
}

/**
 Enumeration restricting the values of the BucketLogsPermission field.
 */
public enum BucketLogsPermission: String, Codable, CustomStringConvertible {
    case fullControl = "FULL_CONTROL"
    case read = "READ"
    case write = "WRITE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BucketLogsPermission = .fullControl
}

/**
 Type definition for the BucketName field.
 */
public typealias BucketName = String

/**
 Enumeration restricting the values of the BucketVersioningStatus field.
 */
public enum BucketVersioningStatus: String, Codable, CustomStringConvertible {
    case enabled = "Enabled"
    case suspended = "Suspended"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BucketVersioningStatus = .enabled
}

/**
 Type definition for the Buckets field.
 */
public typealias Buckets = [Bucket]

/**
 Type definition for the BypassGovernanceRetention field.
 */
public typealias BypassGovernanceRetention = Bool

/**
 Type definition for the BytesProcessed field.
 */
public typealias BytesProcessed = Int

/**
 Type definition for the BytesReturned field.
 */
public typealias BytesReturned = Int

/**
 Type definition for the BytesScanned field.
 */
public typealias BytesScanned = Int

/**
 Type definition for the CORSRules field.
 */
public typealias CORSRules = [CORSRule]

/**
 Type definition for the CacheControl field.
 */
public typealias CacheControl = String

/**
 Type definition for the CloudFunction field.
 */
public typealias CloudFunction = String

/**
 Type definition for the CloudFunctionInvocationRole field.
 */
public typealias CloudFunctionInvocationRole = String

/**
 Type definition for the Code field.
 */
public typealias Code = String

/**
 Type definition for the Comments field.
 */
public typealias Comments = String

/**
 Type definition for the CommonPrefixList field.
 */
public typealias CommonPrefixList = [CommonPrefix]

/**
 Type definition for the CompletedPartList field.
 */
public typealias CompletedPartList = [CompletedPart]

/**
 Enumeration restricting the values of the CompressionType field.
 */
public enum CompressionType: String, Codable, CustomStringConvertible {
    case bzip2 = "BZIP2"
    case gzip = "GZIP"
    case none = "NONE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CompressionType = .bzip2
}

/**
 Type definition for the ConfirmRemoveSelfBucketAccess field.
 */
public typealias ConfirmRemoveSelfBucketAccess = Bool

/**
 Type definition for the ContentDisposition field.
 */
public typealias ContentDisposition = String

/**
 Type definition for the ContentEncoding field.
 */
public typealias ContentEncoding = String

/**
 Type definition for the ContentLanguage field.
 */
public typealias ContentLanguage = String

/**
 Type definition for the ContentLength field.
 */
public typealias ContentLength = Int

/**
 Type definition for the ContentMD5 field.
 */
public typealias ContentMD5 = String

/**
 Type definition for the ContentRange field.
 */
public typealias ContentRange = String

/**
 Type definition for the ContentType field.
 */
public typealias ContentType = String

/**
 Type definition for the CopySource field.
 */
public typealias CopySource = String

/**
 Type definition for the CopySourceIfMatch field.
 */
public typealias CopySourceIfMatch = String

/**
 Type definition for the CopySourceIfModifiedSince field.
 */
public typealias CopySourceIfModifiedSince = String

/**
 Type definition for the CopySourceIfNoneMatch field.
 */
public typealias CopySourceIfNoneMatch = String

/**
 Type definition for the CopySourceIfUnmodifiedSince field.
 */
public typealias CopySourceIfUnmodifiedSince = String

/**
 Type definition for the CopySourceRange field.
 */
public typealias CopySourceRange = String

/**
 Type definition for the CopySourceSSECustomerAlgorithm field.
 */
public typealias CopySourceSSECustomerAlgorithm = String

/**
 Type definition for the CopySourceSSECustomerKey field.
 */
public typealias CopySourceSSECustomerKey = String

/**
 Type definition for the CopySourceSSECustomerKeyMD5 field.
 */
public typealias CopySourceSSECustomerKeyMD5 = String

/**
 Type definition for the CopySourceVersionId field.
 */
public typealias CopySourceVersionId = String

/**
 Type definition for the CreationDate field.
 */
public typealias CreationDate = String

/**
 Type definition for the Date field.
 */
public typealias Date = String

/**
 Type definition for the Days field.
 */
public typealias Days = Int

/**
 Type definition for the DaysAfterInitiation field.
 */
public typealias DaysAfterInitiation = Int

/**
 Type definition for the DeleteMarker field.
 */
public typealias DeleteMarker = Bool

/**
 Enumeration restricting the values of the DeleteMarkerReplicationStatus field.
 */
public enum DeleteMarkerReplicationStatus: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeleteMarkerReplicationStatus = .disabled
}

/**
 Type definition for the DeleteMarkerVersionId field.
 */
public typealias DeleteMarkerVersionId = String

/**
 Type definition for the DeleteMarkers field.
 */
public typealias DeleteMarkers = [DeleteMarkerEntry]

/**
 Type definition for the DeletedObjects field.
 */
public typealias DeletedObjects = [DeletedObject]

/**
 Type definition for the Delimiter field.
 */
public typealias Delimiter = String

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the DisplayName field.
 */
public typealias DisplayName = String

/**
 Type definition for the ETag field.
 */
public typealias ETag = String

/**
 Type definition for the EmailAddress field.
 */
public typealias EmailAddress = String

/**
 Type definition for the EnableRequestProgress field.
 */
public typealias EnableRequestProgress = Bool

/**
 Enumeration restricting the values of the EncodingType field.
 */
public enum EncodingType: String, Codable, CustomStringConvertible {
    case url

    public var description: String {
        return rawValue
    }
    
    public static let __default: EncodingType = .url
}

/**
 Type definition for the Errors field.
 */
public typealias Errors = [Error]

/**
 Enumeration restricting the values of the Event field.
 */
public enum Event: String, Codable, CustomStringConvertible {
    case s3ObjectCreatedStar = "s3:ObjectCreated:*"
    case s3ObjectCreatedCompleteMultipartUpload = "s3:ObjectCreated:CompleteMultipartUpload"
    case s3ObjectCreatedCopy = "s3:ObjectCreated:Copy"
    case s3ObjectCreatedPost = "s3:ObjectCreated:Post"
    case s3ObjectCreatedPut = "s3:ObjectCreated:Put"
    case s3ObjectRemovedStar = "s3:ObjectRemoved:*"
    case s3ObjectRemovedDelete = "s3:ObjectRemoved:Delete"
    case s3ObjectRemovedDeleteMarkerCreated = "s3:ObjectRemoved:DeleteMarkerCreated"
    case s3ObjectRestoreCompleted = "s3:ObjectRestore:Completed"
    case s3ObjectRestorePost = "s3:ObjectRestore:Post"
    case s3ReducedRedundancyLostObject = "s3:ReducedRedundancyLostObject"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Event = .s3ObjectCreatedStar
}

/**
 Type definition for the EventList field.
 */
public typealias EventList = [Event]

/**
 Type definition for the Expiration field.
 */
public typealias Expiration = String

/**
 Enumeration restricting the values of the ExpirationStatus field.
 */
public enum ExpirationStatus: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExpirationStatus = .disabled
}

/**
 Type definition for the ExpiredObjectDeleteMarker field.
 */
public typealias ExpiredObjectDeleteMarker = Bool

/**
 Type definition for the Expires field.
 */
public typealias Expires = String

/**
 Type definition for the ExposeHeader field.
 */
public typealias ExposeHeader = String

/**
 Type definition for the ExposeHeaders field.
 */
public typealias ExposeHeaders = [ExposeHeader]

/**
 Type definition for the Expression field.
 */
public typealias Expression = String

/**
 Enumeration restricting the values of the ExpressionType field.
 */
public enum ExpressionType: String, Codable, CustomStringConvertible {
    case sql = "SQL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExpressionType = .sql
}

/**
 Type definition for the FetchOwner field.
 */
public typealias FetchOwner = Bool

/**
 Type definition for the FieldDelimiter field.
 */
public typealias FieldDelimiter = String

/**
 Enumeration restricting the values of the FileHeaderInfo field.
 */
public enum FileHeaderInfo: String, Codable, CustomStringConvertible {
    case ignore = "IGNORE"
    case none = "NONE"
    case use = "USE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FileHeaderInfo = .ignore
}

/**
 Type definition for the FilterRuleList field.
 */
public typealias FilterRuleList = [FilterRule]

/**
 Enumeration restricting the values of the FilterRuleName field.
 */
public enum FilterRuleName: String, Codable, CustomStringConvertible {
    case prefix
    case suffix

    public var description: String {
        return rawValue
    }
    
    public static let __default: FilterRuleName = .prefix
}

/**
 Type definition for the FilterRuleValue field.
 */
public typealias FilterRuleValue = String

/**
 Type definition for the GrantFullControl field.
 */
public typealias GrantFullControl = String

/**
 Type definition for the GrantRead field.
 */
public typealias GrantRead = String

/**
 Type definition for the GrantReadACP field.
 */
public typealias GrantReadACP = String

/**
 Type definition for the GrantWrite field.
 */
public typealias GrantWrite = String

/**
 Type definition for the GrantWriteACP field.
 */
public typealias GrantWriteACP = String

/**
 Type definition for the Grants field.
 */
public typealias Grants = [Grant]

/**
 Type definition for the HostName field.
 */
public typealias HostName = String

/**
 Type definition for the HttpErrorCodeReturnedEquals field.
 */
public typealias HttpErrorCodeReturnedEquals = String

/**
 Type definition for the HttpRedirectCode field.
 */
public typealias HttpRedirectCode = String

/**
 Type definition for the ID field.
 */
public typealias ID = String

/**
 Type definition for the IfMatch field.
 */
public typealias IfMatch = String

/**
 Type definition for the IfModifiedSince field.
 */
public typealias IfModifiedSince = String

/**
 Type definition for the IfNoneMatch field.
 */
public typealias IfNoneMatch = String

/**
 Type definition for the IfUnmodifiedSince field.
 */
public typealias IfUnmodifiedSince = String

/**
 Type definition for the Initiated field.
 */
public typealias Initiated = String

/**
 Type definition for the InventoryConfigurationList field.
 */
public typealias InventoryConfigurationList = [InventoryConfiguration]

/**
 Enumeration restricting the values of the InventoryFormat field.
 */
public enum InventoryFormat: String, Codable, CustomStringConvertible {
    case csv = "CSV"
    case orc = "ORC"
    case parquet = "Parquet"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InventoryFormat = .csv
}

/**
 Enumeration restricting the values of the InventoryFrequency field.
 */
public enum InventoryFrequency: String, Codable, CustomStringConvertible {
    case daily = "Daily"
    case weekly = "Weekly"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InventoryFrequency = .daily
}

/**
 Type definition for the InventoryId field.
 */
public typealias InventoryId = String

/**
 Enumeration restricting the values of the InventoryIncludedObjectVersions field.
 */
public enum InventoryIncludedObjectVersions: String, Codable, CustomStringConvertible {
    case all = "All"
    case current = "Current"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InventoryIncludedObjectVersions = .all
}

/**
 Enumeration restricting the values of the InventoryOptionalField field.
 */
public enum InventoryOptionalField: String, Codable, CustomStringConvertible {
    case etag = "ETag"
    case encryptionstatus = "EncryptionStatus"
    case ismultipartuploaded = "IsMultipartUploaded"
    case lastmodifieddate = "LastModifiedDate"
    case objectlocklegalholdstatus = "ObjectLockLegalHoldStatus"
    case objectlockmode = "ObjectLockMode"
    case objectlockretainuntildate = "ObjectLockRetainUntilDate"
    case replicationstatus = "ReplicationStatus"
    case size = "Size"
    case storageclass = "StorageClass"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InventoryOptionalField = .etag
}

/**
 Type definition for the InventoryOptionalFields field.
 */
public typealias InventoryOptionalFields = [InventoryOptionalField]

/**
 Type definition for the IsEnabled field.
 */
public typealias IsEnabled = Bool

/**
 Type definition for the IsLatest field.
 */
public typealias IsLatest = Bool

/**
 Type definition for the IsPublic field.
 */
public typealias IsPublic = Bool

/**
 Type definition for the IsTruncated field.
 */
public typealias IsTruncated = Bool

/**
 Enumeration restricting the values of the JSONType field.
 */
public enum JSONType: String, Codable, CustomStringConvertible {
    case document = "DOCUMENT"
    case lines = "LINES"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JSONType = .document
}

/**
 Type definition for the KMSContext field.
 */
public typealias KMSContext = String

/**
 Type definition for the KeyCount field.
 */
public typealias KeyCount = Int

/**
 Type definition for the KeyMarker field.
 */
public typealias KeyMarker = String

/**
 Type definition for the KeyPrefixEquals field.
 */
public typealias KeyPrefixEquals = String

/**
 Type definition for the LambdaFunctionArn field.
 */
public typealias LambdaFunctionArn = String

/**
 Type definition for the LambdaFunctionConfigurationList field.
 */
public typealias LambdaFunctionConfigurationList = [LambdaFunctionConfiguration]

/**
 Type definition for the LastModified field.
 */
public typealias LastModified = String

/**
 Type definition for the LifecycleRules field.
 */
public typealias LifecycleRules = [LifecycleRule]

/**
 Type definition for the Location field.
 */
public typealias Location = String

/**
 Type definition for the LocationPrefix field.
 */
public typealias LocationPrefix = String

/**
 Type definition for the MFA field.
 */
public typealias MFA = String

/**
 Enumeration restricting the values of the MFADelete field.
 */
public enum MFADelete: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MFADelete = .disabled
}

/**
 Enumeration restricting the values of the MFADeleteStatus field.
 */
public enum MFADeleteStatus: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MFADeleteStatus = .disabled
}

/**
 Type definition for the Marker field.
 */
public typealias Marker = String

/**
 Type definition for the MaxAgeSeconds field.
 */
public typealias MaxAgeSeconds = Int

/**
 Type definition for the MaxKeys field.
 */
public typealias MaxKeys = Int

/**
 Type definition for the MaxParts field.
 */
public typealias MaxParts = Int

/**
 Type definition for the MaxUploads field.
 */
public typealias MaxUploads = Int

/**
 Type definition for the Message field.
 */
public typealias Message = String

/**
 Type definition for the Metadata field.
 */
public typealias Metadata = [MetadataKey: MetadataValue]

/**
 Enumeration restricting the values of the MetadataDirective field.
 */
public enum MetadataDirective: String, Codable, CustomStringConvertible {
    case copy = "COPY"
    case replace = "REPLACE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MetadataDirective = .copy
}

/**
 Type definition for the MetadataKey field.
 */
public typealias MetadataKey = String

/**
 Type definition for the MetadataValue field.
 */
public typealias MetadataValue = String

/**
 Type definition for the MetricsConfigurationList field.
 */
public typealias MetricsConfigurationList = [MetricsConfiguration]

/**
 Type definition for the MetricsId field.
 */
public typealias MetricsId = String

/**
 Type definition for the MissingMeta field.
 */
public typealias MissingMeta = Int

/**
 Type definition for the MultipartUploadId field.
 */
public typealias MultipartUploadId = String

/**
 Type definition for the MultipartUploadList field.
 */
public typealias MultipartUploadList = [MultipartUpload]

/**
 Type definition for the NextKeyMarker field.
 */
public typealias NextKeyMarker = String

/**
 Type definition for the NextMarker field.
 */
public typealias NextMarker = String

/**
 Type definition for the NextPartNumberMarker field.
 */
public typealias NextPartNumberMarker = Int

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the NextUploadIdMarker field.
 */
public typealias NextUploadIdMarker = String

/**
 Type definition for the NextVersionIdMarker field.
 */
public typealias NextVersionIdMarker = String

/**
 Type definition for the NoncurrentVersionTransitionList field.
 */
public typealias NoncurrentVersionTransitionList = [NoncurrentVersionTransition]

/**
 Type definition for the NotificationId field.
 */
public typealias NotificationId = String

/**
 Enumeration restricting the values of the ObjectCannedACL field.
 */
public enum ObjectCannedACL: String, Codable, CustomStringConvertible {
    case authenticatedRead = "authenticated-read"
    case awsExecRead = "aws-exec-read"
    case bucketOwnerFullControl = "bucket-owner-full-control"
    case bucketOwnerRead = "bucket-owner-read"
    case `private` = "private"
    case publicRead = "public-read"
    case publicReadWrite = "public-read-write"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectCannedACL = .authenticatedRead
}

/**
 Type definition for the ObjectIdentifierList field.
 */
public typealias ObjectIdentifierList = [ObjectIdentifier]

/**
 Type definition for the ObjectKey field.
 */
public typealias ObjectKey = String

/**
 Type definition for the ObjectList field.
 */
public typealias ObjectList = [Object]

/**
 Enumeration restricting the values of the ObjectLockEnabled field.
 */
public enum ObjectLockEnabled: String, Codable, CustomStringConvertible {
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectLockEnabled = .enabled
}

/**
 Type definition for the ObjectLockEnabledForBucket field.
 */
public typealias ObjectLockEnabledForBucket = Bool

/**
 Enumeration restricting the values of the ObjectLockLegalHoldStatus field.
 */
public enum ObjectLockLegalHoldStatus: String, Codable, CustomStringConvertible {
    case off = "OFF"
    case on = "ON"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectLockLegalHoldStatus = .off
}

/**
 Enumeration restricting the values of the ObjectLockMode field.
 */
public enum ObjectLockMode: String, Codable, CustomStringConvertible {
    case compliance = "COMPLIANCE"
    case governance = "GOVERNANCE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectLockMode = .compliance
}

/**
 Type definition for the ObjectLockRetainUntilDate field.
 */
public typealias ObjectLockRetainUntilDate = String

/**
 Enumeration restricting the values of the ObjectLockRetentionMode field.
 */
public enum ObjectLockRetentionMode: String, Codable, CustomStringConvertible {
    case compliance = "COMPLIANCE"
    case governance = "GOVERNANCE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectLockRetentionMode = .compliance
}

/**
 Type definition for the ObjectLockToken field.
 */
public typealias ObjectLockToken = String

/**
 Enumeration restricting the values of the ObjectStorageClass field.
 */
public enum ObjectStorageClass: String, Codable, CustomStringConvertible {
    case glacier = "GLACIER"
    case intelligentTiering = "INTELLIGENT_TIERING"
    case onezoneIa = "ONEZONE_IA"
    case reducedRedundancy = "REDUCED_REDUNDANCY"
    case standard = "STANDARD"
    case standardIa = "STANDARD_IA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectStorageClass = .glacier
}

/**
 Type definition for the ObjectVersionId field.
 */
public typealias ObjectVersionId = String

/**
 Type definition for the ObjectVersionList field.
 */
public typealias ObjectVersionList = [ObjectVersion]

/**
 Enumeration restricting the values of the ObjectVersionStorageClass field.
 */
public enum ObjectVersionStorageClass: String, Codable, CustomStringConvertible {
    case standard = "STANDARD"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ObjectVersionStorageClass = .standard
}

/**
 Enumeration restricting the values of the OwnerOverride field.
 */
public enum OwnerOverride: String, Codable, CustomStringConvertible {
    case destination = "Destination"

    public var description: String {
        return rawValue
    }
    
    public static let __default: OwnerOverride = .destination
}

/**
 Type definition for the PartNumber field.
 */
public typealias PartNumber = Int

/**
 Type definition for the PartNumberMarker field.
 */
public typealias PartNumberMarker = Int

/**
 Type definition for the Parts field.
 */
public typealias Parts = [Part]

/**
 Type definition for the PartsCount field.
 */
public typealias PartsCount = Int

/**
 Enumeration restricting the values of the Payer field.
 */
public enum Payer: String, Codable, CustomStringConvertible {
    case bucketowner = "BucketOwner"
    case requester = "Requester"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Payer = .bucketowner
}

/**
 Enumeration restricting the values of the Permission field.
 */
public enum Permission: String, Codable, CustomStringConvertible {
    case fullControl = "FULL_CONTROL"
    case read = "READ"
    case readAcp = "READ_ACP"
    case write = "WRITE"
    case writeAcp = "WRITE_ACP"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Permission = .fullControl
}

/**
 Type definition for the Policy field.
 */
public typealias Policy = String

/**
 Type definition for the Prefix field.
 */
public typealias Prefix = String

/**
 Type definition for the Priority field.
 */
public typealias Priority = Int

/**
 Enumeration restricting the values of the Protocol field.
 */
public enum Protocol: String, Codable, CustomStringConvertible {
    case http
    case https

    public var description: String {
        return rawValue
    }
    
    public static let __default: Protocol = .http
}

/**
 Type definition for the QueueArn field.
 */
public typealias QueueArn = String

/**
 Type definition for the QueueConfigurationList field.
 */
public typealias QueueConfigurationList = [QueueConfiguration]

/**
 Type definition for the Quiet field.
 */
public typealias Quiet = Bool

/**
 Type definition for the QuoteCharacter field.
 */
public typealias QuoteCharacter = String

/**
 Type definition for the QuoteEscapeCharacter field.
 */
public typealias QuoteEscapeCharacter = String

/**
 Enumeration restricting the values of the QuoteFields field.
 */
public enum QuoteFields: String, Codable, CustomStringConvertible {
    case always = "ALWAYS"
    case asneeded = "ASNEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: QuoteFields = .always
}

/**
 Type definition for the Range field.
 */
public typealias Range = String

/**
 Type definition for the RecordDelimiter field.
 */
public typealias RecordDelimiter = String

/**
 Type definition for the ReplaceKeyPrefixWith field.
 */
public typealias ReplaceKeyPrefixWith = String

/**
 Type definition for the ReplaceKeyWith field.
 */
public typealias ReplaceKeyWith = String

/**
 Type definition for the ReplicaKmsKeyID field.
 */
public typealias ReplicaKmsKeyID = String

/**
 Enumeration restricting the values of the ReplicationRuleStatus field.
 */
public enum ReplicationRuleStatus: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicationRuleStatus = .disabled
}

/**
 Type definition for the ReplicationRules field.
 */
public typealias ReplicationRules = [ReplicationRule]

/**
 Enumeration restricting the values of the ReplicationStatus field.
 */
public enum ReplicationStatus: String, Codable, CustomStringConvertible {
    case complete = "COMPLETE"
    case failed = "FAILED"
    case pending = "PENDING"
    case replica = "REPLICA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicationStatus = .complete
}

/**
 Enumeration restricting the values of the RequestCharged field.
 */
public enum RequestCharged: String, Codable, CustomStringConvertible {
    case requester

    public var description: String {
        return rawValue
    }
    
    public static let __default: RequestCharged = .requester
}

/**
 Enumeration restricting the values of the RequestPayer field.
 */
public enum RequestPayer: String, Codable, CustomStringConvertible {
    case requester

    public var description: String {
        return rawValue
    }
    
    public static let __default: RequestPayer = .requester
}

/**
 Type definition for the ResponseCacheControl field.
 */
public typealias ResponseCacheControl = String

/**
 Type definition for the ResponseContentDisposition field.
 */
public typealias ResponseContentDisposition = String

/**
 Type definition for the ResponseContentEncoding field.
 */
public typealias ResponseContentEncoding = String

/**
 Type definition for the ResponseContentLanguage field.
 */
public typealias ResponseContentLanguage = String

/**
 Type definition for the ResponseContentType field.
 */
public typealias ResponseContentType = String

/**
 Type definition for the ResponseExpires field.
 */
public typealias ResponseExpires = String

/**
 Type definition for the Restore field.
 */
public typealias Restore = String

/**
 Type definition for the RestoreOutputPath field.
 */
public typealias RestoreOutputPath = String

/**
 Enumeration restricting the values of the RestoreRequestType field.
 */
public enum RestoreRequestType: String, Codable, CustomStringConvertible {
    case select = "SELECT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RestoreRequestType = .select
}

/**
 Type definition for the Role field.
 */
public typealias Role = String

/**
 Type definition for the RoutingRules field.
 */
public typealias RoutingRules = [RoutingRule]

/**
 Type definition for the Rules field.
 */
public typealias Rules = [Rule]

/**
 Type definition for the SSECustomerAlgorithm field.
 */
public typealias SSECustomerAlgorithm = String

/**
 Type definition for the SSECustomerKey field.
 */
public typealias SSECustomerKey = String

/**
 Type definition for the SSECustomerKeyMD5 field.
 */
public typealias SSECustomerKeyMD5 = String

/**
 Type definition for the SSEKMSKeyId field.
 */
public typealias SSEKMSKeyId = String

/**
 Enumeration restricting the values of the ServerSideEncryption field.
 */
public enum ServerSideEncryption: String, Codable, CustomStringConvertible {
    case aes256 = "AES256"
    case awsKms = "aws:kms"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ServerSideEncryption = .aes256
}

/**
 Type definition for the ServerSideEncryptionRules field.
 */
public typealias ServerSideEncryptionRules = [ServerSideEncryptionRule]

/**
 Type definition for the Setting field.
 */
public typealias Setting = Bool

/**
 Type definition for the Size field.
 */
public typealias Size = Int

/**
 Enumeration restricting the values of the SseKmsEncryptedObjectsStatus field.
 */
public enum SseKmsEncryptedObjectsStatus: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SseKmsEncryptedObjectsStatus = .disabled
}

/**
 Type definition for the StartAfter field.
 */
public typealias StartAfter = String

/**
 Enumeration restricting the values of the StorageClass field.
 */
public enum StorageClass: String, Codable, CustomStringConvertible {
    case glacier = "GLACIER"
    case intelligentTiering = "INTELLIGENT_TIERING"
    case onezoneIa = "ONEZONE_IA"
    case reducedRedundancy = "REDUCED_REDUNDANCY"
    case standard = "STANDARD"
    case standardIa = "STANDARD_IA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StorageClass = .glacier
}

/**
 Enumeration restricting the values of the StorageClassAnalysisSchemaVersion field.
 */
public enum StorageClassAnalysisSchemaVersion: String, Codable, CustomStringConvertible {
    case v1 = "V_1"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StorageClassAnalysisSchemaVersion = .v1
}

/**
 Type definition for the Suffix field.
 */
public typealias Suffix = String

/**
 Type definition for the TagCount field.
 */
public typealias TagCount = Int

/**
 Type definition for the TagSet field.
 */
public typealias TagSet = [Tag]

/**
 Enumeration restricting the values of the TaggingDirective field.
 */
public enum TaggingDirective: String, Codable, CustomStringConvertible {
    case copy = "COPY"
    case replace = "REPLACE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaggingDirective = .copy
}

/**
 Type definition for the TaggingHeader field.
 */
public typealias TaggingHeader = String

/**
 Type definition for the TargetBucket field.
 */
public typealias TargetBucket = String

/**
 Type definition for the TargetGrants field.
 */
public typealias TargetGrants = [TargetGrant]

/**
 Type definition for the TargetPrefix field.
 */
public typealias TargetPrefix = String

/**
 Enumeration restricting the values of the Tier field.
 */
public enum Tier: String, Codable, CustomStringConvertible {
    case bulk = "Bulk"
    case expedited = "Expedited"
    case standard = "Standard"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Tier = .bulk
}

/**
 Type definition for the Token field.
 */
public typealias Token = String

/**
 Type definition for the TopicArn field.
 */
public typealias TopicArn = String

/**
 Type definition for the TopicConfigurationList field.
 */
public typealias TopicConfigurationList = [TopicConfiguration]

/**
 Type definition for the TransitionList field.
 */
public typealias TransitionList = [Transition]

/**
 Enumeration restricting the values of the TransitionStorageClass field.
 */
public enum TransitionStorageClass: String, Codable, CustomStringConvertible {
    case glacier = "GLACIER"
    case intelligentTiering = "INTELLIGENT_TIERING"
    case onezoneIa = "ONEZONE_IA"
    case standardIa = "STANDARD_IA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitionStorageClass = .glacier
}

/**
 Enumeration restricting the values of the Type field.
 */
public enum Type: String, Codable, CustomStringConvertible {
    case amazoncustomerbyemail = "AmazonCustomerByEmail"
    case canonicaluser = "CanonicalUser"
    case group = "Group"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Type = .amazoncustomerbyemail
}

/**
 Type definition for the URI field.
 */
public typealias URI = String

/**
 Type definition for the UploadIdMarker field.
 */
public typealias UploadIdMarker = String

/**
 Type definition for the UserMetadata field.
 */
public typealias UserMetadata = [MetadataEntry]

/**
 Type definition for the Value field.
 */
public typealias Value = String

/**
 Type definition for the VersionIdMarker field.
 */
public typealias VersionIdMarker = String

/**
 Type definition for the WebsiteRedirectLocation field.
 */
public typealias WebsiteRedirectLocation = String

/**
 Type definition for the Years field.
 */
public typealias Years = Int

/**
 Validation for the CopySource field.
*/
extension S3Model.CopySource {
    public func validateAsCopySource() throws {
        guard let matchingRange = self.range(of: "\\/.+\\/.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw S3CodingError.validationError(
                    reason: "The provided value to CopySource violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ObjectKey field.
*/
extension S3Model.ObjectKey {
    public func validateAsObjectKey() throws {
        if self.count < 1 {
            throw S3CodingError.validationError(reason: "The provided value to ObjectKey violated the minimum length constraint.")
        }

    }
}
