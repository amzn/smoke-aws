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
//  AWSClientChannelInboundHandlerDelegate.swift
//  SmokeAWSHttp
//

import Foundation
import LoggerAPI
import NIOHTTP1
import SmokeAWSCore
import SmokeHTTPClient

public struct AWSClientChannelInboundHandlerDelegate : HTTPClientChannelInboundHandlerDelegate {
    public var specifyContentHeadersForZeroLengthBody: Bool
    
    let credentialsProvider: CredentialsProvider
    let awsRegion: AWSRegion
    let service: String
    let operation: String?
    let target: String?
    let isV4SignRequest: Bool
    let signAllHeaders: Bool
    
    public init (credentialsProvider: CredentialsProvider,
                 awsRegion: AWSRegion,
                 service: String,
                 operation: String? = nil,
                 target: String? = nil,
                 isV4SignRequest: Bool = true,
                 specifyContentHeadersForZeroLengthBody: Bool = true,
                 signAllHeaders: Bool = false) {
        self.credentialsProvider = credentialsProvider
        self.awsRegion = awsRegion
        self.service = service
        self.operation = operation
        self.target = target
        self.isV4SignRequest = isV4SignRequest
        self.specifyContentHeadersForZeroLengthBody = specifyContentHeadersForZeroLengthBody
        self.signAllHeaders = signAllHeaders
    }
    
    /// The headers that need to be signed for this request
    private var headersToBeSigned: [String: String] {
        var headersToBeSigned: [String: String] = [:]
        
        guard let operation = operation else {
            Log.verbose("Operation not found for HTTP header for \(service) request, no headers needed for signing.")
            return headersToBeSigned
        }
        
        guard let target = target else {
            Log.verbose("Target not found for HTTP header, assigning \(operation) to x-amzn-target header.")
            headersToBeSigned["x-amz-target"] = operation
            return headersToBeSigned
        }

        headersToBeSigned["x-amz-target"] = "\(target).\(operation)"
        
        return headersToBeSigned
    }
    
    public func addClientSpecificHeaders(handler: HTTPClientChannelInboundHandler) -> [(String, String)] {
        let v4Signer = V4Signer(credentials: credentialsProvider.credentials, region: awsRegion,
                                service: service,
                                signAllHeaders: signAllHeaders)
        var headers: [(String, String)]
        
        let allHeadersToBeSigned: [String: String]
        if signAllHeaders {
            var headers = headersToBeSigned
            handler.additionalHeaders.forEach { header in
                headers[header.0] = header.1
            }
            
            allHeadersToBeSigned = headers
        } else {
            allHeadersToBeSigned = headersToBeSigned
        }
        
        if (isV4SignRequest) {
            headers = v4Signer.getSignedHeaders(
                url: handler.endpointUrl,
                headers: allHeadersToBeSigned,
                method: handler.httpMethod.rawValue,
                bodyData: handler.bodyData)
        } else {
            headers = [("Host", handler.endpointUrl.host!)]
        }
        return headers
    }
    
    public func handleErrorResponses(responseHead: HTTPResponseHead, responseBodyData: Data?) -> Error? {
        // Place the permanently moved location into the HTTPError
        if case .movedPermanently = responseHead.status {
            let locationHeader = responseHead.headers["Location"]
            let location = locationHeader.count > 0 ? locationHeader[0] : "<unknown>"
            let error = HTTPError.movedPermanently(location: location)
            return error
        }
        
        // All other errors handled by default behavior
        return nil
    }
}
