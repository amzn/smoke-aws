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
import Logging

struct TestInvocationTraceContext: InvocationTraceContext {
    typealias OutwardsRequestContext = String
    
    func handleOutwardsRequestStart(method: HTTPMethod, uri: String, version: HTTPVersion, logger: Logger, internalRequestId: String,
                                    headers: inout [(String, String)], bodyData: Data) -> String {
        return "request"
    }
    
    func handleOutwardsRequestSuccess(outwardsRequestContext: String?, logger: Logger, internalRequestId: String,
                                      responseHead: HTTPResponseHead?, bodyData: Data?) {
        // do nothing
    }
    
    func handleOutwardsRequestFailure(outwardsRequestContext: String?, logger: Logger, internalRequestId: String,
                                      responseHead: HTTPResponseHead?, bodyData: Data?, error: Error) {
        // do nothing
    }
}

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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<SecurityTokenError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId", traceContext: TestInvocationTraceContext())
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let SecurityTokenError.accessDenied(returnedMessage) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedMessage else {
            return XCTFail()
        }
    }

    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
    ]
}
