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
//  String+hmac.swift
//  SmokeAWSHttp
//

import Foundation
#if swift(>=5.2)
import Crypto

extension String {
    /**
     Returns the hmac for this String using the provided key.
 
     - Parameters:
        - key: the key to use to generate the hmac.
     */
    func hmac(withKey key: [UInt8]) -> [UInt8] {
        let data = [UInt8](self.utf8)
        let keyData = Data(key)
        
        let symmetricKey = SymmetricKey(data: keyData)
        
        let authenticationCode = HMAC<SHA256>.authenticationCode(for: data, using: symmetricKey)
        return [UInt8](authenticationCode)
    }
}
#else
import Cryptor

extension String {
    /**
     Returns the hmac for this String using the provided key.
 
     - Parameters:
        - key: the key to use to generate the hmac.
     */
    func hmac(withKey key: [UInt8]) -> [UInt8] {
        let data: [UInt8] = Array(self.utf8)
        guard let hmac = HMAC(using: HMAC.Algorithm.sha256, key: key).update(byteArray: data)?.final() else {
            return []
        }
        
        return hmac
    }
}
#endif
