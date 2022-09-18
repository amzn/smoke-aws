//
//  SmokeJSONLambdaInitializer.swift
//  SmokeLambda
//

import AWSLambdaRuntime
import Foundation
import SmokeLambdaEvents
import NIO

/**
    Creates a lambda that accepts incoming JSON messages
 */
public protocol SmokeJSONLambdaInitializer {
    associatedtype InvocationContextType
    associatedtype RequestType: Decodable
    associatedtype ResponseType: Encodable
    
    var eventHandlerProvider: ((InvocationContextType) -> (RequestType) async throws -> ResponseType) { get }
    
    init(context: Lambda.InitializationContext) async throws
    
    func getInvocationContext(context: Lambda.Context) -> InvocationContextType
    
    func onShutdown() async throws
}

public extension SmokeJSONLambdaInitializer {
    static func main() async {
        Lambda.run { context -> EventLoopFuture<ByteBufferLambdaHandler> in
            let promise = context.eventLoop.makePromise(of: ByteBufferLambdaHandler.self)
            
            promise.completeWithTask {
                let initializer = try await Self.init(context: context)
                
                return SmokeJSONLambdaHandler<InvocationContextType, Self>(initializer: initializer)
            }
            
            return promise.futureResult
        }
    }
}

private struct SmokeJSONLambdaHandler<InvocationContextType,
                                      InitializerType: SmokeJSONLambdaInitializer>: AsyncLambdaHandler {
    
    typealias In = InitializerType.RequestType
    typealias Out = InitializerType.ResponseType
    
    let initializer: InitializerType
    
    func handle(event: In, context: Lambda.Context) async throws -> Out {
        let invocationContextType = self.initializer.getInvocationContext(context: context)
        let eventHandler = self.initializer.eventHandlerProvider(invocationContextType)
        
        return try await eventHandler(event)
    }
    
    func shutdown(context: Lambda.ShutdownContext) -> EventLoopFuture<Void> {
        let promise = context.eventLoop.makePromise(of: Void.self)
        promise.completeWithTask {
            try await self.initializer.onShutdown()
        }
        return promise.futureResult
    }
}
