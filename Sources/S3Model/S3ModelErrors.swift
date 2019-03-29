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
// S3ModelErrors.swift
// S3Model
//

import Foundation
import LoggerAPI

private let bucketAlreadyExistsIdentity = "BucketAlreadyExists"
private let bucketAlreadyOwnedByYouIdentity = "BucketAlreadyOwnedByYou"
private let noSuchBucketIdentity = "NoSuchBucket"
private let noSuchKeyIdentity = "NoSuchKey"
private let noSuchUploadIdentity = "NoSuchUpload"
private let objectAlreadyInActiveTierIdentity = "ObjectAlreadyInActiveTierError"
private let objectNotInActiveTierIdentity = "ObjectNotInActiveTierError"
private let __accessDeniedIdentity = "AccessDenied"

public enum S3CodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum S3Error: Swift.Error, Decodable {
    case bucketAlreadyExists(BucketAlreadyExists)
    case bucketAlreadyOwnedByYou(BucketAlreadyOwnedByYou)
    case noSuchBucket(NoSuchBucket)
    case noSuchKey(NoSuchKey)
    case noSuchUpload(NoSuchUpload)
    case objectAlreadyInActiveTier(ObjectAlreadyInActiveTierError)
    case objectNotInActiveTier(ObjectNotInActiveTierError)
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
        case bucketAlreadyExistsIdentity:
            let errorPayload = try BucketAlreadyExists(from: decoder)
            self = S3Error.bucketAlreadyExists(errorPayload)
        case bucketAlreadyOwnedByYouIdentity:
            let errorPayload = try BucketAlreadyOwnedByYou(from: decoder)
            self = S3Error.bucketAlreadyOwnedByYou(errorPayload)
        case noSuchBucketIdentity:
            let errorPayload = try NoSuchBucket(from: decoder)
            self = S3Error.noSuchBucket(errorPayload)
        case noSuchKeyIdentity:
            let errorPayload = try NoSuchKey(from: decoder)
            self = S3Error.noSuchKey(errorPayload)
        case noSuchUploadIdentity:
            let errorPayload = try NoSuchUpload(from: decoder)
            self = S3Error.noSuchUpload(errorPayload)
        case objectAlreadyInActiveTierIdentity:
            let errorPayload = try ObjectAlreadyInActiveTierError(from: decoder)
            self = S3Error.objectAlreadyInActiveTier(errorPayload)
        case objectNotInActiveTierIdentity:
            let errorPayload = try ObjectNotInActiveTierError(from: decoder)
            self = S3Error.objectNotInActiveTier(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw S3CodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

