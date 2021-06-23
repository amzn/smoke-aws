//
//  MockThrowingClientProtocol.swift
//

import NIO
import NIOHTTP1

public protocol MockThrowingClientProtocol {

}

public extension MockThrowingClientProtocol {
    
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
