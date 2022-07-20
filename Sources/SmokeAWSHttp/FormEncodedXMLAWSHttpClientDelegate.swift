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
//  FormEncodedXMLAWSHttpClientDelegate.swift
//  SmokeAWSHttp
//

import Foundation
import NIOHTTP1
import NIOSSL
import XMLCoding
import SmokeAWSCore
import SmokeHTTPClient
import QueryCoding
import HTTPHeadersCoding
import HTTPPathCoding
import AsyncHTTPClient

/**
 Struct conforming to the AWSHttpClientDelegate protocol that encodes request query items into the body and
 decodes response body from XML. The generic ErrorType is used to generate errors based
 on the decoding a XML error payload from the response body.
 */
public struct FormEncodedXMLAWSHttpClientDelegate<ErrorType: Error & Decodable>: HTTPClientDelegate {
    private let clientDelegate: XMLAWSHttpClientDelegate<ErrorType>

    private let inputQueryMapEncodingStrategy: QueryEncoder.MapEncodingStrategy
    private let inputQueryListEncodingStrategy: QueryEncoder.ListEncodingStrategy
    private let inputQueryKeyEncodingStrategy: QueryEncoder.KeyEncodingStrategy
    private let inputQueryKeyEncodeTransformStrategy: QueryEncoder.KeyEncodeTransformStrategy

    public init(requiresTLS: Bool, inputBodyRootKey: String? = nil,
                outputListDecodingStrategy: XMLDecoder.ListDecodingStrategy? = nil,
                outputMapDecodingStrategy: XMLDecoder.MapDecodingStrategy? = nil,
                inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy = .singleQueryEntry,
                inputQueryListEncodingStrategy: QueryEncoder.ListEncodingStrategy = .expandListWithIndex,
                inputQueryKeyEncodingStrategy: QueryEncoder.KeyEncodingStrategy = .useAsShapeSeparator("."),
                inputQueryKeyEncodeTransformStrategy: QueryEncoder.KeyEncodeTransformStrategy = .none) {
        self.clientDelegate = XMLAWSHttpClientDelegate<ErrorType>(
            requiresTLS: requiresTLS,
            inputBodyRootKey: inputBodyRootKey,
            outputListDecodingStrategy: outputListDecodingStrategy,
            outputMapDecodingStrategy: outputMapDecodingStrategy,
            inputQueryMapDecodingStrategy: inputQueryMapDecodingStrategy,
            inputQueryListEncodingStrategy: inputQueryListEncodingStrategy,
            inputQueryKeyEncodingStrategy: inputQueryKeyEncodingStrategy,
            inputQueryKeyEncodeTransformStrategy: inputQueryKeyEncodeTransformStrategy)

        self.inputQueryMapEncodingStrategy = inputQueryMapDecodingStrategy
        self.inputQueryListEncodingStrategy = inputQueryListEncodingStrategy
        self.inputQueryKeyEncodingStrategy = inputQueryKeyEncodingStrategy
        self.inputQueryKeyEncodeTransformStrategy = inputQueryKeyEncodeTransformStrategy
    }

    public func getResponseError<InvocationReportingType: HTTPClientInvocationReporting>(
            response: HTTPClient.Response,
            responseComponents: HTTPResponseComponents,
            invocationReporting: InvocationReportingType) throws -> SmokeHTTPClient.HTTPClientError {
        return try self.clientDelegate.getResponseError(response: response,
                                                        responseComponents: responseComponents,
                                                        invocationReporting: invocationReporting)
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

            guard let queryEncodable = input.queryEncodable else {
                throw SmokeAWSError.invalidRequest("Input must be query encodable.")
            }

            let queryEncoder = QueryEncoder(
                keyEncodingStrategy: self.inputQueryKeyEncodingStrategy,
                mapEncodingStrategy: self.inputQueryMapEncodingStrategy,
                listEncodingStrategy: self.inputQueryListEncodingStrategy,
                keyEncodeTransformStrategy: self.inputQueryKeyEncodeTransformStrategy)

            let encodedQuery = try queryEncoder.encode(queryEncodable,
                                                       allowedCharacterSet: .uriAWSQueryValueAllowed)

            guard !encodedQuery.isEmpty else {
                throw SmokeAWSError.invalidRequest("Input must have query items.")
            }

            return HTTPRequestComponents(pathWithQuery: path,
                                         additionalHeaders: additionalHeaders,
                                         body: Data(encodedQuery.utf8))
    }

    public func decodeOutput<OutputType, InvocationReportingType: HTTPClientInvocationReporting>(
            output: Data?,
            headers: [(String, String)],
            invocationReporting: InvocationReportingType) throws -> OutputType where OutputType: HTTPResponseOutputProtocol {
        return try self.clientDelegate.decodeOutput(output: output,
                                                    headers: headers,
                                                    invocationReporting: invocationReporting)
    }

    public func getTLSConfiguration() -> TLSConfiguration? {
        return self.clientDelegate.getTLSConfiguration()
    }
}
