//
//  SmokeStepFunctionWithTaskTokenLambdaInitializer.swift
//  SmokeLambda
//

import AWSLambdaRuntime
import Foundation
import NIO
import SmokeLambdaEvents
import StepFunctionsClient

public protocol SmokeStepFunctionWithTaskTokenLambdaInvocationContextProtocol {
    var stepFunctionsClient: StepFunctionsClientProtocol { get }
}

/**
 Creates a lambda that accepts a Step Functions payload containing an activity task token to support the callback pattern.
 https://docs.aws.amazon.com/step-functions/latest/dg/connect-lambda.html
 */
public protocol SmokeStepFunctionWithTaskTokenLambdaInitializer {
    associatedtype InvocationContextType: SmokeStepFunctionWithTaskTokenLambdaInvocationContextProtocol
    associatedtype RequestType: Decodable
    associatedtype ResponseType: Encodable
    
    var eventHandlerProvider: ((InvocationContextType) -> (RequestType, ActivityTaskToken) async throws -> ResponseType?) { get }
    
    init(context: Lambda.InitializationContext) async throws
    
    func getInvocationContext(context: Lambda.Context) -> InvocationContextType
    
    func onShutdown() async throws
}

public extension SmokeStepFunctionWithTaskTokenLambdaInitializer {
    static func main() {
        Lambda.run { context -> EventLoopFuture<ByteBufferLambdaHandler> in
            let promise = context.eventLoop.makePromise(of: ByteBufferLambdaHandler.self)
            promise.completeWithTask {
                let initializer = try await Self.init(context: context)
                
                return SmokeStepFunctionWithTaskTokenLambdaHandler<InvocationContextType, Self>(initializer: initializer)
            }
            return promise.futureResult
        }
    }
}

private struct SmokeStepFunctionWithTaskTokenLambdaHandler<InvocationContextType,
                                                           InitializerType: SmokeStepFunctionWithTaskTokenLambdaInitializer>: AsyncLambdaHandler {
    typealias In = StepFunctionsEventSource<InitializerType.RequestType>
    typealias Out = Void
    
    let initializer: InitializerType
    
    func handle(event: In, context: Lambda.Context) async throws -> Out {
        let invocationContextType = self.initializer.getInvocationContext(context: context)
        let eventHandler = self.initializer.eventHandlerProvider(invocationContextType)
        
        let payload = event.payload
        let taskToken = event.token
        context.logger.debug("Calling event handler with payload: \(payload) and task token: \(taskToken)")

        do {
      
            guard let handlerResponse = try await eventHandler(payload, taskToken) else {
                // Handler did not return a response, activity will wait until it is completed with the task token
                context.logger.debug("Event handler finished executing. Activity will wait for task token.")
                return
            }
            
            // Handler returned a response, notify the StepFunctions client to complete the activity
            context.logger.debug("Handler completed with response \(handlerResponse). Calling `SendTaskSuccess` StepFunctions API to successfully complete activity.")
            let responseJSONString = try self.toJSONString(response: handlerResponse)
            _ = try await invocationContextType.stepFunctionsClient.sendTaskSuccess(input: .init(output: responseJSONString,
                                                                                                 taskToken: taskToken))
        } catch SmokeStepFunctionWithTaskTokenLambdaHandlerError.invalidHandlerResponse {
            let errorMessage = "Unable to convert handler response to JSON. Calling `SendTaskFailure` StepFunctions API to terminate activity with failure."
            context.logger.error("\(errorMessage)")
            _ = try await invocationContextType.stepFunctionsClient.sendTaskFailure(input: .init(error: errorMessage,
                                                                                                 taskToken: taskToken))
            return
        } catch {
            context.logger.error("Lambda handler threw error: \(error). Calling `SendTaskFailure` StepFunctions API to terminate activity with failure.")
            _ = try await invocationContextType.stepFunctionsClient.sendTaskFailure(input: .init(error: error.localizedDescription,
                                                                                                 taskToken: taskToken))
            return
        }
    }
    
    func shutdown(context: Lambda.ShutdownContext) -> EventLoopFuture<Void> {
        let promise = context.eventLoop.makePromise(of: Void.self)
        promise.completeWithTask {
            try await self.initializer.onShutdown()
        }
        return promise.futureResult
    }
    
    private func toJSONString(response: InitializerType.ResponseType) throws -> String {
        let encoder = JSONEncoder()
        let encodedResponse = try encoder.encode(response)
        guard let responseString = String(data: encodedResponse, encoding: .utf8) else {
            throw SmokeStepFunctionWithTaskTokenLambdaHandlerError.invalidHandlerResponse
        }
        
        return responseString
    }
}

enum SmokeStepFunctionWithTaskTokenLambdaHandlerError: Error {
    case invalidHandlerResponse
}
