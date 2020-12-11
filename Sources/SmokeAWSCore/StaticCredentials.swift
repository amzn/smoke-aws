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
//  StaticCredentials.swift
//  SmokeAWSCore
//

import Foundation

/**
 An implementation of the Credentials that provides static
 credentials provided by an initializer.
 */
public struct StaticCredentials : Credentials {
    public let accessKeyId: String
    public let secretAccessKey: String
    public let sessionToken: String?
    
    /**
     Initializer that provides the static credentials.
 
     - Parameters:
        - accessKeyId: The access key id to use for these credentials.
        - secretAccessKey: The secret access key for these credentials.
        - sessionToken: The session token - if any - for these credentials.
     */
    public init(accessKeyId: String,
                secretAccessKey: String,
                sessionToken: String?) {
        self.accessKeyId = accessKeyId
        self.secretAccessKey = secretAccessKey
        self.sessionToken = sessionToken
    }
}

/**
 Conforms StaticCredentials to the CredentialsProvider protocol, always providing
 itself.
 */
extension StaticCredentials : CredentialsProvider {
    public var credentials: Credentials {
        return self
    }
}
