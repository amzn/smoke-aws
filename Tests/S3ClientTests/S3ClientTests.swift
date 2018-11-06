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
                                         keyPath: "/the/key/path")
        
        XCTAssertEqual(expected, identifier)
    }
    
    func testInvalidS3UriPrefix() throws {
        let s3Uri = "https://bucketName/the/key/path"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        XCTAssertNil(identifier)
    }
    
    func testS3UriNoSeparator() throws {
        let s3Uri = "https://bucketName"
        
        let identifier = s3Uri.asS3ObjectIdentifier()
        
        XCTAssertNil(identifier)
    }

    static var allTests = [
        ("testValidS3Uri", testValidS3Uri),
        ("testInvalidS3UriPrefix", testInvalidS3UriPrefix),
        ("testS3UriNoSeparator", testS3UriNoSeparator),
    ]
}
