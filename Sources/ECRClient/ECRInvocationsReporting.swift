// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// ECRInvocationsReporting.swift
// ECRClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import ECRModel

/**
 Invocations reporting for the ECRModel.
 */
public struct ECRInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable> {
    public let batchCheckLayerAvailability: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let batchDeleteImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let batchGetImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let batchGetRepositoryScanningConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let completeLayerUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createPullThroughCacheRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createRepository: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteLifecyclePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deletePullThroughCacheRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteRegistryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteRepository: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteRepositoryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImageReplicationStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImageScanFindings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describePullThroughCacheRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeRegistry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeRepositories: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getAuthorizationToken: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getDownloadUrlForLayer: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getLifecyclePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getLifecyclePolicyPreview: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getRegistryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getRegistryScanningConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getRepositoryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let initiateLayerUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putImageScanningConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putImageTagMutability: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putLifecyclePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putRegistryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putRegistryScanningConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putReplicationConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setRepositoryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startImageScan: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startLifecyclePolicyPreview: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let uploadLayerPart: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: ECROperationsReporting) {
        self.batchCheckLayerAvailability = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchCheckLayerAvailability)
        self.batchDeleteImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchDeleteImage)
        self.batchGetImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetImage)
        self.batchGetRepositoryScanningConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetRepositoryScanningConfiguration)
        self.completeLayerUpload = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.completeLayerUpload)
        self.createPullThroughCacheRule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createPullThroughCacheRule)
        self.createRepository = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createRepository)
        self.deleteLifecyclePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteLifecyclePolicy)
        self.deletePullThroughCacheRule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deletePullThroughCacheRule)
        self.deleteRegistryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRegistryPolicy)
        self.deleteRepository = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRepository)
        self.deleteRepositoryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRepositoryPolicy)
        self.describeImageReplicationStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImageReplicationStatus)
        self.describeImageScanFindings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImageScanFindings)
        self.describeImages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImages)
        self.describePullThroughCacheRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describePullThroughCacheRules)
        self.describeRegistry = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeRegistry)
        self.describeRepositories = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeRepositories)
        self.getAuthorizationToken = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getAuthorizationToken)
        self.getDownloadUrlForLayer = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getDownloadUrlForLayer)
        self.getLifecyclePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getLifecyclePolicy)
        self.getLifecyclePolicyPreview = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getLifecyclePolicyPreview)
        self.getRegistryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getRegistryPolicy)
        self.getRegistryScanningConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getRegistryScanningConfiguration)
        self.getRepositoryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getRepositoryPolicy)
        self.initiateLayerUpload = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.initiateLayerUpload)
        self.listImages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listImages)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.putImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putImage)
        self.putImageScanningConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putImageScanningConfiguration)
        self.putImageTagMutability = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putImageTagMutability)
        self.putLifecyclePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putLifecyclePolicy)
        self.putRegistryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putRegistryPolicy)
        self.putRegistryScanningConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putRegistryScanningConfiguration)
        self.putReplicationConfiguration = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putReplicationConfiguration)
        self.setRepositoryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setRepositoryPolicy)
        self.startImageScan = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startImageScan)
        self.startLifecyclePolicyPreview = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startLifecyclePolicyPreview)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.uploadLayerPart = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.uploadLayerPart)
    }
}
