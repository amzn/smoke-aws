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
//  Credentials.swift
//  SmokeAWSCore
//

import Foundation

/**
 Protocol for retrieving credentials for a request. Implementations must ensure that
 separate calls to retrieve each of the credentials attributes, retrieve credentials
 that are consistent with each other.
 */
public protocol Credentials {
    /// The access key id for these credentials.
    var accessKeyId: String { get }
    /// The secret access key for these credentials.
    var secretAccessKey: String { get }
    /// The session token - if any - for these credentials.
    var sessionToken: String? { get }
}
