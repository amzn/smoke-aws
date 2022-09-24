//
// RDSClientTests.swift
// RDSClientTests
//

import XCTest
@testable import RDSClient
import RDSModel
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClient
import AsyncHTTPClient
import Logging

class RDSClientTests: XCTestCase {
    func testAccessDeniedErrorDecode() throws {
        let message = "User: ... is not authorized to perform: rds:DescribeAccountAttributes"
        let errorResponse = """
        <ErrorResponse xmlns="http://rds.amazonaws.com/doc/2014-10-31/">
        <Error>
        <Type>Sender</Type>
        <Code>AccessDenied</Code>
        <Message>\(message)</Message>
        </Error>
        </ErrorResponse>
        """
        
        let response = HTTPClient.Response(host: "rds.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<RDSError>(requiresTLS: true)
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let RDSError.accessDenied(message: returnedMessage) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedMessage else {
            return XCTFail()
        }
    }
    
    func testKnownErrorDecode() throws {
        let message = "Authorization already exists."
        let errorResponse = """
        <ErrorResponse xmlns="http://rds.amazonaws.com/doc/2014-10-31/">
          <Error>
            <Type>Sender</Type>
            <Code>AuthorizationAlreadyExists</Code>
            <Message>\(message)</Message>
          </Error>
        </ErrorResponse>
        """
        
        let response = HTTPClient.Response(host: "rds.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<RDSError>(requiresTLS: true)
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)

        guard case RDSError.authorizationAlreadyExists = error.cause else {
            return XCTFail()
        }
    }
}
