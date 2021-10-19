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
//  JSONAWSHttpClientDelegate.swift
//  SmokeAWSHttp
//

import Foundation
import NIOHTTP1
import NIOSSL
import SmokeHTTPClient
import SmokeAWSCore
import QueryCoding
import HTTPHeadersCoding
import HTTPPathCoding
import AsyncHTTPClient
import Logging

/**
 Struct conforming to the AWSHttpClientDelegate protocol that encodes and decode the request
 and response body to and from JSON. The generic ErrorType is used to generate errors based
 on the decoding a JSON error payload from the response body.
 */
public struct JSONAWSHttpClientDelegate<ErrorType: Error & Decodable>: HTTPClientDelegate {
    private let requiresTLS: Bool
    private let inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy?
    private let errorTypeHTTPHeader: String?
    
    public init(requiresTLS: Bool,
                inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy? = nil,
                errorTypeHTTPHeader: String? = nil) {
        self.requiresTLS = requiresTLS
        self.inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy
        self.errorTypeHTTPHeader = errorTypeHTTPHeader
    }
    
    public func getResponseError<InvocationReportingType: HTTPClientInvocationReporting>(
            response: HTTPClient.Response,
            responseComponents: HTTPResponseComponents,
            invocationReporting: InvocationReportingType) throws -> SmokeHTTPClient.HTTPClientError {
        guard let bodyData = responseComponents.body else {
            throw HTTPError.unknownError("Error with status '\(response.status)' with empty body")
        }
        
        var cause: ErrorType
        if let errorTypeHTTPHeader = self.errorTypeHTTPHeader,
           let errorType = response.headers.first(name: errorTypeHTTPHeader) {
            cause = try getErrorFromResponseAndBody(errorTypeHTTPHeaderValue: errorType,
                                                    bodyData: bodyData,
                                                    logger: invocationReporting.logger)
        } else {
            // Convert bodyData to a debug string only if debug logging is enabled
            invocationReporting.logger.debug("Attempting to decode error data into JSON: \(bodyData.debugString)")
            
            // attempt to get an error of Error type by decoding the body data
            cause = try JSONDecoder.awsCompatibleDecoder().decode(ErrorType.self, from: bodyData)
        }
        
        return HTTPClientError(responseCode: Int(response.status.code), cause: cause)
    }
    
    public func encodeInputAndQueryString<InputType, InvocationReportingType: HTTPClientInvocationReporting>(
        input: InputType,
        httpPath: String,
        invocationReporting: InvocationReportingType) throws -> HTTPRequestComponents where InputType: HTTPRequestInputProtocol {
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
                body = try JSONEncoder.awsCompatibleEncoder().encode(bodyEncodable)
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
    
    public func encodeInputAndQueryString<InputType: Encodable, InvocationReportingType: HTTPClientInvocationReporting>(
            input: InputType, httpPath: String,
            invocationReporting: InvocationReportingType) throws -> (pathWithQuery: String, body: Data) {
        // there is no query; encode the body as a JSON payload
        return (pathWithQuery: httpPath, body: try JSONEncoder.awsCompatibleEncoder().encode(input))
    }
    
    public func decodeOutput<OutputType, InvocationReportingType: HTTPClientInvocationReporting>(
            output: Data?,
            headers: [(String, String)],
            invocationReporting: InvocationReportingType) throws -> OutputType where OutputType: HTTPResponseOutputProtocol {
        // Convert output to a debug string only if debug logging is enabled
        invocationReporting.logger.debug("Attempting to decode result data into JSON: \(output.debugString)")
        
        func bodyDecodableProvider() throws -> OutputType.BodyType {
            // we are expecting a response body
            guard let responseBody = output else {
                throw HTTPError.badResponse("Unexpected empty response.")
            }
            
            return try JSONDecoder.awsCompatibleDecoder().decode(OutputType.BodyType.self,
                                                               from: responseBody)
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
    
    public func getTLSConfiguration() -> TLSConfiguration? {
        if requiresTLS {
            return getDefaultTLSConfiguration()
        } else {
            return nil
        }
    }
}
