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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// StepFunctionsClientProtocol+async.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the StepFunctionsClientProtocol type.
 */
public extension StepFunctionsClientProtocol {

    /**
     Invokes the CreateActivity operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivity(input: StepFunctionsModel.CreateActivityInput) async throws
     -> StepFunctionsModel.CreateActivityOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createActivityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateStateMachine operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    func createStateMachine(input: StepFunctionsModel.CreateStateMachineInput) async throws
     -> StepFunctionsModel.CreateStateMachineOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createStateMachineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteActivity operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteActivity(input: StepFunctionsModel.DeleteActivityInput) async throws
     -> StepFunctionsModel.DeleteActivityOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteActivityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteStateMachine operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, validation.
     */
    func deleteStateMachine(input: StepFunctionsModel.DeleteStateMachineInput) async throws
     -> StepFunctionsModel.DeleteStateMachineOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteStateMachineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeActivity operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    func describeActivity(input: StepFunctionsModel.DescribeActivityInput) async throws
     -> StepFunctionsModel.DescribeActivityOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeActivityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeExecution(input: StepFunctionsModel.DescribeExecutionInput) async throws
     -> StepFunctionsModel.DescribeExecutionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeMapRun operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
     - Returns: The DescribeMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func describeMapRun(input: StepFunctionsModel.DescribeMapRunInput) async throws
     -> StepFunctionsModel.DescribeMapRunOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeMapRunAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStateMachine operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachine(input: StepFunctionsModel.DescribeStateMachineInput) async throws
     -> StepFunctionsModel.DescribeStateMachineOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStateMachineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeStateMachineForExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecution(input: StepFunctionsModel.DescribeStateMachineForExecutionInput) async throws
     -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeStateMachineForExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetActivityTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTask(input: StepFunctionsModel.GetActivityTaskInput) async throws
     -> StepFunctionsModel.GetActivityTaskOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getActivityTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetExecutionHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistory(input: StepFunctionsModel.GetExecutionHistoryInput) async throws
     -> StepFunctionsModel.GetExecutionHistoryOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getExecutionHistoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListActivities operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listActivities(input: StepFunctionsModel.ListActivitiesInput) async throws
     -> StepFunctionsModel.ListActivitiesOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listActivitiesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    func listExecutions(input: StepFunctionsModel.ListExecutionsInput) async throws
     -> StepFunctionsModel.ListExecutionsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listExecutionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListMapRuns operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
     - Returns: The ListMapRunsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func listMapRuns(input: StepFunctionsModel.ListMapRunsInput) async throws
     -> StepFunctionsModel.ListMapRunsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listMapRunsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListStateMachines operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listStateMachines(input: StepFunctionsModel.ListStateMachinesInput) async throws
     -> StepFunctionsModel.ListStateMachinesOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listStateMachinesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func listTagsForResource(input: StepFunctionsModel.ListTagsForResourceInput) async throws
     -> StepFunctionsModel.ListTagsForResourceOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SendTaskFailure operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailure(input: StepFunctionsModel.SendTaskFailureInput) async throws
     -> StepFunctionsModel.SendTaskFailureOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try sendTaskFailureAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SendTaskHeartbeat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeat(input: StepFunctionsModel.SendTaskHeartbeatInput) async throws
     -> StepFunctionsModel.SendTaskHeartbeatOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try sendTaskHeartbeatAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SendTaskSuccess operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccess(input: StepFunctionsModel.SendTaskSuccessInput) async throws
     -> StepFunctionsModel.SendTaskSuccessOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try sendTaskSuccessAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    func startExecution(input: StepFunctionsModel.StartExecutionInput) async throws
     -> StepFunctionsModel.StartExecutionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartSyncExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: The StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    func startSyncExecution(input: StepFunctionsModel.StartSyncExecutionInput) async throws
     -> StepFunctionsModel.StartSyncExecutionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startSyncExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, validation.
     */
    func stopExecution(input: StepFunctionsModel.StopExecutionInput) async throws
     -> StepFunctionsModel.StopExecutionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try stopExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResource(input: StepFunctionsModel.TagResourceInput) async throws
     -> StepFunctionsModel.TagResourceOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func untagResource(input: StepFunctionsModel.UntagResourceInput) async throws
     -> StepFunctionsModel.UntagResourceOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateMapRun operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
     - Returns: The UpdateMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    func updateMapRun(input: StepFunctionsModel.UpdateMapRunInput) async throws
     -> StepFunctionsModel.UpdateMapRunOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateMapRunAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateStateMachine operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    func updateStateMachine(input: StepFunctionsModel.UpdateStateMachineInput) async throws
     -> StepFunctionsModel.UpdateStateMachineOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateStateMachineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
