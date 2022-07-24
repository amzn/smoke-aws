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
//  AWSClientInvocationTraceContext.swift
//  SmokeAWSHttp
//
import Foundation
import Logging
import SmokeHTTPClient
import AsyncHTTPClient
import NIOHTTP1

private let xAmzRequestId = "x-amz-request-id"
private let xAmzRequestIdAlt = "x-amzn-RequestId"    
private let xAmzId2 = "x-amz-id-2"

/**
  A type conforming to the `InvocationTraceContext` protocol, sutiable for AWS clients. This implementation will log the input to and output from the outgoing request,
  along with x-amz-request-id and x-amz-id-2" headers if present.
 */
public struct AWSClientInvocationTraceContext: InvocationTraceContext {
    public typealias OutwardsRequestContext = String
    
    private let traceLoggingEnabled: Bool
    private let log4xxResponsesAsError: Bool
        
    public init(traceLoggingEnabled: Bool = true,
                log4xxResponsesAsError: Bool = false) {
        self.traceLoggingEnabled = traceLoggingEnabled
        self.log4xxResponsesAsError = log4xxResponsesAsError
    }
    
    public func handleOutwardsRequestStart(method: HTTPMethod, uri: String, logger: Logger, internalRequestId: String,
                                           headers: inout HTTPHeaders, bodyData: Data) -> String {
        guard self.traceLoggingEnabled else {
            return ""
        }
        
        let metadata: Logger.Metadata = ["method": "\(method)",
                                         "uri": "\(uri)",
                                         "bodyDataSize": "\(bodyData.count)",
                                         "bodyData": "\(bodyData.debugString)"]
        
        logger.trace("Starting outgoing request.",
                     metadata: metadata)
        
        return ""
    }
    
    public func handleOutwardsRequestSuccess(outwardsRequestContext: String?, logger: Logger, internalRequestId: String,
                                             response: HTTPClient.Response, bodyData: Data?) {
        guard self.traceLoggingEnabled else {
            return
        }
        
        logCompletion(logger: logger, level: .trace, successfullyCompletedRequest: true,
                      response: response, bodyData: bodyData, error: nil)
    }
    
    public func handleOutwardsRequestFailure(outwardsRequestContext: String?, logger: Logger, internalRequestId: String,
                                             response: HTTPClient.Response?, bodyData: Data?, error: Error) {
        guard self.traceLoggingEnabled else {
            return
        }
        
        let level: Logger.Level
        if let response = response, response.logResponseAsError(log4xxResponsesAsError: self.log4xxResponsesAsError) {
            level = .error
        } else {
            level = .trace
        }
        
        logCompletion(logger: logger, level: level, successfullyCompletedRequest: false,
                      response: response, bodyData: bodyData, error: error)
    }
    
    private func logCompletion(logger: Logger, level: Logger.Level, successfullyCompletedRequest: Bool, response: HTTPClient.Response?, bodyData: Data?,
                               error: Error?) {
        let completionString = successfullyCompletedRequest ? "Successfully" : "Unsuccessfully"
        
        var metadata: Logger.Metadata = [:]
        
        if let errorUnwrapped = error {
            metadata["error"] = "\(errorUnwrapped)"
        }
        
        if let code = response?.status.code {
            metadata["code"] = "\(code)"
        }
        
        // check the variants of request id
        if let requestIds = response?.headers[xAmzRequestId], !requestIds.isEmpty {
            metadata["\(xAmzRequestId)"] = "\(requestIds.joined(separator: ","))"
        } else if let requestIds = response?.headers[xAmzRequestIdAlt], !requestIds.isEmpty {
            metadata["\(xAmzRequestId)"] = "\(requestIds.joined(separator: ","))"
        }
        
        if let id2s = response?.headers[xAmzId2], !id2s.isEmpty {
            metadata["\(xAmzId2)"] = "\(id2s.joined(separator: ","))"
        }
        
        if let bodyData = bodyData {
            metadata["bodyDataSize"] = "\(bodyData.count)"
            
            if logger.logLevel <= .trace {
                metadata["bodyData"] = "\(bodyData.debugString)"
            }
        }
        
        logger.log(level: level, "\(completionString) completed outgoing request.", metadata: metadata)
    }
}

internal extension HTTPClient.Response {
    func logResponseAsError(log4xxResponsesAsError: Bool) -> Bool {
        // if this is a server error
        if self.status.code >= 500 && self.status.code < 600 {
            return true
        // if this is a client error and log4xxResponsesAsError is true
        } else if log4xxResponsesAsError && self.status.code >= 400 && self.status.code < 500 {
            return true
        }
        
        // otherwise don't log as an error
        return false
    }
}
