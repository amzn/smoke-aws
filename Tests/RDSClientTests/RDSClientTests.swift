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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<RDSError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId", traceContext: TestInvocationTraceContext())
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<RDSError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId", traceContext: TestInvocationTraceContext())
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)

        guard case RDSError.authorizationAlreadyExists = error.cause else {
            return XCTFail()
        }
    }
    
    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
        ]
}
