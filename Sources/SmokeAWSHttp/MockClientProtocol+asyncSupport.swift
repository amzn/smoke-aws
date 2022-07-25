// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  MockClientProtocol+asyncSupport.swift
//  SmokeAWSHttp
//

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

import NIO

/**
 Implementations for a mock service client.
 
 An async function override directly returning a result and/or an EventLoopFuture override returning an
 `EventLoopFuture` that will provide a result at a later time can be provided.
 
 If the function override is provided, the implementation will return - directly or via a future - the result provided
 by this override or will throw any error thrown by the override.
 
 Otherwise, if the `EventLoopFuture` override is provided, the implementation will return the result
 provided by the `EventLoopFuture` or will throw any error that fails the future. This override is ignored if the first
 function override is provided.
 
 Otherwise, the implementation will return the default value provided.
 */
public extension MockClientProtocol {
    
    func mockAsyncAwareEventLoopFutureExecuteWithInputWithOutput<InputType: Sendable, OutputType>(
            input: InputType,
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionOverride: (@Sendable (InputType) async throws -> OutputType)?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: OutputType.self)
            
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

        let promise = eventLoop.makePromise(of: OutputType.self)
        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
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
    
    func mockAsyncAwareEventLoopFutureExecuteWithInputWithoutOutput<InputType: Sendable>(
            input: InputType,
            eventLoop: EventLoop,
            functionOverride: (@Sendable (InputType) async throws -> ())?,
            eventLoopFutureFunctionOverride: ((InputType) -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: Void.self)
            
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

        let promise = eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }
    
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
    
    func mockAsyncAwareEventLoopFutureExecuteWithoutInputWithOutput<OutputType>(
            defaultResult: OutputType,
            eventLoop: EventLoop,
            functionOverride: (@Sendable () async throws -> OutputType)?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<OutputType>)?) -> EventLoopFuture<OutputType> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: OutputType.self)
            
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

        let promise = eventLoop.makePromise(of: OutputType.self)
        promise.succeed(defaultResult)
        
        return promise.futureResult
    }
    
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
    
    func mockAsyncAwareEventLoopFutureExecuteWithoutInputWithoutOutput(
            eventLoop: EventLoop,
            functionOverride: (@Sendable () async throws -> ())?,
            eventLoopFutureFunctionOverride: (() -> EventLoopFuture<Void>)?) -> EventLoopFuture<Void> {
        if let functionOverride = functionOverride {
            let promise = eventLoop.makePromise(of: Void.self)
            
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

        let promise = eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }
    
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
