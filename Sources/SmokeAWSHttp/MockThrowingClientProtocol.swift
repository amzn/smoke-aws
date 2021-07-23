//
//  MockThrowingClientProtocol.swift
//

import NIO
import NIOHTTP1

public protocol MockThrowingClientProtocol {

}

/**
 Implementations for a mock service client.
 
 A function override directly returning a result and/or an EventLoopFuture override returning an
 `EventLoopFuture` that will provide a result at a later time can be provided.
 
 If the function override is provided, the implementation will return - via a future - the result
 provided by this override or will throw any error thrown by the override.
 
 Otherwise, if the `EventLoopFuture` override is provided, the implementation will return the result
 provided by the `EventLoopFuture` or will throw any error that fails the future. This override is ignored if the first
 function override is provided.
 
 Otherwise, the implementation will throw the error provided.
 */
public extension MockThrowingClientProtocol {
    
    func mockThrowingEventLoopFutureExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: ((InputType) throws -> OutputType)?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: OutputType.self)
            
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

        let promise = eventLoop.makePromise(of: OutputType.self)
        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: ((InputType) throws -> ())?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: Void.self)
            
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

        let promise = eventLoop.makePromise(of: Void.self)
        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: (() throws -> OutputType)?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: OutputType.self)
            
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

        let promise = eventLoop.makePromise(of: OutputType.self)
        promise.fail(defaultError)
        
        return promise.futureResult
    }
    
    func mockThrowingEventLoopFutureExecuteWithoutInputWithoutOutput(
            defaultError: Error,
            eventLoop: EventLoop,
            functionOverride: (() throws -> ())?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: Void.self)
            
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

        let promise = eventLoop.makePromise(of: Void.self)
        promise.fail(defaultError)
        
        return promise.futureResult
    }
}
