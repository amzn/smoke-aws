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
//  XMLEncoder+awsCompatibleEncoder.swift
//  SmokeAWSCore
//

import Foundation
import XMLCoding

private func createEncoder() -> XMLEncoder {
    let xmlEncoder = XMLEncoder()
    if #available(OSX 10.12, *) {
        xmlEncoder.dateEncodingStrategy = .iso8601
    }

    xmlEncoder.outputFormatting = .prettyPrinted
    
    return xmlEncoder
}

public extension XMLEncoder {
    /// Return a AWS compatible XML Encoder
    public static func awsCompatibleEncoder() -> XMLEncoder {
        return createEncoder()
    }
}
