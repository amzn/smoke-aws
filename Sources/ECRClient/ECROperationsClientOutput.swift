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
// ECROperationsClientOutput.swift
// ECRClient
//

import Foundation
import SmokeHTTPClient
import ECRModel

/**
 Type to handle the output from the BatchCheckLayerAvailability operation in a HTTP client.
 */
extension BatchCheckLayerAvailabilityResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchCheckLayerAvailabilityResponse
    public typealias HeadersType = BatchCheckLayerAvailabilityResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchCheckLayerAvailabilityResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchDeleteImage operation in a HTTP client.
 */
extension BatchDeleteImageResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchDeleteImageResponse
    public typealias HeadersType = BatchDeleteImageResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchDeleteImageResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BatchGetImage operation in a HTTP client.
 */
extension BatchGetImageResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchGetImageResponse
    public typealias HeadersType = BatchGetImageResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchGetImageResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CompleteLayerUpload operation in a HTTP client.
 */
extension CompleteLayerUploadResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CompleteLayerUploadResponse
    public typealias HeadersType = CompleteLayerUploadResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CompleteLayerUploadResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateRepository operation in a HTTP client.
 */
extension CreateRepositoryResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateRepositoryResponse
    public typealias HeadersType = CreateRepositoryResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateRepositoryResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteLifecyclePolicy operation in a HTTP client.
 */
extension DeleteLifecyclePolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteLifecyclePolicyResponse
    public typealias HeadersType = DeleteLifecyclePolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteLifecyclePolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteRegistryPolicy operation in a HTTP client.
 */
extension DeleteRegistryPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteRegistryPolicyResponse
    public typealias HeadersType = DeleteRegistryPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteRegistryPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteRepository operation in a HTTP client.
 */
extension DeleteRepositoryResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteRepositoryResponse
    public typealias HeadersType = DeleteRepositoryResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteRepositoryResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteRepositoryPolicy operation in a HTTP client.
 */
extension DeleteRepositoryPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteRepositoryPolicyResponse
    public typealias HeadersType = DeleteRepositoryPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteRepositoryPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeImageScanFindings operation in a HTTP client.
 */
extension DescribeImageScanFindingsResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeImageScanFindingsResponse
    public typealias HeadersType = DescribeImageScanFindingsResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeImageScanFindingsResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeImages operation in a HTTP client.
 */
extension DescribeImagesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeImagesResponse
    public typealias HeadersType = DescribeImagesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeImagesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeRegistry operation in a HTTP client.
 */
extension DescribeRegistryResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeRegistryResponse
    public typealias HeadersType = DescribeRegistryResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeRegistryResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeRepositories operation in a HTTP client.
 */
extension DescribeRepositoriesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeRepositoriesResponse
    public typealias HeadersType = DescribeRepositoriesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeRepositoriesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetAuthorizationToken operation in a HTTP client.
 */
extension GetAuthorizationTokenResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetAuthorizationTokenResponse
    public typealias HeadersType = GetAuthorizationTokenResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetAuthorizationTokenResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetDownloadUrlForLayer operation in a HTTP client.
 */
extension GetDownloadUrlForLayerResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetDownloadUrlForLayerResponse
    public typealias HeadersType = GetDownloadUrlForLayerResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetDownloadUrlForLayerResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetLifecyclePolicy operation in a HTTP client.
 */
extension GetLifecyclePolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetLifecyclePolicyResponse
    public typealias HeadersType = GetLifecyclePolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetLifecyclePolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetLifecyclePolicyPreview operation in a HTTP client.
 */
extension GetLifecyclePolicyPreviewResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetLifecyclePolicyPreviewResponse
    public typealias HeadersType = GetLifecyclePolicyPreviewResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetLifecyclePolicyPreviewResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetRegistryPolicy operation in a HTTP client.
 */
extension GetRegistryPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetRegistryPolicyResponse
    public typealias HeadersType = GetRegistryPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetRegistryPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetRepositoryPolicy operation in a HTTP client.
 */
extension GetRepositoryPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = GetRepositoryPolicyResponse
    public typealias HeadersType = GetRepositoryPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetRepositoryPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the InitiateLayerUpload operation in a HTTP client.
 */
extension InitiateLayerUploadResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = InitiateLayerUploadResponse
    public typealias HeadersType = InitiateLayerUploadResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> InitiateLayerUploadResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListImages operation in a HTTP client.
 */
extension ListImagesResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListImagesResponse
    public typealias HeadersType = ListImagesResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListImagesResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ListTagsForResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsForResourceResponse
    public typealias HeadersType = ListTagsForResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsForResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutImage operation in a HTTP client.
 */
extension PutImageResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutImageResponse
    public typealias HeadersType = PutImageResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutImageResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutImageScanningConfiguration operation in a HTTP client.
 */
extension PutImageScanningConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutImageScanningConfigurationResponse
    public typealias HeadersType = PutImageScanningConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutImageScanningConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutImageTagMutability operation in a HTTP client.
 */
extension PutImageTagMutabilityResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutImageTagMutabilityResponse
    public typealias HeadersType = PutImageTagMutabilityResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutImageTagMutabilityResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutLifecyclePolicy operation in a HTTP client.
 */
extension PutLifecyclePolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutLifecyclePolicyResponse
    public typealias HeadersType = PutLifecyclePolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutLifecyclePolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutRegistryPolicy operation in a HTTP client.
 */
extension PutRegistryPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutRegistryPolicyResponse
    public typealias HeadersType = PutRegistryPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutRegistryPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutReplicationConfiguration operation in a HTTP client.
 */
extension PutReplicationConfigurationResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = PutReplicationConfigurationResponse
    public typealias HeadersType = PutReplicationConfigurationResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutReplicationConfigurationResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SetRepositoryPolicy operation in a HTTP client.
 */
extension SetRepositoryPolicyResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = SetRepositoryPolicyResponse
    public typealias HeadersType = SetRepositoryPolicyResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SetRepositoryPolicyResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartImageScan operation in a HTTP client.
 */
extension StartImageScanResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StartImageScanResponse
    public typealias HeadersType = StartImageScanResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartImageScanResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartLifecyclePolicyPreview operation in a HTTP client.
 */
extension StartLifecyclePolicyPreviewResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = StartLifecyclePolicyPreviewResponse
    public typealias HeadersType = StartLifecyclePolicyPreviewResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartLifecyclePolicyPreviewResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TagResource operation in a HTTP client.
 */
extension TagResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = TagResourceResponse
    public typealias HeadersType = TagResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UntagResource operation in a HTTP client.
 */
extension UntagResourceResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UntagResourceResponse
    public typealias HeadersType = UntagResourceResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UntagResourceResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UploadLayerPart operation in a HTTP client.
 */
extension UploadLayerPartResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = UploadLayerPartResponse
    public typealias HeadersType = UploadLayerPartResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UploadLayerPartResponse {
        return try bodyDecodableProvider()
    }
}
