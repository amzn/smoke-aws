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
// ECRModelOperations.swift
// ECRModel
//

import Foundation

/**
 Operation enumeration for the ECRModel.
 */
public enum ECRModelOperations: String, Hashable, CustomStringConvertible {
    case batchCheckLayerAvailability = "BatchCheckLayerAvailability"
    case batchDeleteImage = "BatchDeleteImage"
    case batchGetImage = "BatchGetImage"
    case completeLayerUpload = "CompleteLayerUpload"
    case createRepository = "CreateRepository"
    case deleteLifecyclePolicy = "DeleteLifecyclePolicy"
    case deleteRegistryPolicy = "DeleteRegistryPolicy"
    case deleteRepository = "DeleteRepository"
    case deleteRepositoryPolicy = "DeleteRepositoryPolicy"
    case describeImageReplicationStatus = "DescribeImageReplicationStatus"
    case describeImageScanFindings = "DescribeImageScanFindings"
    case describeImages = "DescribeImages"
    case describeRegistry = "DescribeRegistry"
    case describeRepositories = "DescribeRepositories"
    case getAuthorizationToken = "GetAuthorizationToken"
    case getDownloadUrlForLayer = "GetDownloadUrlForLayer"
    case getLifecyclePolicy = "GetLifecyclePolicy"
    case getLifecyclePolicyPreview = "GetLifecyclePolicyPreview"
    case getRegistryPolicy = "GetRegistryPolicy"
    case getRepositoryPolicy = "GetRepositoryPolicy"
    case initiateLayerUpload = "InitiateLayerUpload"
    case listImages = "ListImages"
    case listTagsForResource = "ListTagsForResource"
    case putImage = "PutImage"
    case putImageScanningConfiguration = "PutImageScanningConfiguration"
    case putImageTagMutability = "PutImageTagMutability"
    case putLifecyclePolicy = "PutLifecyclePolicy"
    case putRegistryPolicy = "PutRegistryPolicy"
    case putReplicationConfiguration = "PutReplicationConfiguration"
    case setRepositoryPolicy = "SetRepositoryPolicy"
    case startImageScan = "StartImageScan"
    case startLifecyclePolicyPreview = "StartLifecyclePolicyPreview"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case uploadLayerPart = "UploadLayerPart"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .batchCheckLayerAvailability:
            return "/"
        case .batchDeleteImage:
            return "/"
        case .batchGetImage:
            return "/"
        case .completeLayerUpload:
            return "/"
        case .createRepository:
            return "/"
        case .deleteLifecyclePolicy:
            return "/"
        case .deleteRegistryPolicy:
            return "/"
        case .deleteRepository:
            return "/"
        case .deleteRepositoryPolicy:
            return "/"
        case .describeImageReplicationStatus:
            return "/"
        case .describeImageScanFindings:
            return "/"
        case .describeImages:
            return "/"
        case .describeRegistry:
            return "/"
        case .describeRepositories:
            return "/"
        case .getAuthorizationToken:
            return "/"
        case .getDownloadUrlForLayer:
            return "/"
        case .getLifecyclePolicy:
            return "/"
        case .getLifecyclePolicyPreview:
            return "/"
        case .getRegistryPolicy:
            return "/"
        case .getRepositoryPolicy:
            return "/"
        case .initiateLayerUpload:
            return "/"
        case .listImages:
            return "/"
        case .listTagsForResource:
            return "/"
        case .putImage:
            return "/"
        case .putImageScanningConfiguration:
            return "/"
        case .putImageTagMutability:
            return "/"
        case .putLifecyclePolicy:
            return "/"
        case .putRegistryPolicy:
            return "/"
        case .putReplicationConfiguration:
            return "/"
        case .setRepositoryPolicy:
            return "/"
        case .startImageScan:
            return "/"
        case .startLifecyclePolicyPreview:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        case .uploadLayerPart:
            return "/"
        }
    }
}
