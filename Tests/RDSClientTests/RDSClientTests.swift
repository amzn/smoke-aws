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
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        guard case let RDSError.accessDenied(message: returnedMessage) = error else {
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
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)

        guard case RDSError.authorizationAlreadyExists = error else {
            return XCTFail()
        }
    }
    
    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
        ]
}
