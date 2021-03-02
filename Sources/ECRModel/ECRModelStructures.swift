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
// ECRModelStructures.swift
// ECRModel
//

import Foundation

public struct Attribute: Codable, Equatable {
    public var key: AttributeKey
    public var value: AttributeValue?

    public init(key: AttributeKey,
                value: AttributeValue? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case value
    }

    public func validate() throws {
        try key.validateAsAttributeKey()
        try value?.validateAsAttributeValue()
    }
}

public struct AuthorizationData: Codable, Equatable {
    public var authorizationToken: Base64?
    public var expiresAt: ExpirationTimestamp?
    public var proxyEndpoint: ProxyEndpoint?

    public init(authorizationToken: Base64? = nil,
                expiresAt: ExpirationTimestamp? = nil,
                proxyEndpoint: ProxyEndpoint? = nil) {
        self.authorizationToken = authorizationToken
        self.expiresAt = expiresAt
        self.proxyEndpoint = proxyEndpoint
    }

    enum CodingKeys: String, CodingKey {
        case authorizationToken
        case expiresAt
        case proxyEndpoint
    }

    public func validate() throws {
        try authorizationToken?.validateAsBase64()
    }
}

public struct BatchCheckLayerAvailabilityRequest: Codable, Equatable {
    public var layerDigests: BatchedOperationLayerDigestList
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(layerDigests: BatchedOperationLayerDigestList,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.layerDigests = layerDigests
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case layerDigests
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try layerDigests.validateAsBatchedOperationLayerDigestList()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct BatchCheckLayerAvailabilityResponse: Codable, Equatable {
    public var failures: LayerFailureList?
    public var layers: LayerList?

    public init(failures: LayerFailureList? = nil,
                layers: LayerList? = nil) {
        self.failures = failures
        self.layers = layers
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case layers
    }

    public func validate() throws {
    }
}

public struct BatchDeleteImageRequest: Codable, Equatable {
    public var imageIds: ImageIdentifierList
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(imageIds: ImageIdentifierList,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.imageIds = imageIds
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageIds
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageIds.validateAsImageIdentifierList()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct BatchDeleteImageResponse: Codable, Equatable {
    public var failures: ImageFailureList?
    public var imageIds: ImageIdentifierList?

    public init(failures: ImageFailureList? = nil,
                imageIds: ImageIdentifierList? = nil) {
        self.failures = failures
        self.imageIds = imageIds
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case imageIds
    }

    public func validate() throws {
        try imageIds?.validateAsImageIdentifierList()
    }
}

public struct BatchGetImageRequest: Codable, Equatable {
    public var acceptedMediaTypes: MediaTypeList?
    public var imageIds: ImageIdentifierList
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(acceptedMediaTypes: MediaTypeList? = nil,
                imageIds: ImageIdentifierList,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.acceptedMediaTypes = acceptedMediaTypes
        self.imageIds = imageIds
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case acceptedMediaTypes
        case imageIds
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try acceptedMediaTypes?.validateAsMediaTypeList()
        try imageIds.validateAsImageIdentifierList()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct BatchGetImageResponse: Codable, Equatable {
    public var failures: ImageFailureList?
    public var images: ImageList?

    public init(failures: ImageFailureList? = nil,
                images: ImageList? = nil) {
        self.failures = failures
        self.images = images
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case images
    }

    public func validate() throws {
    }
}

public struct CompleteLayerUploadRequest: Codable, Equatable {
    public var layerDigests: LayerDigestList
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName
    public var uploadId: UploadId

    public init(layerDigests: LayerDigestList,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName,
                uploadId: UploadId) {
        self.layerDigests = layerDigests
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case layerDigests
        case registryId
        case repositoryName
        case uploadId
    }

    public func validate() throws {
        try layerDigests.validateAsLayerDigestList()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
        try uploadId.validateAsUploadId()
    }
}

public struct CompleteLayerUploadResponse: Codable, Equatable {
    public var layerDigest: LayerDigest?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?
    public var uploadId: UploadId?

    public init(layerDigest: LayerDigest? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil,
                uploadId: UploadId? = nil) {
        self.layerDigest = layerDigest
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case layerDigest
        case registryId
        case repositoryName
        case uploadId
    }

    public func validate() throws {
        try layerDigest?.validateAsLayerDigest()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
        try uploadId?.validateAsUploadId()
    }
}

public struct CreateRepositoryRequest: Codable, Equatable {
    public var encryptionConfiguration: EncryptionConfiguration?
    public var imageScanningConfiguration: ImageScanningConfiguration?
    public var imageTagMutability: ImageTagMutability?
    public var repositoryName: RepositoryName
    public var tags: TagList?

    public init(encryptionConfiguration: EncryptionConfiguration? = nil,
                imageScanningConfiguration: ImageScanningConfiguration? = nil,
                imageTagMutability: ImageTagMutability? = nil,
                repositoryName: RepositoryName,
                tags: TagList? = nil) {
        self.encryptionConfiguration = encryptionConfiguration
        self.imageScanningConfiguration = imageScanningConfiguration
        self.imageTagMutability = imageTagMutability
        self.repositoryName = repositoryName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case encryptionConfiguration
        case imageScanningConfiguration
        case imageTagMutability
        case repositoryName
        case tags
    }

    public func validate() throws {
        try encryptionConfiguration?.validate()
        try imageScanningConfiguration?.validate()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct CreateRepositoryResponse: Codable, Equatable {
    public var repository: Repository?

    public init(repository: Repository? = nil) {
        self.repository = repository
    }

    enum CodingKeys: String, CodingKey {
        case repository
    }

    public func validate() throws {
        try repository?.validate()
    }
}

public struct DeleteLifecyclePolicyRequest: Codable, Equatable {
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct DeleteLifecyclePolicyResponse: Codable, Equatable {
    public var lastEvaluatedAt: EvaluationTimestamp?
    public var lifecyclePolicyText: LifecyclePolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(lastEvaluatedAt: EvaluationTimestamp? = nil,
                lifecyclePolicyText: LifecyclePolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.lastEvaluatedAt = lastEvaluatedAt
        self.lifecyclePolicyText = lifecyclePolicyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case lastEvaluatedAt
        case lifecyclePolicyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try lifecyclePolicyText?.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct DeleteRegistryPolicyRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteRegistryPolicyResponse: Codable, Equatable {
    public var policyText: RegistryPolicyText?
    public var registryId: RegistryId?

    public init(policyText: RegistryPolicyText? = nil,
                registryId: RegistryId? = nil) {
        self.policyText = policyText
        self.registryId = registryId
    }

    enum CodingKeys: String, CodingKey {
        case policyText
        case registryId
    }

    public func validate() throws {
        try policyText?.validateAsRegistryPolicyText()
        try registryId?.validateAsRegistryId()
    }
}

public struct DeleteRepositoryPolicyRequest: Codable, Equatable {
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct DeleteRepositoryPolicyResponse: Codable, Equatable {
    public var policyText: RepositoryPolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(policyText: RepositoryPolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.policyText = policyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case policyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try policyText?.validateAsRepositoryPolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct DeleteRepositoryRequest: Codable, Equatable {
    public var force: ForceFlag?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(force: ForceFlag? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.force = force
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case force
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct DeleteRepositoryResponse: Codable, Equatable {
    public var repository: Repository?

    public init(repository: Repository? = nil) {
        self.repository = repository
    }

    enum CodingKeys: String, CodingKey {
        case repository
    }

    public func validate() throws {
        try repository?.validate()
    }
}

public struct DescribeImageScanFindingsRequest: Codable, Equatable {
    public var imageId: ImageIdentifier
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(imageId: ImageIdentifier,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.imageId = imageId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageId
        case maxResults
        case nextToken
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageId.validate()
        try maxResults?.validateAsMaxResults()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct DescribeImageScanFindingsResponse: Codable, Equatable {
    public var imageId: ImageIdentifier?
    public var imageScanFindings: ImageScanFindings?
    public var imageScanStatus: ImageScanStatus?
    public var nextToken: NextToken?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(imageId: ImageIdentifier? = nil,
                imageScanFindings: ImageScanFindings? = nil,
                imageScanStatus: ImageScanStatus? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.imageId = imageId
        self.imageScanFindings = imageScanFindings
        self.imageScanStatus = imageScanStatus
        self.nextToken = nextToken
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageId
        case imageScanFindings
        case imageScanStatus
        case nextToken
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageId?.validate()
        try imageScanFindings?.validate()
        try imageScanStatus?.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct DescribeImagesFilter: Codable, Equatable {
    public var tagStatus: TagStatus?

    public init(tagStatus: TagStatus? = nil) {
        self.tagStatus = tagStatus
    }

    enum CodingKeys: String, CodingKey {
        case tagStatus
    }

    public func validate() throws {
    }
}

public struct DescribeImagesRequest: Codable, Equatable {
    public var filter: DescribeImagesFilter?
    public var imageIds: ImageIdentifierList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(filter: DescribeImagesFilter? = nil,
                imageIds: ImageIdentifierList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.filter = filter
        self.imageIds = imageIds
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case imageIds
        case maxResults
        case nextToken
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try filter?.validate()
        try imageIds?.validateAsImageIdentifierList()
        try maxResults?.validateAsMaxResults()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct DescribeImagesResponse: Codable, Equatable {
    public var imageDetails: ImageDetailList?
    public var nextToken: NextToken?

    public init(imageDetails: ImageDetailList? = nil,
                nextToken: NextToken? = nil) {
        self.imageDetails = imageDetails
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case imageDetails
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeRegistryRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeRegistryResponse: Codable, Equatable {
    public var registryId: RegistryId?
    public var replicationConfiguration: ReplicationConfiguration?

    public init(registryId: RegistryId? = nil,
                replicationConfiguration: ReplicationConfiguration? = nil) {
        self.registryId = registryId
        self.replicationConfiguration = replicationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case replicationConfiguration
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try replicationConfiguration?.validate()
    }
}

public struct DescribeRepositoriesRequest: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var registryId: RegistryId?
    public var repositoryNames: RepositoryNameList?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil,
                repositoryNames: RepositoryNameList? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registryId = registryId
        self.repositoryNames = repositoryNames
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case registryId
        case repositoryNames
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try registryId?.validateAsRegistryId()
        try repositoryNames?.validateAsRepositoryNameList()
    }
}

public struct DescribeRepositoriesResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var repositories: RepositoryList?

    public init(nextToken: NextToken? = nil,
                repositories: RepositoryList? = nil) {
        self.nextToken = nextToken
        self.repositories = repositories
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case repositories
    }

    public func validate() throws {
    }
}

public struct EmptyUploadException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct EncryptionConfiguration: Codable, Equatable {
    public var encryptionType: EncryptionType
    public var kmsKey: KmsKey?

    public init(encryptionType: EncryptionType,
                kmsKey: KmsKey? = nil) {
        self.encryptionType = encryptionType
        self.kmsKey = kmsKey
    }

    enum CodingKeys: String, CodingKey {
        case encryptionType
        case kmsKey
    }

    public func validate() throws {
        try kmsKey?.validateAsKmsKey()
    }
}

public struct GetAuthorizationTokenRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetAuthorizationTokenResponse: Codable, Equatable {
    public var authorizationData: AuthorizationDataList?

    public init(authorizationData: AuthorizationDataList? = nil) {
        self.authorizationData = authorizationData
    }

    enum CodingKeys: String, CodingKey {
        case authorizationData
    }

    public func validate() throws {
    }
}

public struct GetDownloadUrlForLayerRequest: Codable, Equatable {
    public var layerDigest: LayerDigest
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(layerDigest: LayerDigest,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.layerDigest = layerDigest
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case layerDigest
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try layerDigest.validateAsLayerDigest()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct GetDownloadUrlForLayerResponse: Codable, Equatable {
    public var downloadUrl: Url?
    public var layerDigest: LayerDigest?

    public init(downloadUrl: Url? = nil,
                layerDigest: LayerDigest? = nil) {
        self.downloadUrl = downloadUrl
        self.layerDigest = layerDigest
    }

    enum CodingKeys: String, CodingKey {
        case downloadUrl
        case layerDigest
    }

    public func validate() throws {
        try layerDigest?.validateAsLayerDigest()
    }
}

public struct GetLifecyclePolicyPreviewRequest: Codable, Equatable {
    public var filter: LifecyclePolicyPreviewFilter?
    public var imageIds: ImageIdentifierList?
    public var maxResults: LifecyclePreviewMaxResults?
    public var nextToken: NextToken?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(filter: LifecyclePolicyPreviewFilter? = nil,
                imageIds: ImageIdentifierList? = nil,
                maxResults: LifecyclePreviewMaxResults? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.filter = filter
        self.imageIds = imageIds
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case imageIds
        case maxResults
        case nextToken
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try filter?.validate()
        try imageIds?.validateAsImageIdentifierList()
        try maxResults?.validateAsLifecyclePreviewMaxResults()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct GetLifecyclePolicyPreviewResponse: Codable, Equatable {
    public var lifecyclePolicyText: LifecyclePolicyText?
    public var nextToken: NextToken?
    public var previewResults: LifecyclePolicyPreviewResultList?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?
    public var status: LifecyclePolicyPreviewStatus?
    public var summary: LifecyclePolicyPreviewSummary?

    public init(lifecyclePolicyText: LifecyclePolicyText? = nil,
                nextToken: NextToken? = nil,
                previewResults: LifecyclePolicyPreviewResultList? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil,
                status: LifecyclePolicyPreviewStatus? = nil,
                summary: LifecyclePolicyPreviewSummary? = nil) {
        self.lifecyclePolicyText = lifecyclePolicyText
        self.nextToken = nextToken
        self.previewResults = previewResults
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.status = status
        self.summary = summary
    }

    enum CodingKeys: String, CodingKey {
        case lifecyclePolicyText
        case nextToken
        case previewResults
        case registryId
        case repositoryName
        case status
        case summary
    }

    public func validate() throws {
        try lifecyclePolicyText?.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
        try summary?.validate()
    }
}

public struct GetLifecyclePolicyRequest: Codable, Equatable {
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct GetLifecyclePolicyResponse: Codable, Equatable {
    public var lastEvaluatedAt: EvaluationTimestamp?
    public var lifecyclePolicyText: LifecyclePolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(lastEvaluatedAt: EvaluationTimestamp? = nil,
                lifecyclePolicyText: LifecyclePolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.lastEvaluatedAt = lastEvaluatedAt
        self.lifecyclePolicyText = lifecyclePolicyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case lastEvaluatedAt
        case lifecyclePolicyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try lifecyclePolicyText?.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct GetRegistryPolicyRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetRegistryPolicyResponse: Codable, Equatable {
    public var policyText: RegistryPolicyText?
    public var registryId: RegistryId?

    public init(policyText: RegistryPolicyText? = nil,
                registryId: RegistryId? = nil) {
        self.policyText = policyText
        self.registryId = registryId
    }

    enum CodingKeys: String, CodingKey {
        case policyText
        case registryId
    }

    public func validate() throws {
        try policyText?.validateAsRegistryPolicyText()
        try registryId?.validateAsRegistryId()
    }
}

public struct GetRepositoryPolicyRequest: Codable, Equatable {
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct GetRepositoryPolicyResponse: Codable, Equatable {
    public var policyText: RepositoryPolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(policyText: RepositoryPolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.policyText = policyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case policyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try policyText?.validateAsRepositoryPolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct Image: Codable, Equatable {
    public var imageId: ImageIdentifier?
    public var imageManifest: ImageManifest?
    public var imageManifestMediaType: MediaType?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(imageId: ImageIdentifier? = nil,
                imageManifest: ImageManifest? = nil,
                imageManifestMediaType: MediaType? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.imageId = imageId
        self.imageManifest = imageManifest
        self.imageManifestMediaType = imageManifestMediaType
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageId
        case imageManifest
        case imageManifestMediaType
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageId?.validate()
        try imageManifest?.validateAsImageManifest()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct ImageAlreadyExistsException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ImageDetail: Codable, Equatable {
    public var artifactMediaType: MediaType?
    public var imageDigest: ImageDigest?
    public var imageManifestMediaType: MediaType?
    public var imagePushedAt: PushTimestamp?
    public var imageScanFindingsSummary: ImageScanFindingsSummary?
    public var imageScanStatus: ImageScanStatus?
    public var imageSizeInBytes: ImageSizeInBytes?
    public var imageTags: ImageTagList?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(artifactMediaType: MediaType? = nil,
                imageDigest: ImageDigest? = nil,
                imageManifestMediaType: MediaType? = nil,
                imagePushedAt: PushTimestamp? = nil,
                imageScanFindingsSummary: ImageScanFindingsSummary? = nil,
                imageScanStatus: ImageScanStatus? = nil,
                imageSizeInBytes: ImageSizeInBytes? = nil,
                imageTags: ImageTagList? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.artifactMediaType = artifactMediaType
        self.imageDigest = imageDigest
        self.imageManifestMediaType = imageManifestMediaType
        self.imagePushedAt = imagePushedAt
        self.imageScanFindingsSummary = imageScanFindingsSummary
        self.imageScanStatus = imageScanStatus
        self.imageSizeInBytes = imageSizeInBytes
        self.imageTags = imageTags
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case artifactMediaType
        case imageDigest
        case imageManifestMediaType
        case imagePushedAt
        case imageScanFindingsSummary
        case imageScanStatus
        case imageSizeInBytes
        case imageTags
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageScanFindingsSummary?.validate()
        try imageScanStatus?.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct ImageDigestDoesNotMatchException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ImageFailure: Codable, Equatable {
    public var failureCode: ImageFailureCode?
    public var failureReason: ImageFailureReason?
    public var imageId: ImageIdentifier?

    public init(failureCode: ImageFailureCode? = nil,
                failureReason: ImageFailureReason? = nil,
                imageId: ImageIdentifier? = nil) {
        self.failureCode = failureCode
        self.failureReason = failureReason
        self.imageId = imageId
    }

    enum CodingKeys: String, CodingKey {
        case failureCode
        case failureReason
        case imageId
    }

    public func validate() throws {
        try imageId?.validate()
    }
}

public struct ImageIdentifier: Codable, Equatable {
    public var imageDigest: ImageDigest?
    public var imageTag: ImageTag?

    public init(imageDigest: ImageDigest? = nil,
                imageTag: ImageTag? = nil) {
        self.imageDigest = imageDigest
        self.imageTag = imageTag
    }

    enum CodingKeys: String, CodingKey {
        case imageDigest
        case imageTag
    }

    public func validate() throws {
        try imageTag?.validateAsImageTag()
    }
}

public struct ImageNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ImageScanFinding: Codable, Equatable {
    public var attributes: AttributeList?
    public var description: FindingDescription?
    public var name: FindingName?
    public var severity: FindingSeverity?
    public var uri: Url?

    public init(attributes: AttributeList? = nil,
                description: FindingDescription? = nil,
                name: FindingName? = nil,
                severity: FindingSeverity? = nil,
                uri: Url? = nil) {
        self.attributes = attributes
        self.description = description
        self.name = name
        self.severity = severity
        self.uri = uri
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case description
        case name
        case severity
        case uri
    }

    public func validate() throws {
        try attributes?.validateAsAttributeList()
    }
}

public struct ImageScanFindings: Codable, Equatable {
    public var findingSeverityCounts: FindingSeverityCounts?
    public var findings: ImageScanFindingList?
    public var imageScanCompletedAt: ScanTimestamp?
    public var vulnerabilitySourceUpdatedAt: VulnerabilitySourceUpdateTimestamp?

    public init(findingSeverityCounts: FindingSeverityCounts? = nil,
                findings: ImageScanFindingList? = nil,
                imageScanCompletedAt: ScanTimestamp? = nil,
                vulnerabilitySourceUpdatedAt: VulnerabilitySourceUpdateTimestamp? = nil) {
        self.findingSeverityCounts = findingSeverityCounts
        self.findings = findings
        self.imageScanCompletedAt = imageScanCompletedAt
        self.vulnerabilitySourceUpdatedAt = vulnerabilitySourceUpdatedAt
    }

    enum CodingKeys: String, CodingKey {
        case findingSeverityCounts
        case findings
        case imageScanCompletedAt
        case vulnerabilitySourceUpdatedAt
    }

    public func validate() throws {
    }
}

public struct ImageScanFindingsSummary: Codable, Equatable {
    public var findingSeverityCounts: FindingSeverityCounts?
    public var imageScanCompletedAt: ScanTimestamp?
    public var vulnerabilitySourceUpdatedAt: VulnerabilitySourceUpdateTimestamp?

    public init(findingSeverityCounts: FindingSeverityCounts? = nil,
                imageScanCompletedAt: ScanTimestamp? = nil,
                vulnerabilitySourceUpdatedAt: VulnerabilitySourceUpdateTimestamp? = nil) {
        self.findingSeverityCounts = findingSeverityCounts
        self.imageScanCompletedAt = imageScanCompletedAt
        self.vulnerabilitySourceUpdatedAt = vulnerabilitySourceUpdatedAt
    }

    enum CodingKeys: String, CodingKey {
        case findingSeverityCounts
        case imageScanCompletedAt
        case vulnerabilitySourceUpdatedAt
    }

    public func validate() throws {
    }
}

public struct ImageScanStatus: Codable, Equatable {
    public var description: ScanStatusDescription?
    public var status: ScanStatus?

    public init(description: ScanStatusDescription? = nil,
                status: ScanStatus? = nil) {
        self.description = description
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case description
        case status
    }

    public func validate() throws {
    }
}

public struct ImageScanningConfiguration: Codable, Equatable {
    public var scanOnPush: ScanOnPushFlag?

    public init(scanOnPush: ScanOnPushFlag? = nil) {
        self.scanOnPush = scanOnPush
    }

    enum CodingKeys: String, CodingKey {
        case scanOnPush
    }

    public func validate() throws {
    }
}

public struct ImageTagAlreadyExistsException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InitiateLayerUploadRequest: Codable, Equatable {
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct InitiateLayerUploadResponse: Codable, Equatable {
    public var partSize: PartSize?
    public var uploadId: UploadId?

    public init(partSize: PartSize? = nil,
                uploadId: UploadId? = nil) {
        self.partSize = partSize
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case partSize
        case uploadId
    }

    public func validate() throws {
        try partSize?.validateAsPartSize()
        try uploadId?.validateAsUploadId()
    }
}

public struct InvalidLayerException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidLayerPartException: Codable, Equatable {
    public var lastValidByteReceived: PartSize?
    public var message: ExceptionMessage?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?
    public var uploadId: UploadId?

    public init(lastValidByteReceived: PartSize? = nil,
                message: ExceptionMessage? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil,
                uploadId: UploadId? = nil) {
        self.lastValidByteReceived = lastValidByteReceived
        self.message = message
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case lastValidByteReceived
        case message
        case registryId
        case repositoryName
        case uploadId
    }

    public func validate() throws {
        try lastValidByteReceived?.validateAsPartSize()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
        try uploadId?.validateAsUploadId()
    }
}

public struct InvalidParameterException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidTagParameterException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct KmsException: Codable, Equatable {
    public var kmsError: KmsError?
    public var message: ExceptionMessage?

    public init(kmsError: KmsError? = nil,
                message: ExceptionMessage? = nil) {
        self.kmsError = kmsError
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case kmsError
        case message
    }

    public func validate() throws {
    }
}

public struct Layer: Codable, Equatable {
    public var layerAvailability: LayerAvailability?
    public var layerDigest: LayerDigest?
    public var layerSize: LayerSizeInBytes?
    public var mediaType: MediaType?

    public init(layerAvailability: LayerAvailability? = nil,
                layerDigest: LayerDigest? = nil,
                layerSize: LayerSizeInBytes? = nil,
                mediaType: MediaType? = nil) {
        self.layerAvailability = layerAvailability
        self.layerDigest = layerDigest
        self.layerSize = layerSize
        self.mediaType = mediaType
    }

    enum CodingKeys: String, CodingKey {
        case layerAvailability
        case layerDigest
        case layerSize
        case mediaType
    }

    public func validate() throws {
        try layerDigest?.validateAsLayerDigest()
    }
}

public struct LayerAlreadyExistsException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LayerFailure: Codable, Equatable {
    public var failureCode: LayerFailureCode?
    public var failureReason: LayerFailureReason?
    public var layerDigest: BatchedOperationLayerDigest?

    public init(failureCode: LayerFailureCode? = nil,
                failureReason: LayerFailureReason? = nil,
                layerDigest: BatchedOperationLayerDigest? = nil) {
        self.failureCode = failureCode
        self.failureReason = failureReason
        self.layerDigest = layerDigest
    }

    enum CodingKeys: String, CodingKey {
        case failureCode
        case failureReason
        case layerDigest
    }

    public func validate() throws {
        try layerDigest?.validateAsBatchedOperationLayerDigest()
    }
}

public struct LayerInaccessibleException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LayerPartTooSmallException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LayersNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LifecyclePolicyNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LifecyclePolicyPreviewFilter: Codable, Equatable {
    public var tagStatus: TagStatus?

    public init(tagStatus: TagStatus? = nil) {
        self.tagStatus = tagStatus
    }

    enum CodingKeys: String, CodingKey {
        case tagStatus
    }

    public func validate() throws {
    }
}

public struct LifecyclePolicyPreviewInProgressException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LifecyclePolicyPreviewNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LifecyclePolicyPreviewResult: Codable, Equatable {
    public var action: LifecyclePolicyRuleAction?
    public var appliedRulePriority: LifecyclePolicyRulePriority?
    public var imageDigest: ImageDigest?
    public var imagePushedAt: PushTimestamp?
    public var imageTags: ImageTagList?

    public init(action: LifecyclePolicyRuleAction? = nil,
                appliedRulePriority: LifecyclePolicyRulePriority? = nil,
                imageDigest: ImageDigest? = nil,
                imagePushedAt: PushTimestamp? = nil,
                imageTags: ImageTagList? = nil) {
        self.action = action
        self.appliedRulePriority = appliedRulePriority
        self.imageDigest = imageDigest
        self.imagePushedAt = imagePushedAt
        self.imageTags = imageTags
    }

    enum CodingKeys: String, CodingKey {
        case action
        case appliedRulePriority
        case imageDigest
        case imagePushedAt
        case imageTags
    }

    public func validate() throws {
        try action?.validate()
        try appliedRulePriority?.validateAsLifecyclePolicyRulePriority()
    }
}

public struct LifecyclePolicyPreviewSummary: Codable, Equatable {
    public var expiringImageTotalCount: ImageCount?

    public init(expiringImageTotalCount: ImageCount? = nil) {
        self.expiringImageTotalCount = expiringImageTotalCount
    }

    enum CodingKeys: String, CodingKey {
        case expiringImageTotalCount
    }

    public func validate() throws {
        try expiringImageTotalCount?.validateAsImageCount()
    }
}

public struct LifecyclePolicyRuleAction: Codable, Equatable {
    public var type: ImageActionType?

    public init(type: ImageActionType? = nil) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type
    }

    public func validate() throws {
    }
}

public struct LimitExceededException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ListImagesFilter: Codable, Equatable {
    public var tagStatus: TagStatus?

    public init(tagStatus: TagStatus? = nil) {
        self.tagStatus = tagStatus
    }

    enum CodingKeys: String, CodingKey {
        case tagStatus
    }

    public func validate() throws {
    }
}

public struct ListImagesRequest: Codable, Equatable {
    public var filter: ListImagesFilter?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(filter: ListImagesFilter? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsMaxResults()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct ListImagesResponse: Codable, Equatable {
    public var imageIds: ImageIdentifierList?
    public var nextToken: NextToken?

    public init(imageIds: ImageIdentifierList? = nil,
                nextToken: NextToken? = nil) {
        self.imageIds = imageIds
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case imageIds
        case nextToken
    }

    public func validate() throws {
        try imageIds?.validateAsImageIdentifierList()
    }
}

public struct ListTagsForResourceRequest: Codable, Equatable {
    public var resourceArn: Arn

    public init(resourceArn: Arn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceResponse: Codable, Equatable {
    public var tags: TagList?

    public init(tags: TagList? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags
    }

    public func validate() throws {
    }
}

public struct PutImageRequest: Codable, Equatable {
    public var imageDigest: ImageDigest?
    public var imageManifest: ImageManifest
    public var imageManifestMediaType: MediaType?
    public var imageTag: ImageTag?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(imageDigest: ImageDigest? = nil,
                imageManifest: ImageManifest,
                imageManifestMediaType: MediaType? = nil,
                imageTag: ImageTag? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.imageDigest = imageDigest
        self.imageManifest = imageManifest
        self.imageManifestMediaType = imageManifestMediaType
        self.imageTag = imageTag
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageDigest
        case imageManifest
        case imageManifestMediaType
        case imageTag
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageManifest.validateAsImageManifest()
        try imageTag?.validateAsImageTag()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct PutImageResponse: Codable, Equatable {
    public var image: Image?

    public init(image: Image? = nil) {
        self.image = image
    }

    enum CodingKeys: String, CodingKey {
        case image
    }

    public func validate() throws {
        try image?.validate()
    }
}

public struct PutImageScanningConfigurationRequest: Codable, Equatable {
    public var imageScanningConfiguration: ImageScanningConfiguration
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(imageScanningConfiguration: ImageScanningConfiguration,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.imageScanningConfiguration = imageScanningConfiguration
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageScanningConfiguration
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageScanningConfiguration.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct PutImageScanningConfigurationResponse: Codable, Equatable {
    public var imageScanningConfiguration: ImageScanningConfiguration?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(imageScanningConfiguration: ImageScanningConfiguration? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.imageScanningConfiguration = imageScanningConfiguration
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageScanningConfiguration
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageScanningConfiguration?.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct PutImageTagMutabilityRequest: Codable, Equatable {
    public var imageTagMutability: ImageTagMutability
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(imageTagMutability: ImageTagMutability,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.imageTagMutability = imageTagMutability
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageTagMutability
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct PutImageTagMutabilityResponse: Codable, Equatable {
    public var imageTagMutability: ImageTagMutability?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(imageTagMutability: ImageTagMutability? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.imageTagMutability = imageTagMutability
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageTagMutability
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct PutLifecyclePolicyRequest: Codable, Equatable {
    public var lifecyclePolicyText: LifecyclePolicyText
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(lifecyclePolicyText: LifecyclePolicyText,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.lifecyclePolicyText = lifecyclePolicyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case lifecyclePolicyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try lifecyclePolicyText.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct PutLifecyclePolicyResponse: Codable, Equatable {
    public var lifecyclePolicyText: LifecyclePolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(lifecyclePolicyText: LifecyclePolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.lifecyclePolicyText = lifecyclePolicyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case lifecyclePolicyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try lifecyclePolicyText?.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct PutRegistryPolicyRequest: Codable, Equatable {
    public var policyText: RegistryPolicyText

    public init(policyText: RegistryPolicyText) {
        self.policyText = policyText
    }

    enum CodingKeys: String, CodingKey {
        case policyText
    }

    public func validate() throws {
        try policyText.validateAsRegistryPolicyText()
    }
}

public struct PutRegistryPolicyResponse: Codable, Equatable {
    public var policyText: RegistryPolicyText?
    public var registryId: RegistryId?

    public init(policyText: RegistryPolicyText? = nil,
                registryId: RegistryId? = nil) {
        self.policyText = policyText
        self.registryId = registryId
    }

    enum CodingKeys: String, CodingKey {
        case policyText
        case registryId
    }

    public func validate() throws {
        try policyText?.validateAsRegistryPolicyText()
        try registryId?.validateAsRegistryId()
    }
}

public struct PutReplicationConfigurationRequest: Codable, Equatable {
    public var replicationConfiguration: ReplicationConfiguration

    public init(replicationConfiguration: ReplicationConfiguration) {
        self.replicationConfiguration = replicationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case replicationConfiguration
    }

    public func validate() throws {
        try replicationConfiguration.validate()
    }
}

public struct PutReplicationConfigurationResponse: Codable, Equatable {
    public var replicationConfiguration: ReplicationConfiguration?

    public init(replicationConfiguration: ReplicationConfiguration? = nil) {
        self.replicationConfiguration = replicationConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case replicationConfiguration
    }

    public func validate() throws {
        try replicationConfiguration?.validate()
    }
}

public struct ReferencedImagesNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RegistryPolicyNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ReplicationConfiguration: Codable, Equatable {
    public var rules: ReplicationRuleList

    public init(rules: ReplicationRuleList) {
        self.rules = rules
    }

    enum CodingKeys: String, CodingKey {
        case rules
    }

    public func validate() throws {
        try rules.validateAsReplicationRuleList()
    }
}

public struct ReplicationDestination: Codable, Equatable {
    public var region: Region
    public var registryId: RegistryId

    public init(region: Region,
                registryId: RegistryId) {
        self.region = region
        self.registryId = registryId
    }

    enum CodingKeys: String, CodingKey {
        case region
        case registryId
    }

    public func validate() throws {
        try region.validateAsRegion()
        try registryId.validateAsRegistryId()
    }
}

public struct ReplicationRule: Codable, Equatable {
    public var destinations: ReplicationDestinationList

    public init(destinations: ReplicationDestinationList) {
        self.destinations = destinations
    }

    enum CodingKeys: String, CodingKey {
        case destinations
    }

    public func validate() throws {
        try destinations.validateAsReplicationDestinationList()
    }
}

public struct Repository: Codable, Equatable {
    public var createdAt: CreationTimestamp?
    public var encryptionConfiguration: EncryptionConfiguration?
    public var imageScanningConfiguration: ImageScanningConfiguration?
    public var imageTagMutability: ImageTagMutability?
    public var registryId: RegistryId?
    public var repositoryArn: Arn?
    public var repositoryName: RepositoryName?
    public var repositoryUri: Url?

    public init(createdAt: CreationTimestamp? = nil,
                encryptionConfiguration: EncryptionConfiguration? = nil,
                imageScanningConfiguration: ImageScanningConfiguration? = nil,
                imageTagMutability: ImageTagMutability? = nil,
                registryId: RegistryId? = nil,
                repositoryArn: Arn? = nil,
                repositoryName: RepositoryName? = nil,
                repositoryUri: Url? = nil) {
        self.createdAt = createdAt
        self.encryptionConfiguration = encryptionConfiguration
        self.imageScanningConfiguration = imageScanningConfiguration
        self.imageTagMutability = imageTagMutability
        self.registryId = registryId
        self.repositoryArn = repositoryArn
        self.repositoryName = repositoryName
        self.repositoryUri = repositoryUri
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case encryptionConfiguration
        case imageScanningConfiguration
        case imageTagMutability
        case registryId
        case repositoryArn
        case repositoryName
        case repositoryUri
    }

    public func validate() throws {
        try encryptionConfiguration?.validate()
        try imageScanningConfiguration?.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct RepositoryAlreadyExistsException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RepositoryNotEmptyException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RepositoryNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct RepositoryPolicyNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ScanNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ServerException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct SetRepositoryPolicyRequest: Codable, Equatable {
    public var force: ForceFlag?
    public var policyText: RepositoryPolicyText
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(force: ForceFlag? = nil,
                policyText: RepositoryPolicyText,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.force = force
        self.policyText = policyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case force
        case policyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try policyText.validateAsRepositoryPolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct SetRepositoryPolicyResponse: Codable, Equatable {
    public var policyText: RepositoryPolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(policyText: RepositoryPolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.policyText = policyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case policyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try policyText?.validateAsRepositoryPolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct StartImageScanRequest: Codable, Equatable {
    public var imageId: ImageIdentifier
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(imageId: ImageIdentifier,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.imageId = imageId
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageId
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageId.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct StartImageScanResponse: Codable, Equatable {
    public var imageId: ImageIdentifier?
    public var imageScanStatus: ImageScanStatus?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?

    public init(imageId: ImageIdentifier? = nil,
                imageScanStatus: ImageScanStatus? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.imageId = imageId
        self.imageScanStatus = imageScanStatus
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageId
        case imageScanStatus
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try imageId?.validate()
        try imageScanStatus?.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct StartLifecyclePolicyPreviewRequest: Codable, Equatable {
    public var lifecyclePolicyText: LifecyclePolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName

    public init(lifecyclePolicyText: LifecyclePolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName) {
        self.lifecyclePolicyText = lifecyclePolicyText
        self.registryId = registryId
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case lifecyclePolicyText
        case registryId
        case repositoryName
    }

    public func validate() throws {
        try lifecyclePolicyText?.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct StartLifecyclePolicyPreviewResponse: Codable, Equatable {
    public var lifecyclePolicyText: LifecyclePolicyText?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?
    public var status: LifecyclePolicyPreviewStatus?

    public init(lifecyclePolicyText: LifecyclePolicyText? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil,
                status: LifecyclePolicyPreviewStatus? = nil) {
        self.lifecyclePolicyText = lifecyclePolicyText
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case lifecyclePolicyText
        case registryId
        case repositoryName
        case status
    }

    public func validate() throws {
        try lifecyclePolicyText?.validateAsLifecyclePolicyText()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKey?
    public var value: TagValue?

    public init(key: TagKey? = nil,
                value: TagValue? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct TagResourceRequest: Codable, Equatable {
    public var resourceArn: Arn
    public var tags: TagList

    public init(resourceArn: Arn,
                tags: TagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tags
    }

    public func validate() throws {
    }
}

public struct TagResourceResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TooManyTagsException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UnsupportedImageTypeException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UntagResourceRequest: Codable, Equatable {
    public var resourceArn: Arn
    public var tagKeys: TagKeyList

    public init(resourceArn: Arn,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tagKeys
    }

    public func validate() throws {
    }
}

public struct UntagResourceResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UploadLayerPartRequest: Codable, Equatable {
    public var layerPartBlob: LayerPartBlob
    public var partFirstByte: PartSize
    public var partLastByte: PartSize
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName
    public var uploadId: UploadId

    public init(layerPartBlob: LayerPartBlob,
                partFirstByte: PartSize,
                partLastByte: PartSize,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName,
                uploadId: UploadId) {
        self.layerPartBlob = layerPartBlob
        self.partFirstByte = partFirstByte
        self.partLastByte = partLastByte
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case layerPartBlob
        case partFirstByte
        case partLastByte
        case registryId
        case repositoryName
        case uploadId
    }

    public func validate() throws {
        try partFirstByte.validateAsPartSize()
        try partLastByte.validateAsPartSize()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
        try uploadId.validateAsUploadId()
    }
}

public struct UploadLayerPartResponse: Codable, Equatable {
    public var lastByteReceived: PartSize?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName?
    public var uploadId: UploadId?

    public init(lastByteReceived: PartSize? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName? = nil,
                uploadId: UploadId? = nil) {
        self.lastByteReceived = lastByteReceived
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.uploadId = uploadId
    }

    enum CodingKeys: String, CodingKey {
        case lastByteReceived
        case registryId
        case repositoryName
        case uploadId
    }

    public func validate() throws {
        try lastByteReceived?.validateAsPartSize()
        try registryId?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
        try uploadId?.validateAsUploadId()
    }
}

public struct UploadNotFoundException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ValidationException: Codable, Equatable {
    public var message: ExceptionMessage?

    public init(message: ExceptionMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}
