//
//  AWSClientProtocol.swift
//

import SmokeHTTPClient
import SmokeAWSCore
import NIO
import NIOHTTP1
import NIOTransportServices
import AsyncHTTPClient

public protocol AWSClientProtocol {
    var awsRegion: AWSRegion { get }
    var service: String { get }
    var target: String? { get }
    var retryConfiguration: HTTPClientRetryConfiguration { get }
    var retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool { get }
    var credentialsProvider: CredentialsProvider { get }
}

public extension AWSClientProtocol {
    func executeWithoutOutput<InvocationReportingType: HTTPClientInvocationReporting,
                              InputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            endpointPath: String = "/",
            httpMethod: HTTPMethod = .POST,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType,
            signAllHeaders: Bool = false,
            errorType: ErrorType.Type) -> EventLoopFuture<Void> {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target,
                    signAllHeaders: signAllHeaders)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        return httpClient.executeAsEventLoopFutureRetriableWithoutOutput(
            endpointPath: endpointPath,
            httpMethod: httpMethod,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider) .flatMapErrorThrowing { error in
                let typedError: ErrorType = error.asTypedError()
                throw typedError
            }
    }
    
    func executeWithOutput<OutputType: HTTPResponseOutputProtocol, InvocationReportingType: HTTPClientInvocationReporting,
                           InputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            endpointPath: String = "/",
            httpMethod: HTTPMethod = .POST,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType,
            signAllHeaders: Bool = false,
            errorType: ErrorType.Type) -> EventLoopFuture<OutputType> {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target,
                    signAllHeaders: signAllHeaders)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        return httpClient.executeAsEventLoopFutureRetriableWithOutput(
            endpointPath: endpointPath,
            httpMethod: httpMethod,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider) .flatMapErrorThrowing { error in
                let typedError: ErrorType = error.asTypedError()
                throw typedError
            }
    }
}

public struct AWSClientHelper {
    public static func getEventLoop(eventLoopGroupProvider: HTTPClient.EventLoopGroupProvider) -> EventLoopGroup {
        switch eventLoopGroupProvider {
        case .shared(let group):
            return group
        case .createNew:
            #if canImport(Network)
                if #available(OSX 10.14, iOS 12.0, tvOS 12.0, watchOS 6.0, *) {
                    return NIOTSEventLoopGroup()
                } else {
                    return MultiThreadedEventLoopGroup(numberOfThreads: 1)
                }
            #else
                return MultiThreadedEventLoopGroup(numberOfThreads: 1)
            #endif
        }
    }
}
