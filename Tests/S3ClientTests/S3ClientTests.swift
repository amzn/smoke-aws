//
// S3ClientTests.swift
// S3ClientTests
//

import XCTest
@testable import S3Client

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

    static var allTests = [
        ("testValidS3Uri", testValidS3Uri),
        ("testValidHttpsUri", testValidHttpsUri),
        ("testValidHttpUri", testValidHttpUri),
        ("testInvalidS3UriPrefix", testInvalidS3UriPrefix),
        ("testS3UriNoSeparator", testS3UriNoSeparator),
        ("testHttpsUriNoSeparatorForBucket", testHttpsUriNoSeparatorForBucket),
        ("testHttpsUriNoSeparatorForKey", testHttpsUriNoSeparatorForKey),
    ]
}
