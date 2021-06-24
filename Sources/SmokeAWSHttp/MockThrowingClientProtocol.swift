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
            functionOverride: ((InputType) throws -> OutputType)?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionOverride = functionOverride {
            do {
                let overrideResult = try functionOverride(input)
                promise.succeed(overrideResult)
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride(input)
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: ((InputType) throws -> ())?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionOverride = functionOverride {
            do {
                try functionOverride(input)
                promise.succeed(())
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride(input)
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: (() throws -> OutputType)?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        let promise = eventLoop.makePromise(of: OutputType.self)
        
        if let functionOverride = functionOverride {
            do {
                let overrideResult = try functionOverride()
                promise.succeed(overrideResult)
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride()
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithoutOutput(
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: (() throws -> ())?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        let promise = eventLoop.makePromise(of: Void.self)
        
        if let functionOverride = functionOverride {
            do {
                try functionOverride()
                promise.succeed(())
            } catch {
                promise.fail(error)
            }
        
            return promise.futureResult
        }

        if let eventLoopFutureFunctionOverride = eventLoopFutureFunctionOverride {
            return eventLoopFutureFunctionOverride()
        }

        promise.fail(defaultError)
        
        return promise.futureResult
    }
}
