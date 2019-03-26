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
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case let SimpleNotificationError.authorizationError(returnedPayload) = error else {
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
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case SimpleNotificationError.invalidParameter = error else {
            return XCTFail()
        }
    }

    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
    ]
}
