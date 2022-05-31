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
// S3OperationsClientInput.swift
// S3Client
//

import Foundation
import SmokeHTTPClient
import S3Model

/**
 Type to handle the input to the AbortMultipartUpload operation in a HTTP client.
 */
public struct AbortMultipartUploadOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: AbortMultipartUploadOperationInputQuery?
    public let pathEncodable: AbortMultipartUploadOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: AbortMultipartUploadOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: AbortMultipartUploadRequest) {
        self.queryEncodable = encodable.asS3ModelAbortMultipartUploadOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelAbortMultipartUploadOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelAbortMultipartUploadOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CompleteMultipartUpload operation in a HTTP client.
 */
public struct CompleteMultipartUploadOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: CompleteMultipartUploadOperationInputQuery?
    public let pathEncodable: CompleteMultipartUploadOperationInputPath?
    public let bodyEncodable: CompletedMultipartUpload?
    public let additionalHeadersEncodable: CompleteMultipartUploadOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: CompleteMultipartUploadRequest) {
        self.queryEncodable = encodable.asS3ModelCompleteMultipartUploadOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelCompleteMultipartUploadOperationInputPath()
        self.bodyEncodable = encodable.multipartUpload
        self.additionalHeadersEncodable = encodable.asS3ModelCompleteMultipartUploadOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CopyObject operation in a HTTP client.
 */
public struct CopyObjectOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CopyObjectOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: CopyObjectOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: CopyObjectRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelCopyObjectOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelCopyObjectOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateBucket operation in a HTTP client.
 */
public struct CreateBucketOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateBucketOperationInputPath?
    public let bodyEncodable: CreateBucketConfiguration?
    public let additionalHeadersEncodable: CreateBucketOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: CreateBucketRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelCreateBucketOperationInputPath()
        self.bodyEncodable = encodable.createBucketConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelCreateBucketOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateMultipartUpload operation in a HTTP client.
 */
public struct CreateMultipartUploadOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateMultipartUploadOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: CreateMultipartUploadOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: CreateMultipartUploadRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelCreateMultipartUploadOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelCreateMultipartUploadOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucket operation in a HTTP client.
 */
public struct DeleteBucketOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketAnalyticsConfiguration operation in a HTTP client.
 */
public struct DeleteBucketAnalyticsConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteBucketAnalyticsConfigurationOperationInputQuery?
    public let pathEncodable: DeleteBucketAnalyticsConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketAnalyticsConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketAnalyticsConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelDeleteBucketAnalyticsConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelDeleteBucketAnalyticsConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketAnalyticsConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketCors operation in a HTTP client.
 */
public struct DeleteBucketCorsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketCorsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketCorsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketCorsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketCorsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketCorsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketEncryption operation in a HTTP client.
 */
public struct DeleteBucketEncryptionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketEncryptionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketEncryptionOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketEncryptionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketEncryptionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketEncryptionOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketIntelligentTieringConfiguration operation in a HTTP client.
 */
public struct DeleteBucketIntelligentTieringConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteBucketIntelligentTieringConfigurationOperationInputQuery?
    public let pathEncodable: DeleteBucketIntelligentTieringConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketIntelligentTieringConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelDeleteBucketIntelligentTieringConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelDeleteBucketIntelligentTieringConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketInventoryConfiguration operation in a HTTP client.
 */
public struct DeleteBucketInventoryConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteBucketInventoryConfigurationOperationInputQuery?
    public let pathEncodable: DeleteBucketInventoryConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketInventoryConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketInventoryConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelDeleteBucketInventoryConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelDeleteBucketInventoryConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketInventoryConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketLifecycle operation in a HTTP client.
 */
public struct DeleteBucketLifecycleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketLifecycleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketLifecycleOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketLifecycleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketLifecycleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketLifecycleOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketMetricsConfiguration operation in a HTTP client.
 */
public struct DeleteBucketMetricsConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteBucketMetricsConfigurationOperationInputQuery?
    public let pathEncodable: DeleteBucketMetricsConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketMetricsConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketMetricsConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelDeleteBucketMetricsConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelDeleteBucketMetricsConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketMetricsConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketOwnershipControls operation in a HTTP client.
 */
public struct DeleteBucketOwnershipControlsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketOwnershipControlsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketOwnershipControlsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketOwnershipControlsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketOwnershipControlsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketOwnershipControlsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketPolicy operation in a HTTP client.
 */
public struct DeleteBucketPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketPolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketPolicyOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketPolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketPolicyOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketReplication operation in a HTTP client.
 */
public struct DeleteBucketReplicationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketReplicationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketReplicationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketReplicationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketReplicationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketReplicationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketTagging operation in a HTTP client.
 */
public struct DeleteBucketTaggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketTaggingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketTaggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketTaggingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketTaggingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketTaggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteBucketWebsite operation in a HTTP client.
 */
public struct DeleteBucketWebsiteOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteBucketWebsiteOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteBucketWebsiteOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteBucketWebsiteRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteBucketWebsiteOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteBucketWebsiteOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteObject operation in a HTTP client.
 */
public struct DeleteObjectOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteObjectOperationInputQuery?
    public let pathEncodable: DeleteObjectOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteObjectOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteObjectRequest) {
        self.queryEncodable = encodable.asS3ModelDeleteObjectOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelDeleteObjectOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteObjectOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteObjectTagging operation in a HTTP client.
 */
public struct DeleteObjectTaggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteObjectTaggingOperationInputQuery?
    public let pathEncodable: DeleteObjectTaggingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeleteObjectTaggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteObjectTaggingRequest) {
        self.queryEncodable = encodable.asS3ModelDeleteObjectTaggingOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelDeleteObjectTaggingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteObjectTaggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteObjects operation in a HTTP client.
 */
public struct DeleteObjectsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeleteObjectsOperationInputPath?
    public let bodyEncodable: Delete?
    public let additionalHeadersEncodable: DeleteObjectsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeleteObjectsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeleteObjectsOperationInputPath()
        self.bodyEncodable = encodable.delete
        self.additionalHeadersEncodable = encodable.asS3ModelDeleteObjectsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeletePublicAccessBlock operation in a HTTP client.
 */
public struct DeletePublicAccessBlockOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: DeletePublicAccessBlockOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: DeletePublicAccessBlockOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: DeletePublicAccessBlockRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelDeletePublicAccessBlockOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelDeletePublicAccessBlockOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketAccelerateConfiguration operation in a HTTP client.
 */
public struct GetBucketAccelerateConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketAccelerateConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketAccelerateConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketAccelerateConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketAccelerateConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketAccelerateConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketAcl operation in a HTTP client.
 */
public struct GetBucketAclOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketAclOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketAclOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketAclRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketAclOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketAclOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketAnalyticsConfiguration operation in a HTTP client.
 */
public struct GetBucketAnalyticsConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetBucketAnalyticsConfigurationOperationInputQuery?
    public let pathEncodable: GetBucketAnalyticsConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketAnalyticsConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketAnalyticsConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelGetBucketAnalyticsConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetBucketAnalyticsConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketAnalyticsConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketCors operation in a HTTP client.
 */
public struct GetBucketCorsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketCorsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketCorsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketCorsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketCorsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketCorsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketEncryption operation in a HTTP client.
 */
public struct GetBucketEncryptionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketEncryptionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketEncryptionOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketEncryptionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketEncryptionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketEncryptionOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketIntelligentTieringConfiguration operation in a HTTP client.
 */
public struct GetBucketIntelligentTieringConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetBucketIntelligentTieringConfigurationOperationInputQuery?
    public let pathEncodable: GetBucketIntelligentTieringConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetBucketIntelligentTieringConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelGetBucketIntelligentTieringConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetBucketIntelligentTieringConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketInventoryConfiguration operation in a HTTP client.
 */
public struct GetBucketInventoryConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetBucketInventoryConfigurationOperationInputQuery?
    public let pathEncodable: GetBucketInventoryConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketInventoryConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketInventoryConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelGetBucketInventoryConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetBucketInventoryConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketInventoryConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketLifecycle operation in a HTTP client.
 */
public struct GetBucketLifecycleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketLifecycleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketLifecycleOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketLifecycleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketLifecycleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketLifecycleOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketLifecycleConfiguration operation in a HTTP client.
 */
public struct GetBucketLifecycleConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketLifecycleConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketLifecycleConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketLifecycleConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketLifecycleConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketLifecycleConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketLocation operation in a HTTP client.
 */
public struct GetBucketLocationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketLocationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketLocationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketLocationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketLocationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketLocationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketLogging operation in a HTTP client.
 */
public struct GetBucketLoggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketLoggingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketLoggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketLoggingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketLoggingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketLoggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketMetricsConfiguration operation in a HTTP client.
 */
public struct GetBucketMetricsConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetBucketMetricsConfigurationOperationInputQuery?
    public let pathEncodable: GetBucketMetricsConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketMetricsConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketMetricsConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelGetBucketMetricsConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetBucketMetricsConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketMetricsConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketNotification operation in a HTTP client.
 */
public struct GetBucketNotificationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketNotificationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketNotificationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketNotificationConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketNotificationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketNotificationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketNotificationConfiguration operation in a HTTP client.
 */
public struct GetBucketNotificationConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketNotificationConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketNotificationConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketNotificationConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketNotificationConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketNotificationConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketOwnershipControls operation in a HTTP client.
 */
public struct GetBucketOwnershipControlsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketOwnershipControlsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketOwnershipControlsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketOwnershipControlsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketOwnershipControlsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketOwnershipControlsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketPolicy operation in a HTTP client.
 */
public struct GetBucketPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketPolicyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketPolicyOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketPolicyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketPolicyOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketPolicyStatus operation in a HTTP client.
 */
public struct GetBucketPolicyStatusOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketPolicyStatusOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketPolicyStatusOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketPolicyStatusRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketPolicyStatusOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketPolicyStatusOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketReplication operation in a HTTP client.
 */
public struct GetBucketReplicationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketReplicationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketReplicationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketReplicationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketReplicationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketReplicationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketRequestPayment operation in a HTTP client.
 */
public struct GetBucketRequestPaymentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketRequestPaymentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketRequestPaymentOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketRequestPaymentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketRequestPaymentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketRequestPaymentOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketTagging operation in a HTTP client.
 */
public struct GetBucketTaggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketTaggingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketTaggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketTaggingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketTaggingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketTaggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketVersioning operation in a HTTP client.
 */
public struct GetBucketVersioningOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketVersioningOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketVersioningOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketVersioningRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketVersioningOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketVersioningOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetBucketWebsite operation in a HTTP client.
 */
public struct GetBucketWebsiteOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetBucketWebsiteOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetBucketWebsiteOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetBucketWebsiteRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetBucketWebsiteOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetBucketWebsiteOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObject operation in a HTTP client.
 */
public struct GetObjectOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetObjectOperationInputQuery?
    public let pathEncodable: GetObjectOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectRequest) {
        self.queryEncodable = encodable.asS3ModelGetObjectOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetObjectOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectAcl operation in a HTTP client.
 */
public struct GetObjectAclOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetObjectAclOperationInputQuery?
    public let pathEncodable: GetObjectAclOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectAclOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectAclRequest) {
        self.queryEncodable = encodable.asS3ModelGetObjectAclOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetObjectAclOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectAclOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectAttributes operation in a HTTP client.
 */
public struct GetObjectAttributesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetObjectAttributesOperationInputQuery?
    public let pathEncodable: GetObjectAttributesOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectAttributesOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectAttributesRequest) {
        self.queryEncodable = encodable.asS3ModelGetObjectAttributesOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetObjectAttributesOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectAttributesOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectLegalHold operation in a HTTP client.
 */
public struct GetObjectLegalHoldOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetObjectLegalHoldOperationInputQuery?
    public let pathEncodable: GetObjectLegalHoldOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectLegalHoldOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectLegalHoldRequest) {
        self.queryEncodable = encodable.asS3ModelGetObjectLegalHoldOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetObjectLegalHoldOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectLegalHoldOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectLockConfiguration operation in a HTTP client.
 */
public struct GetObjectLockConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetObjectLockConfigurationOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectLockConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectLockConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetObjectLockConfigurationOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectLockConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectRetention operation in a HTTP client.
 */
public struct GetObjectRetentionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetObjectRetentionOperationInputQuery?
    public let pathEncodable: GetObjectRetentionOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectRetentionOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectRetentionRequest) {
        self.queryEncodable = encodable.asS3ModelGetObjectRetentionOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetObjectRetentionOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectRetentionOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectTagging operation in a HTTP client.
 */
public struct GetObjectTaggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetObjectTaggingOperationInputQuery?
    public let pathEncodable: GetObjectTaggingOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectTaggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectTaggingRequest) {
        self.queryEncodable = encodable.asS3ModelGetObjectTaggingOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelGetObjectTaggingOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectTaggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetObjectTorrent operation in a HTTP client.
 */
public struct GetObjectTorrentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetObjectTorrentOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetObjectTorrentOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetObjectTorrentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetObjectTorrentOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetObjectTorrentOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetPublicAccessBlock operation in a HTTP client.
 */
public struct GetPublicAccessBlockOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetPublicAccessBlockOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: GetPublicAccessBlockOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: GetPublicAccessBlockRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelGetPublicAccessBlockOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelGetPublicAccessBlockOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the HeadBucket operation in a HTTP client.
 */
public struct HeadBucketOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: HeadBucketOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: HeadBucketOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: HeadBucketRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelHeadBucketOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelHeadBucketOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the HeadObject operation in a HTTP client.
 */
public struct HeadObjectOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: HeadObjectOperationInputQuery?
    public let pathEncodable: HeadObjectOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: HeadObjectOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: HeadObjectRequest) {
        self.queryEncodable = encodable.asS3ModelHeadObjectOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelHeadObjectOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelHeadObjectOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListBucketAnalyticsConfigurations operation in a HTTP client.
 */
public struct ListBucketAnalyticsConfigurationsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListBucketAnalyticsConfigurationsOperationInputQuery?
    public let pathEncodable: ListBucketAnalyticsConfigurationsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListBucketAnalyticsConfigurationsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListBucketAnalyticsConfigurationsRequest) {
        self.queryEncodable = encodable.asS3ModelListBucketAnalyticsConfigurationsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListBucketAnalyticsConfigurationsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListBucketAnalyticsConfigurationsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListBucketIntelligentTieringConfigurations operation in a HTTP client.
 */
public struct ListBucketIntelligentTieringConfigurationsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListBucketIntelligentTieringConfigurationsOperationInputQuery?
    public let pathEncodable: ListBucketIntelligentTieringConfigurationsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListBucketIntelligentTieringConfigurationsRequest) {
        self.queryEncodable = encodable.asS3ModelListBucketIntelligentTieringConfigurationsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListBucketIntelligentTieringConfigurationsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListBucketInventoryConfigurations operation in a HTTP client.
 */
public struct ListBucketInventoryConfigurationsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListBucketInventoryConfigurationsOperationInputQuery?
    public let pathEncodable: ListBucketInventoryConfigurationsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListBucketInventoryConfigurationsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListBucketInventoryConfigurationsRequest) {
        self.queryEncodable = encodable.asS3ModelListBucketInventoryConfigurationsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListBucketInventoryConfigurationsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListBucketInventoryConfigurationsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListBucketMetricsConfigurations operation in a HTTP client.
 */
public struct ListBucketMetricsConfigurationsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListBucketMetricsConfigurationsOperationInputQuery?
    public let pathEncodable: ListBucketMetricsConfigurationsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListBucketMetricsConfigurationsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListBucketMetricsConfigurationsRequest) {
        self.queryEncodable = encodable.asS3ModelListBucketMetricsConfigurationsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListBucketMetricsConfigurationsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListBucketMetricsConfigurationsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListMultipartUploads operation in a HTTP client.
 */
public struct ListMultipartUploadsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListMultipartUploadsOperationInputQuery?
    public let pathEncodable: ListMultipartUploadsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListMultipartUploadsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListMultipartUploadsRequest) {
        self.queryEncodable = encodable.asS3ModelListMultipartUploadsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListMultipartUploadsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListMultipartUploadsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListObjectVersions operation in a HTTP client.
 */
public struct ListObjectVersionsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListObjectVersionsOperationInputQuery?
    public let pathEncodable: ListObjectVersionsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListObjectVersionsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListObjectVersionsRequest) {
        self.queryEncodable = encodable.asS3ModelListObjectVersionsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListObjectVersionsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListObjectVersionsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListObjects operation in a HTTP client.
 */
public struct ListObjectsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListObjectsOperationInputQuery?
    public let pathEncodable: ListObjectsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListObjectsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListObjectsRequest) {
        self.queryEncodable = encodable.asS3ModelListObjectsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListObjectsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListObjectsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListObjectsV2 operation in a HTTP client.
 */
public struct ListObjectsV2OperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListObjectsV2OperationInputQuery?
    public let pathEncodable: ListObjectsV2OperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListObjectsV2OperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListObjectsV2Request) {
        self.queryEncodable = encodable.asS3ModelListObjectsV2OperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListObjectsV2OperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListObjectsV2OperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListParts operation in a HTTP client.
 */
public struct ListPartsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListPartsOperationInputQuery?
    public let pathEncodable: ListPartsOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: ListPartsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: ListPartsRequest) {
        self.queryEncodable = encodable.asS3ModelListPartsOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelListPartsOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelListPartsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketAccelerateConfiguration operation in a HTTP client.
 */
public struct PutBucketAccelerateConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketAccelerateConfigurationOperationInputPath?
    public let bodyEncodable: AccelerateConfiguration?
    public let additionalHeadersEncodable: PutBucketAccelerateConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketAccelerateConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketAccelerateConfigurationOperationInputPath()
        self.bodyEncodable = encodable.accelerateConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketAccelerateConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketAcl operation in a HTTP client.
 */
public struct PutBucketAclOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketAclOperationInputPath?
    public let bodyEncodable: AccessControlPolicy?
    public let additionalHeadersEncodable: PutBucketAclOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketAclRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketAclOperationInputPath()
        self.bodyEncodable = encodable.accessControlPolicy
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketAclOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketAnalyticsConfiguration operation in a HTTP client.
 */
public struct PutBucketAnalyticsConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutBucketAnalyticsConfigurationOperationInputQuery?
    public let pathEncodable: PutBucketAnalyticsConfigurationOperationInputPath?
    public let bodyEncodable: AnalyticsConfiguration?
    public let additionalHeadersEncodable: PutBucketAnalyticsConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketAnalyticsConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelPutBucketAnalyticsConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutBucketAnalyticsConfigurationOperationInputPath()
        self.bodyEncodable = encodable.analyticsConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketAnalyticsConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketCors operation in a HTTP client.
 */
public struct PutBucketCorsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketCorsOperationInputPath?
    public let bodyEncodable: CORSConfiguration?
    public let additionalHeadersEncodable: PutBucketCorsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketCorsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketCorsOperationInputPath()
        self.bodyEncodable = encodable.cORSConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketCorsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketEncryption operation in a HTTP client.
 */
public struct PutBucketEncryptionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketEncryptionOperationInputPath?
    public let bodyEncodable: ServerSideEncryptionConfiguration?
    public let additionalHeadersEncodable: PutBucketEncryptionOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketEncryptionRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketEncryptionOperationInputPath()
        self.bodyEncodable = encodable.serverSideEncryptionConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketEncryptionOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketIntelligentTieringConfiguration operation in a HTTP client.
 */
public struct PutBucketIntelligentTieringConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutBucketIntelligentTieringConfigurationOperationInputQuery?
    public let pathEncodable: PutBucketIntelligentTieringConfigurationOperationInputPath?
    public let bodyEncodable: IntelligentTieringConfiguration?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: PutBucketIntelligentTieringConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelPutBucketIntelligentTieringConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutBucketIntelligentTieringConfigurationOperationInputPath()
        self.bodyEncodable = encodable.intelligentTieringConfiguration
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketInventoryConfiguration operation in a HTTP client.
 */
public struct PutBucketInventoryConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutBucketInventoryConfigurationOperationInputQuery?
    public let pathEncodable: PutBucketInventoryConfigurationOperationInputPath?
    public let bodyEncodable: InventoryConfiguration?
    public let additionalHeadersEncodable: PutBucketInventoryConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketInventoryConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelPutBucketInventoryConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutBucketInventoryConfigurationOperationInputPath()
        self.bodyEncodable = encodable.inventoryConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketInventoryConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketLifecycle operation in a HTTP client.
 */
public struct PutBucketLifecycleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketLifecycleOperationInputPath?
    public let bodyEncodable: LifecycleConfiguration?
    public let additionalHeadersEncodable: PutBucketLifecycleOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketLifecycleRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketLifecycleOperationInputPath()
        self.bodyEncodable = encodable.lifecycleConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketLifecycleOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketLifecycleConfiguration operation in a HTTP client.
 */
public struct PutBucketLifecycleConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketLifecycleConfigurationOperationInputPath?
    public let bodyEncodable: BucketLifecycleConfiguration?
    public let additionalHeadersEncodable: PutBucketLifecycleConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketLifecycleConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketLifecycleConfigurationOperationInputPath()
        self.bodyEncodable = encodable.lifecycleConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketLifecycleConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketLogging operation in a HTTP client.
 */
public struct PutBucketLoggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketLoggingOperationInputPath?
    public let bodyEncodable: BucketLoggingStatus?
    public let additionalHeadersEncodable: PutBucketLoggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketLoggingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketLoggingOperationInputPath()
        self.bodyEncodable = encodable.bucketLoggingStatus
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketLoggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketMetricsConfiguration operation in a HTTP client.
 */
public struct PutBucketMetricsConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutBucketMetricsConfigurationOperationInputQuery?
    public let pathEncodable: PutBucketMetricsConfigurationOperationInputPath?
    public let bodyEncodable: MetricsConfiguration?
    public let additionalHeadersEncodable: PutBucketMetricsConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketMetricsConfigurationRequest) {
        self.queryEncodable = encodable.asS3ModelPutBucketMetricsConfigurationOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutBucketMetricsConfigurationOperationInputPath()
        self.bodyEncodable = encodable.metricsConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketMetricsConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketNotification operation in a HTTP client.
 */
public struct PutBucketNotificationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketNotificationOperationInputPath?
    public let bodyEncodable: NotificationConfigurationDeprecated?
    public let additionalHeadersEncodable: PutBucketNotificationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketNotificationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketNotificationOperationInputPath()
        self.bodyEncodable = encodable.notificationConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketNotificationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketNotificationConfiguration operation in a HTTP client.
 */
public struct PutBucketNotificationConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketNotificationConfigurationOperationInputPath?
    public let bodyEncodable: NotificationConfiguration?
    public let additionalHeadersEncodable: PutBucketNotificationConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketNotificationConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketNotificationConfigurationOperationInputPath()
        self.bodyEncodable = encodable.notificationConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketNotificationConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketOwnershipControls operation in a HTTP client.
 */
public struct PutBucketOwnershipControlsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketOwnershipControlsOperationInputPath?
    public let bodyEncodable: OwnershipControls?
    public let additionalHeadersEncodable: PutBucketOwnershipControlsOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketOwnershipControlsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketOwnershipControlsOperationInputPath()
        self.bodyEncodable = encodable.ownershipControls
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketOwnershipControlsOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketPolicy operation in a HTTP client.
 */
public struct PutBucketPolicyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketPolicyOperationInputPath?
    public let bodyEncodable: Policy?
    public let additionalHeadersEncodable: PutBucketPolicyOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketPolicyRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketPolicyOperationInputPath()
        self.bodyEncodable = encodable.policy
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketPolicyOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketReplication operation in a HTTP client.
 */
public struct PutBucketReplicationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketReplicationOperationInputPath?
    public let bodyEncodable: ReplicationConfiguration?
    public let additionalHeadersEncodable: PutBucketReplicationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketReplicationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketReplicationOperationInputPath()
        self.bodyEncodable = encodable.replicationConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketReplicationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketRequestPayment operation in a HTTP client.
 */
public struct PutBucketRequestPaymentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketRequestPaymentOperationInputPath?
    public let bodyEncodable: RequestPaymentConfiguration?
    public let additionalHeadersEncodable: PutBucketRequestPaymentOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketRequestPaymentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketRequestPaymentOperationInputPath()
        self.bodyEncodable = encodable.requestPaymentConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketRequestPaymentOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketTagging operation in a HTTP client.
 */
public struct PutBucketTaggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketTaggingOperationInputPath?
    public let bodyEncodable: Tagging?
    public let additionalHeadersEncodable: PutBucketTaggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketTaggingRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketTaggingOperationInputPath()
        self.bodyEncodable = encodable.tagging
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketTaggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketVersioning operation in a HTTP client.
 */
public struct PutBucketVersioningOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketVersioningOperationInputPath?
    public let bodyEncodable: VersioningConfiguration?
    public let additionalHeadersEncodable: PutBucketVersioningOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketVersioningRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketVersioningOperationInputPath()
        self.bodyEncodable = encodable.versioningConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketVersioningOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutBucketWebsite operation in a HTTP client.
 */
public struct PutBucketWebsiteOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutBucketWebsiteOperationInputPath?
    public let bodyEncodable: WebsiteConfiguration?
    public let additionalHeadersEncodable: PutBucketWebsiteOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutBucketWebsiteRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutBucketWebsiteOperationInputPath()
        self.bodyEncodable = encodable.websiteConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutBucketWebsiteOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutObject operation in a HTTP client.
 */
public struct PutObjectOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutObjectOperationInputPath?
    public let bodyEncodable: Body?
    public let additionalHeadersEncodable: PutObjectOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutObjectRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutObjectOperationInputPath()
        self.bodyEncodable = encodable.body
        self.additionalHeadersEncodable = encodable.asS3ModelPutObjectOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutObjectAcl operation in a HTTP client.
 */
public struct PutObjectAclOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutObjectAclOperationInputQuery?
    public let pathEncodable: PutObjectAclOperationInputPath?
    public let bodyEncodable: AccessControlPolicy?
    public let additionalHeadersEncodable: PutObjectAclOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutObjectAclRequest) {
        self.queryEncodable = encodable.asS3ModelPutObjectAclOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutObjectAclOperationInputPath()
        self.bodyEncodable = encodable.accessControlPolicy
        self.additionalHeadersEncodable = encodable.asS3ModelPutObjectAclOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutObjectLegalHold operation in a HTTP client.
 */
public struct PutObjectLegalHoldOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutObjectLegalHoldOperationInputQuery?
    public let pathEncodable: PutObjectLegalHoldOperationInputPath?
    public let bodyEncodable: ObjectLockLegalHold?
    public let additionalHeadersEncodable: PutObjectLegalHoldOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutObjectLegalHoldRequest) {
        self.queryEncodable = encodable.asS3ModelPutObjectLegalHoldOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutObjectLegalHoldOperationInputPath()
        self.bodyEncodable = encodable.legalHold
        self.additionalHeadersEncodable = encodable.asS3ModelPutObjectLegalHoldOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutObjectLockConfiguration operation in a HTTP client.
 */
public struct PutObjectLockConfigurationOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutObjectLockConfigurationOperationInputPath?
    public let bodyEncodable: ObjectLockConfiguration?
    public let additionalHeadersEncodable: PutObjectLockConfigurationOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutObjectLockConfigurationRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutObjectLockConfigurationOperationInputPath()
        self.bodyEncodable = encodable.objectLockConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutObjectLockConfigurationOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutObjectRetention operation in a HTTP client.
 */
public struct PutObjectRetentionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutObjectRetentionOperationInputQuery?
    public let pathEncodable: PutObjectRetentionOperationInputPath?
    public let bodyEncodable: ObjectLockRetention?
    public let additionalHeadersEncodable: PutObjectRetentionOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutObjectRetentionRequest) {
        self.queryEncodable = encodable.asS3ModelPutObjectRetentionOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutObjectRetentionOperationInputPath()
        self.bodyEncodable = encodable.retention
        self.additionalHeadersEncodable = encodable.asS3ModelPutObjectRetentionOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutObjectTagging operation in a HTTP client.
 */
public struct PutObjectTaggingOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: PutObjectTaggingOperationInputQuery?
    public let pathEncodable: PutObjectTaggingOperationInputPath?
    public let bodyEncodable: Tagging?
    public let additionalHeadersEncodable: PutObjectTaggingOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutObjectTaggingRequest) {
        self.queryEncodable = encodable.asS3ModelPutObjectTaggingOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelPutObjectTaggingOperationInputPath()
        self.bodyEncodable = encodable.tagging
        self.additionalHeadersEncodable = encodable.asS3ModelPutObjectTaggingOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the PutPublicAccessBlock operation in a HTTP client.
 */
public struct PutPublicAccessBlockOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: PutPublicAccessBlockOperationInputPath?
    public let bodyEncodable: PublicAccessBlockConfiguration?
    public let additionalHeadersEncodable: PutPublicAccessBlockOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: PutPublicAccessBlockRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelPutPublicAccessBlockOperationInputPath()
        self.bodyEncodable = encodable.publicAccessBlockConfiguration
        self.additionalHeadersEncodable = encodable.asS3ModelPutPublicAccessBlockOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the RestoreObject operation in a HTTP client.
 */
public struct RestoreObjectOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: RestoreObjectOperationInputQuery?
    public let pathEncodable: RestoreObjectOperationInputPath?
    public let bodyEncodable: RestoreRequest?
    public let additionalHeadersEncodable: RestoreObjectOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: RestoreObjectRequest) {
        self.queryEncodable = encodable.asS3ModelRestoreObjectOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelRestoreObjectOperationInputPath()
        self.bodyEncodable = encodable.restoreRequest
        self.additionalHeadersEncodable = encodable.asS3ModelRestoreObjectOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the SelectObjectContent operation in a HTTP client.
 */
public struct SelectObjectContentOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: SelectObjectContentOperationInputPath?
    public let bodyEncodable: SelectObjectContentOperationInputBody?
    public let additionalHeadersEncodable: SelectObjectContentOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: SelectObjectContentRequest) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asS3ModelSelectObjectContentOperationInputPath()
        self.bodyEncodable = encodable.asS3ModelSelectObjectContentOperationInputBody()
        self.additionalHeadersEncodable = encodable.asS3ModelSelectObjectContentOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UploadPart operation in a HTTP client.
 */
public struct UploadPartOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UploadPartOperationInputQuery?
    public let pathEncodable: UploadPartOperationInputPath?
    public let bodyEncodable: Body?
    public let additionalHeadersEncodable: UploadPartOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: UploadPartRequest) {
        self.queryEncodable = encodable.asS3ModelUploadPartOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelUploadPartOperationInputPath()
        self.bodyEncodable = encodable.body
        self.additionalHeadersEncodable = encodable.asS3ModelUploadPartOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UploadPartCopy operation in a HTTP client.
 */
public struct UploadPartCopyOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UploadPartCopyOperationInputQuery?
    public let pathEncodable: UploadPartCopyOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: UploadPartCopyOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: UploadPartCopyRequest) {
        self.queryEncodable = encodable.asS3ModelUploadPartCopyOperationInputQuery()
        self.pathEncodable = encodable.asS3ModelUploadPartCopyOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = encodable.asS3ModelUploadPartCopyOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the WriteGetObjectResponse operation in a HTTP client.
 */
public struct WriteGetObjectResponseOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: String?
    public let bodyEncodable: Body?
    public let additionalHeadersEncodable: WriteGetObjectResponseOperationInputAdditionalHeaders?
    public let pathPostfix: String?

    public init(encodable: WriteGetObjectResponseRequest) {
        self.queryEncodable = nil
        self.pathEncodable = nil
        self.bodyEncodable = encodable.body
        self.additionalHeadersEncodable = encodable.asS3ModelWriteGetObjectResponseOperationInputAdditionalHeaders()
        self.pathPostfix = nil
    }
}
