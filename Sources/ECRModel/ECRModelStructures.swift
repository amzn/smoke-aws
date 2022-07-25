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
// ECRModelStructures.swift
// ECRModel
//

import Foundation

extension Foundation.Data: @unchecked Sendable { }

public struct Attribute: Codable, Equatable, Sendable {
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

public struct AuthorizationData: Codable, Equatable, Sendable {
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

public struct AwsEcrContainerImageDetails: Codable, Equatable, Sendable {
    public var architecture: Arch?
    public var author: Author?
    public var imageHash: ImageDigest?
    public var imageTags: ImageTagsList?
    public var platform: Platform?
    public var pushedAt: Date?
    public var registry: RegistryId?
    public var repositoryName: RepositoryName?

    public init(architecture: Arch? = nil,
                author: Author? = nil,
                imageHash: ImageDigest? = nil,
                imageTags: ImageTagsList? = nil,
                platform: Platform? = nil,
                pushedAt: Date? = nil,
                registry: RegistryId? = nil,
                repositoryName: RepositoryName? = nil) {
        self.architecture = architecture
        self.author = author
        self.imageHash = imageHash
        self.imageTags = imageTags
        self.platform = platform
        self.pushedAt = pushedAt
        self.registry = registry
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case architecture
        case author
        case imageHash
        case imageTags
        case platform
        case pushedAt
        case registry
        case repositoryName
    }

    public func validate() throws {
        try registry?.validateAsRegistryId()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct BatchCheckLayerAvailabilityRequest: Codable, Equatable, Sendable {
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

public struct BatchCheckLayerAvailabilityResponse: Codable, Equatable, Sendable {
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

public struct BatchDeleteImageRequest: Codable, Equatable, Sendable {
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

public struct BatchDeleteImageResponse: Codable, Equatable, Sendable {
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

public struct BatchGetImageRequest: Codable, Equatable, Sendable {
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

public struct BatchGetImageResponse: Codable, Equatable, Sendable {
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

public struct BatchGetRepositoryScanningConfigurationRequest: Codable, Equatable, Sendable {
    public var repositoryNames: ScanningConfigurationRepositoryNameList

    public init(repositoryNames: ScanningConfigurationRepositoryNameList) {
        self.repositoryNames = repositoryNames
    }

    enum CodingKeys: String, CodingKey {
        case repositoryNames
    }

    public func validate() throws {
        try repositoryNames.validateAsScanningConfigurationRepositoryNameList()
    }
}

public struct BatchGetRepositoryScanningConfigurationResponse: Codable, Equatable, Sendable {
    public var failures: RepositoryScanningConfigurationFailureList?
    public var scanningConfigurations: RepositoryScanningConfigurationList?

    public init(failures: RepositoryScanningConfigurationFailureList? = nil,
                scanningConfigurations: RepositoryScanningConfigurationList? = nil) {
        self.failures = failures
        self.scanningConfigurations = scanningConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case scanningConfigurations
    }

    public func validate() throws {
    }
}

public struct CompleteLayerUploadRequest: Codable, Equatable, Sendable {
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

public struct CompleteLayerUploadResponse: Codable, Equatable, Sendable {
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

public struct CreatePullThroughCacheRuleRequest: Codable, Equatable, Sendable {
    public var ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix
    public var registryId: RegistryId?
    public var upstreamRegistryUrl: Url

    public init(ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix,
                registryId: RegistryId? = nil,
                upstreamRegistryUrl: Url) {
        self.ecrRepositoryPrefix = ecrRepositoryPrefix
        self.registryId = registryId
        self.upstreamRegistryUrl = upstreamRegistryUrl
    }

    enum CodingKeys: String, CodingKey {
        case ecrRepositoryPrefix
        case registryId
        case upstreamRegistryUrl
    }

    public func validate() throws {
        try ecrRepositoryPrefix.validateAsPullThroughCacheRuleRepositoryPrefix()
        try registryId?.validateAsRegistryId()
    }
}

public struct CreatePullThroughCacheRuleResponse: Codable, Equatable, Sendable {
    public var createdAt: CreationTimestamp?
    public var ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix?
    public var registryId: RegistryId?
    public var upstreamRegistryUrl: Url?

    public init(createdAt: CreationTimestamp? = nil,
                ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix? = nil,
                registryId: RegistryId? = nil,
                upstreamRegistryUrl: Url? = nil) {
        self.createdAt = createdAt
        self.ecrRepositoryPrefix = ecrRepositoryPrefix
        self.registryId = registryId
        self.upstreamRegistryUrl = upstreamRegistryUrl
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case ecrRepositoryPrefix
        case registryId
        case upstreamRegistryUrl
    }

    public func validate() throws {
        try ecrRepositoryPrefix?.validateAsPullThroughCacheRuleRepositoryPrefix()
        try registryId?.validateAsRegistryId()
    }
}

public struct CreateRepositoryRequest: Codable, Equatable, Sendable {
    public var encryptionConfiguration: EncryptionConfiguration?
    public var imageScanningConfiguration: ImageScanningConfiguration?
    public var imageTagMutability: ImageTagMutability?
    public var registryId: RegistryId?
    public var repositoryName: RepositoryName
    public var tags: TagList?

    public init(encryptionConfiguration: EncryptionConfiguration? = nil,
                imageScanningConfiguration: ImageScanningConfiguration? = nil,
                imageTagMutability: ImageTagMutability? = nil,
                registryId: RegistryId? = nil,
                repositoryName: RepositoryName,
                tags: TagList? = nil) {
        self.encryptionConfiguration = encryptionConfiguration
        self.imageScanningConfiguration = imageScanningConfiguration
        self.imageTagMutability = imageTagMutability
        self.registryId = registryId
        self.repositoryName = repositoryName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case encryptionConfiguration
        case imageScanningConfiguration
        case imageTagMutability
        case registryId
        case repositoryName
        case tags
    }

    public func validate() throws {
        try encryptionConfiguration?.validate()
        try imageScanningConfiguration?.validate()
        try registryId?.validateAsRegistryId()
        try repositoryName.validateAsRepositoryName()
    }
}

public struct CreateRepositoryResponse: Codable, Equatable, Sendable {
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

public struct CvssScore: Codable, Equatable, Sendable {
    public var baseScore: BaseScore?
    public var scoringVector: ScoringVector?
    public var source: Source?
    public var version: Version?

    public init(baseScore: BaseScore? = nil,
                scoringVector: ScoringVector? = nil,
                source: Source? = nil,
                version: Version? = nil) {
        self.baseScore = baseScore
        self.scoringVector = scoringVector
        self.source = source
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case baseScore
        case scoringVector
        case source
        case version
    }

    public func validate() throws {
    }
}

public struct CvssScoreAdjustment: Codable, Equatable, Sendable {
    public var metric: Metric?
    public var reason: Reason?

    public init(metric: Metric? = nil,
                reason: Reason? = nil) {
        self.metric = metric
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case metric
        case reason
    }

    public func validate() throws {
    }
}

public struct CvssScoreDetails: Codable, Equatable, Sendable {
    public var adjustments: CvssScoreAdjustmentList?
    public var score: Score?
    public var scoreSource: Source?
    public var scoringVector: ScoringVector?
    public var version: Version?

    public init(adjustments: CvssScoreAdjustmentList? = nil,
                score: Score? = nil,
                scoreSource: Source? = nil,
                scoringVector: ScoringVector? = nil,
                version: Version? = nil) {
        self.adjustments = adjustments
        self.score = score
        self.scoreSource = scoreSource
        self.scoringVector = scoringVector
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case adjustments
        case score
        case scoreSource
        case scoringVector
        case version
    }

    public func validate() throws {
    }
}

public struct DeleteLifecyclePolicyRequest: Codable, Equatable, Sendable {
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

public struct DeleteLifecyclePolicyResponse: Codable, Equatable, Sendable {
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

public struct DeletePullThroughCacheRuleRequest: Codable, Equatable, Sendable {
    public var ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix
    public var registryId: RegistryId?

    public init(ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix,
                registryId: RegistryId? = nil) {
        self.ecrRepositoryPrefix = ecrRepositoryPrefix
        self.registryId = registryId
    }

    enum CodingKeys: String, CodingKey {
        case ecrRepositoryPrefix
        case registryId
    }

    public func validate() throws {
        try ecrRepositoryPrefix.validateAsPullThroughCacheRuleRepositoryPrefix()
        try registryId?.validateAsRegistryId()
    }
}

public struct DeletePullThroughCacheRuleResponse: Codable, Equatable, Sendable {
    public var createdAt: CreationTimestamp?
    public var ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix?
    public var registryId: RegistryId?
    public var upstreamRegistryUrl: Url?

    public init(createdAt: CreationTimestamp? = nil,
                ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix? = nil,
                registryId: RegistryId? = nil,
                upstreamRegistryUrl: Url? = nil) {
        self.createdAt = createdAt
        self.ecrRepositoryPrefix = ecrRepositoryPrefix
        self.registryId = registryId
        self.upstreamRegistryUrl = upstreamRegistryUrl
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case ecrRepositoryPrefix
        case registryId
        case upstreamRegistryUrl
    }

    public func validate() throws {
        try ecrRepositoryPrefix?.validateAsPullThroughCacheRuleRepositoryPrefix()
        try registryId?.validateAsRegistryId()
    }
}

public struct DeleteRegistryPolicyRequest: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteRegistryPolicyResponse: Codable, Equatable, Sendable {
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

public struct DeleteRepositoryPolicyRequest: Codable, Equatable, Sendable {
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

public struct DeleteRepositoryPolicyResponse: Codable, Equatable, Sendable {
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

public struct DeleteRepositoryRequest: Codable, Equatable, Sendable {
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

public struct DeleteRepositoryResponse: Codable, Equatable, Sendable {
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

public struct DescribeImageReplicationStatusRequest: Codable, Equatable, Sendable {
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

public struct DescribeImageReplicationStatusResponse: Codable, Equatable, Sendable {
    public var imageId: ImageIdentifier?
    public var replicationStatuses: ImageReplicationStatusList?
    public var repositoryName: RepositoryName?

    public init(imageId: ImageIdentifier? = nil,
                replicationStatuses: ImageReplicationStatusList? = nil,
                repositoryName: RepositoryName? = nil) {
        self.imageId = imageId
        self.replicationStatuses = replicationStatuses
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case imageId
        case replicationStatuses
        case repositoryName
    }

    public func validate() throws {
        try imageId?.validate()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct DescribeImageScanFindingsRequest: Codable, Equatable, Sendable {
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

public struct DescribeImageScanFindingsResponse: Codable, Equatable, Sendable {
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

public struct DescribeImagesFilter: Codable, Equatable, Sendable {
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

public struct DescribeImagesRequest: Codable, Equatable, Sendable {
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

public struct DescribeImagesResponse: Codable, Equatable, Sendable {
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

public struct DescribePullThroughCacheRulesRequest: Codable, Equatable, Sendable {
    public var ecrRepositoryPrefixes: PullThroughCacheRuleRepositoryPrefixList?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var registryId: RegistryId?

    public init(ecrRepositoryPrefixes: PullThroughCacheRuleRepositoryPrefixList? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                registryId: RegistryId? = nil) {
        self.ecrRepositoryPrefixes = ecrRepositoryPrefixes
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registryId = registryId
    }

    enum CodingKeys: String, CodingKey {
        case ecrRepositoryPrefixes
        case maxResults
        case nextToken
        case registryId
    }

    public func validate() throws {
        try ecrRepositoryPrefixes?.validateAsPullThroughCacheRuleRepositoryPrefixList()
        try maxResults?.validateAsMaxResults()
        try registryId?.validateAsRegistryId()
    }
}

public struct DescribePullThroughCacheRulesResponse: Codable, Equatable, Sendable {
    public var nextToken: NextToken?
    public var pullThroughCacheRules: PullThroughCacheRuleList?

    public init(nextToken: NextToken? = nil,
                pullThroughCacheRules: PullThroughCacheRuleList? = nil) {
        self.nextToken = nextToken
        self.pullThroughCacheRules = pullThroughCacheRules
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case pullThroughCacheRules
    }

    public func validate() throws {
    }
}

public struct DescribeRegistryRequest: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeRegistryResponse: Codable, Equatable, Sendable {
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

public struct DescribeRepositoriesRequest: Codable, Equatable, Sendable {
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

public struct DescribeRepositoriesResponse: Codable, Equatable, Sendable {
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

public struct EmptyUploadException: Codable, Equatable, Sendable {
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

public struct EncryptionConfiguration: Codable, Equatable, Sendable {
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

public struct EnhancedImageScanFinding: Codable, Equatable, Sendable {
    public var awsAccountId: RegistryId?
    public var description: FindingDescription?
    public var findingArn: FindingArn?
    public var firstObservedAt: Date?
    public var lastObservedAt: Date?
    public var packageVulnerabilityDetails: PackageVulnerabilityDetails?
    public var remediation: Remediation?
    public var resources: ResourceList?
    public var score: Score?
    public var scoreDetails: ScoreDetails?
    public var severity: Severity?
    public var status: Status?
    public var title: Title?
    public var type: Type?
    public var updatedAt: Date?

    public init(awsAccountId: RegistryId? = nil,
                description: FindingDescription? = nil,
                findingArn: FindingArn? = nil,
                firstObservedAt: Date? = nil,
                lastObservedAt: Date? = nil,
                packageVulnerabilityDetails: PackageVulnerabilityDetails? = nil,
                remediation: Remediation? = nil,
                resources: ResourceList? = nil,
                score: Score? = nil,
                scoreDetails: ScoreDetails? = nil,
                severity: Severity? = nil,
                status: Status? = nil,
                title: Title? = nil,
                type: Type? = nil,
                updatedAt: Date? = nil) {
        self.awsAccountId = awsAccountId
        self.description = description
        self.findingArn = findingArn
        self.firstObservedAt = firstObservedAt
        self.lastObservedAt = lastObservedAt
        self.packageVulnerabilityDetails = packageVulnerabilityDetails
        self.remediation = remediation
        self.resources = resources
        self.score = score
        self.scoreDetails = scoreDetails
        self.severity = severity
        self.status = status
        self.title = title
        self.type = type
        self.updatedAt = updatedAt
    }

    enum CodingKeys: String, CodingKey {
        case awsAccountId
        case description
        case findingArn
        case firstObservedAt
        case lastObservedAt
        case packageVulnerabilityDetails
        case remediation
        case resources
        case score
        case scoreDetails
        case severity
        case status
        case title
        case type
        case updatedAt
    }

    public func validate() throws {
        try awsAccountId?.validateAsRegistryId()
        try packageVulnerabilityDetails?.validate()
        try remediation?.validate()
        try scoreDetails?.validate()
    }
}

public struct GetAuthorizationTokenRequest: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetAuthorizationTokenResponse: Codable, Equatable, Sendable {
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

public struct GetDownloadUrlForLayerRequest: Codable, Equatable, Sendable {
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

public struct GetDownloadUrlForLayerResponse: Codable, Equatable, Sendable {
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

public struct GetLifecyclePolicyPreviewRequest: Codable, Equatable, Sendable {
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

public struct GetLifecyclePolicyPreviewResponse: Codable, Equatable, Sendable {
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

public struct GetLifecyclePolicyRequest: Codable, Equatable, Sendable {
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

public struct GetLifecyclePolicyResponse: Codable, Equatable, Sendable {
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

public struct GetRegistryPolicyRequest: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetRegistryPolicyResponse: Codable, Equatable, Sendable {
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

public struct GetRegistryScanningConfigurationRequest: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetRegistryScanningConfigurationResponse: Codable, Equatable, Sendable {
    public var registryId: RegistryId?
    public var scanningConfiguration: RegistryScanningConfiguration?

    public init(registryId: RegistryId? = nil,
                scanningConfiguration: RegistryScanningConfiguration? = nil) {
        self.registryId = registryId
        self.scanningConfiguration = scanningConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case registryId
        case scanningConfiguration
    }

    public func validate() throws {
        try registryId?.validateAsRegistryId()
        try scanningConfiguration?.validate()
    }
}

public struct GetRepositoryPolicyRequest: Codable, Equatable, Sendable {
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

public struct GetRepositoryPolicyResponse: Codable, Equatable, Sendable {
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

public struct Image: Codable, Equatable, Sendable {
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

public struct ImageAlreadyExistsException: Codable, Equatable, Sendable {
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

public struct ImageDetail: Codable, Equatable, Sendable {
    public var artifactMediaType: MediaType?
    public var imageDigest: ImageDigest?
    public var imageManifestMediaType: MediaType?
    public var imagePushedAt: PushTimestamp?
    public var imageScanFindingsSummary: ImageScanFindingsSummary?
    public var imageScanStatus: ImageScanStatus?
    public var imageSizeInBytes: ImageSizeInBytes?
    public var imageTags: ImageTagList?
    public var lastRecordedPullTime: RecordedPullTimestamp?
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
                lastRecordedPullTime: RecordedPullTimestamp? = nil,
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
        self.lastRecordedPullTime = lastRecordedPullTime
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
        case lastRecordedPullTime
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

public struct ImageDigestDoesNotMatchException: Codable, Equatable, Sendable {
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

public struct ImageFailure: Codable, Equatable, Sendable {
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

public struct ImageIdentifier: Codable, Equatable, Sendable {
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

public struct ImageNotFoundException: Codable, Equatable, Sendable {
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

public struct ImageReplicationStatus: Codable, Equatable, Sendable {
    public var failureCode: ReplicationError?
    public var region: Region?
    public var registryId: RegistryId?
    public var status: ReplicationStatus?

    public init(failureCode: ReplicationError? = nil,
                region: Region? = nil,
                registryId: RegistryId? = nil,
                status: ReplicationStatus? = nil) {
        self.failureCode = failureCode
        self.region = region
        self.registryId = registryId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case failureCode
        case region
        case registryId
        case status
    }

    public func validate() throws {
        try region?.validateAsRegion()
        try registryId?.validateAsRegistryId()
    }
}

public struct ImageScanFinding: Codable, Equatable, Sendable {
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

public struct ImageScanFindings: Codable, Equatable, Sendable {
    public var enhancedFindings: EnhancedImageScanFindingList?
    public var findingSeverityCounts: FindingSeverityCounts?
    public var findings: ImageScanFindingList?
    public var imageScanCompletedAt: ScanTimestamp?
    public var vulnerabilitySourceUpdatedAt: VulnerabilitySourceUpdateTimestamp?

    public init(enhancedFindings: EnhancedImageScanFindingList? = nil,
                findingSeverityCounts: FindingSeverityCounts? = nil,
                findings: ImageScanFindingList? = nil,
                imageScanCompletedAt: ScanTimestamp? = nil,
                vulnerabilitySourceUpdatedAt: VulnerabilitySourceUpdateTimestamp? = nil) {
        self.enhancedFindings = enhancedFindings
        self.findingSeverityCounts = findingSeverityCounts
        self.findings = findings
        self.imageScanCompletedAt = imageScanCompletedAt
        self.vulnerabilitySourceUpdatedAt = vulnerabilitySourceUpdatedAt
    }

    enum CodingKeys: String, CodingKey {
        case enhancedFindings
        case findingSeverityCounts
        case findings
        case imageScanCompletedAt
        case vulnerabilitySourceUpdatedAt
    }

    public func validate() throws {
    }
}

public struct ImageScanFindingsSummary: Codable, Equatable, Sendable {
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

public struct ImageScanStatus: Codable, Equatable, Sendable {
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

public struct ImageScanningConfiguration: Codable, Equatable, Sendable {
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

public struct ImageTagAlreadyExistsException: Codable, Equatable, Sendable {
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

public struct InitiateLayerUploadRequest: Codable, Equatable, Sendable {
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

public struct InitiateLayerUploadResponse: Codable, Equatable, Sendable {
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

public struct InvalidLayerException: Codable, Equatable, Sendable {
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

public struct InvalidLayerPartException: Codable, Equatable, Sendable {
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

public struct InvalidParameterException: Codable, Equatable, Sendable {
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

public struct InvalidTagParameterException: Codable, Equatable, Sendable {
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

public struct KmsException: Codable, Equatable, Sendable {
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

public struct Layer: Codable, Equatable, Sendable {
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

public struct LayerAlreadyExistsException: Codable, Equatable, Sendable {
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

public struct LayerFailure: Codable, Equatable, Sendable {
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

public struct LayerInaccessibleException: Codable, Equatable, Sendable {
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

public struct LayerPartTooSmallException: Codable, Equatable, Sendable {
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

public struct LayersNotFoundException: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyNotFoundException: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyPreviewFilter: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyPreviewInProgressException: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyPreviewNotFoundException: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyPreviewResult: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyPreviewSummary: Codable, Equatable, Sendable {
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

public struct LifecyclePolicyRuleAction: Codable, Equatable, Sendable {
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

public struct LimitExceededException: Codable, Equatable, Sendable {
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

public struct ListImagesFilter: Codable, Equatable, Sendable {
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

public struct ListImagesRequest: Codable, Equatable, Sendable {
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

public struct ListImagesResponse: Codable, Equatable, Sendable {
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

public struct ListTagsForResourceRequest: Codable, Equatable, Sendable {
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

public struct ListTagsForResourceResponse: Codable, Equatable, Sendable {
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

public struct PackageVulnerabilityDetails: Codable, Equatable, Sendable {
    public var cvss: CvssScoreList?
    public var referenceUrls: ReferenceUrlsList?
    public var relatedVulnerabilities: RelatedVulnerabilitiesList?
    public var source: Source?
    public var sourceUrl: Url?
    public var vendorCreatedAt: Date?
    public var vendorSeverity: Severity?
    public var vendorUpdatedAt: Date?
    public var vulnerabilityId: VulnerabilityId?
    public var vulnerablePackages: VulnerablePackagesList?

    public init(cvss: CvssScoreList? = nil,
                referenceUrls: ReferenceUrlsList? = nil,
                relatedVulnerabilities: RelatedVulnerabilitiesList? = nil,
                source: Source? = nil,
                sourceUrl: Url? = nil,
                vendorCreatedAt: Date? = nil,
                vendorSeverity: Severity? = nil,
                vendorUpdatedAt: Date? = nil,
                vulnerabilityId: VulnerabilityId? = nil,
                vulnerablePackages: VulnerablePackagesList? = nil) {
        self.cvss = cvss
        self.referenceUrls = referenceUrls
        self.relatedVulnerabilities = relatedVulnerabilities
        self.source = source
        self.sourceUrl = sourceUrl
        self.vendorCreatedAt = vendorCreatedAt
        self.vendorSeverity = vendorSeverity
        self.vendorUpdatedAt = vendorUpdatedAt
        self.vulnerabilityId = vulnerabilityId
        self.vulnerablePackages = vulnerablePackages
    }

    enum CodingKeys: String, CodingKey {
        case cvss
        case referenceUrls
        case relatedVulnerabilities
        case source
        case sourceUrl
        case vendorCreatedAt
        case vendorSeverity
        case vendorUpdatedAt
        case vulnerabilityId
        case vulnerablePackages
    }

    public func validate() throws {
    }
}

public struct PullThroughCacheRule: Codable, Equatable, Sendable {
    public var createdAt: CreationTimestamp?
    public var ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix?
    public var registryId: RegistryId?
    public var upstreamRegistryUrl: Url?

    public init(createdAt: CreationTimestamp? = nil,
                ecrRepositoryPrefix: PullThroughCacheRuleRepositoryPrefix? = nil,
                registryId: RegistryId? = nil,
                upstreamRegistryUrl: Url? = nil) {
        self.createdAt = createdAt
        self.ecrRepositoryPrefix = ecrRepositoryPrefix
        self.registryId = registryId
        self.upstreamRegistryUrl = upstreamRegistryUrl
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case ecrRepositoryPrefix
        case registryId
        case upstreamRegistryUrl
    }

    public func validate() throws {
        try ecrRepositoryPrefix?.validateAsPullThroughCacheRuleRepositoryPrefix()
        try registryId?.validateAsRegistryId()
    }
}

public struct PullThroughCacheRuleAlreadyExistsException: Codable, Equatable, Sendable {
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

public struct PullThroughCacheRuleNotFoundException: Codable, Equatable, Sendable {
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

public struct PutImageRequest: Codable, Equatable, Sendable {
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

public struct PutImageResponse: Codable, Equatable, Sendable {
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

public struct PutImageScanningConfigurationRequest: Codable, Equatable, Sendable {
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

public struct PutImageScanningConfigurationResponse: Codable, Equatable, Sendable {
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

public struct PutImageTagMutabilityRequest: Codable, Equatable, Sendable {
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

public struct PutImageTagMutabilityResponse: Codable, Equatable, Sendable {
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

public struct PutLifecyclePolicyRequest: Codable, Equatable, Sendable {
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

public struct PutLifecyclePolicyResponse: Codable, Equatable, Sendable {
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

public struct PutRegistryPolicyRequest: Codable, Equatable, Sendable {
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

public struct PutRegistryPolicyResponse: Codable, Equatable, Sendable {
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

public struct PutRegistryScanningConfigurationRequest: Codable, Equatable, Sendable {
    public var rules: RegistryScanningRuleList?
    public var scanType: ScanType?

    public init(rules: RegistryScanningRuleList? = nil,
                scanType: ScanType? = nil) {
        self.rules = rules
        self.scanType = scanType
    }

    enum CodingKeys: String, CodingKey {
        case rules
        case scanType
    }

    public func validate() throws {
        try rules?.validateAsRegistryScanningRuleList()
    }
}

public struct PutRegistryScanningConfigurationResponse: Codable, Equatable, Sendable {
    public var registryScanningConfiguration: RegistryScanningConfiguration?

    public init(registryScanningConfiguration: RegistryScanningConfiguration? = nil) {
        self.registryScanningConfiguration = registryScanningConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case registryScanningConfiguration
    }

    public func validate() throws {
        try registryScanningConfiguration?.validate()
    }
}

public struct PutReplicationConfigurationRequest: Codable, Equatable, Sendable {
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

public struct PutReplicationConfigurationResponse: Codable, Equatable, Sendable {
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

public struct Recommendation: Codable, Equatable, Sendable {
    public var text: RecommendationText?
    public var url: Url?

    public init(text: RecommendationText? = nil,
                url: Url? = nil) {
        self.text = text
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case text
        case url
    }

    public func validate() throws {
    }
}

public struct ReferencedImagesNotFoundException: Codable, Equatable, Sendable {
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

public struct RegistryPolicyNotFoundException: Codable, Equatable, Sendable {
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

public struct RegistryScanningConfiguration: Codable, Equatable, Sendable {
    public var rules: RegistryScanningRuleList?
    public var scanType: ScanType?

    public init(rules: RegistryScanningRuleList? = nil,
                scanType: ScanType? = nil) {
        self.rules = rules
        self.scanType = scanType
    }

    enum CodingKeys: String, CodingKey {
        case rules
        case scanType
    }

    public func validate() throws {
        try rules?.validateAsRegistryScanningRuleList()
    }
}

public struct RegistryScanningRule: Codable, Equatable, Sendable {
    public var repositoryFilters: ScanningRepositoryFilterList
    public var scanFrequency: ScanFrequency

    public init(repositoryFilters: ScanningRepositoryFilterList,
                scanFrequency: ScanFrequency) {
        self.repositoryFilters = repositoryFilters
        self.scanFrequency = scanFrequency
    }

    enum CodingKeys: String, CodingKey {
        case repositoryFilters
        case scanFrequency
    }

    public func validate() throws {
        try repositoryFilters.validateAsScanningRepositoryFilterList()
    }
}

public struct Remediation: Codable, Equatable, Sendable {
    public var recommendation: Recommendation?

    public init(recommendation: Recommendation? = nil) {
        self.recommendation = recommendation
    }

    enum CodingKeys: String, CodingKey {
        case recommendation
    }

    public func validate() throws {
        try recommendation?.validate()
    }
}

public struct ReplicationConfiguration: Codable, Equatable, Sendable {
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

public struct ReplicationDestination: Codable, Equatable, Sendable {
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

public struct ReplicationRule: Codable, Equatable, Sendable {
    public var destinations: ReplicationDestinationList
    public var repositoryFilters: RepositoryFilterList?

    public init(destinations: ReplicationDestinationList,
                repositoryFilters: RepositoryFilterList? = nil) {
        self.destinations = destinations
        self.repositoryFilters = repositoryFilters
    }

    enum CodingKeys: String, CodingKey {
        case destinations
        case repositoryFilters
    }

    public func validate() throws {
        try destinations.validateAsReplicationDestinationList()
        try repositoryFilters?.validateAsRepositoryFilterList()
    }
}

public struct Repository: Codable, Equatable, Sendable {
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

public struct RepositoryAlreadyExistsException: Codable, Equatable, Sendable {
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

public struct RepositoryFilter: Codable, Equatable, Sendable {
    public var filter: RepositoryFilterValue
    public var filterType: RepositoryFilterType

    public init(filter: RepositoryFilterValue,
                filterType: RepositoryFilterType) {
        self.filter = filter
        self.filterType = filterType
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case filterType
    }

    public func validate() throws {
        try filter.validateAsRepositoryFilterValue()
    }
}

public struct RepositoryNotEmptyException: Codable, Equatable, Sendable {
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

public struct RepositoryNotFoundException: Codable, Equatable, Sendable {
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

public struct RepositoryPolicyNotFoundException: Codable, Equatable, Sendable {
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

public struct RepositoryScanningConfiguration: Codable, Equatable, Sendable {
    public var appliedScanFilters: ScanningRepositoryFilterList?
    public var repositoryArn: Arn?
    public var repositoryName: RepositoryName?
    public var scanFrequency: ScanFrequency?
    public var scanOnPush: ScanOnPushFlag?

    public init(appliedScanFilters: ScanningRepositoryFilterList? = nil,
                repositoryArn: Arn? = nil,
                repositoryName: RepositoryName? = nil,
                scanFrequency: ScanFrequency? = nil,
                scanOnPush: ScanOnPushFlag? = nil) {
        self.appliedScanFilters = appliedScanFilters
        self.repositoryArn = repositoryArn
        self.repositoryName = repositoryName
        self.scanFrequency = scanFrequency
        self.scanOnPush = scanOnPush
    }

    enum CodingKeys: String, CodingKey {
        case appliedScanFilters
        case repositoryArn
        case repositoryName
        case scanFrequency
        case scanOnPush
    }

    public func validate() throws {
        try appliedScanFilters?.validateAsScanningRepositoryFilterList()
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct RepositoryScanningConfigurationFailure: Codable, Equatable, Sendable {
    public var failureCode: ScanningConfigurationFailureCode?
    public var failureReason: ScanningConfigurationFailureReason?
    public var repositoryName: RepositoryName?

    public init(failureCode: ScanningConfigurationFailureCode? = nil,
                failureReason: ScanningConfigurationFailureReason? = nil,
                repositoryName: RepositoryName? = nil) {
        self.failureCode = failureCode
        self.failureReason = failureReason
        self.repositoryName = repositoryName
    }

    enum CodingKeys: String, CodingKey {
        case failureCode
        case failureReason
        case repositoryName
    }

    public func validate() throws {
        try repositoryName?.validateAsRepositoryName()
    }
}

public struct Resource: Codable, Equatable, Sendable {
    public var details: ResourceDetails?
    public var id: ResourceId?
    public var tags: Tags?
    public var type: Type?

    public init(details: ResourceDetails? = nil,
                id: ResourceId? = nil,
                tags: Tags? = nil,
                type: Type? = nil) {
        self.details = details
        self.id = id
        self.tags = tags
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case details
        case id
        case tags
        case type
    }

    public func validate() throws {
        try details?.validate()
    }
}

public struct ResourceDetails: Codable, Equatable, Sendable {
    public var awsEcrContainerImage: AwsEcrContainerImageDetails?

    public init(awsEcrContainerImage: AwsEcrContainerImageDetails? = nil) {
        self.awsEcrContainerImage = awsEcrContainerImage
    }

    enum CodingKeys: String, CodingKey {
        case awsEcrContainerImage
    }

    public func validate() throws {
        try awsEcrContainerImage?.validate()
    }
}

public struct ScanNotFoundException: Codable, Equatable, Sendable {
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

public struct ScanningRepositoryFilter: Codable, Equatable, Sendable {
    public var filter: ScanningRepositoryFilterValue
    public var filterType: ScanningRepositoryFilterType

    public init(filter: ScanningRepositoryFilterValue,
                filterType: ScanningRepositoryFilterType) {
        self.filter = filter
        self.filterType = filterType
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case filterType
    }

    public func validate() throws {
        try filter.validateAsScanningRepositoryFilterValue()
    }
}

public struct ScoreDetails: Codable, Equatable, Sendable {
    public var cvss: CvssScoreDetails?

    public init(cvss: CvssScoreDetails? = nil) {
        self.cvss = cvss
    }

    enum CodingKeys: String, CodingKey {
        case cvss
    }

    public func validate() throws {
        try cvss?.validate()
    }
}

public struct ServerException: Codable, Equatable, Sendable {
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

public struct SetRepositoryPolicyRequest: Codable, Equatable, Sendable {
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

public struct SetRepositoryPolicyResponse: Codable, Equatable, Sendable {
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

public struct StartImageScanRequest: Codable, Equatable, Sendable {
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

public struct StartImageScanResponse: Codable, Equatable, Sendable {
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

public struct StartLifecyclePolicyPreviewRequest: Codable, Equatable, Sendable {
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

public struct StartLifecyclePolicyPreviewResponse: Codable, Equatable, Sendable {
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

public struct Tag: Codable, Equatable, Sendable {
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

public struct TagResourceRequest: Codable, Equatable, Sendable {
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

public struct TagResourceResponse: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TooManyTagsException: Codable, Equatable, Sendable {
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

public struct UnsupportedImageTypeException: Codable, Equatable, Sendable {
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

public struct UnsupportedUpstreamRegistryException: Codable, Equatable, Sendable {
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

public struct UntagResourceRequest: Codable, Equatable, Sendable {
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

public struct UntagResourceResponse: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UploadLayerPartRequest: Codable, Equatable, Sendable {
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

public struct UploadLayerPartResponse: Codable, Equatable, Sendable {
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

public struct UploadNotFoundException: Codable, Equatable, Sendable {
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

public struct ValidationException: Codable, Equatable, Sendable {
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

public struct VulnerablePackage: Codable, Equatable, Sendable {
    public var arch: Arch?
    public var epoch: Epoch?
    public var filePath: FilePath?
    public var name: VulnerablePackageName?
    public var packageManager: PackageManager?
    public var release: Release?
    public var sourceLayerHash: SourceLayerHash?
    public var version: Version?

    public init(arch: Arch? = nil,
                epoch: Epoch? = nil,
                filePath: FilePath? = nil,
                name: VulnerablePackageName? = nil,
                packageManager: PackageManager? = nil,
                release: Release? = nil,
                sourceLayerHash: SourceLayerHash? = nil,
                version: Version? = nil) {
        self.arch = arch
        self.epoch = epoch
        self.filePath = filePath
        self.name = name
        self.packageManager = packageManager
        self.release = release
        self.sourceLayerHash = sourceLayerHash
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case arch
        case epoch
        case filePath
        case name
        case packageManager
        case release
        case sourceLayerHash
        case version
    }

    public func validate() throws {
    }
}
