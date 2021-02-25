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
// ECRInvocationsReporting.swift
// ECRClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import ECRModel

/**
 Operation reporting for the ECRModel.
 */
public struct ECRInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let batchCheckLayerAvailability: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchDeleteImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchGetImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let completeLayerUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createRepository: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteLifecyclePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteRegistryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteRepository: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteRepositoryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeImageScanFindings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeRegistry: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeRepositories: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getAuthorizationToken: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getDownloadUrlForLayer: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getLifecyclePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getLifecyclePolicyPreview: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getRegistryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getRepositoryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let initiateLayerUpload: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putImageScanningConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putImageTagMutability: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putLifecyclePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putRegistryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putReplicationConfiguration: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setRepositoryPolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startImageScan: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startLifecyclePolicyPreview: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let uploadLayerPart: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: ECROperationsReporting) {
        self.batchCheckLayerAvailability = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchCheckLayerAvailability)
        self.batchDeleteImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchDeleteImage)
        self.batchGetImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetImage)
        self.completeLayerUpload = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.completeLayerUpload)
        self.createRepository = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createRepository)
        self.deleteLifecyclePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteLifecyclePolicy)
        self.deleteRegistryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRegistryPolicy)
        self.deleteRepository = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRepository)
        self.deleteRepositoryPolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteRepositoryPolicy)
        self.describeImageScanFindings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImageScanFindings)
        self.describeImages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeImages)
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
