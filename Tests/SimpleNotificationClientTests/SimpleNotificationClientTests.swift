//
// SimpleNotificationClientTests.swift
// SimpleNotificationClientTests
//

import XCTest
@testable import SimpleNotificationClient
import SimpleNotificationModel
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

class SimpleNotificationClientTests: XCTestCase {
    
    func testAccessDeniedErrorDecode() throws {
        let message = "User: ... is not authorized to perform: SNS:CreateTopic"
        let errorResponse = """
            <ErrorResponse xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
                <Error>
                    <Type>Sender</Type>
                    <Code>AuthorizationError</Code>
                    <Message>\(message)</Message>
                </Error>
            </ErrorResponse>
            """
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleNotificationError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId", traceContext: TestInvocationTraceContext())
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let SimpleNotificationError.authorizationError(returnedPayload) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedPayload.message else {
            return XCTFail()
        }
    }
    
    func testKnownErrorDecode() throws {
        let message = "Invalid parameter: TopicArn or TargetArn Reason: no value for required parameter"
        let errorResponse = """
            <ErrorResponse xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
                <Error>
                    <Type>Sender</Type>
                    <Code>InvalidParameter</Code>
                    <Message>\(message)</Message>
                </Error>
            </ErrorResponse>
            """
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<SimpleNotificationError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId", traceContext: TestInvocationTraceContext())
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case SimpleNotificationError.invalidParameter = error.cause else {
            return XCTFail()
        }
    }
    
    func testUnknownErrorDecode() throws {
        let code = "SignatureDoesNotMatch"
        let message = "The request signature we calculated does not match the signature you provided. Check your AWS Secret Access Key and signing method. Consult the service documentation for details."
        let errorResponse = """
            <ErrorResponse xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
              <Error>
                <Type>Sender</Type>
                <Code>\(code)</Code>
                <Message>\(message)</Message>
              </Error>
              <RequestId>c734492c-e5cc-5e2c-9b0e-1cd08e965067</RequestId>
            </ErrorResponse>
            """
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<SimpleNotificationError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId", traceContext: TestInvocationTraceContext())
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let SimpleNotificationError.unrecognizedError(receivedCode, receivedMessage) = error.cause else {
            return XCTFail()
        }
        
        XCTAssertEqual(code, receivedCode)
        XCTAssertEqual(message, receivedMessage)
    }

    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
    ]
}
