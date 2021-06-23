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
}
