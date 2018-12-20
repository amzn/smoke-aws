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
//  XMLAWSHttpClientDelegate.swift
//  SmokeAWSHttp
//

import Foundation
import NIOHTTP1
import XMLCoding
import SmokeAWSCore
import LoggerAPI
import SmokeHTTPClient
import QueryCoding
import HTTPHeadersCoding
import HTTPPathCoding

extension CharacterSet {
    public static let uriAWSQueryValueAllowed: CharacterSet = ["&", "\'", "(", ")", "-", ".", "0", "1", "2", "3",
                                                               "4", "5", "6", "7", "8", "9", "A", "B", "C",
                                                               "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
                                                               "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
                                                               "X", "Y", "Z", "_", "a", "b", "c", "d", "e", "f",
                                                               "g", "h", "i", "j", "k", "l", "m", "n", "o", "p",
                                                               "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
}

struct ErrorWrapper<ErrorType: Error & Decodable>: Error & Decodable {
    let errors: [ErrorType]
    
    enum CodingKeys: String, CodingKey {
        case errors = "Errors"
        case errorUppercase = "Error"
        case errorLowercase = "error"
    }
    
    private static func getError(forKey key: CodingKeys,
                                 values: KeyedDecodingContainer<CodingKeys>) throws -> [ErrorType]? {
        // try as a single error
        if let currentError = try values.decodeIfPresent(ErrorType.self,
                                                         forKey: key) {
            return [currentError]
        }
        
        return nil
    }
    
    // TODO: This can be removed if XMLCoding is fixed to handle singleton lists with multiple keys
    private static func getErrors(forKey key: CodingKeys,
                           values: KeyedDecodingContainer<CodingKeys>) throws -> [ErrorType]? {
        // try as list of errors
        do {
            if let currentErrors = try values.decodeIfPresent([ErrorType].self,
                                                              forKey: key) {
                return currentErrors
            }
            
            return try getError(forKey: key, values: values)
        } catch {
            return try getError(forKey: key, values: values)
        }
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        // The error list may be under slightly different keys, so check all the places
        if let currentErrors = try ErrorWrapper.getErrors(forKey: .errors, values: values) {
            self.errors = currentErrors
        } else if let currentErrors = try ErrorWrapper.getErrors(forKey: .errorUppercase, values: values) {
            self.errors = currentErrors
        } else if let currentErrors = try ErrorWrapper.getErrors(forKey: .errorLowercase, values: values) {
            self.errors = currentErrors
        } else {
            self.errors = []
        }
    }
}

/**
 Struct conforming to the AWSHttpClientDelegate protocol that encodes and decode the request
 and response body to and from XML. The generic ErrorType is used to generate errors based
 on the decoding a XML error payload from the response body. 
 */
public struct XMLAWSHttpClientDelegate<ErrorType: Error & Decodable>: HTTPClientDelegate {
    private let inputBodyRootKey: String?
    private let outputListDecodingStrategy: XMLDecoder.ListDecodingStrategy?
    private let outputMapDecodingStrategy: XMLDecoder.MapDecodingStrategy?
    private let inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy?
    
    public init(inputBodyRootKey: String? = nil,
                outputListDecodingStrategy: XMLDecoder.ListDecodingStrategy? = nil,
                outputMapDecodingStrategy: XMLDecoder.MapDecodingStrategy? = nil,
                inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy? = nil) {
        self.inputBodyRootKey = inputBodyRootKey
        self.outputListDecodingStrategy = outputListDecodingStrategy
        self.outputMapDecodingStrategy = outputMapDecodingStrategy
        self.inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy
    }
    
    public func getResponseError(responseHead: HTTPResponseHead,
                                 responseComponents: HTTPResponseComponents) throws -> Error {
        guard let bodyData = responseComponents.body else {
            throw HTTPError.unknownError("Error with status '\(responseHead.status)' with empty body")
        }
        
        let decoder = XMLDecoder.awsCompatibleDecoder
        
        // Convert bodyData to a debug string only if debug logging is enabled
        Log.debug("Attempting to decode error data into XML: \(bodyData.debugString)")
        
        // attempt to decode the output body from an XML payload
        let result: Error
        
        // the error is not wrapped
        do {
            result = try decoder.decode(ErrorType.self, from: bodyData)
        } catch is DecodingError {
            // if the error is wrapped
            result = try decoder.decode(ErrorWrapper<ErrorType>.self, from: bodyData)
        }
        
        return result
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
                let encoder = XMLEncoder.awsCompatibleEncoder
                encoder.listEncodingStrategy = .expandListWithItemTag("item")
                
                guard let inputBodyRootKey = inputBodyRootKey else {
                    throw SmokeAWSError.invalidRequest("Unable to encode input body without root key.")
                }
                
                body = try encoder.encode(bodyEncodable, withRootKey: inputBodyRootKey)
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
    
    public func decodeOutput<OutputType>(output: Data?,
                                  headers: [(String, String)]) throws -> OutputType
    where OutputType: HTTPResponseOutputProtocol {
        let decoder = XMLDecoder.awsCompatibleDecoder
        
        if let outputListDecodingStrategy = outputListDecodingStrategy {
            decoder.listDecodingStrategy = outputListDecodingStrategy
        }
        
        if let outputMapDecodingStrategy = outputMapDecodingStrategy {
            decoder.mapDecodingStrategy = outputMapDecodingStrategy
        }
        
        // Convert output to a debug string only if debug logging is enabled
        Log.debug("Attempting to decode result data into XML: \(output.debugString)")
        
        func bodyDecodableProvider() throws -> OutputType.BodyType {
            // we are expecting a response body
            guard let responseBody = output else {
                throw HTTPError.badResponse("Unexpected empty response.")
            }
            
            return try decoder.decode(OutputType.BodyType.self, from: responseBody)
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
