//
// SimpleQueueClientTests.swift
// SimpleQueueClientTests
//

import XCTest
@testable import SimpleQueueClient
import SimpleQueueModel
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClient
import AsyncHTTPClient
import Logging

class SimpleQueueClientTests: XCTestCase {
    
    func testAccessDeniedErrorDecode() throws {
        let message = "Access to the resource https://sqs.us-west-2.amazonaws.com/ is denied."
        let errorResponse = """
            <?xml version="1.0"?>
            <ErrorResponse xmlns="http://queue.amazonaws.com/doc/2012-11-05/">
                <Error>
                    <Type>Sender</Type>
                    <Code>AccessDenied</Code>
                    <Message>\(message)</Message>
                    <Detail/>
                </Error>
            </ErrorResponse>
            """
        
        let response = HTTPClient.Response(host: "sqs.us-west-2.amazonaws.com", status: .badRequest,
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleQueueError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let SimpleQueueError.accessDenied(returnedMessage) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedMessage else {
            return XCTFail()
        }
    }
    
    func testKnownErrorDecode() throws {
        let message = "The specified queue does not exist for this wsdl version."
        let errorResponse = """
            <?xml version="1.0"?>
            <ErrorResponse xmlns="http://queue.amazonaws.com/doc/2012-11-05/">
                <Error>
                    <Type>Sender</Type>
                    <Code>AWS.SimpleQueueService.NonExistentQueue</Code>
                    <Message>\(message)</Message>
                    <Detail/>
                </Error>
            </ErrorResponse>
            """
        
        let response = HTTPClient.Response(host: "sqs.us-west-2.amazonaws.com", status: .badRequest,
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<SimpleQueueError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case SimpleQueueError.queueDoesNotExist = error.cause else {
            return XCTFail()
        }
    }

    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
    ]
}
