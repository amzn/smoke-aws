// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  sha256Extensions.swift
//  SmokeAWSHttp
//

import Foundation
import CNIOOpenSSL

extension String {
    /// The SHA256 of this String
    var sha256: [UInt8] {
        let bytes = Array(self.utf8)
        return bytes.sha256
    }
}

extension Array where Element == UInt8 {
    /// The SHA256 of this Array
    var sha256: [UInt8] {
        var hash = [UInt8](repeating: 0, count: Int(SHA256_DIGEST_LENGTH))
        SHA256(self, self.count, &hash)
        return hash
    }
}

extension Data {
    /// The SHA256 of this Data
    var sha256: [UInt8] {
        return self.withUnsafeBytes {(bytes: UnsafePointer<UInt8>) in
            var hash = [UInt8](repeating: 0, count: Int(SHA256_DIGEST_LENGTH))
            SHA256(bytes, self.count, &hash)
            return hash
        }
    }
}
