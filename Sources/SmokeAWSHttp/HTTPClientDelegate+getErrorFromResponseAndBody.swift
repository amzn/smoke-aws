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
//  HTTPClientDelegate+getErrorFromResponseAndBody.swift
//  SmokeAWSHttp
//

import Foundation
import SmokeHTTPClient
import Logging

extension HTTPClientDelegate {
    func getErrorFromResponseAndBody<ErrorType: Error & Decodable>(errorTypeHTTPHeaderValue: String,
                                                                   bodyData: Data,
                                                                   logger: Logger) throws -> ErrorType {
        // Decode the body to a [String: String] dictionary
        let serializedBody = try JSONSerialization.jsonObject(with: bodyData)
        guard let bodyAsDictionary = serializedBody as? [String: Any] else {
            throw HTTPError.badResponse("Cannot serialize response body to JSON")
        }
        var bodyAsStringDictionary = Dictionary(uniqueKeysWithValues: bodyAsDictionary.map { (key, value) in (key, value as? String ?? "") })
        
        // Add the type from the header, re-encode to JSON
        let errorTypeCodingKey = "__type"
        bodyAsStringDictionary[errorTypeCodingKey] = errorTypeHTTPHeaderValue.components(separatedBy: ":")[0]
        let bodyWithErrorTypeAsJSON = try JSONEncoder.awsCompatibleEncoder().encode(bodyAsStringDictionary)
        
        // Convert bodyWithErrorTypeAsJSON to a debug string only if debug logging is enabled
        logger.debug("Attempting to decode error data into JSON: \(bodyWithErrorTypeAsJSON.debugString)")
        
        // attempt to get an error of Error type by decoding the body data
        return try JSONDecoder.awsCompatibleDecoder().decode(ErrorType.self, from: bodyWithErrorTypeAsJSON)
    }
}
