// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  QueryInput.swift
//  SmokeAWSHttp
//

import Foundation
import SmokeHTTPClient

/**
 A struct that conforms to the HTTPRequestInputProtocol to add Action and
 Version fields to a query input.
 */
public struct QueryWrapperHTTPRequestInput<WrappedInputType: HTTPRequestInputProtocol> : HTTPRequestInputProtocol {
    public let queryEncodable: QueryInputWrapper<WrappedInputType.QueryType>?
    public let pathEncodable: WrappedInputType.PathType?
    public let bodyEncodable: WrappedInputType.BodyType?
    public let pathPostfix: String?
    public let additionalHeadersEncodable: WrappedInputType.AdditionalHeadersType?
    
    public init(wrappedInput: WrappedInputType,
                action: String,
                version: String) {
        self.queryEncodable = QueryInputWrapper(action: action,
                                                    version: version,
                                                    payload: wrappedInput.queryEncodable)
        self.pathEncodable = wrappedInput.pathEncodable
        self.bodyEncodable = wrappedInput.bodyEncodable
        self.pathPostfix = wrappedInput.pathPostfix
        self.additionalHeadersEncodable = wrappedInput.additionalHeadersEncodable
    }
}

/**
 A wrapper for a query input that adds Action and Version fields for the query.
 */
public struct QueryInputWrapper<PayloadType: Encodable>: Encodable {
    public let action: String
    public let version: String
    public let payload: PayloadType?
    
    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case version = "Version"
    }
    
    public init(action: String,
         version: String,
         payload: PayloadType?) {
        self.action = action
        self.version = version
        self.payload = payload
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(action, forKey: .action)
        try container.encode(version, forKey: .version)
        
        try payload?.encode(to: encoder)
    }
}
