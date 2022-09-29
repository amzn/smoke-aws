//
// SecurityTokenClientTests.swift
// SecurityTokenClientTests
//

import XCTest
@testable import SecurityTokenClient
import SecurityTokenModel
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClient
import AsyncHTTPClient
import Logging

class SecurityTokenClientTests: XCTestCase {
    
    func testAccessDeniedErrorDecode() throws {
        let message = "Access denied"
        let errorResponse = """
            <ErrorResponse xmlns="https://sts.amazonaws.com/doc/2011-06-15/">
                <Error>
                    <Type>Sender</Type>
                    <Code>AccessDenied</Code>
                    <Message>\(message)</Message>
                </Error>
            </ErrorResponse>
            """
        
        let response = HTTPClient.Response(host: "sts.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<SecurityTokenError>(requiresTLS: true)
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let SecurityTokenError.accessDenied(returnedMessage) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedMessage else {
            return XCTFail()
        }
    }
}
