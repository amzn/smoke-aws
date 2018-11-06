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
