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
// ECROperationsReporting.swift
// ECRClient
//

import Foundation
import SmokeAWSCore
import ECRModel

/**
 Operation reporting for the ECRModel.
 */
public struct ECROperationsReporting {
    let batchCheckLayerAvailability: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let batchDeleteImage: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let batchGetImage: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let completeLayerUpload: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let createRepository: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let deleteLifecyclePolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let deleteRegistryPolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let deleteRepository: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let deleteRepositoryPolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let describeImageScanFindings: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let describeImages: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let describeRegistry: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let describeRepositories: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let getAuthorizationToken: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let getDownloadUrlForLayer: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let getLifecyclePolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let getLifecyclePolicyPreview: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let getRegistryPolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let getRepositoryPolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let initiateLayerUpload: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let listImages: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let putImage: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let putImageScanningConfiguration: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let putImageTagMutability: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let putLifecyclePolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let putRegistryPolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let putReplicationConfiguration: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let setRepositoryPolicy: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let startImageScan: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let startLifecyclePolicyPreview: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<ECRModelOperations>
    let uploadLayerPart: StandardSmokeAWSOperationReporting<ECRModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<ECRModelOperations>) {
        self.batchCheckLayerAvailability = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchCheckLayerAvailability, configuration: reportingConfiguration)
        self.batchDeleteImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchDeleteImage, configuration: reportingConfiguration)
        self.batchGetImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetImage, configuration: reportingConfiguration)
        self.completeLayerUpload = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .completeLayerUpload, configuration: reportingConfiguration)
        self.createRepository = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createRepository, configuration: reportingConfiguration)
        self.deleteLifecyclePolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteLifecyclePolicy, configuration: reportingConfiguration)
        self.deleteRegistryPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteRegistryPolicy, configuration: reportingConfiguration)
        self.deleteRepository = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteRepository, configuration: reportingConfiguration)
        self.deleteRepositoryPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteRepositoryPolicy, configuration: reportingConfiguration)
        self.describeImageScanFindings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeImageScanFindings, configuration: reportingConfiguration)
        self.describeImages = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeImages, configuration: reportingConfiguration)
        self.describeRegistry = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeRegistry, configuration: reportingConfiguration)
        self.describeRepositories = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeRepositories, configuration: reportingConfiguration)
        self.getAuthorizationToken = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getAuthorizationToken, configuration: reportingConfiguration)
        self.getDownloadUrlForLayer = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getDownloadUrlForLayer, configuration: reportingConfiguration)
        self.getLifecyclePolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getLifecyclePolicy, configuration: reportingConfiguration)
        self.getLifecyclePolicyPreview = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getLifecyclePolicyPreview, configuration: reportingConfiguration)
        self.getRegistryPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getRegistryPolicy, configuration: reportingConfiguration)
        self.getRepositoryPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getRepositoryPolicy, configuration: reportingConfiguration)
        self.initiateLayerUpload = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .initiateLayerUpload, configuration: reportingConfiguration)
        self.listImages = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listImages, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.putImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putImage, configuration: reportingConfiguration)
        self.putImageScanningConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putImageScanningConfiguration, configuration: reportingConfiguration)
        self.putImageTagMutability = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putImageTagMutability, configuration: reportingConfiguration)
        self.putLifecyclePolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putLifecyclePolicy, configuration: reportingConfiguration)
        self.putRegistryPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putRegistryPolicy, configuration: reportingConfiguration)
        self.putReplicationConfiguration = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putReplicationConfiguration, configuration: reportingConfiguration)
        self.setRepositoryPolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setRepositoryPolicy, configuration: reportingConfiguration)
        self.startImageScan = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startImageScan, configuration: reportingConfiguration)
        self.startLifecyclePolicyPreview = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startLifecyclePolicyPreview, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.uploadLayerPart = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .uploadLayerPart, configuration: reportingConfiguration)
    }
}
