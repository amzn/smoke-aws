//
//  String+hmac.swift
//  SmokeAWSHttp
//

import Foundation
import CNIOOpenSSL

extension String {
    /**
     Returns the hmac for this String using the provided key.
 
     - Parameters:
        - key: the key to use to generate the hmac.
     */
    func hmac(withKey key: [UInt8]) -> [UInt8] {
        var context = HMAC_CTX()
        HMAC_Init_ex(&context, key, Int32(key.count), EVP_sha256(), nil)
        
        let bytes = Array(self.utf8)
        HMAC_Update(&context, bytes, bytes.count)
        var digest = [UInt8](repeating: 0, count: Int(EVP_MAX_MD_SIZE))
        var length: UInt32 = 0
        HMAC_Final(&context, &digest, &length)
        
        return Array(digest[0..<Int(length)])
    }
}
