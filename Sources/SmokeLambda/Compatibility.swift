//
//  Compatibility.swift
//  SmokeLambda
//

import AWSLambdaRuntime
import NIO

// Duplicate of swift-aws-lambda-runtime until that dependency changes its availability annotations

internal protocol AsyncLambdaHandler: EventLoopLambdaHandler {
    /// The Lambda handling method
    /// Concrete Lambda handlers implement this method to provide the Lambda functionality.
    ///
    /// - parameters:
    ///     - event: Event of type `In` representing the event or request.
    ///     - context: Runtime `Context`.
    ///
    /// - Returns: A Lambda result of type `Out`.
    func handle(event: In, context: Lambda.Context) async throws -> Out
}

extension AsyncLambdaHandler {
    func handle(context: Lambda.Context, event: In) -> EventLoopFuture<Out> {
        let promise = context.eventLoop.makePromise(of: Out.self)
        promise.completeWithTask {
            try await self.handle(event: event, context: context)
        }
        return promise.futureResult
    }
}

// Duplicate of https://github.com/JohnSundell/CollectionConcurrencyKit to avoid dependency

internal extension Sequence {
    /// Run an async closure for each element within the sequence.
    ///
    /// The closure calls will be performed concurrently, but the call
    /// to this function won't return until all of the closure calls
    /// have completed. If any of the closure calls throw an error,
    /// then the first error will be rethrown once all closure calls have
    /// completed.
    ///
    /// - parameter priority: Any specific `TaskPriority` to assign to
    ///   the async tasks that will perform the closure calls. The
    ///   default is `nil` (meaning that the system picks a priority).
    /// - parameter operation: The closure to run for each element.
    /// - throws: Rethrows any error thrown by the passed closure.
    func concurrentForEach(
        withPriority priority: TaskPriority? = nil,
        _ operation: @escaping (Element) async throws -> Void
    ) async throws {
        try await withThrowingTaskGroup(of: Void.self) { group in
            for element in self {
                group.addTask(priority: priority) {
                    try await operation(element)
                }
            }

            // Propagate any errors thrown by the group's tasks:
            for try await _ in group {}
        }
    }
}
