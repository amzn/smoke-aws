// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// AWSS3Client.swift
// S3Client
//

import Foundation
import S3Model
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum S3ClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension S3Error {
    func isRetriable() -> Bool {
        return false
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? S3Error {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the S3 service.
 */
public struct AWSS3Client: S3ClientProtocol {
    let httpClient: HTTPClient
    let dataHttpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                endpointHostName: String = "s3.amazonaws.com",
                endpointPort: Int = 443,
                service: String = "s3",
                contentType: String = "application/x-amz-rest-xml",
                target: String? = nil,
                connectionTimeoutSeconds: Int = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads) {
        let clientDelegate = XMLAWSHttpClientDelegate<S3Error>()

        let clientDelegateForDataHttpClient = DataAWSHttpClientDelegate<S3Error>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.dataHttpClient = HTTPClient(endpointHostName: endpointHostName,
                                          endpointPort: endpointPort,
                                          contentType: contentType,
                                          clientDelegate: clientDelegateForDataHttpClient,
                                          connectionTimeoutSeconds: connectionTimeoutSeconds,
                                          eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
        dataHttpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
        dataHttpClient.wait()
    }

    /**
     Invokes the AbortMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
         - completion: The AbortMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The AbortMultipartUploadOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchUpload.
     */
    public func abortMultipartUploadAsync(input: S3Model.AbortMultipartUploadRequest, completion: @escaping (HTTPResult<S3Model.AbortMultipartUploadOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.abortMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = AbortMultipartUploadOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the AbortMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    public func abortMultipartUploadSync(input: S3Model.AbortMultipartUploadRequest) throws -> S3Model.AbortMultipartUploadOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.abortMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = AbortMultipartUploadOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CompleteMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
         - completion: The CompleteMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CompleteMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    public func completeMultipartUploadAsync(input: S3Model.CompleteMultipartUploadRequest, completion: @escaping (HTTPResult<S3Model.CompleteMultipartUploadOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.completeMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CompleteMultipartUploadOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CompleteMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func completeMultipartUploadSync(input: S3Model.CompleteMultipartUploadRequest) throws -> S3Model.CompleteMultipartUploadOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.completeMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CompleteMultipartUploadOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CopyObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
         - completion: The CopyObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CopyObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectNotInActiveTier.
     */
    public func copyObjectAsync(input: S3Model.CopyObjectRequest, completion: @escaping (HTTPResult<S3Model.CopyObjectOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.copyObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CopyObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CopyObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    public func copyObjectSync(input: S3Model.CopyObjectRequest) throws -> S3Model.CopyObjectOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.copyObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CopyObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
         - completion: The CreateBucketOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBucketOutput
           object will be validated before being returned to caller.
           The possible errors are: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    public func createBucketAsync(input: S3Model.CreateBucketRequest, completion: @escaping (HTTPResult<S3Model.CreateBucketOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CreateBucketOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    public func createBucketSync(input: S3Model.CreateBucketRequest) throws -> S3Model.CreateBucketOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CreateBucketOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
         - completion: The CreateMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    public func createMultipartUploadAsync(input: S3Model.CreateMultipartUploadRequest, completion: @escaping (HTTPResult<S3Model.CreateMultipartUploadOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CreateMultipartUploadOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?uploads",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createMultipartUploadSync(input: S3Model.CreateMultipartUploadRequest) throws -> S3Model.CreateMultipartUploadOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.createMultipartUpload.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = CreateMultipartUploadOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?uploads",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketAsync(input: S3Model.DeleteBucketRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucketSync(input: S3Model.DeleteBucketRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketAnalyticsConfigurationAsync(input: S3Model.DeleteBucketAnalyticsConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfigurationSync(input: S3Model.DeleteBucketAnalyticsConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketCorsAsync(input: S3Model.DeleteBucketCorsRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketCorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCorsSync(input: S3Model.DeleteBucketCorsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketCorsOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketEncryptionAsync(input: S3Model.DeleteBucketEncryptionRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketEncryptionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryptionSync(input: S3Model.DeleteBucketEncryptionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketEncryptionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketInventoryConfigurationAsync(input: S3Model.DeleteBucketInventoryConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfigurationSync(input: S3Model.DeleteBucketInventoryConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketLifecycleAsync(input: S3Model.DeleteBucketLifecycleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketLifecycleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycleSync(input: S3Model.DeleteBucketLifecycleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketLifecycleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketMetricsConfigurationAsync(input: S3Model.DeleteBucketMetricsConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfigurationSync(input: S3Model.DeleteBucketMetricsConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketPolicyAsync(input: S3Model.DeleteBucketPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicySync(input: S3Model.DeleteBucketPolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketReplicationAsync(input: S3Model.DeleteBucketReplicationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketReplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplicationSync(input: S3Model.DeleteBucketReplicationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketReplicationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketTaggingAsync(input: S3Model.DeleteBucketTaggingRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTaggingSync(input: S3Model.DeleteBucketTaggingRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketTaggingOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketWebsiteAsync(input: S3Model.DeleteBucketWebsiteRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketWebsiteOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsiteSync(input: S3Model.DeleteBucketWebsiteRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteBucketWebsiteOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
         - completion: The DeleteObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectOutput
           object will be validated before being returned to caller.
     */
    public func deleteObjectAsync(input: S3Model.DeleteObjectRequest, completion: @escaping (HTTPResult<S3Model.DeleteObjectOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectSync(input: S3Model.DeleteObjectRequest) throws -> S3Model.DeleteObjectOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
         - completion: The DeleteObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    public func deleteObjectTaggingAsync(input: S3Model.DeleteObjectTaggingRequest, completion: @escaping (HTTPResult<S3Model.DeleteObjectTaggingOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteObjectTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectTaggingSync(input: S3Model.DeleteObjectTaggingRequest) throws -> S3Model.DeleteObjectTaggingOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteObjectTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
         - completion: The DeleteObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectsOutput
           object will be validated before being returned to caller.
     */
    public func deleteObjectsAsync(input: S3Model.DeleteObjectsRequest, completion: @escaping (HTTPResult<S3Model.DeleteObjectsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteObjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?delete",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectsSync(input: S3Model.DeleteObjectsRequest) throws -> S3Model.DeleteObjectsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deleteObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeleteObjectsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?delete",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deletePublicAccessBlockAsync(input: S3Model.DeletePublicAccessBlockRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deletePublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeletePublicAccessBlockOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlockSync(input: S3Model.DeletePublicAccessBlockRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.deletePublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = DeletePublicAccessBlockOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .DELETE,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAccelerateConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAccelerateConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketAccelerateConfigurationAsync(input: S3Model.GetBucketAccelerateConfigurationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketAccelerateConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAccelerateConfigurationSync(input: S3Model.GetBucketAccelerateConfigurationRequest) throws -> S3Model.GetBucketAccelerateConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
         - completion: The GetBucketAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAclOutput
           object will be validated before being returned to caller.
     */
    public func getBucketAclAsync(input: S3Model.GetBucketAclRequest, completion: @escaping (HTTPResult<S3Model.GetBucketAclOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAclSync(input: S3Model.GetBucketAclRequest) throws -> S3Model.GetBucketAclOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketAclOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAnalyticsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAnalyticsConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketAnalyticsConfigurationAsync(input: S3Model.GetBucketAnalyticsConfigurationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketAnalyticsConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAnalyticsConfigurationSync(input: S3Model.GetBucketAnalyticsConfigurationRequest) throws -> S3Model.GetBucketAnalyticsConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
         - completion: The GetBucketCorsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketCorsOutput
           object will be validated before being returned to caller.
     */
    public func getBucketCorsAsync(input: S3Model.GetBucketCorsRequest, completion: @escaping (HTTPResult<S3Model.GetBucketCorsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketCorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketCorsSync(input: S3Model.GetBucketCorsRequest) throws -> S3Model.GetBucketCorsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketCorsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
         - completion: The GetBucketEncryptionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketEncryptionOutput
           object will be validated before being returned to caller.
     */
    public func getBucketEncryptionAsync(input: S3Model.GetBucketEncryptionRequest, completion: @escaping (HTTPResult<S3Model.GetBucketEncryptionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketEncryptionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketEncryptionSync(input: S3Model.GetBucketEncryptionRequest) throws -> S3Model.GetBucketEncryptionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketEncryptionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: The GetBucketInventoryConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketInventoryConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketInventoryConfigurationAsync(input: S3Model.GetBucketInventoryConfigurationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketInventoryConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketInventoryConfigurationSync(input: S3Model.GetBucketInventoryConfigurationRequest) throws -> S3Model.GetBucketInventoryConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
         - completion: The GetBucketLifecycleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLifecycleAsync(input: S3Model.GetBucketLifecycleRequest, completion: @escaping (HTTPResult<S3Model.GetBucketLifecycleOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLifecycleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycleSync(input: S3Model.GetBucketLifecycleRequest) throws -> S3Model.GetBucketLifecycleOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLifecycleOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: The GetBucketLifecycleConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLifecycleConfigurationAsync(input: S3Model.GetBucketLifecycleConfigurationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketLifecycleConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycleConfigurationSync(input: S3Model.GetBucketLifecycleConfigurationRequest) throws -> S3Model.GetBucketLifecycleConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLocation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
         - completion: The GetBucketLocationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLocationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLocationAsync(input: S3Model.GetBucketLocationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketLocationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLocation.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLocationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?location",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLocation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLocationSync(input: S3Model.GetBucketLocationRequest) throws -> S3Model.GetBucketLocationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLocation.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLocationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?location",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
         - completion: The GetBucketLoggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLoggingOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLoggingAsync(input: S3Model.GetBucketLoggingRequest, completion: @escaping (HTTPResult<S3Model.GetBucketLoggingOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLoggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLoggingSync(input: S3Model.GetBucketLoggingRequest) throws -> S3Model.GetBucketLoggingOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketLoggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketMetricsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketMetricsConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketMetricsConfigurationAsync(input: S3Model.GetBucketMetricsConfigurationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketMetricsConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketMetricsConfigurationSync(input: S3Model.GetBucketMetricsConfigurationRequest) throws -> S3Model.GetBucketMetricsConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfigurationDeprecated object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfigurationDeprecated
           object will be validated before being returned to caller.
     */
    public func getBucketNotificationAsync(input: S3Model.GetBucketNotificationConfigurationRequest, completion: @escaping (HTTPResult<S3Model.NotificationConfigurationDeprecated>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketNotificationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotificationSync(input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfigurationDeprecated {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketNotificationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfiguration object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfiguration
           object will be validated before being returned to caller.
     */
    public func getBucketNotificationConfigurationAsync(input: S3Model.GetBucketNotificationConfigurationRequest, completion: @escaping (HTTPResult<S3Model.NotificationConfiguration>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotificationConfigurationSync(input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfiguration {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
         - completion: The GetBucketPolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyOutput
           object will be validated before being returned to caller.
     */
    public func getBucketPolicyAsync(input: S3Model.GetBucketPolicyRequest, completion: @escaping (HTTPResult<S3Model.GetBucketPolicyOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicySync(input: S3Model.GetBucketPolicyRequest) throws -> S3Model.GetBucketPolicyOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketPolicyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketPolicyStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
         - completion: The GetBucketPolicyStatusOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyStatusOutput
           object will be validated before being returned to caller.
     */
    public func getBucketPolicyStatusAsync(input: S3Model.GetBucketPolicyStatusRequest, completion: @escaping (HTTPResult<S3Model.GetBucketPolicyStatusOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicyStatus.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketPolicyStatusOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policyStatus",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketPolicyStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicyStatusSync(input: S3Model.GetBucketPolicyStatusRequest) throws -> S3Model.GetBucketPolicyStatusOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketPolicyStatus.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketPolicyStatusOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?policyStatus",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
         - completion: The GetBucketReplicationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketReplicationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketReplicationAsync(input: S3Model.GetBucketReplicationRequest, completion: @escaping (HTTPResult<S3Model.GetBucketReplicationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketReplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketReplicationSync(input: S3Model.GetBucketReplicationRequest) throws -> S3Model.GetBucketReplicationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketReplicationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
         - completion: The GetBucketRequestPaymentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketRequestPaymentOutput
           object will be validated before being returned to caller.
     */
    public func getBucketRequestPaymentAsync(input: S3Model.GetBucketRequestPaymentRequest, completion: @escaping (HTTPResult<S3Model.GetBucketRequestPaymentOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketRequestPaymentSync(input: S3Model.GetBucketRequestPaymentRequest) throws -> S3Model.GetBucketRequestPaymentOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
         - completion: The GetBucketTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketTaggingOutput
           object will be validated before being returned to caller.
     */
    public func getBucketTaggingAsync(input: S3Model.GetBucketTaggingRequest, completion: @escaping (HTTPResult<S3Model.GetBucketTaggingOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketTaggingSync(input: S3Model.GetBucketTaggingRequest) throws -> S3Model.GetBucketTaggingOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
         - completion: The GetBucketVersioningOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketVersioningOutput
           object will be validated before being returned to caller.
     */
    public func getBucketVersioningAsync(input: S3Model.GetBucketVersioningRequest, completion: @escaping (HTTPResult<S3Model.GetBucketVersioningOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketVersioningOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketVersioningSync(input: S3Model.GetBucketVersioningRequest) throws -> S3Model.GetBucketVersioningOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketVersioningOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
         - completion: The GetBucketWebsiteOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketWebsiteOutput
           object will be validated before being returned to caller.
     */
    public func getBucketWebsiteAsync(input: S3Model.GetBucketWebsiteRequest, completion: @escaping (HTTPResult<S3Model.GetBucketWebsiteOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketWebsiteOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketWebsiteSync(input: S3Model.GetBucketWebsiteRequest) throws -> S3Model.GetBucketWebsiteOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetBucketWebsiteOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
         - completion: The GetObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func getObjectAsync(input: S3Model.GetObjectRequest, completion: @escaping (HTTPResult<S3Model.GetObjectOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectSync(input: S3Model.GetObjectRequest) throws -> S3Model.GetObjectOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
         - completion: The GetObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func getObjectAclAsync(input: S3Model.GetObjectAclRequest, completion: @escaping (HTTPResult<S3Model.GetObjectAclOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectAclSync(input: S3Model.GetObjectAclRequest) throws -> S3Model.GetObjectAclOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectAclOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
         - completion: The GetObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    public func getObjectLegalHoldAsync(input: S3Model.GetObjectLegalHoldRequest, completion: @escaping (HTTPResult<S3Model.GetObjectLegalHoldOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLegalHoldSync(input: S3Model.GetObjectLegalHoldRequest) throws -> S3Model.GetObjectLegalHoldOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
         - completion: The GetObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getObjectLockConfigurationAsync(input: S3Model.GetObjectLockConfigurationRequest, completion: @escaping (HTTPResult<S3Model.GetObjectLockConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLockConfigurationSync(input: S3Model.GetObjectLockConfigurationRequest) throws -> S3Model.GetObjectLockConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
         - completion: The GetObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    public func getObjectRetentionAsync(input: S3Model.GetObjectRetentionRequest, completion: @escaping (HTTPResult<S3Model.GetObjectRetentionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectRetentionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectRetentionSync(input: S3Model.GetObjectRetentionRequest) throws -> S3Model.GetObjectRetentionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectRetentionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
         - completion: The GetObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    public func getObjectTaggingAsync(input: S3Model.GetObjectTaggingRequest, completion: @escaping (HTTPResult<S3Model.GetObjectTaggingOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTaggingSync(input: S3Model.GetObjectTaggingRequest) throws -> S3Model.GetObjectTaggingOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectTorrent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
         - completion: The GetObjectTorrentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTorrentOutput
           object will be validated before being returned to caller.
     */
    public func getObjectTorrentAsync(input: S3Model.GetObjectTorrentRequest, completion: @escaping (HTTPResult<S3Model.GetObjectTorrentOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTorrent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectTorrentOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?torrent",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetObjectTorrent operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTorrentSync(input: S3Model.GetObjectTorrentRequest) throws -> S3Model.GetObjectTorrentOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getObjectTorrent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetObjectTorrentOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?torrent",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
         - completion: The GetPublicAccessBlockOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPublicAccessBlockOutput
           object will be validated before being returned to caller.
     */
    public func getPublicAccessBlockAsync(input: S3Model.GetPublicAccessBlockRequest, completion: @escaping (HTTPResult<S3Model.GetPublicAccessBlockOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPublicAccessBlockSync(input: S3Model.GetPublicAccessBlockRequest) throws -> S3Model.GetPublicAccessBlockOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.getPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = GetPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the HeadBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: noSuchBucket.
     */
    public func headBucketAsync(input: S3Model.HeadBucketRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = HeadBucketOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .HEAD,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the HeadBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    public func headBucketSync(input: S3Model.HeadBucketRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headBucket.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = HeadBucketOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .HEAD,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the HeadObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
         - completion: The HeadObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The HeadObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func headObjectAsync(input: S3Model.HeadObjectRequest, completion: @escaping (HTTPResult<S3Model.HeadObjectOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = HeadObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .HEAD,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the HeadObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func headObjectSync(input: S3Model.HeadObjectRequest) throws -> S3Model.HeadObjectOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.headObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = HeadObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .HEAD,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBucketAnalyticsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketAnalyticsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketAnalyticsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketAnalyticsConfigurationsAsync(input: S3Model.ListBucketAnalyticsConfigurationsRequest, completion: @escaping (HTTPResult<S3Model.ListBucketAnalyticsConfigurationsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketAnalyticsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListBucketAnalyticsConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBucketAnalyticsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketAnalyticsConfigurationsSync(input: S3Model.ListBucketAnalyticsConfigurationsRequest) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketAnalyticsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListBucketAnalyticsConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBucketInventoryConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketInventoryConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketInventoryConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketInventoryConfigurationsAsync(input: S3Model.ListBucketInventoryConfigurationsRequest, completion: @escaping (HTTPResult<S3Model.ListBucketInventoryConfigurationsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketInventoryConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListBucketInventoryConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBucketInventoryConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketInventoryConfigurationsSync(input: S3Model.ListBucketInventoryConfigurationsRequest) throws -> S3Model.ListBucketInventoryConfigurationsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketInventoryConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListBucketInventoryConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBucketMetricsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketMetricsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketMetricsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketMetricsConfigurationsAsync(input: S3Model.ListBucketMetricsConfigurationsRequest, completion: @escaping (HTTPResult<S3Model.ListBucketMetricsConfigurationsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketMetricsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListBucketMetricsConfigurationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBucketMetricsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketMetricsConfigurationsSync(input: S3Model.ListBucketMetricsConfigurationsRequest) throws -> S3Model.ListBucketMetricsConfigurationsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBucketMetricsConfigurations.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListBucketMetricsConfigurationsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuckets operation returning immediately and passing the response to a callback.
         - completion: The ListBucketsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketsAsync(completion: @escaping (HTTPResult<S3Model.ListBucketsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBuckets.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = NoHTTPRequestInput()

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketsSync() throws -> S3Model.ListBucketsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listBuckets.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = NoHTTPRequestInput()

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListMultipartUploads operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
         - completion: The ListMultipartUploadsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListMultipartUploadsOutput
           object will be validated before being returned to caller.
     */
    public func listMultipartUploadsAsync(input: S3Model.ListMultipartUploadsRequest, completion: @escaping (HTTPResult<S3Model.ListMultipartUploadsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listMultipartUploads.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListMultipartUploadsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?uploads",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListMultipartUploads operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listMultipartUploadsSync(input: S3Model.ListMultipartUploadsRequest) throws -> S3Model.ListMultipartUploadsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listMultipartUploads.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListMultipartUploadsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?uploads",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListObjectVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
         - completion: The ListObjectVersionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectVersionsOutput
           object will be validated before being returned to caller.
     */
    public func listObjectVersionsAsync(input: S3Model.ListObjectVersionsRequest, completion: @escaping (HTTPResult<S3Model.ListObjectVersionsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectVersions.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListObjectVersionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListObjectVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listObjectVersionsSync(input: S3Model.ListObjectVersionsRequest) throws -> S3Model.ListObjectVersionsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectVersions.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListObjectVersionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?versions",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
         - completion: The ListObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    public func listObjectsAsync(input: S3Model.ListObjectsRequest, completion: @escaping (HTTPResult<S3Model.ListObjectsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListObjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    public func listObjectsSync(input: S3Model.ListObjectsRequest) throws -> S3Model.ListObjectsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjects.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListObjectsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListObjectsV2 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
         - completion: The ListObjectsV2Output object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsV2Output
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    public func listObjectsV2Async(input: S3Model.ListObjectsV2Request, completion: @escaping (HTTPResult<S3Model.ListObjectsV2Output>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectsV2.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListObjectsV2OperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?list-type=2",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListObjectsV2 operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    public func listObjectsV2Sync(input: S3Model.ListObjectsV2Request) throws -> S3Model.ListObjectsV2Output {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listObjectsV2.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListObjectsV2OperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?list-type=2",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListParts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
         - completion: The ListPartsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPartsOutput
           object will be validated before being returned to caller.
     */
    public func listPartsAsync(input: S3Model.ListPartsRequest, completion: @escaping (HTTPResult<S3Model.ListPartsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listParts.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListPartsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListParts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listPartsSync(input: S3Model.ListPartsRequest) throws -> S3Model.ListPartsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.listParts.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = ListPartsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .GET,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketAccelerateConfigurationAsync(input: S3Model.PutBucketAccelerateConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfigurationSync(input: S3Model.PutBucketAccelerateConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAccelerateConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?accelerate",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketAclAsync(input: S3Model.PutBucketAclRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAclSync(input: S3Model.PutBucketAclRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketAclOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?acl",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketAnalyticsConfigurationAsync(input: S3Model.PutBucketAnalyticsConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfigurationSync(input: S3Model.PutBucketAnalyticsConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketAnalyticsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?analytics",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketCorsAsync(input: S3Model.PutBucketCorsRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketCorsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCorsSync(input: S3Model.PutBucketCorsRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketCors.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketCorsOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?cors",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketEncryptionAsync(input: S3Model.PutBucketEncryptionRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketEncryptionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryptionSync(input: S3Model.PutBucketEncryptionRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketEncryption.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketEncryptionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?encryption",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketInventoryConfigurationAsync(input: S3Model.PutBucketInventoryConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfigurationSync(input: S3Model.PutBucketInventoryConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketInventoryConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?inventory",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketLifecycleAsync(input: S3Model.PutBucketLifecycleRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketLifecycleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycleSync(input: S3Model.PutBucketLifecycleRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycle.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketLifecycleOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketLifecycleConfigurationAsync(input: S3Model.PutBucketLifecycleConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfigurationSync(input: S3Model.PutBucketLifecycleConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLifecycleConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?lifecycle",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketLoggingAsync(input: S3Model.PutBucketLoggingRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketLoggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLoggingSync(input: S3Model.PutBucketLoggingRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketLogging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketLoggingOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?logging",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketMetricsConfigurationAsync(input: S3Model.PutBucketMetricsConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfigurationSync(input: S3Model.PutBucketMetricsConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketMetricsConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?metrics",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketNotificationAsync(input: S3Model.PutBucketNotificationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketNotificationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotificationSync(input: S3Model.PutBucketNotificationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotification.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketNotificationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketNotificationConfigurationAsync(input: S3Model.PutBucketNotificationConfigurationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfigurationSync(input: S3Model.PutBucketNotificationConfigurationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketNotificationConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?notification",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketPolicyAsync(input: S3Model.PutBucketPolicyRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketPolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicySync(input: S3Model.PutBucketPolicyRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketPolicy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketPolicyOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?policy",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketReplicationAsync(input: S3Model.PutBucketReplicationRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketReplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplicationSync(input: S3Model.PutBucketReplicationRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketReplication.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketReplicationOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?replication",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketRequestPaymentAsync(input: S3Model.PutBucketRequestPaymentRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPaymentSync(input: S3Model.PutBucketRequestPaymentRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketRequestPayment.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketRequestPaymentOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?requestPayment",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketTaggingAsync(input: S3Model.PutBucketTaggingRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTaggingSync(input: S3Model.PutBucketTaggingRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketTaggingOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketVersioningAsync(input: S3Model.PutBucketVersioningRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketVersioningOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioningSync(input: S3Model.PutBucketVersioningRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketVersioning.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketVersioningOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?versioning",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketWebsiteAsync(input: S3Model.PutBucketWebsiteRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketWebsiteOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsiteSync(input: S3Model.PutBucketWebsiteRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putBucketWebsite.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutBucketWebsiteOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?website",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
         - completion: The PutObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectOutput
           object will be validated before being returned to caller.
     */
    public func putObjectAsync(input: S3Model.PutObjectRequest, completion: @escaping (HTTPResult<S3Model.PutObjectOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectSync(input: S3Model.PutObjectRequest) throws -> S3Model.PutObjectOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
         - completion: The PutObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func putObjectAclAsync(input: S3Model.PutObjectAclRequest, completion: @escaping (HTTPResult<S3Model.PutObjectAclOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectAclOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func putObjectAclSync(input: S3Model.PutObjectAclRequest) throws -> S3Model.PutObjectAclOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectAcl.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectAclOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?acl",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
         - completion: The PutObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    public func putObjectLegalHoldAsync(input: S3Model.PutObjectLegalHoldRequest, completion: @escaping (HTTPResult<S3Model.PutObjectLegalHoldOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLegalHoldSync(input: S3Model.PutObjectLegalHoldRequest) throws -> S3Model.PutObjectLegalHoldOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLegalHold.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectLegalHoldOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?legal-hold",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
         - completion: The PutObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func putObjectLockConfigurationAsync(input: S3Model.PutObjectLockConfigurationRequest, completion: @escaping (HTTPResult<S3Model.PutObjectLockConfigurationOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLockConfigurationSync(input: S3Model.PutObjectLockConfigurationRequest) throws -> S3Model.PutObjectLockConfigurationOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectLockConfiguration.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectLockConfigurationOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}?object-lock",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
         - completion: The PutObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    public func putObjectRetentionAsync(input: S3Model.PutObjectRetentionRequest, completion: @escaping (HTTPResult<S3Model.PutObjectRetentionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectRetentionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectRetentionSync(input: S3Model.PutObjectRetentionRequest) throws -> S3Model.PutObjectRetentionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectRetention.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectRetentionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?retention",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
         - completion: The PutObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    public func putObjectTaggingAsync(input: S3Model.PutObjectTaggingRequest, completion: @escaping (HTTPResult<S3Model.PutObjectTaggingOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectTaggingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectTaggingSync(input: S3Model.PutObjectTaggingRequest) throws -> S3Model.PutObjectTaggingOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putObjectTagging.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutObjectTaggingOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?tagging",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putPublicAccessBlockAsync(input: S3Model.PutPublicAccessBlockRequest, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlockSync(input: S3Model.PutPublicAccessBlockRequest) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.putPublicAccessBlock.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = PutPublicAccessBlockOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/{Bucket}?publicAccessBlock",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RestoreObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
         - completion: The RestoreObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectAlreadyInActiveTier.
     */
    public func restoreObjectAsync(input: S3Model.RestoreObjectRequest, completion: @escaping (HTTPResult<S3Model.RestoreObjectOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.restoreObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = RestoreObjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?restore",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RestoreObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    public func restoreObjectSync(input: S3Model.RestoreObjectRequest) throws -> S3Model.RestoreObjectOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.restoreObject.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = RestoreObjectOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?restore",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SelectObjectContent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
         - completion: The SelectObjectContentOutput object or an error will be passed to this 
           callback when the operation is complete. The SelectObjectContentOutput
           object will be validated before being returned to caller.
     */
    public func selectObjectContentAsync(input: S3Model.SelectObjectContentRequest, completion: @escaping (HTTPResult<S3Model.SelectObjectContentOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.selectObjectContent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = SelectObjectContentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?select&select-type=2",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SelectObjectContent operation waiting for the response before returning.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func selectObjectContentSync(input: S3Model.SelectObjectContentRequest) throws -> S3Model.SelectObjectContentOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.selectObjectContent.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = SelectObjectContentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}?select&select-type=2",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UploadPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
         - completion: The UploadPartOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartOutput
           object will be validated before being returned to caller.
     */
    public func uploadPartAsync(input: S3Model.UploadPartRequest, completion: @escaping (HTTPResult<S3Model.UploadPartOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPart.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = UploadPartOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UploadPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPartSync(input: S3Model.UploadPartRequest) throws -> S3Model.UploadPartOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPart.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = UploadPartOperationHTTPRequestInput(encodable: input)

        return try dataHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UploadPartCopy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
         - completion: The UploadPartCopyOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartCopyOutput
           object will be validated before being returned to caller.
     */
    public func uploadPartCopyAsync(input: S3Model.UploadPartCopyRequest, completion: @escaping (HTTPResult<S3Model.UploadPartCopyOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPartCopy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = UploadPartCopyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UploadPartCopy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPartCopySync(input: S3Model.UploadPartCopyRequest) throws -> S3Model.UploadPartCopyOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: S3ModelOperations.uploadPartCopy.rawValue,
                    target: target,
                    signAllHeaders: true)

        let requestInput = UploadPartCopyOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/{Bucket}/{Key+}",
            httpMethod: .PUT,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
