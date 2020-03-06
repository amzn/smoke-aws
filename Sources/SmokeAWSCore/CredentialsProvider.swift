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
//  CredentialsProvider.swift
//  SmokeAWSCore
//

import Foundation

/**
  Protocol for providing a Credentials instance for a request. Instances of this protocol
  that are passed to an AWS Client are used throughout the lifetime of that client. Each
  request retrieves a new Credentials instance that is used for that request. For credential
  rotation, the CredentialProvider implementation should manage swapping out an immutable
  Credentials instance. This will ensure that consistent credentials are used within a
  request and rebetween requests the credentials will be rotated.
  */
public protocol CredentialsProvider {
    /// The current credentials.
    var credentials: Credentials { get }
}
