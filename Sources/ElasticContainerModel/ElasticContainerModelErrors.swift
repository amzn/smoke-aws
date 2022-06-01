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
// ElasticContainerModelErrors.swift
// ElasticContainerModel
//

import Foundation
import Logging

public typealias ElasticContainerErrorResult<SuccessPayload> = Result<SuccessPayload, ElasticContainerError>

public extension Swift.Error {
    func asUnrecognizedElasticContainerError() -> ElasticContainerError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let accessDeniedIdentity = "AccessDeniedException"
private let attributeLimitExceededIdentity = "AttributeLimitExceededException"
private let blockedIdentity = "BlockedException"
private let clientIdentity = "ClientException"
private let clusterContainsContainerInstancesIdentity = "ClusterContainsContainerInstancesException"
private let clusterContainsServicesIdentity = "ClusterContainsServicesException"
private let clusterContainsTasksIdentity = "ClusterContainsTasksException"
private let clusterNotFoundIdentity = "ClusterNotFoundException"
private let invalidParameterIdentity = "InvalidParameterException"
private let limitExceededIdentity = "LimitExceededException"
private let missingVersionIdentity = "MissingVersionException"
private let noUpdateAvailableIdentity = "NoUpdateAvailableException"
private let platformTaskDefinitionIncompatibilityIdentity = "PlatformTaskDefinitionIncompatibilityException"
private let platformUnknownIdentity = "PlatformUnknownException"
private let resourceInUseIdentity = "ResourceInUseException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let serverIdentity = "ServerException"
private let serviceNotActiveIdentity = "ServiceNotActiveException"
private let serviceNotFoundIdentity = "ServiceNotFoundException"
private let targetNotConnectedIdentity = "TargetNotConnectedException"
private let targetNotFoundIdentity = "TargetNotFoundException"
private let taskSetNotFoundIdentity = "TaskSetNotFoundException"
private let unsupportedFeatureIdentity = "UnsupportedFeatureException"
private let updateInProgressIdentity = "UpdateInProgressException"

public enum ElasticContainerError: Swift.Error, Decodable {
    case accessDenied(AccessDeniedException)
    case attributeLimitExceeded(AttributeLimitExceededException)
    case blocked(BlockedException)
    case client(ClientException)
    case clusterContainsContainerInstances(ClusterContainsContainerInstancesException)
    case clusterContainsServices(ClusterContainsServicesException)
    case clusterContainsTasks(ClusterContainsTasksException)
    case clusterNotFound(ClusterNotFoundException)
    case invalidParameter(InvalidParameterException)
    case limitExceeded(LimitExceededException)
    case missingVersion(MissingVersionException)
    case noUpdateAvailable(NoUpdateAvailableException)
    case platformTaskDefinitionIncompatibility(PlatformTaskDefinitionIncompatibilityException)
    case platformUnknown(PlatformUnknownException)
    case resourceInUse(ResourceInUseException)
    case resourceNotFound(ResourceNotFoundException)
    case server(ServerException)
    case serviceNotActive(ServiceNotActiveException)
    case serviceNotFound(ServiceNotFoundException)
    case targetNotConnected(TargetNotConnectedException)
    case targetNotFound(TargetNotFoundException)
    case taskSetNotFound(TaskSetNotFoundException)
    case unsupportedFeature(UnsupportedFeatureException)
    case updateInProgress(UpdateInProgressException)
    case validationError(reason: String)
    case unrecognizedError(String, String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decodeIfPresent(String.self, forKey: .type) ?? "Unspecified"
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.firstIndex(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case accessDeniedIdentity:
            let errorPayload = try AccessDeniedException(from: decoder)
            self = ElasticContainerError.accessDenied(errorPayload)
        case attributeLimitExceededIdentity:
            let errorPayload = try AttributeLimitExceededException(from: decoder)
            self = ElasticContainerError.attributeLimitExceeded(errorPayload)
        case blockedIdentity:
            let errorPayload = try BlockedException(from: decoder)
            self = ElasticContainerError.blocked(errorPayload)
        case clientIdentity:
            let errorPayload = try ClientException(from: decoder)
            self = ElasticContainerError.client(errorPayload)
        case clusterContainsContainerInstancesIdentity:
            let errorPayload = try ClusterContainsContainerInstancesException(from: decoder)
            self = ElasticContainerError.clusterContainsContainerInstances(errorPayload)
        case clusterContainsServicesIdentity:
            let errorPayload = try ClusterContainsServicesException(from: decoder)
            self = ElasticContainerError.clusterContainsServices(errorPayload)
        case clusterContainsTasksIdentity:
            let errorPayload = try ClusterContainsTasksException(from: decoder)
            self = ElasticContainerError.clusterContainsTasks(errorPayload)
        case clusterNotFoundIdentity:
            let errorPayload = try ClusterNotFoundException(from: decoder)
            self = ElasticContainerError.clusterNotFound(errorPayload)
        case invalidParameterIdentity:
            let errorPayload = try InvalidParameterException(from: decoder)
            self = ElasticContainerError.invalidParameter(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = ElasticContainerError.limitExceeded(errorPayload)
        case missingVersionIdentity:
            let errorPayload = try MissingVersionException(from: decoder)
            self = ElasticContainerError.missingVersion(errorPayload)
        case noUpdateAvailableIdentity:
            let errorPayload = try NoUpdateAvailableException(from: decoder)
            self = ElasticContainerError.noUpdateAvailable(errorPayload)
        case platformTaskDefinitionIncompatibilityIdentity:
            let errorPayload = try PlatformTaskDefinitionIncompatibilityException(from: decoder)
            self = ElasticContainerError.platformTaskDefinitionIncompatibility(errorPayload)
        case platformUnknownIdentity:
            let errorPayload = try PlatformUnknownException(from: decoder)
            self = ElasticContainerError.platformUnknown(errorPayload)
        case resourceInUseIdentity:
            let errorPayload = try ResourceInUseException(from: decoder)
            self = ElasticContainerError.resourceInUse(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = ElasticContainerError.resourceNotFound(errorPayload)
        case serverIdentity:
            let errorPayload = try ServerException(from: decoder)
            self = ElasticContainerError.server(errorPayload)
        case serviceNotActiveIdentity:
            let errorPayload = try ServiceNotActiveException(from: decoder)
            self = ElasticContainerError.serviceNotActive(errorPayload)
        case serviceNotFoundIdentity:
            let errorPayload = try ServiceNotFoundException(from: decoder)
            self = ElasticContainerError.serviceNotFound(errorPayload)
        case targetNotConnectedIdentity:
            let errorPayload = try TargetNotConnectedException(from: decoder)
            self = ElasticContainerError.targetNotConnected(errorPayload)
        case targetNotFoundIdentity:
            let errorPayload = try TargetNotFoundException(from: decoder)
            self = ElasticContainerError.targetNotFound(errorPayload)
        case taskSetNotFoundIdentity:
            let errorPayload = try TaskSetNotFoundException(from: decoder)
            self = ElasticContainerError.taskSetNotFound(errorPayload)
        case unsupportedFeatureIdentity:
            let errorPayload = try UnsupportedFeatureException(from: decoder)
            self = ElasticContainerError.unsupportedFeature(errorPayload)
        case updateInProgressIdentity:
            let errorPayload = try UpdateInProgressException(from: decoder)
            self = ElasticContainerError.updateInProgress(errorPayload)
        default:
            self = ElasticContainerError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

