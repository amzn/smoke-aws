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
// SimpleWorkflowClientProtocol+async.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the SimpleWorkflowClientProtocol type.
 */
public extension SimpleWorkflowClientProtocol {

    /**
     Invokes the CountClosedWorkflowExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutions(input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) async throws
     -> SimpleWorkflowModel.WorkflowExecutionCount {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try countClosedWorkflowExecutionsAsync(input: input) { result in
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
     Invokes the CountOpenWorkflowExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutions(input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) async throws
     -> SimpleWorkflowModel.WorkflowExecutionCount {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try countOpenWorkflowExecutionsAsync(input: input) { result in
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
     Invokes the CountPendingActivityTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasks(input: SimpleWorkflowModel.CountPendingActivityTasksInput) async throws
     -> SimpleWorkflowModel.PendingTaskCount {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try countPendingActivityTasksAsync(input: input) { result in
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
     Invokes the CountPendingDecisionTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasks(input: SimpleWorkflowModel.CountPendingDecisionTasksInput) async throws
     -> SimpleWorkflowModel.PendingTaskCount {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try countPendingDecisionTasksAsync(input: input) { result in
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
     Invokes the DeprecateActivityType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityType(input: SimpleWorkflowModel.DeprecateActivityTypeInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deprecateActivityTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeprecateDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomain(input: SimpleWorkflowModel.DeprecateDomainInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deprecateDomainAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeprecateWorkflowType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowType(input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deprecateWorkflowTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeActivityType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeActivityType(input: SimpleWorkflowModel.DescribeActivityTypeInput) async throws
     -> SimpleWorkflowModel.ActivityTypeDetail {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeActivityTypeAsync(input: input) { result in
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
     Invokes the DescribeDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeDomain(input: SimpleWorkflowModel.DescribeDomainInput) async throws
     -> SimpleWorkflowModel.DomainDetail {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeDomainAsync(input: input) { result in
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
     Invokes the DescribeWorkflowExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecution(input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) async throws
     -> SimpleWorkflowModel.WorkflowExecutionDetail {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeWorkflowExecutionAsync(input: input) { result in
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
     Invokes the DescribeWorkflowType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowType(input: SimpleWorkflowModel.DescribeWorkflowTypeInput) async throws
     -> SimpleWorkflowModel.WorkflowTypeDetail {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeWorkflowTypeAsync(input: input) { result in
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
     Invokes the GetWorkflowExecutionHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistory(input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) async throws
     -> SimpleWorkflowModel.History {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getWorkflowExecutionHistoryAsync(input: input) { result in
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
     Invokes the ListActivityTypes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listActivityTypes(input: SimpleWorkflowModel.ListActivityTypesInput) async throws
     -> SimpleWorkflowModel.ActivityTypeInfos {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listActivityTypesAsync(input: input) { result in
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
     Invokes the ListClosedWorkflowExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutions(input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) async throws
     -> SimpleWorkflowModel.WorkflowExecutionInfos {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listClosedWorkflowExecutionsAsync(input: input) { result in
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
     Invokes the ListDomains operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    func listDomains(input: SimpleWorkflowModel.ListDomainsInput) async throws
     -> SimpleWorkflowModel.DomainInfos {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listDomainsAsync(input: input) { result in
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
     Invokes the ListOpenWorkflowExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutions(input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) async throws
     -> SimpleWorkflowModel.WorkflowExecutionInfos {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listOpenWorkflowExecutionsAsync(input: input) { result in
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
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResource(input: SimpleWorkflowModel.ListTagsForResourceInput) async throws
     -> SimpleWorkflowModel.ListTagsForResourceOutput {
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
     Invokes the ListWorkflowTypes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypes(input: SimpleWorkflowModel.ListWorkflowTypesInput) async throws
     -> SimpleWorkflowModel.WorkflowTypeInfos {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listWorkflowTypesAsync(input: input) { result in
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
     Invokes the PollForActivityTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTask(input: SimpleWorkflowModel.PollForActivityTaskInput) async throws
     -> SimpleWorkflowModel.ActivityTask {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try pollForActivityTaskAsync(input: input) { result in
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
     Invokes the PollForDecisionTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTask(input: SimpleWorkflowModel.PollForDecisionTaskInput) async throws
     -> SimpleWorkflowModel.DecisionTask {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try pollForDecisionTaskAsync(input: input) { result in
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
     Invokes the RecordActivityTaskHeartbeat operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeat(input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) async throws
     -> SimpleWorkflowModel.ActivityTaskStatus {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try recordActivityTaskHeartbeatAsync(input: input) { result in
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
     Invokes the RegisterActivityType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityType(input: SimpleWorkflowModel.RegisterActivityTypeInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerActivityTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomain(input: SimpleWorkflowModel.RegisterDomainInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerDomainAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterWorkflowType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowType(input: SimpleWorkflowModel.RegisterWorkflowTypeInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try registerWorkflowTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecution(input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try requestCancelWorkflowExecutionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RespondActivityTaskCanceled operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceled(input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try respondActivityTaskCanceledAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RespondActivityTaskCompleted operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompleted(input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try respondActivityTaskCompletedAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RespondActivityTaskFailed operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailed(input: SimpleWorkflowModel.RespondActivityTaskFailedInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try respondActivityTaskFailedAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompleted(input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try respondDecisionTaskCompletedAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SignalWorkflowExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecution(input: SimpleWorkflowModel.SignalWorkflowExecutionInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try signalWorkflowExecutionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartWorkflowExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecution(input: SimpleWorkflowModel.StartWorkflowExecutionInput) async throws
     -> SimpleWorkflowModel.Run {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startWorkflowExecutionAsync(input: input) { result in
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
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResource(input: SimpleWorkflowModel.TagResourceInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TerminateWorkflowExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecution(input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try terminateWorkflowExecutionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UndeprecateActivityType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityType(input: SimpleWorkflowModel.UndeprecateActivityTypeInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try undeprecateActivityTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UndeprecateDomain operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomain(input: SimpleWorkflowModel.UndeprecateDomainInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try undeprecateDomainAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UndeprecateWorkflowType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowType(input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try undeprecateWorkflowTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
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
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResource(input: SimpleWorkflowModel.UntagResourceInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
