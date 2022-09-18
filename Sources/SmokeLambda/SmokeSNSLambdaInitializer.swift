//
//  SmokeSNSLambdaInitializer.swift
//  SmokeLambda
//

import Foundation
import AWSLambdaRuntime
import SmokeLambdaEvents
import NIO

/**
 Creates a lambda that accepts incoming SNS message payloads.
 */
public protocol SmokeSNSLambdaInitializer {
    associatedtype InvocationContextType
    associatedtype BodyDecoder: StringifiedDecoder
    associatedtype MessageType: Decodable where MessageType == BodyDecoder.BodyType
    
    var eventHandlerProvider: ((InvocationContextType) -> (BodyDecoder.BodyType) async throws -> Void) { get }
    
    init(context: Lambda.InitializationContext) async throws
    
    func getInvocationContext(context: Lambda.Context) -> InvocationContextType
    
    func onShutdown() async throws
}

public extension SmokeSNSLambdaInitializer {
    static func main() {
        Lambda.run { context -> EventLoopFuture<ByteBufferLambdaHandler> in
            let promise = context.eventLoop.makePromise(of: ByteBufferLambdaHandler.self)
            promise.completeWithTask {
                let initializer = try await Self.init(context: context)
                
                return SmokeSNSLambdaHandler<InvocationContextType, Self>(initializer: initializer)
            }
            return promise.futureResult
        }
    }
}

public protocol SmokeJSONMessageSNSLambdaInitializer: SmokeSNSLambdaInitializer
        where BodyDecoder == JSONStringifiedDecoder<MessageType> {
    
}

private struct SmokeSNSLambdaHandler<InvocationContextType,
                                     InitializerType: SmokeSNSLambdaInitializer>: AsyncLambdaHandler {
    typealias In = SNSEventSource.TypedEvent<InitializerType.BodyDecoder>
    typealias Out = Void
    
    let initializer: InitializerType
}

extension SmokeSNSLambdaHandler {
    func handle(event: In, context: Lambda.Context) async throws -> Out {
        let invocationContextType = self.initializer.getInvocationContext(context: context)
        let eventHandler = self.initializer.eventHandlerProvider(invocationContextType)
        
        try await event.records.concurrentForEach { record in
            try await eventHandler(record.sns.message)
        }
    }
    
    func shutdown(context: Lambda.ShutdownContext) -> EventLoopFuture<Void> {
        let promise = context.eventLoop.makePromise(of: Void.self)
        promise.completeWithTask {
            try await self.initializer.onShutdown()
        }
        return promise.futureResult
    }
}
