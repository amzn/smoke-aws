//
//  SmokeSQSLambdaInitializer.swift
//  SmokeLambda
//

import Foundation
import AWSLambdaRuntime
import SmokeLambdaEvents
import NIO

/**
 Creates a lambda that accepts incoming SQS message payloads.
 */
public protocol SmokeSQSLambdaInitializer {
    associatedtype InvocationContextType
    associatedtype BodyDecoder: StringifiedDecoder
    associatedtype BodyType: Decodable where BodyType == BodyDecoder.BodyType
    
    var eventHandlerProvider: ((InvocationContextType) -> (BodyDecoder.BodyType) async throws -> Void) { get }
    
    init(context: Lambda.InitializationContext) async throws
    
    func getInvocationContext(context: Lambda.Context) -> InvocationContextType
    
    func onShutdown() async throws
}

public extension SmokeSQSLambdaInitializer {
    static func main() {
        Lambda.run { context -> EventLoopFuture<ByteBufferLambdaHandler> in
            let promise = context.eventLoop.makePromise(of: ByteBufferLambdaHandler.self)
            promise.completeWithTask {
                let initializer = try await Self.init(context: context)
                
                return SmokeSQSLambdaHandler<InvocationContextType, Self>(initializer: initializer)
            }
            return promise.futureResult
        }
    }
}

public protocol SmokeJSONBodySQSLambdaInitializer: SmokeSQSLambdaInitializer
        where BodyDecoder == JSONStringifiedDecoder<BodyType> {
    
}

private struct SmokeSQSLambdaHandler<InvocationContextType,
                                     InitializerType: SmokeSQSLambdaInitializer>: AsyncLambdaHandler {
    typealias In = SQSEventSource.TypedEvent<InitializerType.BodyDecoder>
    typealias Out = SQSBatchResponse
    
    let initializer: InitializerType
}

extension SmokeSQSLambdaHandler {
    func handle(event: In, context: Lambda.Context) async throws -> Out {
        let invocationContextType = self.initializer.getInvocationContext(context: context)
        let eventHandler = self.initializer.eventHandlerProvider(invocationContextType)

        return await withTaskGroup(of: BatchItemFailure?.self) { group -> SQSBatchResponse in
            for record in event.records {
                group.addTask {
                    do {
                        try await eventHandler(record.body)
                    } catch {
                        context.logger.error("SQS message \(record.messageId) failed due to error: \(String(describing: error))")
                        return BatchItemFailure(itemIdentifier: record.messageId)
                    }
                    return nil
                }
            }

            var batchItemFailures = [BatchItemFailure]()
            for await batchItemFailure in group {
                if let batchItemFailure = batchItemFailure {
                    batchItemFailures.append(batchItemFailure)
                }
            }

            return SQSBatchResponse(batchItemFailures: batchItemFailures)
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
