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
//  sha256Extensions.swift
//  SmokeAWSHttp
//

import Foundation
#if swift(>=5.2)
import Crypto

extension String {
    /// The SHA256 of this String
    var sha256: [UInt8] {
        let data = [UInt8](self.utf8)
        return data.sha256
    }
}

extension Array where Element == UInt8 {
    /// The SHA256 of this Array
    var sha256: [UInt8] {
        let data = Data(self)
        return data.sha256
    }
}

extension Data {
    /// The SHA256 of this Data
    var sha256: [UInt8] {
        let hash = SHA256.hash(data: self)
        return hash.withUnsafeBytes { body in
            return [UInt8](body)
        }
    }
}
#else
import Cryptor

extension String {
    /// The SHA256 of this String
    var sha256: [UInt8] {
        let hash = Digest(using: .sha256)
        _ = hash.update(string: self)
        return hash.final()
    }
}

extension Array where Element == UInt8 {
    /// The SHA256 of this Array
    var sha256: [UInt8] {
        let hash = Digest(using: .sha256)
        _ = hash.update(byteArray: self)
        return hash.final()
    }
}

extension Data {
    /// The SHA256 of this Data
    var sha256: [UInt8] {
        let hash = Digest(using: .sha256)
        _ = hash.update(data: self)
        return hash.final()
    }
}
#endif
