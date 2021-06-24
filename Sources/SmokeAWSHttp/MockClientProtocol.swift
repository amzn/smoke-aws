//
// MockClientProtocol.swift
//

import NIO

public protocol MockClientProtocol {

}

public extension MockClientProtocol {
    
    func mockEventLoopFutureExecuteWithInputWithOutput<InputType, OutputType>(
            input: InputType,
            defaultResult: OutputType,
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

        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
    func mockEventLoopFutureExecuteWithInputWithoutOutput<InputType>(
            input: InputType,
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

        promise.succeed(())
        
        return promise.futureResult
    }
    
    func mockEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultResult: OutputType,
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

        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
    func mockEventLoopFutureExecuteWithoutInputWithoutOutput(
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

        promise.succeed(())
        
        return promise.futureResult
    }
}
