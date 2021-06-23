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
    
    func mockEventLoopFutureExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) throws -> OutputType)?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                let overrideResult = try functionTypeOverride(input)
                promise.succeed(overrideResult)
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride(input)
        }

        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
    func mockEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) throws -> ())?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                try functionTypeOverride(input)
                promise.succeed(())
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride(input)
        }

        promise.succeed(())
        
        return promise.futureResult
    }
    
    func mockEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionTypeOverride: (() throws -> OutputType)?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                let overrideResult = try functionTypeOverride()
                promise.succeed(overrideResult)
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride()
        }

        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
    func mockEventLoopFutureExecuteWithoutInputWithoutOutput(
            eventLoop: EventLoop,
            functionTypeOverride: (() throws -> ())?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                try functionTypeOverride()
                promise.succeed(())
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride()
        }

        promise.succeed(())
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) throws -> OutputType)?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                let overrideResult = try functionTypeOverride(input)
                promise.succeed(overrideResult)
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride(input)
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) throws -> ())?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                try functionTypeOverride(input)
                promise.succeed(())
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride(input)
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: (() throws -> OutputType)?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                let overrideResult = try functionTypeOverride()
                promise.succeed(overrideResult)
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride()
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithoutOutput(
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: (() throws -> ())?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionTypeOverride = functionTypeOverride {
            do {
                try functionTypeOverride()
                promise.succeed(())
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride()
        }

        promise.fail(defaultError)
        
        return promise.futureResult
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
