//
//  SmokeSQSSNSFanoutLambdaInitializer.swift
//  SmokeLambda
//

import Foundation
import AWSLambdaRuntime
import SmokeLambdaEvents
import NIO

/**
 Creates a lambda that accepts incoming SQS message payloads that are the result of a fanout from an SNS topic.
 Returns a list of the failed message IDs to make them visible again in the queue.
 */
public protocol SmokeSQSSNSFanoutLambdaInitializer {
    associatedtype InvocationContextType
    associatedtype BodyDecoder: StringifiedDecoder where BodyDecoder.BodyType: SNSTypedMessageProtocol
    associatedtype MessageType: Decodable where MessageType == BodyDecoder.BodyType.MessageType
    
    var eventHandlerProvider: ((InvocationContextType) -> (BodyDecoder.BodyType.MessageType) async throws -> Void) { get }
    
    init(context: Lambda.InitializationContext) async throws
    
    func getInvocationContext(context: Lambda.Context) -> InvocationContextType
    
    func onShutdown() async throws
}

public extension SmokeSQSSNSFanoutLambdaInitializer {
    static func main() {
        Lambda.run { context -> EventLoopFuture<ByteBufferLambdaHandler> in
            let promise = context.eventLoop.makePromise(of: ByteBufferLambdaHandler.self)
            promise.completeWithTask {
                let initializer = try await Self.init(context: context)
                
                return SmokeSQSSNSFanoutLambdaHandler<InvocationContextType, Self>(initializer: initializer)
            }
            return promise.futureResult
        }
    }
}

public protocol SmokeJSONMessageSQSSNSFanoutLambdaInitializer: SmokeSQSSNSFanoutLambdaInitializer
        where BodyDecoder == JSONStringifiedDecoder<SQSEventSource.TypedJSONBodySNSFanoutMessage<MessageType>> {
    
}

private struct SmokeSQSSNSFanoutLambdaHandler<InvocationContextType,
                                              InitializerType: SmokeSQSSNSFanoutLambdaInitializer>: AsyncLambdaHandler {
    typealias In = SQSEventSource.TypedSNSFanoutEvent<InitializerType.BodyDecoder>
    typealias Out = SQSBatchResponse
    
    let initializer: InitializerType
}

extension SmokeSQSSNSFanoutLambdaHandler {
    func handle(event: In, context: Lambda.Context) async throws -> Out {
        let invocationContextType = self.initializer.getInvocationContext(context: context)
        let eventHandler = self.initializer.eventHandlerProvider(invocationContextType)
        
        return await withTaskGroup(of: BatchItemFailure?.self) { group -> SQSBatchResponse in
            for record in event.records {
                group.addTask {
                    do {
                        try await eventHandler(record.body.message)
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
