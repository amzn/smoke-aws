//
// ElasticComputeCloudClientTests.swift
// ElasticComputeCloudClientTests
//

import XCTest
@testable import ElasticComputeCloudClient
import ElasticComputeCloudModel
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClient

class ElasticComputeCloudClientTests: XCTestCase {
    
    func testAccessDeniedErrorDecode() throws {
        let message = "You are not authorized to perform this operation."
        let errorResponse = """
            <?xml version="1.0" encoding="UTF-8"?>
            <Response>
                <Errors>
                    <Error>
                        <Code>UnauthorizedOperation</Code>
                        <Message>\(message)</Message>
                    </Error>
                </Errors>
            </Response>
            """
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<ElasticComputeCloudError>()
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case ElasticComputeCloudError.unauthorizedOperation(let returnedPayload) = error else {
            return XCTFail()
        }
        
        guard message == returnedPayload.message else {
            return XCTFail()
        }
    }
    
    func testKnownErrorDecode() throws {
        let message = "The request must contain the parameter ImageId"
        let errorResponse = """
            <?xml version="1.0" encoding="UTF-8"?>
            <Response>
                <Errors>
                    <Error>
                        <Code>MissingParameter</Code>
                        <Message>\(message)</Message>
                    </Error>
                </Errors>
            </Response>
            """
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<ElasticComputeCloudError>()
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case ElasticComputeCloudError.missingParameter(let returnedPayload) = error else {
            return XCTFail()
        }
        
        guard message == returnedPayload.message else {
            return XCTFail()
        }
    }

    static var allTests = [
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
    ]
}
