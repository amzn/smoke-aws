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
// ECROperationsClientInput.swift
// ECRClient
//

import Foundation
import SmokeHTTPClient
import ECRModel

/**
 Type to handle the input to the BatchCheckLayerAvailability operation in a HTTP client.
 */
public typealias BatchCheckLayerAvailabilityOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchDeleteImage operation in a HTTP client.
 */
public typealias BatchDeleteImageOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetImage operation in a HTTP client.
 */
public typealias BatchGetImageOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CompleteLayerUpload operation in a HTTP client.
 */
public typealias CompleteLayerUploadOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateRepository operation in a HTTP client.
 */
public typealias CreateRepositoryOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteLifecyclePolicy operation in a HTTP client.
 */
public typealias DeleteLifecyclePolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteRegistryPolicy operation in a HTTP client.
 */
public typealias DeleteRegistryPolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteRepository operation in a HTTP client.
 */
public typealias DeleteRepositoryOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteRepositoryPolicy operation in a HTTP client.
 */
public typealias DeleteRepositoryPolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeImageScanFindings operation in a HTTP client.
 */
public typealias DescribeImageScanFindingsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeImages operation in a HTTP client.
 */
public typealias DescribeImagesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeRegistry operation in a HTTP client.
 */
public typealias DescribeRegistryOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeRepositories operation in a HTTP client.
 */
public typealias DescribeRepositoriesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetAuthorizationToken operation in a HTTP client.
 */
public typealias GetAuthorizationTokenOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetDownloadUrlForLayer operation in a HTTP client.
 */
public typealias GetDownloadUrlForLayerOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetLifecyclePolicy operation in a HTTP client.
 */
public typealias GetLifecyclePolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetLifecyclePolicyPreview operation in a HTTP client.
 */
public typealias GetLifecyclePolicyPreviewOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetRegistryPolicy operation in a HTTP client.
 */
public typealias GetRegistryPolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetRepositoryPolicy operation in a HTTP client.
 */
public typealias GetRepositoryPolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the InitiateLayerUpload operation in a HTTP client.
 */
public typealias InitiateLayerUploadOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListImages operation in a HTTP client.
 */
public typealias ListImagesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public typealias ListTagsForResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutImage operation in a HTTP client.
 */
public typealias PutImageOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutImageScanningConfiguration operation in a HTTP client.
 */
public typealias PutImageScanningConfigurationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutImageTagMutability operation in a HTTP client.
 */
public typealias PutImageTagMutabilityOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutLifecyclePolicy operation in a HTTP client.
 */
public typealias PutLifecyclePolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutRegistryPolicy operation in a HTTP client.
 */
public typealias PutRegistryPolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutReplicationConfiguration operation in a HTTP client.
 */
public typealias PutReplicationConfigurationOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SetRepositoryPolicy operation in a HTTP client.
 */
public typealias SetRepositoryPolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartImageScan operation in a HTTP client.
 */
public typealias StartImageScanOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartLifecyclePolicyPreview operation in a HTTP client.
 */
public typealias StartLifecyclePolicyPreviewOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UploadLayerPart operation in a HTTP client.
 */
public typealias UploadLayerPartOperationHTTPRequestInput = BodyHTTPRequestInput
