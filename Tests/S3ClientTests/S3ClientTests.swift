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

class S3ClientTests: XCTestCase {
    
    func testValidS3Uri() throws {
        let s3Uri = "s3://bucketName/the/key/path"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        let expected = S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "the/key/path")
        
        XCTAssertEqual(expected, identifier)
    }
    
    func testValidHttpsUri() throws {
        let s3Uri = "https://host/bucketName/the/key/path"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        let expected = S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "the/key/path")
        
        XCTAssertEqual(expected, identifier)
    }
    
    func testValidHttpUri() throws {
        let s3Uri = "http://host/bucketName/the/key/path"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        let expected = S3ObjectIdentifer(bucketName: "bucketName",
                                         keyPath: "the/key/path")
        
        XCTAssertEqual(expected, identifier)
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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = XMLAWSHttpClientDelegate<S3Error>()
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case let S3Error.accessDenied(returnedMessage) = error else {
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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<S3Error>()
        let error = try clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case let S3Error.accessDenied(returnedMessage) = error else {
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
        
        let responseHead = HTTPResponseHead(version: .init(major: 1, minor: 1),
                                            status: .badRequest)
        let components = HTTPResponseComponents(headers: [],
                                                body: errorResponse.data(using: .utf8)!)
        let clientDelegate = DataAWSHttpClientDelegate<S3Error>()
        let error = try! clientDelegate.getResponseError(responseHead: responseHead,
                                                        responseComponents: components)
        
        guard case S3Error.noSuchKey = error else {
            return XCTFail()
        }
    }

    static var allTests = [
        ("testValidS3Uri", testValidS3Uri),
        ("testValidHttpsUri", testValidHttpsUri),
        ("testValidHttpUri", testValidHttpUri),
        ("testInvalidS3UriPrefix", testInvalidS3UriPrefix),
        ("testS3UriNoSeparator", testS3UriNoSeparator),
        ("testHttpsUriNoSeparatorForBucket", testHttpsUriNoSeparatorForBucket),
        ("testHttpsUriNoSeparatorForKey", testHttpsUriNoSeparatorForKey),
        ("testAccessDeniedErrorDecode", testAccessDeniedErrorDecode),
        ("testAccessDeniedErrorDataAPIsDecode", testAccessDeniedErrorDataAPIsDecode),
        ("testKnownErrorDecode", testKnownErrorDecode),
    ]
}
