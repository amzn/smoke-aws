//
//  S3ObjectProtocol.swift
//  S3Client
//

import Foundation
import SmokeHTTPClient

/**
 Retrieves objects from an S3 bucket.
 */
public protocol S3ObjectProtocol {

    /**
     Gets an object from the S3 bucket, returning the decoded response in the
     completion handler.
     */
    func getAsync<OutputType: Codable>(objectPath: String, completion: @escaping (HTTPResult<OutputType>) -> ()) throws

    /**
     Gets an object from the S3 bucket, returning the decoded response.
     */
    func getSync<OutputType: Codable>(objectPath: String) throws -> OutputType
}

