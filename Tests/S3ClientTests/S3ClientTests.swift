//
// S3ClientTests.swift
// S3ClientTests
//

import XCTest
@testable import S3Client
import S3Model
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClient
import AsyncHTTPClient
import Logging

class S3ClientTests: XCTestCase {
    
    func testValidS3Uri() throws {
        let s3Uri = "s3://bucketName/the/key/path"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        let expected = S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "the/key/path")
        
        XCTAssertEqual(expected, identifier)
    }
    
    func testValidHttpsUri() throws {
        let s3Uris = [
            "https://s3.amazonaws.com/bucketName/the/key/path",
            "https://s3-abc.amazonaws.com/bucketName/the/key/path",
            "https://s3.us-east-1.amazonaws.com/bucketName/the/key/path",
            "https://s3-abc.us-east-1.amazonaws.com/bucketName/the/key/path",
            "https://bucketName.s3.amazonaws.com/the/key/path",
            "https://bucketName.s3-abc.amazonaws.com/the/key/path",
            "https://bucketName.s3.us-east-1.amazonaws.com/the/key/path",
            "https://bucketName.s3-abc.us-east-1.amazonaws.com/the/key/path",
        ]
        
        let expected = S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "the/key/path")
        
        for s3Uri in s3Uris {
            let identifier = s3Uri.asS3ObjectIdentifier()
            XCTAssertEqual(expected, identifier)
        }
    }
    
    func testValidHttpUri() throws {
        let s3Uris = [
            "http://s3.amazonaws.com/bucketName/the/key/path",
            "http://s3-abc.amazonaws.com/bucketName/the/key/path",
            "http://s3.us-east-1.amazonaws.com/bucketName/the/key/path",
            "http://s3-abc.us-east-1.amazonaws.com/bucketName/the/key/path",
            "http://bucketName.s3.amazonaws.com/the/key/path",
            "http://bucketName.s3-abc.amazonaws.com/the/key/path",
            "http://bucketName.s3.us-east-1.amazonaws.com/the/key/path",
            "http://bucketName.s3-abc.us-east-1.amazonaws.com/the/key/path",
        ]
        
        let expected = S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "the/key/path")
        
    for s3Uri in s3Uris {
            let identifier = s3Uri.asS3ObjectIdentifier()
            XCTAssertEqual(expected, identifier)
        }
    }
    
    func testInvalidS3UriPrefix() throws {
        let s3Uri = "ssh://bucketName/the/key/path"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        XCTAssertNil(identifier)
    }
    
    func testS3UriNoSeparator() throws {
        let s3Uri = "s3://bucketName"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        XCTAssertNil(identifier)
    }
    
    func testHttpsUriNoSeparatorForBucket() throws {
        let s3Uri = "https://bucketName"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        XCTAssertNil(identifier)
    }
    
    func testHttpsUriNoSeparatorForKey() throws {
        let s3Uri = "https://host/bucketName"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        XCTAssertNil(identifier)
    }
    
    func testAccessDeniedErrorDecode() throws {
        let message = "Access Denied"
        let errorResponse = """
            <?xml version="1.0" encoding="UTF-8"?>
            <Error>
                <Code>AccessDenied</Code>
                <Message>\(message)</Message>
            </Error>
            """
        
        let response = HTTPClient.Response(host: "s3.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<S3Error>(requiresTLS: true)
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let S3Error.accessDenied(returnedMessage) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedMessage else {
            return XCTFail()
        }
    }
    
    func testAccessDeniedErrorDataAPIsDecode() throws {
        let message = "Access Denied"
        let errorResponse = """
            <?xml version="1.0" encoding="UTF-8"?>
            <Error>
                <Code>AccessDenied</Code>
                <Message>\(message)</Message>
            </Error>
            """
        
        let response = HTTPClient.Response(host: "s3.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<S3Error>(requiresTLS: true)
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case let S3Error.accessDenied(returnedMessage) = error.cause else {
            return XCTFail()
        }
        
        guard message == returnedMessage else {
            return XCTFail()
        }
    }
    
    func testKnownErrorDecode() throws {
        let message = "The specified key does not exist."
        let errorResponse = """
            <?xml version="1.0" encoding="UTF-8"?>
            <Error>
                <Code>NoSuchKey</Code>
                <Message>\(message)</Message>
                <Key>myKey</Key>
            </Error>
            """
        
        let response = HTTPClient.Response(host: "s3.us-west-2.amazonaws.com", status: .badRequest,
                                           version: HTTPVersion(major: 1, minor: 1),
                                           headers: HTTPHeaders(), body: nil)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<S3Error>(requiresTLS: true)
        let invocationReporting = StandardHTTPClientInvocationReporting(internalRequestId: "internalRequestId",
                                                                        traceContext: MockInvocationTraceContext())
        let error = try clientDelegate.getResponseError(response: response,
                                                        responseComponents: components,
                                                        invocationReporting: invocationReporting)
        
        guard case S3Error.noSuchKey = error.cause else {
            return XCTFail()
        }
    }
}
