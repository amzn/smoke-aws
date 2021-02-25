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
// ECRModelErrors.swift
// ECRModel
//

import Foundation
import Logging

public typealias ECRErrorResult<SuccessPayload> = Result<SuccessPayload, ECRError>

public extension Swift.Error {
    func asUnrecognizedECRError() -> ECRError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let emptyUploadIdentity = "EmptyUploadException"
private let imageAlreadyExistsIdentity = "ImageAlreadyExistsException"
private let imageDigestDoesNotMatchIdentity = "ImageDigestDoesNotMatchException"
private let imageNotFoundIdentity = "ImageNotFoundException"
private let imageTagAlreadyExistsIdentity = "ImageTagAlreadyExistsException"
private let invalidLayerIdentity = "InvalidLayerException"
private let invalidLayerPartIdentity = "InvalidLayerPartException"
private let invalidParameterIdentity = "InvalidParameterException"
private let invalidTagParameterIdentity = "InvalidTagParameterException"
private let kmsIdentity = "KmsException"
private let layerAlreadyExistsIdentity = "LayerAlreadyExistsException"
private let layerInaccessibleIdentity = "LayerInaccessibleException"
private let layerPartTooSmallIdentity = "LayerPartTooSmallException"
private let layersNotFoundIdentity = "LayersNotFoundException"
private let lifecyclePolicyNotFoundIdentity = "LifecyclePolicyNotFoundException"
private let lifecyclePolicyPreviewInProgressIdentity = "LifecyclePolicyPreviewInProgressException"
private let lifecyclePolicyPreviewNotFoundIdentity = "LifecyclePolicyPreviewNotFoundException"
private let limitExceededIdentity = "LimitExceededException"
private let referencedImagesNotFoundIdentity = "ReferencedImagesNotFoundException"
private let registryPolicyNotFoundIdentity = "RegistryPolicyNotFoundException"
private let repositoryAlreadyExistsIdentity = "RepositoryAlreadyExistsException"
private let repositoryNotEmptyIdentity = "RepositoryNotEmptyException"
private let repositoryNotFoundIdentity = "RepositoryNotFoundException"
private let repositoryPolicyNotFoundIdentity = "RepositoryPolicyNotFoundException"
private let scanNotFoundIdentity = "ScanNotFoundException"
private let serverIdentity = "ServerException"
private let tooManyTagsIdentity = "TooManyTagsException"
private let unsupportedImageTypeIdentity = "UnsupportedImageTypeException"
private let uploadNotFoundIdentity = "UploadNotFoundException"
private let validationIdentity = "ValidationException"
private let __accessDeniedIdentity = "AccessDenied"

public enum ECRError: Swift.Error, Decodable {
    case emptyUpload(EmptyUploadException)
    case imageAlreadyExists(ImageAlreadyExistsException)
    case imageDigestDoesNotMatch(ImageDigestDoesNotMatchException)
    case imageNotFound(ImageNotFoundException)
    case imageTagAlreadyExists(ImageTagAlreadyExistsException)
    case invalidLayer(InvalidLayerException)
    case invalidLayerPart(InvalidLayerPartException)
    case invalidParameter(InvalidParameterException)
    case invalidTagParameter(InvalidTagParameterException)
    case kms(KmsException)
    case layerAlreadyExists(LayerAlreadyExistsException)
    case layerInaccessible(LayerInaccessibleException)
    case layerPartTooSmall(LayerPartTooSmallException)
    case layersNotFound(LayersNotFoundException)
    case lifecyclePolicyNotFound(LifecyclePolicyNotFoundException)
    case lifecyclePolicyPreviewInProgress(LifecyclePolicyPreviewInProgressException)
    case lifecyclePolicyPreviewNotFound(LifecyclePolicyPreviewNotFoundException)
    case limitExceeded(LimitExceededException)
    case referencedImagesNotFound(ReferencedImagesNotFoundException)
    case registryPolicyNotFound(RegistryPolicyNotFoundException)
    case repositoryAlreadyExists(RepositoryAlreadyExistsException)
    case repositoryNotEmpty(RepositoryNotEmptyException)
    case repositoryNotFound(RepositoryNotFoundException)
    case repositoryPolicyNotFound(RepositoryPolicyNotFoundException)
    case scanNotFound(ScanNotFoundException)
    case server(ServerException)
    case tooManyTags(TooManyTagsException)
    case unsupportedImageType(UnsupportedImageTypeException)
    case uploadNotFound(UploadNotFoundException)
    case validation(ValidationException)
    case accessDenied(message: String?)
    case validationError(reason: String)
    case unrecognizedError(String, String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.firstIndex(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case emptyUploadIdentity:
            let errorPayload = try EmptyUploadException(from: decoder)
            self = ECRError.emptyUpload(errorPayload)
        case imageAlreadyExistsIdentity:
            let errorPayload = try ImageAlreadyExistsException(from: decoder)
            self = ECRError.imageAlreadyExists(errorPayload)
        case imageDigestDoesNotMatchIdentity:
            let errorPayload = try ImageDigestDoesNotMatchException(from: decoder)
            self = ECRError.imageDigestDoesNotMatch(errorPayload)
        case imageNotFoundIdentity:
            let errorPayload = try ImageNotFoundException(from: decoder)
            self = ECRError.imageNotFound(errorPayload)
        case imageTagAlreadyExistsIdentity:
            let errorPayload = try ImageTagAlreadyExistsException(from: decoder)
            self = ECRError.imageTagAlreadyExists(errorPayload)
        case invalidLayerIdentity:
            let errorPayload = try InvalidLayerException(from: decoder)
            self = ECRError.invalidLayer(errorPayload)
        case invalidLayerPartIdentity:
            let errorPayload = try InvalidLayerPartException(from: decoder)
            self = ECRError.invalidLayerPart(errorPayload)
        case invalidParameterIdentity:
            let errorPayload = try InvalidParameterException(from: decoder)
            self = ECRError.invalidParameter(errorPayload)
        case invalidTagParameterIdentity:
            let errorPayload = try InvalidTagParameterException(from: decoder)
            self = ECRError.invalidTagParameter(errorPayload)
        case kmsIdentity:
            let errorPayload = try KmsException(from: decoder)
            self = ECRError.kms(errorPayload)
        case layerAlreadyExistsIdentity:
            let errorPayload = try LayerAlreadyExistsException(from: decoder)
            self = ECRError.layerAlreadyExists(errorPayload)
        case layerInaccessibleIdentity:
            let errorPayload = try LayerInaccessibleException(from: decoder)
            self = ECRError.layerInaccessible(errorPayload)
        case layerPartTooSmallIdentity:
            let errorPayload = try LayerPartTooSmallException(from: decoder)
            self = ECRError.layerPartTooSmall(errorPayload)
        case layersNotFoundIdentity:
            let errorPayload = try LayersNotFoundException(from: decoder)
            self = ECRError.layersNotFound(errorPayload)
        case lifecyclePolicyNotFoundIdentity:
            let errorPayload = try LifecyclePolicyNotFoundException(from: decoder)
            self = ECRError.lifecyclePolicyNotFound(errorPayload)
        case lifecyclePolicyPreviewInProgressIdentity:
            let errorPayload = try LifecyclePolicyPreviewInProgressException(from: decoder)
            self = ECRError.lifecyclePolicyPreviewInProgress(errorPayload)
        case lifecyclePolicyPreviewNotFoundIdentity:
            let errorPayload = try LifecyclePolicyPreviewNotFoundException(from: decoder)
            self = ECRError.lifecyclePolicyPreviewNotFound(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = ECRError.limitExceeded(errorPayload)
        case referencedImagesNotFoundIdentity:
            let errorPayload = try ReferencedImagesNotFoundException(from: decoder)
            self = ECRError.referencedImagesNotFound(errorPayload)
        case registryPolicyNotFoundIdentity:
            let errorPayload = try RegistryPolicyNotFoundException(from: decoder)
            self = ECRError.registryPolicyNotFound(errorPayload)
        case repositoryAlreadyExistsIdentity:
            let errorPayload = try RepositoryAlreadyExistsException(from: decoder)
            self = ECRError.repositoryAlreadyExists(errorPayload)
        case repositoryNotEmptyIdentity:
            let errorPayload = try RepositoryNotEmptyException(from: decoder)
            self = ECRError.repositoryNotEmpty(errorPayload)
        case repositoryNotFoundIdentity:
            let errorPayload = try RepositoryNotFoundException(from: decoder)
            self = ECRError.repositoryNotFound(errorPayload)
        case repositoryPolicyNotFoundIdentity:
            let errorPayload = try RepositoryPolicyNotFoundException(from: decoder)
            self = ECRError.repositoryPolicyNotFound(errorPayload)
        case scanNotFoundIdentity:
            let errorPayload = try ScanNotFoundException(from: decoder)
            self = ECRError.scanNotFound(errorPayload)
        case serverIdentity:
            let errorPayload = try ServerException(from: decoder)
            self = ECRError.server(errorPayload)
        case tooManyTagsIdentity:
            let errorPayload = try TooManyTagsException(from: decoder)
            self = ECRError.tooManyTags(errorPayload)
        case unsupportedImageTypeIdentity:
            let errorPayload = try UnsupportedImageTypeException(from: decoder)
            self = ECRError.unsupportedImageType(errorPayload)
        case uploadNotFoundIdentity:
            let errorPayload = try UploadNotFoundException(from: decoder)
            self = ECRError.uploadNotFound(errorPayload)
        case validationIdentity:
            let errorPayload = try ValidationException(from: decoder)
            self = ECRError.validation(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = ECRError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

