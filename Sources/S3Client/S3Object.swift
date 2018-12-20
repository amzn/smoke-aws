//
// S3Object.swift
// S3Client
//

import Foundation
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

/**
 Retrieves objects from an S3 bucket.
 */
public struct S3Object: S3ObjectProtocol {
    let httpClient: HTTPClient
    let handlerDelegate: AWSClientChannelInboundHandlerDelegate
    
    /**
     Initializer.
 
     - Parameters:
         - credentialsProvider: provider of credentials to access the S3 bucket.
         - bucketName: the name of the bucket to access.
         - contentType: the content type to retrieve.
         - clientDelegate: the delegate to use to decode the response.
     */
    public init(credentialsProvider: CredentialsProvider,
                bucketName: String,
                contentType: String,
                clientDelegate: HTTPClientDelegate) {
        self.httpClient = HTTPClient(endpointHostName: "\(bucketName).s3.amazonaws.com",
                                     endpointPort: 443,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate)
        self.handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: .us_east_1,
                    service: "s3",
                    target: nil,
                    signAllHeaders: true)
    }
    
    private struct BodyHTTPRequestOutput<OutputType: Decodable>: HTTPResponseOutputProtocol {
        typealias BodyType = OutputType
        typealias HeadersType = OutputType
        
        let body: OutputType
        
        static func compose(bodyDecodableProvider: () throws -> OutputType,
                            headersDecodableProvider: () throws -> OutputType) throws
            -> BodyHTTPRequestOutput<OutputType> {
                let body = try bodyDecodableProvider()
                
                return BodyHTTPRequestOutput(body: body)
        }
        
    }

    /**
     Gets an object from the S3 bucket, returning the decoded response in the
     completion handler.
     */
    public func getAsync<OutputType: Codable>(objectPath: String, completion: @escaping (HTTPResult<OutputType>) -> ()) throws {
        func innerCompletion(result: HTTPResult<BodyHTTPRequestOutput<OutputType>>) {
            switch result {
            case .response(let result):
                completion(.response(result.body))
            case .error(let error):
                completion(.error(error))
            }
        }
        
        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: objectPath,
            httpMethod: .GET,
            input: NoHTTPRequestInput(),
            completion: innerCompletion,
            handlerDelegate: handlerDelegate)
    }

    /**
     Gets an object from the S3 bucket, returning the decoded response.
     */
    public func getSync<OutputType: Codable>(objectPath: String) throws -> OutputType {
        let responseOutput: BodyHTTPRequestOutput<OutputType> =
            try httpClient.executeSyncWithOutput(
                endpointPath: objectPath,
                httpMethod: .GET,
                input: NoHTTPRequestInput(),
                handlerDelegate: handlerDelegate)
        
        return responseOutput.body
    }
}
