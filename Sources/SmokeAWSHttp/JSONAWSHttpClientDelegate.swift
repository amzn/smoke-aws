//
//  JSONAWSHttpClientDelegate.swift
//  SmokeAWSHttp
//

import Foundation
import NIOHTTP1
import SmokeHTTPClient
import SmokeAWSCore
import QueryCoder
import LoggerAPI

/**
 Struct conforming to the AWSHttpClientDelegate protocol that encodes and decode the request
 and response body to and from JSON. The generic ErrorType is used to generate errors based
 on the decoding a JSON error payload from the response body.
 
 Currently disregards the additional headers and path encodable properties from the input.
 */
public struct JSONAWSHttpClientDelegate<ErrorType: Error & Decodable>: HTTPClientDelegate {
    private let inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy?
    
    public init(inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy? = nil) {
        self.inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy
    }
    
    public func getResponseError(responseHead: HTTPResponseHead, bodyData: Data) throws -> Error {
        if Log.isLogging(.debug) {
            let asString = String(data: bodyData, encoding: .utf8) ?? ""
            
            Log.debug("Attempting to decode error data into JSON: \(asString)")
        }
        
        // attempt to get an error of Error type by decoding the body data
        return try JSONDecoder.awsCompatibleDecoder.decode(ErrorType.self, from: bodyData)
    }
    
    public func encodeInputAndQueryString<InputType>(
        input: InputType,
        httpPath: String) throws -> HTTPRequestComponents
        where InputType: HTTPRequestInputProtocol {
            
            let pathPostfix: String
            if let thePathPostfix = input.pathPostfix {
                pathPostfix = thePathPostfix
            } else {
                pathPostfix = ""
            }
            
            let path = "\(httpPath)\(pathPostfix)"
            
            let body: Data
            if let bodyEncodable = input.bodyEncodable {
                body = try JSONEncoder.awsCompatibleEncoder.encode(bodyEncodable)
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
                
                query = "?" + encodedQuery
            } else {
                query = ""
            }
            
            let pathWithQuery = path + query
            
            return HTTPRequestComponents(pathWithQuery: pathWithQuery,
                                         additionalHeaders: [],
                                         body: body)
    }
    
    public func encodeInputAndQueryString<InputType: Encodable>(input: InputType, httpPath: String) throws
        -> (pathWithQuery: String, body: Data) {
            // there is no query; encode the body as a JSON payload
            return (pathWithQuery: httpPath, body: try JSONEncoder.awsCompatibleEncoder.encode(input))
    }
    
    public func decodeOutput<OutputType>(output: Data) throws -> OutputType where OutputType : Decodable {
        if Log.isLogging(.debug) {
            let asString = String(data: output, encoding: .utf8) ?? ""
            
            Log.debug("Attempting to decode result data into JSON: \(asString)")
        }
        
        // attempt to decode the ouput data to the OutputType
        return try JSONDecoder.awsCompatibleDecoder.decode(OutputType.self,
                                                           from: output)
    }
}
