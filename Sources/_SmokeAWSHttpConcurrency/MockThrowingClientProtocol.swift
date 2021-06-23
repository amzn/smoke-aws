//
//  MockThrowingClientProtocol.swift
//

#if compiler(>=5.5) && $AsyncAwait

import NIO
import SmokeAWSHttp
import _SmokeHTTPClientConcurrency

public extension MockThrowingClientProtocol {
    
    func mockThrowingEventLoopFutureExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) async throws -> OutputType)?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionTypeOverride = functionTypeOverride {
            Task {
                do {
                    let overrideResult = try await functionTypeOverride(input)
                    promise.succeed(overrideResult)
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride(input)
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    func mockThrowingExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) async throws -> OutputType)?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<OutputType>)?) async throws -> OutputType {
        if let functionTypeOverride = functionTypeOverride {
            return try await functionTypeOverride(input)
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return try await eventLoopFutureTypeOverride(input).get()
        }

        throw defaultError
    }
    
    func mockThrowingEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) async throws -> ())?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionTypeOverride = functionTypeOverride {
            Task {
                do {
                    try await functionTypeOverride(input)
                    promise.succeed(())
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride(input)
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    func mockThrowingExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: ((InputType) async throws -> ())?,
            eventLoopFutureTypeOverride: ((InputType) -> EventLoopFuture<Void>)?) async throws {
        if let functionTypeOverride = functionTypeOverride {
            try await functionTypeOverride(input)
        
            return
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            try await eventLoopFutureTypeOverride(input).get()
            
            return
        }

        throw defaultError
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: (() async throws -> OutputType)?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionTypeOverride = functionTypeOverride {
            Task {
                do {
                    let overrideResult = try await functionTypeOverride()
                    promise.succeed(overrideResult)
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride()
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    func mockThrowingExecuteWithoutInputWithOutput<OutputType>(
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: (() async throws -> OutputType)?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<OutputType>)?) async throws -> OutputType {
        if let functionTypeOverride = functionTypeOverride {
            return try await functionTypeOverride()
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return try await eventLoopFutureTypeOverride().get()
        }

        throw defaultError
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithoutOutput(
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: (() async throws -> ())?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionTypeOverride = functionTypeOverride {
            Task {
                do {
                    try await functionTypeOverride()
                    promise.succeed(())
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            return eventLoopFutureTypeOverride()
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    func mockThrowingExecuteWithoutInputWithoutOutput(
            defaultError: Error,
            eventLoop: EventLoop,
            functionTypeOverride: (() async throws -> ())?,
            eventLoopFutureTypeOverride: (() -> EventLoopFuture<Void>)?) async throws {
        if let functionTypeOverride = functionTypeOverride {
            try await functionTypeOverride()
        
            return
        }

        if let eventLoopFutureTypeOverride = eventLoopFutureTypeOverride {
            try await eventLoopFutureTypeOverride().get()
            
            return
        }

        throw defaultError
    }
}

#endif
