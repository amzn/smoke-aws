//
// AppConfigClientTests.swift
// AppConfigClientTests
//

import XCTest
@testable import AppConfigClient
import AppConfigModel
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClient
import AsyncHTTPClient
import Logging
import XMLCoding
import SmokeAWSCore
import NIO

class AppConfigClientTests: XCTestCase {
    
    func testAccessDeniedErrorDecode() throws {
        let message = "User: ... is not authorized to perform: appconfig:GetConfigurationProfile on resource: ...."
        let errorResponse = """
            {"Message": "\(message)"}
            """
        
        let httpHeaders = HTTPHeaders([("x-amzn-ErrorType", "AccessDeniedException:http://internal.amazon.com/coral/com.amazon.coral.service/")])
        let response = HTTPClient.Response(host: "appconfig.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: httpHeaders, body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = JSONAWSHttpClientDelegate<AppConfigError>(requiresTLS: true, errorTypeHTTPHeader: "x-amzn-ErrorType")
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case AppConfigError.accessDenied(let accessDeniedException) = error.cause else {
            return XCTFail("Error is not exepcted type.")
        }

        XCTAssertEqual(accessDeniedException.message, message)
    }
    
    func testKnownErrorDecode() throws {
        let message = "Configuration Profile with Application Id ... and Configuration Profile Id abcde123 could not be found for account ...."
        let errorResponse = """
            {"Message": "\(message)", "ResourceName": "some resource"}
            """
        
        let httpHeaders = HTTPHeaders([("x-amzn-ErrorType", "ResourceNotFoundException:")])
        let response = HTTPClient.Response(host: "appconfig.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: httpHeaders, body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = JSONAWSHttpClientDelegate<AppConfigError>(requiresTLS: true, errorTypeHTTPHeader: "x-amzn-ErrorType")
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case AppConfigError.resourceNotFound(let resourceNotFoundException) = error.cause else {
            return XCTFail("Error is not exepcted type.")
        }
        
        let expectedError = ResourceNotFoundException(message: message, resourceName: "some resource")
        XCTAssertEqual(expectedError, resourceNotFoundException)
    }
    
    func testKnownErrorDecodeOnDataClientDelegate() throws {
        let message = "No deployed version for configuration profile ..... in environment .... and app ....."
        let errorResponse = """
            {"Message": "\(message)"}
            """
        
        let httpHeaders = HTTPHeaders([("x-amzn-ErrorType", "BadRequestException:")])
        let response = HTTPClient.Response(host: "appconfig.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: httpHeaders, body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<AppConfigError>(requiresTLS: true, errorTypeHTTPHeader: "x-amzn-ErrorType")
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case AppConfigError.badRequest(let badRequestException) = error.cause else {
            return XCTFail("Error is not exepcted type.")
        }
        
        let expectedError = BadRequestException(message: message)
        XCTAssertEqual(expectedError, badRequestException)
    }
}
