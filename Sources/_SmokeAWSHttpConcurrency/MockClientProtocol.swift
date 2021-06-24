//
//  MockClientProtocol.swift
//

#if compiler(>=5.5)

import NIO
import SmokeAWSHttp
import _SmokeHTTPClientConcurrency

public extension MockClientProtocol {
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockAsyncAwareEventLoopFutureExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionOverride: ((InputType) async throws -> OutputType)?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionOverride = functionOverride {
            Task {
                do {
                    let overrideResult = try await functionOverride(input)
                    promise.succeed(overrideResult)
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride(input)
        }

        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionOverride: ((InputType) async throws -> OutputType)?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<OutputType>)?) async throws -> OutputType {
        if let functionOverride = functionOverride {
            return try await functionOverride(input)
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return try await eventLoopFutureFunctionOverride(input).get()
        }
        
        return defaultResult
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockAsyncAwareEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            eventLoop: EventLoop,
            functionOverride: ((InputType) async throws -> ())?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionOverride = functionOverride {
            Task {
                do {
                    try await functionOverride(input)
                    promise.succeed(())
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride(input)
        }

        promise.succeed(())
        
        return promise.futureResult
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            eventLoop: EventLoop,
            functionOverride: ((InputType) async throws -> ())?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<Void>)?) async throws {
        if let functionOverride = functionOverride {
            try await functionOverride(input)
            
            return
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            try await eventLoopFutureFunctionOverride(input).get()
            
            return
        }
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockAsyncAwareEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionOverride: (() async throws -> OutputType)?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionOverride = functionOverride {
            Task {
                do {
                    let overrideResult = try await functionOverride()
                    promise.succeed(overrideResult)
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride()
        }

        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockExecuteWithoutInputWithOutput<OutputType>(
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionOverride: (() async throws -> OutputType)?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<OutputType>)?) async throws -> OutputType {
        if let functionOverride = functionOverride {
            return try await functionOverride()
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return try await eventLoopFutureFunctionOverride().get()
        }
        
        return defaultResult
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockAsyncAwareEventLoopFutureExecuteWithoutInputWithoutOutput(
            eventLoop: EventLoop,
            functionOverride: (() async throws -> ())?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionOverride = functionOverride {
            Task {
                do {
                    try await functionOverride()
                    promise.succeed(())
                } catch {
                    promise.fail(error)
                }
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride()
        }

        promise.succeed(())
        
        return promise.futureResult
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func mockExecuteWithoutInputWithoutOutput(
            eventLoop: EventLoop,
            functionOverride: (() async throws -> ())?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<Void>)?) async throws {
        if let functionOverride = functionOverride {
            try await functionOverride()
        
            return
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            try await eventLoopFutureFunctionOverride().get()
            
            return
        }
    }
}

#endif
