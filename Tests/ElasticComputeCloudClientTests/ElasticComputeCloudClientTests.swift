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
import AsyncHTTPClient
import Logging

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
        
        let response = HTTPClient.Response(host: "ec2.us-west-2.amazonaws.com", status: .badRequest,
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<ElasticComputeCloudError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case ElasticComputeCloudError.unauthorizedOperation(let returnedPayload) = error.cause else {
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
        
        let response = HTTPClient.Response(host: "ec2.us-west-2.amazonaws.com", status: .badRequest,
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<ElasticComputeCloudError>()
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case ElasticComputeCloudError.missingParameter(let returnedPayload) = error.cause else {
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
