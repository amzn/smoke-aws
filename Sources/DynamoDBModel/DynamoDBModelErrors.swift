// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// DynamoDBModelErrors.swift
// DynamoDBModel
//

import Foundation
import LoggerAPI

private let backupInUseIdentity = "BackupInUseException"
private let backupNotFoundIdentity = "BackupNotFoundException"
private let conditionalCheckFailedIdentity = "ConditionalCheckFailedException"
private let continuousBackupsUnavailableIdentity = "ContinuousBackupsUnavailableException"
private let globalTableAlreadyExistsIdentity = "GlobalTableAlreadyExistsException"
private let globalTableNotFoundIdentity = "GlobalTableNotFoundException"
private let idempotentParameterMismatchIdentity = "IdempotentParameterMismatchException"
private let indexNotFoundIdentity = "IndexNotFoundException"
private let internalServerIdentity = "InternalServerError"
private let invalidRestoreTimeIdentity = "InvalidRestoreTimeException"
private let itemCollectionSizeLimitExceededIdentity = "ItemCollectionSizeLimitExceededException"
private let limitExceededIdentity = "LimitExceededException"
private let pointInTimeRecoveryUnavailableIdentity = "PointInTimeRecoveryUnavailableException"
private let provisionedThroughputExceededIdentity = "ProvisionedThroughputExceededException"
private let replicaAlreadyExistsIdentity = "ReplicaAlreadyExistsException"
private let replicaNotFoundIdentity = "ReplicaNotFoundException"
private let requestLimitExceededIdentity = "RequestLimitExceeded"
private let resourceInUseIdentity = "ResourceInUseException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let tableAlreadyExistsIdentity = "TableAlreadyExistsException"
private let tableInUseIdentity = "TableInUseException"
private let tableNotFoundIdentity = "TableNotFoundException"
private let transactionCanceledIdentity = "TransactionCanceledException"
private let transactionConflictIdentity = "TransactionConflictException"
private let transactionInProgressIdentity = "TransactionInProgressException"
private let __accessDeniedIdentity = "AccessDenied"

public enum DynamoDBCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum DynamoDBError: Swift.Error, Decodable {
    case backupInUse(BackupInUseException)
    case backupNotFound(BackupNotFoundException)
    case conditionalCheckFailed(ConditionalCheckFailedException)
    case continuousBackupsUnavailable(ContinuousBackupsUnavailableException)
    case globalTableAlreadyExists(GlobalTableAlreadyExistsException)
    case globalTableNotFound(GlobalTableNotFoundException)
    case idempotentParameterMismatch(IdempotentParameterMismatchException)
    case indexNotFound(IndexNotFoundException)
    case internalServer(InternalServerError)
    case invalidRestoreTime(InvalidRestoreTimeException)
    case itemCollectionSizeLimitExceeded(ItemCollectionSizeLimitExceededException)
    case limitExceeded(LimitExceededException)
    case pointInTimeRecoveryUnavailable(PointInTimeRecoveryUnavailableException)
    case provisionedThroughputExceeded(ProvisionedThroughputExceededException)
    case replicaAlreadyExists(ReplicaAlreadyExistsException)
    case replicaNotFound(ReplicaNotFoundException)
    case requestLimitExceeded(RequestLimitExceeded)
    case resourceInUse(ResourceInUseException)
    case resourceNotFound(ResourceNotFoundException)
    case tableAlreadyExists(TableAlreadyExistsException)
    case tableInUse(TableInUseException)
    case tableNotFound(TableNotFoundException)
    case transactionCanceled(TransactionCanceledException)
    case transactionConflict(TransactionConflictException)
    case transactionInProgress(TransactionInProgressException)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case backupInUseIdentity:
            let errorPayload = try BackupInUseException(from: decoder)
            self = DynamoDBError.backupInUse(errorPayload)
        case backupNotFoundIdentity:
            let errorPayload = try BackupNotFoundException(from: decoder)
            self = DynamoDBError.backupNotFound(errorPayload)
        case conditionalCheckFailedIdentity:
            let errorPayload = try ConditionalCheckFailedException(from: decoder)
            self = DynamoDBError.conditionalCheckFailed(errorPayload)
        case continuousBackupsUnavailableIdentity:
            let errorPayload = try ContinuousBackupsUnavailableException(from: decoder)
            self = DynamoDBError.continuousBackupsUnavailable(errorPayload)
        case globalTableAlreadyExistsIdentity:
            let errorPayload = try GlobalTableAlreadyExistsException(from: decoder)
            self = DynamoDBError.globalTableAlreadyExists(errorPayload)
        case globalTableNotFoundIdentity:
            let errorPayload = try GlobalTableNotFoundException(from: decoder)
            self = DynamoDBError.globalTableNotFound(errorPayload)
        case idempotentParameterMismatchIdentity:
            let errorPayload = try IdempotentParameterMismatchException(from: decoder)
            self = DynamoDBError.idempotentParameterMismatch(errorPayload)
        case indexNotFoundIdentity:
            let errorPayload = try IndexNotFoundException(from: decoder)
            self = DynamoDBError.indexNotFound(errorPayload)
        case internalServerIdentity:
            let errorPayload = try InternalServerError(from: decoder)
            self = DynamoDBError.internalServer(errorPayload)
        case invalidRestoreTimeIdentity:
            let errorPayload = try InvalidRestoreTimeException(from: decoder)
            self = DynamoDBError.invalidRestoreTime(errorPayload)
        case itemCollectionSizeLimitExceededIdentity:
            let errorPayload = try ItemCollectionSizeLimitExceededException(from: decoder)
            self = DynamoDBError.itemCollectionSizeLimitExceeded(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = DynamoDBError.limitExceeded(errorPayload)
        case pointInTimeRecoveryUnavailableIdentity:
            let errorPayload = try PointInTimeRecoveryUnavailableException(from: decoder)
            self = DynamoDBError.pointInTimeRecoveryUnavailable(errorPayload)
        case provisionedThroughputExceededIdentity:
            let errorPayload = try ProvisionedThroughputExceededException(from: decoder)
            self = DynamoDBError.provisionedThroughputExceeded(errorPayload)
        case replicaAlreadyExistsIdentity:
            let errorPayload = try ReplicaAlreadyExistsException(from: decoder)
            self = DynamoDBError.replicaAlreadyExists(errorPayload)
        case replicaNotFoundIdentity:
            let errorPayload = try ReplicaNotFoundException(from: decoder)
            self = DynamoDBError.replicaNotFound(errorPayload)
        case requestLimitExceededIdentity:
            let errorPayload = try RequestLimitExceeded(from: decoder)
            self = DynamoDBError.requestLimitExceeded(errorPayload)
        case resourceInUseIdentity:
            let errorPayload = try ResourceInUseException(from: decoder)
            self = DynamoDBError.resourceInUse(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = DynamoDBError.resourceNotFound(errorPayload)
        case tableAlreadyExistsIdentity:
            let errorPayload = try TableAlreadyExistsException(from: decoder)
            self = DynamoDBError.tableAlreadyExists(errorPayload)
        case tableInUseIdentity:
            let errorPayload = try TableInUseException(from: decoder)
            self = DynamoDBError.tableInUse(errorPayload)
        case tableNotFoundIdentity:
            let errorPayload = try TableNotFoundException(from: decoder)
            self = DynamoDBError.tableNotFound(errorPayload)
        case transactionCanceledIdentity:
            let errorPayload = try TransactionCanceledException(from: decoder)
            self = DynamoDBError.transactionCanceled(errorPayload)
        case transactionConflictIdentity:
            let errorPayload = try TransactionConflictException(from: decoder)
            self = DynamoDBError.transactionConflict(errorPayload)
        case transactionInProgressIdentity:
            let errorPayload = try TransactionInProgressException(from: decoder)
            self = DynamoDBError.transactionInProgress(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw DynamoDBCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

