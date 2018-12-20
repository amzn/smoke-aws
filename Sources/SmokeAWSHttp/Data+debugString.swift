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
//  Data+debugString.swift
//  SmokeAWSHttp
//

import Foundation
import SmokeHTTPClient

extension Data {
    var debugString: String {
        return String(data: self, encoding: .utf8) ?? ""
    }
}

extension Optional where Wrapped == Data {
    var debugString: String {
        switch self {
        case .some(let wrapped):
            return wrapped.debugString
        case .none:
            return ""
        }
    }
}
