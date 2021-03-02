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
// ECRModelDefaultInstances.swift
// ECRModel
//

import Foundation

public extension Attribute {
    /**
     Default instance of the Attribute structure.
     */
    static let __default: ECRModel.Attribute = {
        let defaultInstance = ECRModel.Attribute(
            key: "0",
            value: nil)

        return defaultInstance
    }()
}

public extension AuthorizationData {
    /**
     Default instance of the AuthorizationData structure.
     */
    static let __default: ECRModel.AuthorizationData = {
        let defaultInstance = ECRModel.AuthorizationData(
            authorizationToken: nil,
            expiresAt: nil,
            proxyEndpoint: nil)

        return defaultInstance
    }()
}

public extension BatchCheckLayerAvailabilityRequest {
    /**
     Default instance of the BatchCheckLayerAvailabilityRequest structure.
     */
    static let __default: ECRModel.BatchCheckLayerAvailabilityRequest = {
        let defaultInstance = ECRModel.BatchCheckLayerAvailabilityRequest(
            layerDigests: [""],
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension BatchCheckLayerAvailabilityResponse {
    /**
     Default instance of the BatchCheckLayerAvailabilityResponse structure.
     */
    static let __default: ECRModel.BatchCheckLayerAvailabilityResponse = {
        let defaultInstance = ECRModel.BatchCheckLayerAvailabilityResponse(
            failures: nil,
            layers: nil)

        return defaultInstance
    }()
}

public extension BatchDeleteImageRequest {
    /**
     Default instance of the BatchDeleteImageRequest structure.
     */
    static let __default: ECRModel.BatchDeleteImageRequest = {
        let defaultInstance = ECRModel.BatchDeleteImageRequest(
            imageIds: [ImageIdentifier.__default],
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension BatchDeleteImageResponse {
    /**
     Default instance of the BatchDeleteImageResponse structure.
     */
    static let __default: ECRModel.BatchDeleteImageResponse = {
        let defaultInstance = ECRModel.BatchDeleteImageResponse(
            failures: nil,
            imageIds: nil)

        return defaultInstance
    }()
}

public extension BatchGetImageRequest {
    /**
     Default instance of the BatchGetImageRequest structure.
     */
    static let __default: ECRModel.BatchGetImageRequest = {
        let defaultInstance = ECRModel.BatchGetImageRequest(
            acceptedMediaTypes: nil,
            imageIds: [ImageIdentifier.__default],
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension BatchGetImageResponse {
    /**
     Default instance of the BatchGetImageResponse structure.
     */
    static let __default: ECRModel.BatchGetImageResponse = {
        let defaultInstance = ECRModel.BatchGetImageResponse(
            failures: nil,
            images: nil)

        return defaultInstance
    }()
}

public extension CompleteLayerUploadRequest {
    /**
     Default instance of the CompleteLayerUploadRequest structure.
     */
    static let __default: ECRModel.CompleteLayerUploadRequest = {
        let defaultInstance = ECRModel.CompleteLayerUploadRequest(
            layerDigests: [""],
            registryId: nil,
            repositoryName: "01",
            uploadId: "")

        return defaultInstance
    }()
}

public extension CompleteLayerUploadResponse {
    /**
     Default instance of the CompleteLayerUploadResponse structure.
     */
    static let __default: ECRModel.CompleteLayerUploadResponse = {
        let defaultInstance = ECRModel.CompleteLayerUploadResponse(
            layerDigest: nil,
            registryId: nil,
            repositoryName: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension CreateRepositoryRequest {
    /**
     Default instance of the CreateRepositoryRequest structure.
     */
    static let __default: ECRModel.CreateRepositoryRequest = {
        let defaultInstance = ECRModel.CreateRepositoryRequest(
            encryptionConfiguration: nil,
            imageScanningConfiguration: nil,
            imageTagMutability: nil,
            repositoryName: "01",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateRepositoryResponse {
    /**
     Default instance of the CreateRepositoryResponse structure.
     */
    static let __default: ECRModel.CreateRepositoryResponse = {
        let defaultInstance = ECRModel.CreateRepositoryResponse(
            repository: nil)

        return defaultInstance
    }()
}

public extension DeleteLifecyclePolicyRequest {
    /**
     Default instance of the DeleteLifecyclePolicyRequest structure.
     */
    static let __default: ECRModel.DeleteLifecyclePolicyRequest = {
        let defaultInstance = ECRModel.DeleteLifecyclePolicyRequest(
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension DeleteLifecyclePolicyResponse {
    /**
     Default instance of the DeleteLifecyclePolicyResponse structure.
     */
    static let __default: ECRModel.DeleteLifecyclePolicyResponse = {
        let defaultInstance = ECRModel.DeleteLifecyclePolicyResponse(
            lastEvaluatedAt: nil,
            lifecyclePolicyText: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension DeleteRegistryPolicyRequest {
    /**
     Default instance of the DeleteRegistryPolicyRequest structure.
     */
    static let __default: ECRModel.DeleteRegistryPolicyRequest = {
        let defaultInstance = ECRModel.DeleteRegistryPolicyRequest()

        return defaultInstance
    }()
}

public extension DeleteRegistryPolicyResponse {
    /**
     Default instance of the DeleteRegistryPolicyResponse structure.
     */
    static let __default: ECRModel.DeleteRegistryPolicyResponse = {
        let defaultInstance = ECRModel.DeleteRegistryPolicyResponse(
            policyText: nil,
            registryId: nil)

        return defaultInstance
    }()
}

public extension DeleteRepositoryPolicyRequest {
    /**
     Default instance of the DeleteRepositoryPolicyRequest structure.
     */
    static let __default: ECRModel.DeleteRepositoryPolicyRequest = {
        let defaultInstance = ECRModel.DeleteRepositoryPolicyRequest(
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension DeleteRepositoryPolicyResponse {
    /**
     Default instance of the DeleteRepositoryPolicyResponse structure.
     */
    static let __default: ECRModel.DeleteRepositoryPolicyResponse = {
        let defaultInstance = ECRModel.DeleteRepositoryPolicyResponse(
            policyText: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension DeleteRepositoryRequest {
    /**
     Default instance of the DeleteRepositoryRequest structure.
     */
    static let __default: ECRModel.DeleteRepositoryRequest = {
        let defaultInstance = ECRModel.DeleteRepositoryRequest(
            force: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension DeleteRepositoryResponse {
    /**
     Default instance of the DeleteRepositoryResponse structure.
     */
    static let __default: ECRModel.DeleteRepositoryResponse = {
        let defaultInstance = ECRModel.DeleteRepositoryResponse(
            repository: nil)

        return defaultInstance
    }()
}

public extension DescribeImageScanFindingsRequest {
    /**
     Default instance of the DescribeImageScanFindingsRequest structure.
     */
    static let __default: ECRModel.DescribeImageScanFindingsRequest = {
        let defaultInstance = ECRModel.DescribeImageScanFindingsRequest(
            imageId: ImageIdentifier.__default,
            maxResults: nil,
            nextToken: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension DescribeImageScanFindingsResponse {
    /**
     Default instance of the DescribeImageScanFindingsResponse structure.
     */
    static let __default: ECRModel.DescribeImageScanFindingsResponse = {
        let defaultInstance = ECRModel.DescribeImageScanFindingsResponse(
            imageId: nil,
            imageScanFindings: nil,
            imageScanStatus: nil,
            nextToken: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension DescribeImagesFilter {
    /**
     Default instance of the DescribeImagesFilter structure.
     */
    static let __default: ECRModel.DescribeImagesFilter = {
        let defaultInstance = ECRModel.DescribeImagesFilter(
            tagStatus: nil)

        return defaultInstance
    }()
}

public extension DescribeImagesRequest {
    /**
     Default instance of the DescribeImagesRequest structure.
     */
    static let __default: ECRModel.DescribeImagesRequest = {
        let defaultInstance = ECRModel.DescribeImagesRequest(
            filter: nil,
            imageIds: nil,
            maxResults: nil,
            nextToken: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension DescribeImagesResponse {
    /**
     Default instance of the DescribeImagesResponse structure.
     */
    static let __default: ECRModel.DescribeImagesResponse = {
        let defaultInstance = ECRModel.DescribeImagesResponse(
            imageDetails: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeRegistryRequest {
    /**
     Default instance of the DescribeRegistryRequest structure.
     */
    static let __default: ECRModel.DescribeRegistryRequest = {
        let defaultInstance = ECRModel.DescribeRegistryRequest()

        return defaultInstance
    }()
}

public extension DescribeRegistryResponse {
    /**
     Default instance of the DescribeRegistryResponse structure.
     */
    static let __default: ECRModel.DescribeRegistryResponse = {
        let defaultInstance = ECRModel.DescribeRegistryResponse(
            registryId: nil,
            replicationConfiguration: nil)

        return defaultInstance
    }()
}

public extension DescribeRepositoriesRequest {
    /**
     Default instance of the DescribeRepositoriesRequest structure.
     */
    static let __default: ECRModel.DescribeRepositoriesRequest = {
        let defaultInstance = ECRModel.DescribeRepositoriesRequest(
            maxResults: nil,
            nextToken: nil,
            registryId: nil,
            repositoryNames: nil)

        return defaultInstance
    }()
}

public extension DescribeRepositoriesResponse {
    /**
     Default instance of the DescribeRepositoriesResponse structure.
     */
    static let __default: ECRModel.DescribeRepositoriesResponse = {
        let defaultInstance = ECRModel.DescribeRepositoriesResponse(
            nextToken: nil,
            repositories: nil)

        return defaultInstance
    }()
}

public extension EmptyUploadException {
    /**
     Default instance of the EmptyUploadException structure.
     */
    static let __default: ECRModel.EmptyUploadException = {
        let defaultInstance = ECRModel.EmptyUploadException(
            message: nil)

        return defaultInstance
    }()
}

public extension EncryptionConfiguration {
    /**
     Default instance of the EncryptionConfiguration structure.
     */
    static let __default: ECRModel.EncryptionConfiguration = {
        let defaultInstance = ECRModel.EncryptionConfiguration(
            encryptionType: .__default,
            kmsKey: nil)

        return defaultInstance
    }()
}

public extension GetAuthorizationTokenRequest {
    /**
     Default instance of the GetAuthorizationTokenRequest structure.
     */
    static let __default: ECRModel.GetAuthorizationTokenRequest = {
        let defaultInstance = ECRModel.GetAuthorizationTokenRequest()

        return defaultInstance
    }()
}

public extension GetAuthorizationTokenResponse {
    /**
     Default instance of the GetAuthorizationTokenResponse structure.
     */
    static let __default: ECRModel.GetAuthorizationTokenResponse = {
        let defaultInstance = ECRModel.GetAuthorizationTokenResponse(
            authorizationData: nil)

        return defaultInstance
    }()
}

public extension GetDownloadUrlForLayerRequest {
    /**
     Default instance of the GetDownloadUrlForLayerRequest structure.
     */
    static let __default: ECRModel.GetDownloadUrlForLayerRequest = {
        let defaultInstance = ECRModel.GetDownloadUrlForLayerRequest(
            layerDigest: "",
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension GetDownloadUrlForLayerResponse {
    /**
     Default instance of the GetDownloadUrlForLayerResponse structure.
     */
    static let __default: ECRModel.GetDownloadUrlForLayerResponse = {
        let defaultInstance = ECRModel.GetDownloadUrlForLayerResponse(
            downloadUrl: nil,
            layerDigest: nil)

        return defaultInstance
    }()
}

public extension GetLifecyclePolicyPreviewRequest {
    /**
     Default instance of the GetLifecyclePolicyPreviewRequest structure.
     */
    static let __default: ECRModel.GetLifecyclePolicyPreviewRequest = {
        let defaultInstance = ECRModel.GetLifecyclePolicyPreviewRequest(
            filter: nil,
            imageIds: nil,
            maxResults: nil,
            nextToken: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension GetLifecyclePolicyPreviewResponse {
    /**
     Default instance of the GetLifecyclePolicyPreviewResponse structure.
     */
    static let __default: ECRModel.GetLifecyclePolicyPreviewResponse = {
        let defaultInstance = ECRModel.GetLifecyclePolicyPreviewResponse(
            lifecyclePolicyText: nil,
            nextToken: nil,
            previewResults: nil,
            registryId: nil,
            repositoryName: nil,
            status: nil,
            summary: nil)

        return defaultInstance
    }()
}

public extension GetLifecyclePolicyRequest {
    /**
     Default instance of the GetLifecyclePolicyRequest structure.
     */
    static let __default: ECRModel.GetLifecyclePolicyRequest = {
        let defaultInstance = ECRModel.GetLifecyclePolicyRequest(
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension GetLifecyclePolicyResponse {
    /**
     Default instance of the GetLifecyclePolicyResponse structure.
     */
    static let __default: ECRModel.GetLifecyclePolicyResponse = {
        let defaultInstance = ECRModel.GetLifecyclePolicyResponse(
            lastEvaluatedAt: nil,
            lifecyclePolicyText: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension GetRegistryPolicyRequest {
    /**
     Default instance of the GetRegistryPolicyRequest structure.
     */
    static let __default: ECRModel.GetRegistryPolicyRequest = {
        let defaultInstance = ECRModel.GetRegistryPolicyRequest()

        return defaultInstance
    }()
}

public extension GetRegistryPolicyResponse {
    /**
     Default instance of the GetRegistryPolicyResponse structure.
     */
    static let __default: ECRModel.GetRegistryPolicyResponse = {
        let defaultInstance = ECRModel.GetRegistryPolicyResponse(
            policyText: nil,
            registryId: nil)

        return defaultInstance
    }()
}

public extension GetRepositoryPolicyRequest {
    /**
     Default instance of the GetRepositoryPolicyRequest structure.
     */
    static let __default: ECRModel.GetRepositoryPolicyRequest = {
        let defaultInstance = ECRModel.GetRepositoryPolicyRequest(
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension GetRepositoryPolicyResponse {
    /**
     Default instance of the GetRepositoryPolicyResponse structure.
     */
    static let __default: ECRModel.GetRepositoryPolicyResponse = {
        let defaultInstance = ECRModel.GetRepositoryPolicyResponse(
            policyText: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension Image {
    /**
     Default instance of the Image structure.
     */
    static let __default: ECRModel.Image = {
        let defaultInstance = ECRModel.Image(
            imageId: nil,
            imageManifest: nil,
            imageManifestMediaType: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension ImageAlreadyExistsException {
    /**
     Default instance of the ImageAlreadyExistsException structure.
     */
    static let __default: ECRModel.ImageAlreadyExistsException = {
        let defaultInstance = ECRModel.ImageAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension ImageDetail {
    /**
     Default instance of the ImageDetail structure.
     */
    static let __default: ECRModel.ImageDetail = {
        let defaultInstance = ECRModel.ImageDetail(
            artifactMediaType: nil,
            imageDigest: nil,
            imageManifestMediaType: nil,
            imagePushedAt: nil,
            imageScanFindingsSummary: nil,
            imageScanStatus: nil,
            imageSizeInBytes: nil,
            imageTags: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension ImageDigestDoesNotMatchException {
    /**
     Default instance of the ImageDigestDoesNotMatchException structure.
     */
    static let __default: ECRModel.ImageDigestDoesNotMatchException = {
        let defaultInstance = ECRModel.ImageDigestDoesNotMatchException(
            message: nil)

        return defaultInstance
    }()
}

public extension ImageFailure {
    /**
     Default instance of the ImageFailure structure.
     */
    static let __default: ECRModel.ImageFailure = {
        let defaultInstance = ECRModel.ImageFailure(
            failureCode: nil,
            failureReason: nil,
            imageId: nil)

        return defaultInstance
    }()
}

public extension ImageIdentifier {
    /**
     Default instance of the ImageIdentifier structure.
     */
    static let __default: ECRModel.ImageIdentifier = {
        let defaultInstance = ECRModel.ImageIdentifier(
            imageDigest: nil,
            imageTag: nil)

        return defaultInstance
    }()
}

public extension ImageNotFoundException {
    /**
     Default instance of the ImageNotFoundException structure.
     */
    static let __default: ECRModel.ImageNotFoundException = {
        let defaultInstance = ECRModel.ImageNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ImageScanFinding {
    /**
     Default instance of the ImageScanFinding structure.
     */
    static let __default: ECRModel.ImageScanFinding = {
        let defaultInstance = ECRModel.ImageScanFinding(
            attributes: nil,
            description: nil,
            name: nil,
            severity: nil,
            uri: nil)

        return defaultInstance
    }()
}

public extension ImageScanFindings {
    /**
     Default instance of the ImageScanFindings structure.
     */
    static let __default: ECRModel.ImageScanFindings = {
        let defaultInstance = ECRModel.ImageScanFindings(
            findingSeverityCounts: nil,
            findings: nil,
            imageScanCompletedAt: nil,
            vulnerabilitySourceUpdatedAt: nil)

        return defaultInstance
    }()
}

public extension ImageScanFindingsSummary {
    /**
     Default instance of the ImageScanFindingsSummary structure.
     */
    static let __default: ECRModel.ImageScanFindingsSummary = {
        let defaultInstance = ECRModel.ImageScanFindingsSummary(
            findingSeverityCounts: nil,
            imageScanCompletedAt: nil,
            vulnerabilitySourceUpdatedAt: nil)

        return defaultInstance
    }()
}

public extension ImageScanStatus {
    /**
     Default instance of the ImageScanStatus structure.
     */
    static let __default: ECRModel.ImageScanStatus = {
        let defaultInstance = ECRModel.ImageScanStatus(
            description: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ImageScanningConfiguration {
    /**
     Default instance of the ImageScanningConfiguration structure.
     */
    static let __default: ECRModel.ImageScanningConfiguration = {
        let defaultInstance = ECRModel.ImageScanningConfiguration(
            scanOnPush: nil)

        return defaultInstance
    }()
}

public extension ImageTagAlreadyExistsException {
    /**
     Default instance of the ImageTagAlreadyExistsException structure.
     */
    static let __default: ECRModel.ImageTagAlreadyExistsException = {
        let defaultInstance = ECRModel.ImageTagAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension InitiateLayerUploadRequest {
    /**
     Default instance of the InitiateLayerUploadRequest structure.
     */
    static let __default: ECRModel.InitiateLayerUploadRequest = {
        let defaultInstance = ECRModel.InitiateLayerUploadRequest(
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension InitiateLayerUploadResponse {
    /**
     Default instance of the InitiateLayerUploadResponse structure.
     */
    static let __default: ECRModel.InitiateLayerUploadResponse = {
        let defaultInstance = ECRModel.InitiateLayerUploadResponse(
            partSize: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension InvalidLayerException {
    /**
     Default instance of the InvalidLayerException structure.
     */
    static let __default: ECRModel.InvalidLayerException = {
        let defaultInstance = ECRModel.InvalidLayerException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidLayerPartException {
    /**
     Default instance of the InvalidLayerPartException structure.
     */
    static let __default: ECRModel.InvalidLayerPartException = {
        let defaultInstance = ECRModel.InvalidLayerPartException(
            lastValidByteReceived: nil,
            message: nil,
            registryId: nil,
            repositoryName: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterException {
    /**
     Default instance of the InvalidParameterException structure.
     */
    static let __default: ECRModel.InvalidParameterException = {
        let defaultInstance = ECRModel.InvalidParameterException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidTagParameterException {
    /**
     Default instance of the InvalidTagParameterException structure.
     */
    static let __default: ECRModel.InvalidTagParameterException = {
        let defaultInstance = ECRModel.InvalidTagParameterException(
            message: nil)

        return defaultInstance
    }()
}

public extension KmsException {
    /**
     Default instance of the KmsException structure.
     */
    static let __default: ECRModel.KmsException = {
        let defaultInstance = ECRModel.KmsException(
            kmsError: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension Layer {
    /**
     Default instance of the Layer structure.
     */
    static let __default: ECRModel.Layer = {
        let defaultInstance = ECRModel.Layer(
            layerAvailability: nil,
            layerDigest: nil,
            layerSize: nil,
            mediaType: nil)

        return defaultInstance
    }()
}

public extension LayerAlreadyExistsException {
    /**
     Default instance of the LayerAlreadyExistsException structure.
     */
    static let __default: ECRModel.LayerAlreadyExistsException = {
        let defaultInstance = ECRModel.LayerAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension LayerFailure {
    /**
     Default instance of the LayerFailure structure.
     */
    static let __default: ECRModel.LayerFailure = {
        let defaultInstance = ECRModel.LayerFailure(
            failureCode: nil,
            failureReason: nil,
            layerDigest: nil)

        return defaultInstance
    }()
}

public extension LayerInaccessibleException {
    /**
     Default instance of the LayerInaccessibleException structure.
     */
    static let __default: ECRModel.LayerInaccessibleException = {
        let defaultInstance = ECRModel.LayerInaccessibleException(
            message: nil)

        return defaultInstance
    }()
}

public extension LayerPartTooSmallException {
    /**
     Default instance of the LayerPartTooSmallException structure.
     */
    static let __default: ECRModel.LayerPartTooSmallException = {
        let defaultInstance = ECRModel.LayerPartTooSmallException(
            message: nil)

        return defaultInstance
    }()
}

public extension LayersNotFoundException {
    /**
     Default instance of the LayersNotFoundException structure.
     */
    static let __default: ECRModel.LayersNotFoundException = {
        let defaultInstance = ECRModel.LayersNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyNotFoundException {
    /**
     Default instance of the LifecyclePolicyNotFoundException structure.
     */
    static let __default: ECRModel.LifecyclePolicyNotFoundException = {
        let defaultInstance = ECRModel.LifecyclePolicyNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyPreviewFilter {
    /**
     Default instance of the LifecyclePolicyPreviewFilter structure.
     */
    static let __default: ECRModel.LifecyclePolicyPreviewFilter = {
        let defaultInstance = ECRModel.LifecyclePolicyPreviewFilter(
            tagStatus: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyPreviewInProgressException {
    /**
     Default instance of the LifecyclePolicyPreviewInProgressException structure.
     */
    static let __default: ECRModel.LifecyclePolicyPreviewInProgressException = {
        let defaultInstance = ECRModel.LifecyclePolicyPreviewInProgressException(
            message: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyPreviewNotFoundException {
    /**
     Default instance of the LifecyclePolicyPreviewNotFoundException structure.
     */
    static let __default: ECRModel.LifecyclePolicyPreviewNotFoundException = {
        let defaultInstance = ECRModel.LifecyclePolicyPreviewNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyPreviewResult {
    /**
     Default instance of the LifecyclePolicyPreviewResult structure.
     */
    static let __default: ECRModel.LifecyclePolicyPreviewResult = {
        let defaultInstance = ECRModel.LifecyclePolicyPreviewResult(
            action: nil,
            appliedRulePriority: nil,
            imageDigest: nil,
            imagePushedAt: nil,
            imageTags: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyPreviewSummary {
    /**
     Default instance of the LifecyclePolicyPreviewSummary structure.
     */
    static let __default: ECRModel.LifecyclePolicyPreviewSummary = {
        let defaultInstance = ECRModel.LifecyclePolicyPreviewSummary(
            expiringImageTotalCount: nil)

        return defaultInstance
    }()
}

public extension LifecyclePolicyRuleAction {
    /**
     Default instance of the LifecyclePolicyRuleAction structure.
     */
    static let __default: ECRModel.LifecyclePolicyRuleAction = {
        let defaultInstance = ECRModel.LifecyclePolicyRuleAction(
            type: nil)

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    static let __default: ECRModel.LimitExceededException = {
        let defaultInstance = ECRModel.LimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension ListImagesFilter {
    /**
     Default instance of the ListImagesFilter structure.
     */
    static let __default: ECRModel.ListImagesFilter = {
        let defaultInstance = ECRModel.ListImagesFilter(
            tagStatus: nil)

        return defaultInstance
    }()
}

public extension ListImagesRequest {
    /**
     Default instance of the ListImagesRequest structure.
     */
    static let __default: ECRModel.ListImagesRequest = {
        let defaultInstance = ECRModel.ListImagesRequest(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension ListImagesResponse {
    /**
     Default instance of the ListImagesResponse structure.
     */
    static let __default: ECRModel.ListImagesResponse = {
        let defaultInstance = ECRModel.ListImagesResponse(
            imageIds: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceRequest {
    /**
     Default instance of the ListTagsForResourceRequest structure.
     */
    static let __default: ECRModel.ListTagsForResourceRequest = {
        let defaultInstance = ECRModel.ListTagsForResourceRequest(
            resourceArn: "value")

        return defaultInstance
    }()
}

public extension ListTagsForResourceResponse {
    /**
     Default instance of the ListTagsForResourceResponse structure.
     */
    static let __default: ECRModel.ListTagsForResourceResponse = {
        let defaultInstance = ECRModel.ListTagsForResourceResponse(
            tags: nil)

        return defaultInstance
    }()
}

public extension PutImageRequest {
    /**
     Default instance of the PutImageRequest structure.
     */
    static let __default: ECRModel.PutImageRequest = {
        let defaultInstance = ECRModel.PutImageRequest(
            imageDigest: nil,
            imageManifest: "0",
            imageManifestMediaType: nil,
            imageTag: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension PutImageResponse {
    /**
     Default instance of the PutImageResponse structure.
     */
    static let __default: ECRModel.PutImageResponse = {
        let defaultInstance = ECRModel.PutImageResponse(
            image: nil)

        return defaultInstance
    }()
}

public extension PutImageScanningConfigurationRequest {
    /**
     Default instance of the PutImageScanningConfigurationRequest structure.
     */
    static let __default: ECRModel.PutImageScanningConfigurationRequest = {
        let defaultInstance = ECRModel.PutImageScanningConfigurationRequest(
            imageScanningConfiguration: ImageScanningConfiguration.__default,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension PutImageScanningConfigurationResponse {
    /**
     Default instance of the PutImageScanningConfigurationResponse structure.
     */
    static let __default: ECRModel.PutImageScanningConfigurationResponse = {
        let defaultInstance = ECRModel.PutImageScanningConfigurationResponse(
            imageScanningConfiguration: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension PutImageTagMutabilityRequest {
    /**
     Default instance of the PutImageTagMutabilityRequest structure.
     */
    static let __default: ECRModel.PutImageTagMutabilityRequest = {
        let defaultInstance = ECRModel.PutImageTagMutabilityRequest(
            imageTagMutability: .__default,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension PutImageTagMutabilityResponse {
    /**
     Default instance of the PutImageTagMutabilityResponse structure.
     */
    static let __default: ECRModel.PutImageTagMutabilityResponse = {
        let defaultInstance = ECRModel.PutImageTagMutabilityResponse(
            imageTagMutability: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension PutLifecyclePolicyRequest {
    /**
     Default instance of the PutLifecyclePolicyRequest structure.
     */
    static let __default: ECRModel.PutLifecyclePolicyRequest = {
        let defaultInstance = ECRModel.PutLifecyclePolicyRequest(
            lifecyclePolicyText: "0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789",
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension PutLifecyclePolicyResponse {
    /**
     Default instance of the PutLifecyclePolicyResponse structure.
     */
    static let __default: ECRModel.PutLifecyclePolicyResponse = {
        let defaultInstance = ECRModel.PutLifecyclePolicyResponse(
            lifecyclePolicyText: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension PutRegistryPolicyRequest {
    /**
     Default instance of the PutRegistryPolicyRequest structure.
     */
    static let __default: ECRModel.PutRegistryPolicyRequest = {
        let defaultInstance = ECRModel.PutRegistryPolicyRequest(
            policyText: "")

        return defaultInstance
    }()
}

public extension PutRegistryPolicyResponse {
    /**
     Default instance of the PutRegistryPolicyResponse structure.
     */
    static let __default: ECRModel.PutRegistryPolicyResponse = {
        let defaultInstance = ECRModel.PutRegistryPolicyResponse(
            policyText: nil,
            registryId: nil)

        return defaultInstance
    }()
}

public extension PutReplicationConfigurationRequest {
    /**
     Default instance of the PutReplicationConfigurationRequest structure.
     */
    static let __default: ECRModel.PutReplicationConfigurationRequest = {
        let defaultInstance = ECRModel.PutReplicationConfigurationRequest(
            replicationConfiguration: ReplicationConfiguration.__default)

        return defaultInstance
    }()
}

public extension PutReplicationConfigurationResponse {
    /**
     Default instance of the PutReplicationConfigurationResponse structure.
     */
    static let __default: ECRModel.PutReplicationConfigurationResponse = {
        let defaultInstance = ECRModel.PutReplicationConfigurationResponse(
            replicationConfiguration: nil)

        return defaultInstance
    }()
}

public extension ReferencedImagesNotFoundException {
    /**
     Default instance of the ReferencedImagesNotFoundException structure.
     */
    static let __default: ECRModel.ReferencedImagesNotFoundException = {
        let defaultInstance = ECRModel.ReferencedImagesNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension RegistryPolicyNotFoundException {
    /**
     Default instance of the RegistryPolicyNotFoundException structure.
     */
    static let __default: ECRModel.RegistryPolicyNotFoundException = {
        let defaultInstance = ECRModel.RegistryPolicyNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ReplicationConfiguration {
    /**
     Default instance of the ReplicationConfiguration structure.
     */
    static let __default: ECRModel.ReplicationConfiguration = {
        let defaultInstance = ECRModel.ReplicationConfiguration(
            rules: [])

        return defaultInstance
    }()
}

public extension ReplicationDestination {
    /**
     Default instance of the ReplicationDestination structure.
     */
    static let __default: ECRModel.ReplicationDestination = {
        let defaultInstance = ECRModel.ReplicationDestination(
            region: "01",
            registryId: "")

        return defaultInstance
    }()
}

public extension ReplicationRule {
    /**
     Default instance of the ReplicationRule structure.
     */
    static let __default: ECRModel.ReplicationRule = {
        let defaultInstance = ECRModel.ReplicationRule(
            destinations: [])

        return defaultInstance
    }()
}

public extension Repository {
    /**
     Default instance of the Repository structure.
     */
    static let __default: ECRModel.Repository = {
        let defaultInstance = ECRModel.Repository(
            createdAt: nil,
            encryptionConfiguration: nil,
            imageScanningConfiguration: nil,
            imageTagMutability: nil,
            registryId: nil,
            repositoryArn: nil,
            repositoryName: nil,
            repositoryUri: nil)

        return defaultInstance
    }()
}

public extension RepositoryAlreadyExistsException {
    /**
     Default instance of the RepositoryAlreadyExistsException structure.
     */
    static let __default: ECRModel.RepositoryAlreadyExistsException = {
        let defaultInstance = ECRModel.RepositoryAlreadyExistsException(
            message: nil)

        return defaultInstance
    }()
}

public extension RepositoryNotEmptyException {
    /**
     Default instance of the RepositoryNotEmptyException structure.
     */
    static let __default: ECRModel.RepositoryNotEmptyException = {
        let defaultInstance = ECRModel.RepositoryNotEmptyException(
            message: nil)

        return defaultInstance
    }()
}

public extension RepositoryNotFoundException {
    /**
     Default instance of the RepositoryNotFoundException structure.
     */
    static let __default: ECRModel.RepositoryNotFoundException = {
        let defaultInstance = ECRModel.RepositoryNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension RepositoryPolicyNotFoundException {
    /**
     Default instance of the RepositoryPolicyNotFoundException structure.
     */
    static let __default: ECRModel.RepositoryPolicyNotFoundException = {
        let defaultInstance = ECRModel.RepositoryPolicyNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ScanNotFoundException {
    /**
     Default instance of the ScanNotFoundException structure.
     */
    static let __default: ECRModel.ScanNotFoundException = {
        let defaultInstance = ECRModel.ScanNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ServerException {
    /**
     Default instance of the ServerException structure.
     */
    static let __default: ECRModel.ServerException = {
        let defaultInstance = ECRModel.ServerException(
            message: nil)

        return defaultInstance
    }()
}

public extension SetRepositoryPolicyRequest {
    /**
     Default instance of the SetRepositoryPolicyRequest structure.
     */
    static let __default: ECRModel.SetRepositoryPolicyRequest = {
        let defaultInstance = ECRModel.SetRepositoryPolicyRequest(
            force: nil,
            policyText: "",
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension SetRepositoryPolicyResponse {
    /**
     Default instance of the SetRepositoryPolicyResponse structure.
     */
    static let __default: ECRModel.SetRepositoryPolicyResponse = {
        let defaultInstance = ECRModel.SetRepositoryPolicyResponse(
            policyText: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension StartImageScanRequest {
    /**
     Default instance of the StartImageScanRequest structure.
     */
    static let __default: ECRModel.StartImageScanRequest = {
        let defaultInstance = ECRModel.StartImageScanRequest(
            imageId: ImageIdentifier.__default,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension StartImageScanResponse {
    /**
     Default instance of the StartImageScanResponse structure.
     */
    static let __default: ECRModel.StartImageScanResponse = {
        let defaultInstance = ECRModel.StartImageScanResponse(
            imageId: nil,
            imageScanStatus: nil,
            registryId: nil,
            repositoryName: nil)

        return defaultInstance
    }()
}

public extension StartLifecyclePolicyPreviewRequest {
    /**
     Default instance of the StartLifecyclePolicyPreviewRequest structure.
     */
    static let __default: ECRModel.StartLifecyclePolicyPreviewRequest = {
        let defaultInstance = ECRModel.StartLifecyclePolicyPreviewRequest(
            lifecyclePolicyText: nil,
            registryId: nil,
            repositoryName: "01")

        return defaultInstance
    }()
}

public extension StartLifecyclePolicyPreviewResponse {
    /**
     Default instance of the StartLifecyclePolicyPreviewResponse structure.
     */
    static let __default: ECRModel.StartLifecyclePolicyPreviewResponse = {
        let defaultInstance = ECRModel.StartLifecyclePolicyPreviewResponse(
            lifecyclePolicyText: nil,
            registryId: nil,
            repositoryName: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: ECRModel.Tag = {
        let defaultInstance = ECRModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagResourceRequest {
    /**
     Default instance of the TagResourceRequest structure.
     */
    static let __default: ECRModel.TagResourceRequest = {
        let defaultInstance = ECRModel.TagResourceRequest(
            resourceArn: "value",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceResponse {
    /**
     Default instance of the TagResourceResponse structure.
     */
    static let __default: ECRModel.TagResourceResponse = {
        let defaultInstance = ECRModel.TagResourceResponse()

        return defaultInstance
    }()
}

public extension TooManyTagsException {
    /**
     Default instance of the TooManyTagsException structure.
     */
    static let __default: ECRModel.TooManyTagsException = {
        let defaultInstance = ECRModel.TooManyTagsException(
            message: nil)

        return defaultInstance
    }()
}

public extension UnsupportedImageTypeException {
    /**
     Default instance of the UnsupportedImageTypeException structure.
     */
    static let __default: ECRModel.UnsupportedImageTypeException = {
        let defaultInstance = ECRModel.UnsupportedImageTypeException(
            message: nil)

        return defaultInstance
    }()
}

public extension UntagResourceRequest {
    /**
     Default instance of the UntagResourceRequest structure.
     */
    static let __default: ECRModel.UntagResourceRequest = {
        let defaultInstance = ECRModel.UntagResourceRequest(
            resourceArn: "value",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceResponse {
    /**
     Default instance of the UntagResourceResponse structure.
     */
    static let __default: ECRModel.UntagResourceResponse = {
        let defaultInstance = ECRModel.UntagResourceResponse()

        return defaultInstance
    }()
}

public extension UploadLayerPartRequest {
    /**
     Default instance of the UploadLayerPartRequest structure.
     */
    static let __default: ECRModel.UploadLayerPartRequest = {
        let defaultInstance = ECRModel.UploadLayerPartRequest(
            layerPartBlob: Data(),
            partFirstByte: 0,
            partLastByte: 0,
            registryId: nil,
            repositoryName: "01",
            uploadId: "")

        return defaultInstance
    }()
}

public extension UploadLayerPartResponse {
    /**
     Default instance of the UploadLayerPartResponse structure.
     */
    static let __default: ECRModel.UploadLayerPartResponse = {
        let defaultInstance = ECRModel.UploadLayerPartResponse(
            lastByteReceived: nil,
            registryId: nil,
            repositoryName: nil,
            uploadId: nil)

        return defaultInstance
    }()
}

public extension UploadNotFoundException {
    /**
     Default instance of the UploadNotFoundException structure.
     */
    static let __default: ECRModel.UploadNotFoundException = {
        let defaultInstance = ECRModel.UploadNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension ValidationException {
    /**
     Default instance of the ValidationException structure.
     */
    static let __default: ECRModel.ValidationException = {
        let defaultInstance = ECRModel.ValidationException(
            message: nil)

        return defaultInstance
    }()
}
