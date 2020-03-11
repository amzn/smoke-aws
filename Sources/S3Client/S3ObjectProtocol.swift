// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  S3ObjectProtocol.swift
//  S3Client
//

import Foundation
import SmokeHTTPClient
import SmokeAWSCore

/**
 Retrieves objects from an S3 bucket.
 */
public protocol S3ObjectProtocol {

    /**
     Gets an object from the S3 bucket, returning the decoded response in the
     completion handler.
     */
    func getAsync<OutputType: Codable, InvocationReportingType: HTTPClientCoreInvocationReporting>(
        objectPath: String,
        reporting: InvocationReportingType,
        completion: @escaping (Result<OutputType, HTTPClientError>) -> ()) throws

    /**
     Gets an object from the S3 bucket, returning the decoded response.
     */
    func getSync<OutputType: Codable, InvocationReportingType: HTTPClientCoreInvocationReporting>(
        objectPath: String,
        reporting: InvocationReportingType) throws -> OutputType
}
