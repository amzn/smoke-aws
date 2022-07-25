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
// ECRModelTypes.swift
// ECRModel
//

import Foundation

/**
 Type definition for the Arch field.
 */
public typealias Arch = String

/**
 Type definition for the Arn field.
 */
public typealias Arn = String

/**
 Type definition for the AttributeKey field.
 */
public typealias AttributeKey = String

/**
 Type definition for the AttributeList field.
 */
public typealias AttributeList = [Attribute]

/**
 Type definition for the AttributeValue field.
 */
public typealias AttributeValue = String

/**
 Type definition for the Author field.
 */
public typealias Author = String

/**
 Type definition for the AuthorizationDataList field.
 */
public typealias AuthorizationDataList = [AuthorizationData]

/**
 Type definition for the Base64 field.
 */
public typealias Base64 = String

/**
 Type definition for the BaseScore field.
 */
public typealias BaseScore = Double

/**
 Type definition for the BatchedOperationLayerDigest field.
 */
public typealias BatchedOperationLayerDigest = String

/**
 Type definition for the BatchedOperationLayerDigestList field.
 */
public typealias BatchedOperationLayerDigestList = [BatchedOperationLayerDigest]

/**
 Type definition for the CreationTimestamp field.
 */
public typealias CreationTimestamp = Int64

/**
 Type definition for the CvssScoreAdjustmentList field.
 */
public typealias CvssScoreAdjustmentList = [CvssScoreAdjustment]

/**
 Type definition for the CvssScoreList field.
 */
public typealias CvssScoreList = [CvssScore]

/**
 Type definition for the Date field.
 */
public typealias Date = Int64

/**
 Enumeration restricting the values of the EncryptionType field.
 */
public enum EncryptionType: String, Codable, CustomStringConvertible, Sendable {
    case aes256 = "AES256"
    case kms = "KMS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EncryptionType = .aes256
}

/**
 Type definition for the EnhancedImageScanFindingList field.
 */
public typealias EnhancedImageScanFindingList = [EnhancedImageScanFinding]

/**
 Type definition for the Epoch field.
 */
public typealias Epoch = Int

/**
 Type definition for the EvaluationTimestamp field.
 */
public typealias EvaluationTimestamp = Int64

/**
 Type definition for the ExceptionMessage field.
 */
public typealias ExceptionMessage = String

/**
 Type definition for the ExpirationTimestamp field.
 */
public typealias ExpirationTimestamp = Int64

/**
 Type definition for the FilePath field.
 */
public typealias FilePath = String

/**
 Type definition for the FindingArn field.
 */
public typealias FindingArn = String

/**
 Type definition for the FindingDescription field.
 */
public typealias FindingDescription = String

/**
 Type definition for the FindingName field.
 */
public typealias FindingName = String

/**
 Enumeration restricting the values of the FindingSeverity field.
 */
public enum FindingSeverity: String, Codable, CustomStringConvertible, Sendable {
    case critical = "CRITICAL"
    case high = "HIGH"
    case informational = "INFORMATIONAL"
    case low = "LOW"
    case medium = "MEDIUM"
    case undefined = "UNDEFINED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FindingSeverity = .critical
}

/**
 Type definition for the FindingSeverityCounts field.
 */
public typealias FindingSeverityCounts = [FindingSeverity: SeverityCount]

/**
 Type definition for the ForceFlag field.
 */
public typealias ForceFlag = Bool

/**
 Type definition for the GetAuthorizationTokenRegistryIdList field.
 */
public typealias GetAuthorizationTokenRegistryIdList = [RegistryId]

/**
 Enumeration restricting the values of the ImageActionType field.
 */
public enum ImageActionType: String, Codable, CustomStringConvertible, Sendable {
    case expire = "EXPIRE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImageActionType = .expire
}

/**
 Type definition for the ImageCount field.
 */
public typealias ImageCount = Int

/**
 Type definition for the ImageDetailList field.
 */
public typealias ImageDetailList = [ImageDetail]

/**
 Type definition for the ImageDigest field.
 */
public typealias ImageDigest = String

/**
 Enumeration restricting the values of the ImageFailureCode field.
 */
public enum ImageFailureCode: String, Codable, CustomStringConvertible, Sendable {
    case imageNotFound = "ImageNotFound"
    case imageReferencedByManifestList = "ImageReferencedByManifestList"
    case imageTagDoesNotMatchDigest = "ImageTagDoesNotMatchDigest"
    case invalidImageDigest = "InvalidImageDigest"
    case invalidImageTag = "InvalidImageTag"
    case kmsError = "KmsError"
    case missingDigestAndTag = "MissingDigestAndTag"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImageFailureCode = .imageNotFound
}

/**
 Type definition for the ImageFailureList field.
 */
public typealias ImageFailureList = [ImageFailure]

/**
 Type definition for the ImageFailureReason field.
 */
public typealias ImageFailureReason = String

/**
 Type definition for the ImageIdentifierList field.
 */
public typealias ImageIdentifierList = [ImageIdentifier]

/**
 Type definition for the ImageList field.
 */
public typealias ImageList = [Image]

/**
 Type definition for the ImageManifest field.
 */
public typealias ImageManifest = String

/**
 Type definition for the ImageReplicationStatusList field.
 */
public typealias ImageReplicationStatusList = [ImageReplicationStatus]

/**
 Type definition for the ImageScanFindingList field.
 */
public typealias ImageScanFindingList = [ImageScanFinding]

/**
 Type definition for the ImageSizeInBytes field.
 */
public typealias ImageSizeInBytes = Int64

/**
 Type definition for the ImageTag field.
 */
public typealias ImageTag = String

/**
 Type definition for the ImageTagList field.
 */
public typealias ImageTagList = [ImageTag]

/**
 Enumeration restricting the values of the ImageTagMutability field.
 */
public enum ImageTagMutability: String, Codable, CustomStringConvertible, Sendable {
    case immutable = "IMMUTABLE"
    case mutable = "MUTABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImageTagMutability = .immutable
}

/**
 Type definition for the ImageTagsList field.
 */
public typealias ImageTagsList = [ImageTag]

/**
 Type definition for the KmsError field.
 */
public typealias KmsError = String

/**
 Type definition for the KmsKey field.
 */
public typealias KmsKey = String

/**
 Enumeration restricting the values of the LayerAvailability field.
 */
public enum LayerAvailability: String, Codable, CustomStringConvertible, Sendable {
    case available = "AVAILABLE"
    case unavailable = "UNAVAILABLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LayerAvailability = .available
}

/**
 Type definition for the LayerDigest field.
 */
public typealias LayerDigest = String

/**
 Type definition for the LayerDigestList field.
 */
public typealias LayerDigestList = [LayerDigest]

/**
 Enumeration restricting the values of the LayerFailureCode field.
 */
public enum LayerFailureCode: String, Codable, CustomStringConvertible, Sendable {
    case invalidLayerDigest = "InvalidLayerDigest"
    case missingLayerDigest = "MissingLayerDigest"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LayerFailureCode = .invalidLayerDigest
}

/**
 Type definition for the LayerFailureList field.
 */
public typealias LayerFailureList = [LayerFailure]

/**
 Type definition for the LayerFailureReason field.
 */
public typealias LayerFailureReason = String

/**
 Type definition for the LayerList field.
 */
public typealias LayerList = [Layer]

/**
 Type definition for the LayerPartBlob field.
 */
public typealias LayerPartBlob = Data

/**
 Type definition for the LayerSizeInBytes field.
 */
public typealias LayerSizeInBytes = Int64

/**
 Type definition for the LifecyclePolicyPreviewResultList field.
 */
public typealias LifecyclePolicyPreviewResultList = [LifecyclePolicyPreviewResult]

/**
 Enumeration restricting the values of the LifecyclePolicyPreviewStatus field.
 */
public enum LifecyclePolicyPreviewStatus: String, Codable, CustomStringConvertible, Sendable {
    case complete = "COMPLETE"
    case expired = "EXPIRED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LifecyclePolicyPreviewStatus = .complete
}

/**
 Type definition for the LifecyclePolicyRulePriority field.
 */
public typealias LifecyclePolicyRulePriority = Int

/**
 Type definition for the LifecyclePolicyText field.
 */
public typealias LifecyclePolicyText = String

/**
 Type definition for the LifecyclePreviewMaxResults field.
 */
public typealias LifecyclePreviewMaxResults = Int

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the MediaType field.
 */
public typealias MediaType = String

/**
 Type definition for the MediaTypeList field.
 */
public typealias MediaTypeList = [MediaType]

/**
 Type definition for the Metric field.
 */
public typealias Metric = String

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the PackageManager field.
 */
public typealias PackageManager = String

/**
 Type definition for the PartSize field.
 */
public typealias PartSize = Int64

/**
 Type definition for the Platform field.
 */
public typealias Platform = String

/**
 Type definition for the ProxyEndpoint field.
 */
public typealias ProxyEndpoint = String

/**
 Type definition for the PullThroughCacheRuleList field.
 */
public typealias PullThroughCacheRuleList = [PullThroughCacheRule]

/**
 Type definition for the PullThroughCacheRuleRepositoryPrefix field.
 */
public typealias PullThroughCacheRuleRepositoryPrefix = String

/**
 Type definition for the PullThroughCacheRuleRepositoryPrefixList field.
 */
public typealias PullThroughCacheRuleRepositoryPrefixList = [PullThroughCacheRuleRepositoryPrefix]

/**
 Type definition for the PushTimestamp field.
 */
public typealias PushTimestamp = Int64

/**
 Type definition for the Reason field.
 */
public typealias Reason = String

/**
 Type definition for the RecommendationText field.
 */
public typealias RecommendationText = String

/**
 Type definition for the RecordedPullTimestamp field.
 */
public typealias RecordedPullTimestamp = Int64

/**
 Type definition for the ReferenceUrlsList field.
 */
public typealias ReferenceUrlsList = [Url]

/**
 Type definition for the Region field.
 */
public typealias Region = String

/**
 Type definition for the RegistryId field.
 */
public typealias RegistryId = String

/**
 Type definition for the RegistryPolicyText field.
 */
public typealias RegistryPolicyText = String

/**
 Type definition for the RegistryScanningRuleList field.
 */
public typealias RegistryScanningRuleList = [RegistryScanningRule]

/**
 Type definition for the RelatedVulnerabilitiesList field.
 */
public typealias RelatedVulnerabilitiesList = [RelatedVulnerability]

/**
 Type definition for the RelatedVulnerability field.
 */
public typealias RelatedVulnerability = String

/**
 Type definition for the Release field.
 */
public typealias Release = String

/**
 Type definition for the ReplicationDestinationList field.
 */
public typealias ReplicationDestinationList = [ReplicationDestination]

/**
 Type definition for the ReplicationError field.
 */
public typealias ReplicationError = String

/**
 Type definition for the ReplicationRuleList field.
 */
public typealias ReplicationRuleList = [ReplicationRule]

/**
 Enumeration restricting the values of the ReplicationStatus field.
 */
public enum ReplicationStatus: String, Codable, CustomStringConvertible, Sendable {
    case complete = "COMPLETE"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplicationStatus = .complete
}

/**
 Type definition for the RepositoryFilterList field.
 */
public typealias RepositoryFilterList = [RepositoryFilter]

/**
 Enumeration restricting the values of the RepositoryFilterType field.
 */
public enum RepositoryFilterType: String, Codable, CustomStringConvertible, Sendable {
    case prefixMatch = "PREFIX_MATCH"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RepositoryFilterType = .prefixMatch
}

/**
 Type definition for the RepositoryFilterValue field.
 */
public typealias RepositoryFilterValue = String

/**
 Type definition for the RepositoryList field.
 */
public typealias RepositoryList = [Repository]

/**
 Type definition for the RepositoryName field.
 */
public typealias RepositoryName = String

/**
 Type definition for the RepositoryNameList field.
 */
public typealias RepositoryNameList = [RepositoryName]

/**
 Type definition for the RepositoryPolicyText field.
 */
public typealias RepositoryPolicyText = String

/**
 Type definition for the RepositoryScanningConfigurationFailureList field.
 */
public typealias RepositoryScanningConfigurationFailureList = [RepositoryScanningConfigurationFailure]

/**
 Type definition for the RepositoryScanningConfigurationList field.
 */
public typealias RepositoryScanningConfigurationList = [RepositoryScanningConfiguration]

/**
 Type definition for the ResourceId field.
 */
public typealias ResourceId = String

/**
 Type definition for the ResourceList field.
 */
public typealias ResourceList = [Resource]

/**
 Enumeration restricting the values of the ScanFrequency field.
 */
public enum ScanFrequency: String, Codable, CustomStringConvertible, Sendable {
    case continuousScan = "CONTINUOUS_SCAN"
    case manual = "MANUAL"
    case scanOnPush = "SCAN_ON_PUSH"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScanFrequency = .continuousScan
}

/**
 Type definition for the ScanOnPushFlag field.
 */
public typealias ScanOnPushFlag = Bool

/**
 Enumeration restricting the values of the ScanStatus field.
 */
public enum ScanStatus: String, Codable, CustomStringConvertible, Sendable {
    case active = "ACTIVE"
    case complete = "COMPLETE"
    case failed = "FAILED"
    case findingsUnavailable = "FINDINGS_UNAVAILABLE"
    case inProgress = "IN_PROGRESS"
    case pending = "PENDING"
    case scanEligibilityExpired = "SCAN_ELIGIBILITY_EXPIRED"
    case unsupportedImage = "UNSUPPORTED_IMAGE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScanStatus = .active
}

/**
 Type definition for the ScanStatusDescription field.
 */
public typealias ScanStatusDescription = String

/**
 Type definition for the ScanTimestamp field.
 */
public typealias ScanTimestamp = Int64

/**
 Enumeration restricting the values of the ScanType field.
 */
public enum ScanType: String, Codable, CustomStringConvertible, Sendable {
    case basic = "BASIC"
    case enhanced = "ENHANCED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScanType = .basic
}

/**
 Enumeration restricting the values of the ScanningConfigurationFailureCode field.
 */
public enum ScanningConfigurationFailureCode: String, Codable, CustomStringConvertible, Sendable {
    case repositoryNotFound = "REPOSITORY_NOT_FOUND"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScanningConfigurationFailureCode = .repositoryNotFound
}

/**
 Type definition for the ScanningConfigurationFailureReason field.
 */
public typealias ScanningConfigurationFailureReason = String

/**
 Type definition for the ScanningConfigurationRepositoryNameList field.
 */
public typealias ScanningConfigurationRepositoryNameList = [RepositoryName]

/**
 Type definition for the ScanningRepositoryFilterList field.
 */
public typealias ScanningRepositoryFilterList = [ScanningRepositoryFilter]

/**
 Enumeration restricting the values of the ScanningRepositoryFilterType field.
 */
public enum ScanningRepositoryFilterType: String, Codable, CustomStringConvertible, Sendable {
    case wildcard = "WILDCARD"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScanningRepositoryFilterType = .wildcard
}

/**
 Type definition for the ScanningRepositoryFilterValue field.
 */
public typealias ScanningRepositoryFilterValue = String

/**
 Type definition for the Score field.
 */
public typealias Score = Double

/**
 Type definition for the ScoringVector field.
 */
public typealias ScoringVector = String

/**
 Type definition for the Severity field.
 */
public typealias Severity = String

/**
 Type definition for the SeverityCount field.
 */
public typealias SeverityCount = Int

/**
 Type definition for the Source field.
 */
public typealias Source = String

/**
 Type definition for the SourceLayerHash field.
 */
public typealias SourceLayerHash = String

/**
 Type definition for the Status field.
 */
public typealias Status = String

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Enumeration restricting the values of the TagStatus field.
 */
public enum TagStatus: String, Codable, CustomStringConvertible, Sendable {
    case any = "ANY"
    case tagged = "TAGGED"
    case untagged = "UNTAGGED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TagStatus = .any
}

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Tags field.
 */
public typealias Tags = [TagKey: TagValue]

/**
 Type definition for the Title field.
 */
public typealias Title = String

/**
 Type definition for the Type field.
 */
public typealias Type = String

/**
 Type definition for the UploadId field.
 */
public typealias UploadId = String

/**
 Type definition for the Url field.
 */
public typealias Url = String

/**
 Type definition for the Version field.
 */
public typealias Version = String

/**
 Type definition for the VulnerabilityId field.
 */
public typealias VulnerabilityId = String

/**
 Type definition for the VulnerabilitySourceUpdateTimestamp field.
 */
public typealias VulnerabilitySourceUpdateTimestamp = Int64

/**
 Type definition for the VulnerablePackageName field.
 */
public typealias VulnerablePackageName = String

/**
 Type definition for the VulnerablePackagesList field.
 */
public typealias VulnerablePackagesList = [VulnerablePackage]

/**
 Validation for the AttributeKey field.
*/
extension ECRModel.AttributeKey {
    public func validateAsAttributeKey() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to AttributeKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw ECRError.validationError(reason: "The provided value to AttributeKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AttributeList field.
*/
extension Array where Element == ECRModel.Attribute {
    public func validateAsAttributeList() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to AttributeList violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw ECRError.validationError(reason: "The provided value to AttributeList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AttributeValue field.
*/
extension ECRModel.AttributeValue {
    public func validateAsAttributeValue() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to AttributeValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw ECRError.validationError(reason: "The provided value to AttributeValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Base64 field.
*/
extension ECRModel.Base64 {
    public func validateAsBase64() throws {
        guard let matchingRange = self.range(of: "^\\S+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to Base64 violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BatchedOperationLayerDigest field.
*/
extension ECRModel.BatchedOperationLayerDigest {
    public func validateAsBatchedOperationLayerDigest() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to BatchedOperationLayerDigest violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw ECRError.validationError(reason: "The provided value to BatchedOperationLayerDigest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BatchedOperationLayerDigestList field.
*/
extension Array where Element == ECRModel.BatchedOperationLayerDigest {
    public func validateAsBatchedOperationLayerDigestList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to BatchedOperationLayerDigestList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to BatchedOperationLayerDigestList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GetAuthorizationTokenRegistryIdList field.
*/
extension Array where Element == ECRModel.RegistryId {
    public func validateAsGetAuthorizationTokenRegistryIdList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to GetAuthorizationTokenRegistryIdList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw ECRError.validationError(reason: "The provided value to GetAuthorizationTokenRegistryIdList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ImageCount field.
*/
extension ECRModel.ImageCount {
    public func validateAsImageCount() throws {
        if self < 0 {
            throw ECRError.validationError(reason: "The provided value to ImageCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ImageIdentifierList field.
*/
extension Array where Element == ECRModel.ImageIdentifier {
    public func validateAsImageIdentifierList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to ImageIdentifierList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to ImageIdentifierList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ImageManifest field.
*/
extension ECRModel.ImageManifest {
    public func validateAsImageManifest() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to ImageManifest violated the minimum length constraint.")
        }

        if self.count > 4194304 {
            throw ECRError.validationError(reason: "The provided value to ImageManifest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ImageTag field.
*/
extension ECRModel.ImageTag {
    public func validateAsImageTag() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to ImageTag violated the minimum length constraint.")
        }

        if self.count > 300 {
            throw ECRError.validationError(reason: "The provided value to ImageTag violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the KmsKey field.
*/
extension ECRModel.KmsKey {
    public func validateAsKmsKey() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to KmsKey violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw ECRError.validationError(reason: "The provided value to KmsKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LayerDigest field.
*/
extension ECRModel.LayerDigest {
    public func validateAsLayerDigest() throws {
        guard let matchingRange = self.range(of: "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to LayerDigest violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the LayerDigestList field.
*/
extension Array where Element == ECRModel.LayerDigest {
    public func validateAsLayerDigestList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to LayerDigestList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to LayerDigestList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LifecyclePolicyRulePriority field.
*/
extension ECRModel.LifecyclePolicyRulePriority {
    public func validateAsLifecyclePolicyRulePriority() throws {
        if self < 1 {
            throw ECRError.validationError(reason: "The provided value to LifecyclePolicyRulePriority violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the LifecyclePolicyText field.
*/
extension ECRModel.LifecyclePolicyText {
    public func validateAsLifecyclePolicyText() throws {
        if self.count < 100 {
            throw ECRError.validationError(reason: "The provided value to LifecyclePolicyText violated the minimum length constraint.")
        }

        if self.count > 30720 {
            throw ECRError.validationError(reason: "The provided value to LifecyclePolicyText violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LifecyclePreviewMaxResults field.
*/
extension ECRModel.LifecyclePreviewMaxResults {
    public func validateAsLifecyclePreviewMaxResults() throws {
        if self < 1 {
            throw ECRError.validationError(reason: "The provided value to LifecyclePreviewMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw ECRError.validationError(reason: "The provided value to LifecyclePreviewMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaxResults field.
*/
extension ECRModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 1 {
            throw ECRError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ECRError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MediaTypeList field.
*/
extension Array where Element == ECRModel.MediaType {
    public func validateAsMediaTypeList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to MediaTypeList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to MediaTypeList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PartSize field.
*/
extension ECRModel.PartSize {
    public func validateAsPartSize() throws {
        if self < 0 {
            throw ECRError.validationError(reason: "The provided value to PartSize violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PullThroughCacheRuleRepositoryPrefix field.
*/
extension ECRModel.PullThroughCacheRuleRepositoryPrefix {
    public func validateAsPullThroughCacheRuleRepositoryPrefix() throws {
        if self.count < 2 {
            throw ECRError.validationError(reason: "The provided value to PullThroughCacheRuleRepositoryPrefix violated the minimum length constraint.")
        }

        if self.count > 20 {
            throw ECRError.validationError(reason: "The provided value to PullThroughCacheRuleRepositoryPrefix violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-z0-9]+(?:[._-][a-z0-9]+)*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to PullThroughCacheRuleRepositoryPrefix violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PullThroughCacheRuleRepositoryPrefixList field.
*/
extension Array where Element == ECRModel.PullThroughCacheRuleRepositoryPrefix {
    public func validateAsPullThroughCacheRuleRepositoryPrefixList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to PullThroughCacheRuleRepositoryPrefixList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to PullThroughCacheRuleRepositoryPrefixList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Region field.
*/
extension ECRModel.Region {
    public func validateAsRegion() throws {
        if self.count < 2 {
            throw ECRError.validationError(reason: "The provided value to Region violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw ECRError.validationError(reason: "The provided value to Region violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[0-9a-z-]{2,25}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to Region violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RegistryId field.
*/
extension ECRModel.RegistryId {
    public func validateAsRegistryId() throws {
        guard let matchingRange = self.range(of: "[0-9]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to RegistryId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RegistryPolicyText field.
*/
extension ECRModel.RegistryPolicyText {
    public func validateAsRegistryPolicyText() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to RegistryPolicyText violated the minimum length constraint.")
        }

        if self.count > 10240 {
            throw ECRError.validationError(reason: "The provided value to RegistryPolicyText violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RegistryScanningRuleList field.
*/
extension Array where Element == ECRModel.RegistryScanningRule {
    public func validateAsRegistryScanningRuleList() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to RegistryScanningRuleList violated the minimum length constraint.")
        }

        if self.count > 2 {
            throw ECRError.validationError(reason: "The provided value to RegistryScanningRuleList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReplicationDestinationList field.
*/
extension Array where Element == ECRModel.ReplicationDestination {
    public func validateAsReplicationDestinationList() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to ReplicationDestinationList violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw ECRError.validationError(reason: "The provided value to ReplicationDestinationList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReplicationRuleList field.
*/
extension Array where Element == ECRModel.ReplicationRule {
    public func validateAsReplicationRuleList() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to ReplicationRuleList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw ECRError.validationError(reason: "The provided value to ReplicationRuleList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RepositoryFilterList field.
*/
extension Array where Element == ECRModel.RepositoryFilter {
    public func validateAsRepositoryFilterList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to RepositoryFilterList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to RepositoryFilterList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RepositoryFilterValue field.
*/
extension ECRModel.RepositoryFilterValue {
    public func validateAsRepositoryFilterValue() throws {
        if self.count < 2 {
            throw ECRError.validationError(reason: "The provided value to RepositoryFilterValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw ECRError.validationError(reason: "The provided value to RepositoryFilterValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^(?:[a-z0-9]+(?:[._-][a-z0-9]*)*/)*[a-z0-9]*(?:[._-][a-z0-9]*)*$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to RepositoryFilterValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RepositoryName field.
*/
extension ECRModel.RepositoryName {
    public func validateAsRepositoryName() throws {
        if self.count < 2 {
            throw ECRError.validationError(reason: "The provided value to RepositoryName violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw ECRError.validationError(reason: "The provided value to RepositoryName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to RepositoryName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the RepositoryNameList field.
*/
extension Array where Element == ECRModel.RepositoryName {
    public func validateAsRepositoryNameList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to RepositoryNameList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to RepositoryNameList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RepositoryPolicyText field.
*/
extension ECRModel.RepositoryPolicyText {
    public func validateAsRepositoryPolicyText() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to RepositoryPolicyText violated the minimum length constraint.")
        }

        if self.count > 10240 {
            throw ECRError.validationError(reason: "The provided value to RepositoryPolicyText violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScanningConfigurationRepositoryNameList field.
*/
extension Array where Element == ECRModel.RepositoryName {
    public func validateAsScanningConfigurationRepositoryNameList() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to ScanningConfigurationRepositoryNameList violated the minimum length constraint.")
        }

        if self.count > 25 {
            throw ECRError.validationError(reason: "The provided value to ScanningConfigurationRepositoryNameList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScanningRepositoryFilterList field.
*/
extension Array where Element == ECRModel.ScanningRepositoryFilter {
    public func validateAsScanningRepositoryFilterList() throws {
        if self.count < 0 {
            throw ECRError.validationError(reason: "The provided value to ScanningRepositoryFilterList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ECRError.validationError(reason: "The provided value to ScanningRepositoryFilterList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ScanningRepositoryFilterValue field.
*/
extension ECRModel.ScanningRepositoryFilterValue {
    public func validateAsScanningRepositoryFilterValue() throws {
        if self.count < 1 {
            throw ECRError.validationError(reason: "The provided value to ScanningRepositoryFilterValue violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw ECRError.validationError(reason: "The provided value to ScanningRepositoryFilterValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[a-z0-9*](?:[._\\-/a-z0-9*]?[a-z0-9*]+)*$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to ScanningRepositoryFilterValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SeverityCount field.
*/
extension ECRModel.SeverityCount {
    public func validateAsSeverityCount() throws {
        if self < 0 {
            throw ECRError.validationError(reason: "The provided value to SeverityCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the UploadId field.
*/
extension ECRModel.UploadId {
    public func validateAsUploadId() throws {
        guard let matchingRange = self.range(of: "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ECRError.validationError(
                    reason: "The provided value to UploadId violated the regular expression constraint.")
        }
    }
}
