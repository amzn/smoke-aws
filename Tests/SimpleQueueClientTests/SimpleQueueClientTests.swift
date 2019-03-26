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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleQueueError>()
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case let SimpleQueueError.accessDenied(returnedMessage) = error else {
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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<SimpleQueueError>()
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case SimpleQueueError.queueDoesNotExist = error else {
            return XCTFail()
        }
    }

    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
    ]
}
