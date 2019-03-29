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
// SimpleQueueModelErrors.swift
// SimpleQueueModel
//

import Foundation
import LoggerAPI

private let batchEntryIdsNotDistinctIdentity = "AWS.SimpleQueueService.BatchEntryIdsNotDistinct"
private let batchRequestTooLongIdentity = "AWS.SimpleQueueService.BatchRequestTooLong"
private let emptyBatchRequestIdentity = "AWS.SimpleQueueService.EmptyBatchRequest"
private let invalidAttributeNameIdentity = "InvalidAttributeName"
private let invalidBatchEntryIdIdentity = "AWS.SimpleQueueService.InvalidBatchEntryId"
private let invalidIdFormatIdentity = "InvalidIdFormat"
private let invalidMessageContentsIdentity = "InvalidMessageContents"
private let messageNotInflightIdentity = "AWS.SimpleQueueService.MessageNotInflight"
private let overLimitIdentity = "OverLimit"
private let purgeQueueInProgressIdentity = "AWS.SimpleQueueService.PurgeQueueInProgress"
private let queueDeletedRecentlyIdentity = "AWS.SimpleQueueService.QueueDeletedRecently"
private let queueDoesNotExistIdentity = "AWS.SimpleQueueService.NonExistentQueue"
private let queueNameExistsIdentity = "QueueAlreadyExists"
private let receiptHandleIsInvalidIdentity = "ReceiptHandleIsInvalid"
private let tooManyEntriesInBatchRequestIdentity = "AWS.SimpleQueueService.TooManyEntriesInBatchRequest"
private let unsupportedOperationIdentity = "AWS.SimpleQueueService.UnsupportedOperation"
private let __accessDeniedIdentity = "AccessDenied"

public enum SimpleQueueCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum SimpleQueueError: Swift.Error, Decodable {
    case batchEntryIdsNotDistinct(BatchEntryIdsNotDistinct)
    case batchRequestTooLong(BatchRequestTooLong)
    case emptyBatchRequest(EmptyBatchRequest)
    case invalidAttributeName(InvalidAttributeName)
    case invalidBatchEntryId(InvalidBatchEntryId)
    case invalidIdFormat(InvalidIdFormat)
    case invalidMessageContents(InvalidMessageContents)
    case messageNotInflight(MessageNotInflight)
    case overLimit(OverLimit)
    case purgeQueueInProgress(PurgeQueueInProgress)
    case queueDeletedRecently(QueueDeletedRecently)
    case queueDoesNotExist(QueueDoesNotExist)
    case queueNameExists(QueueNameExists)
    case receiptHandleIsInvalid(ReceiptHandleIsInvalid)
    case tooManyEntriesInBatchRequest(TooManyEntriesInBatchRequest)
    case unsupportedOperation(UnsupportedOperation)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case batchEntryIdsNotDistinctIdentity:
            let errorPayload = try BatchEntryIdsNotDistinct(from: decoder)
            self = SimpleQueueError.batchEntryIdsNotDistinct(errorPayload)
        case batchRequestTooLongIdentity:
            let errorPayload = try BatchRequestTooLong(from: decoder)
            self = SimpleQueueError.batchRequestTooLong(errorPayload)
        case emptyBatchRequestIdentity:
            let errorPayload = try EmptyBatchRequest(from: decoder)
            self = SimpleQueueError.emptyBatchRequest(errorPayload)
        case invalidAttributeNameIdentity:
            let errorPayload = try InvalidAttributeName(from: decoder)
            self = SimpleQueueError.invalidAttributeName(errorPayload)
        case invalidBatchEntryIdIdentity:
            let errorPayload = try InvalidBatchEntryId(from: decoder)
            self = SimpleQueueError.invalidBatchEntryId(errorPayload)
        case invalidIdFormatIdentity:
            let errorPayload = try InvalidIdFormat(from: decoder)
            self = SimpleQueueError.invalidIdFormat(errorPayload)
        case invalidMessageContentsIdentity:
            let errorPayload = try InvalidMessageContents(from: decoder)
            self = SimpleQueueError.invalidMessageContents(errorPayload)
        case messageNotInflightIdentity:
            let errorPayload = try MessageNotInflight(from: decoder)
            self = SimpleQueueError.messageNotInflight(errorPayload)
        case overLimitIdentity:
            let errorPayload = try OverLimit(from: decoder)
            self = SimpleQueueError.overLimit(errorPayload)
        case purgeQueueInProgressIdentity:
            let errorPayload = try PurgeQueueInProgress(from: decoder)
            self = SimpleQueueError.purgeQueueInProgress(errorPayload)
        case queueDeletedRecentlyIdentity:
            let errorPayload = try QueueDeletedRecently(from: decoder)
            self = SimpleQueueError.queueDeletedRecently(errorPayload)
        case queueDoesNotExistIdentity:
            let errorPayload = try QueueDoesNotExist(from: decoder)
            self = SimpleQueueError.queueDoesNotExist(errorPayload)
        case queueNameExistsIdentity:
            let errorPayload = try QueueNameExists(from: decoder)
            self = SimpleQueueError.queueNameExists(errorPayload)
        case receiptHandleIsInvalidIdentity:
            let errorPayload = try ReceiptHandleIsInvalid(from: decoder)
            self = SimpleQueueError.receiptHandleIsInvalid(errorPayload)
        case tooManyEntriesInBatchRequestIdentity:
            let errorPayload = try TooManyEntriesInBatchRequest(from: decoder)
            self = SimpleQueueError.tooManyEntriesInBatchRequest(errorPayload)
        case unsupportedOperationIdentity:
            let errorPayload = try UnsupportedOperation(from: decoder)
            self = SimpleQueueError.unsupportedOperation(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw SimpleQueueCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

