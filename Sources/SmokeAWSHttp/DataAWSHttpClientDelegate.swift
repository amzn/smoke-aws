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
//  DataAWSHttpClientDelegate.swift
//  SmokeAWSHttp
//

import Foundation
import NIOHTTP1
import SmokeHTTPClient
import SmokeAWSCore
import QueryCoding
import HTTPHeadersCoding
import HTTPPathCoding
import XMLCoding
import LoggerAPI

enum DataAWSHttpClientDelegateError: Error {
    case invalidPayloadNotData
}

/**
 Struct conforming to the AWSHttpClientDelegate protocol passes the body directly to
 and from the request and response. The generic ErrorType is used to generate errors based
 on the decoding a JSON error payload from the response body. 
 */
public struct DataAWSHttpClientDelegate<ErrorType: Error & Decodable>: HTTPClientDelegate {
    private let inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy?
    
    public init(inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy? = nil) {
        self.inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy
    }
    
    public func getResponseError(responseHead: HTTPResponseHead,
                                 responseComponents: HTTPResponseComponents) throws -> Error {
        guard let bodyData = responseComponents.body else {
            throw HTTPError.unknownError("Error with status '\(responseHead.status)' with empty body")
        }
        
        // Convert bodyData to a debug string only if debug logging is enabled
        Log.debug("Attempting to decode error data into XML: \(bodyData.debugString)")
        
        return try ErrorWrapper<ErrorType>.errorFromBodyData(errorType: ErrorType.self, bodyData: bodyData)
    }
    
    public func encodeInputAndQueryString<InputType>(
        input: InputType,
        httpPath: String) throws -> HTTPRequestComponents
        where InputType: HTTPRequestInputProtocol {
            
            let pathPostfix = input.pathPostfix ?? ""
            
            let pathTemplate = "\(httpPath)\(pathPostfix)"
            let path: String
            if let pathEncodable = input.pathEncodable {
                path = try HTTPPathEncoder().encode(pathEncodable,
                                                    withTemplate: pathTemplate)
            } else {
                path = pathTemplate
            }
            
            let additionalHeaders: [(String, String)]
            if let additionalHeadersEncodable = input.additionalHeadersEncodable {
                let headersEncoder = HTTPHeadersEncoder(keyEncodingStrategy: .noSeparator)
                let headers = try headersEncoder.encode(additionalHeadersEncodable)
                
                additionalHeaders = headers.compactMap { entry in
                    guard let value = entry.1 else {
                        return nil
                    }
                    
                    return (entry.0, value)
                }
            } else {
                additionalHeaders = []
            }
            
            let body: Data
            if let bodyEncodable = input.bodyEncodable {
                guard let bodyData = bodyEncodable as? Data else {
                    throw DataAWSHttpClientDelegateError.invalidPayloadNotData
                }
                body = bodyData
            } else {
                body = Data()
            }
            
            let query: String
            if let queryEncodable = input.queryEncodable {
                let queryEncoder: QueryEncoder
                if let inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy {
                    queryEncoder = QueryEncoder(mapEncodingStrategy: inputQueryMapDecodingStrategy)
                } else {
                    queryEncoder = QueryEncoder()
                }
                let encodedQuery = try queryEncoder.encode(queryEncodable,
                                                           allowedCharacterSet: .uriAWSQueryValueAllowed)
                
                if !encodedQuery.isEmpty {
                    query = "?" + encodedQuery
                } else {
                    query = ""
                }
            } else {
                query = ""
            }
            
            let pathWithQuery = path + query
            
            return HTTPRequestComponents(pathWithQuery: pathWithQuery,
                                         additionalHeaders: additionalHeaders,
                                         body: body)
    }
    
    public func encodeInputAndQueryString<InputType: Encodable>(input: InputType, httpPath: String) throws
        -> (pathWithQuery: String, body: Data) {
            // there is no query; encode the body as a JSON payload
            return (pathWithQuery: httpPath, body: try JSONEncoder.awsCompatibleEncoder().encode(input))
    }
    
    public func decodeOutput<OutputType>(output: Data?,
                                  headers: [(String, String)]) throws -> OutputType
    where OutputType: HTTPResponseOutputProtocol {
        // Convert output to a debug string only if debug logging is enabled
        Log.debug("Attempting to decode result data: \(output.debugString)")
        
        func bodyDecodableProvider() throws -> OutputType.BodyType {
            // we are expecting a response body
            guard let responseBody = output else {
                throw HTTPError.badResponse("Unexpected empty response.")
            }
            
            guard let bodyEncodable = responseBody as? OutputType.BodyType else {
                throw DataAWSHttpClientDelegateError.invalidPayloadNotData
            }
            
            return bodyEncodable
        }
        
        let mappedHeaders: [(String, String?)] = headers.map { ($0.0, $0.1) }
        func headersDecodableProvider() throws -> OutputType.HeadersType {
            let headersDecoder = HTTPHeadersDecoder(keyDecodingStrategy: .useShapePrefix)
            return try headersDecoder.decode(OutputType.HeadersType.self,
                                                   from: mappedHeaders)
        }
        
        return try OutputType.compose(bodyDecodableProvider: bodyDecodableProvider,
                                      headersDecodableProvider: headersDecodableProvider)
    }
}
