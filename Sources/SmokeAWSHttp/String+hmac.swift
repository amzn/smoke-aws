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
        HMAC_CTX_cleanup(&context)
        
        return Array(digest[0..<Int(length)])
    }
}
