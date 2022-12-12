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
// ThrowingSimpleWorkflowClientV2.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleWorkflow service that by default always throws from its methods.
 */
public struct ThrowingSimpleWorkflowClientV2: SimpleWorkflowClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: SimpleWorkflowError
    let countClosedWorkflowExecutionsOverride: CountClosedWorkflowExecutionsFunctionType?
    let countOpenWorkflowExecutionsOverride: CountOpenWorkflowExecutionsFunctionType?
    let countPendingActivityTasksOverride: CountPendingActivityTasksFunctionType?
    let countPendingDecisionTasksOverride: CountPendingDecisionTasksFunctionType?
    let deprecateActivityTypeOverride: DeprecateActivityTypeFunctionType?
    let deprecateDomainOverride: DeprecateDomainFunctionType?
    let deprecateWorkflowTypeOverride: DeprecateWorkflowTypeFunctionType?
    let describeActivityTypeOverride: DescribeActivityTypeFunctionType?
    let describeDomainOverride: DescribeDomainFunctionType?
    let describeWorkflowExecutionOverride: DescribeWorkflowExecutionFunctionType?
    let describeWorkflowTypeOverride: DescribeWorkflowTypeFunctionType?
    let getWorkflowExecutionHistoryOverride: GetWorkflowExecutionHistoryFunctionType?
    let listActivityTypesOverride: ListActivityTypesFunctionType?
    let listClosedWorkflowExecutionsOverride: ListClosedWorkflowExecutionsFunctionType?
    let listDomainsOverride: ListDomainsFunctionType?
    let listOpenWorkflowExecutionsOverride: ListOpenWorkflowExecutionsFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let listWorkflowTypesOverride: ListWorkflowTypesFunctionType?
    let pollForActivityTaskOverride: PollForActivityTaskFunctionType?
    let pollForDecisionTaskOverride: PollForDecisionTaskFunctionType?
    let recordActivityTaskHeartbeatOverride: RecordActivityTaskHeartbeatFunctionType?
    let registerActivityTypeOverride: RegisterActivityTypeFunctionType?
    let registerDomainOverride: RegisterDomainFunctionType?
    let registerWorkflowTypeOverride: RegisterWorkflowTypeFunctionType?
    let requestCancelWorkflowExecutionOverride: RequestCancelWorkflowExecutionFunctionType?
    let respondActivityTaskCanceledOverride: RespondActivityTaskCanceledFunctionType?
    let respondActivityTaskCompletedOverride: RespondActivityTaskCompletedFunctionType?
    let respondActivityTaskFailedOverride: RespondActivityTaskFailedFunctionType?
    let respondDecisionTaskCompletedOverride: RespondDecisionTaskCompletedFunctionType?
    let signalWorkflowExecutionOverride: SignalWorkflowExecutionFunctionType?
    let startWorkflowExecutionOverride: StartWorkflowExecutionFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let terminateWorkflowExecutionOverride: TerminateWorkflowExecutionFunctionType?
    let undeprecateActivityTypeOverride: UndeprecateActivityTypeFunctionType?
    let undeprecateDomainOverride: UndeprecateDomainFunctionType?
    let undeprecateWorkflowTypeOverride: UndeprecateWorkflowTypeFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: SimpleWorkflowError,
            countClosedWorkflowExecutions: CountClosedWorkflowExecutionsFunctionType? = nil,
            countOpenWorkflowExecutions: CountOpenWorkflowExecutionsFunctionType? = nil,
            countPendingActivityTasks: CountPendingActivityTasksFunctionType? = nil,
            countPendingDecisionTasks: CountPendingDecisionTasksFunctionType? = nil,
            deprecateActivityType: DeprecateActivityTypeFunctionType? = nil,
            deprecateDomain: DeprecateDomainFunctionType? = nil,
            deprecateWorkflowType: DeprecateWorkflowTypeFunctionType? = nil,
            describeActivityType: DescribeActivityTypeFunctionType? = nil,
            describeDomain: DescribeDomainFunctionType? = nil,
            describeWorkflowExecution: DescribeWorkflowExecutionFunctionType? = nil,
            describeWorkflowType: DescribeWorkflowTypeFunctionType? = nil,
            getWorkflowExecutionHistory: GetWorkflowExecutionHistoryFunctionType? = nil,
            listActivityTypes: ListActivityTypesFunctionType? = nil,
            listClosedWorkflowExecutions: ListClosedWorkflowExecutionsFunctionType? = nil,
            listDomains: ListDomainsFunctionType? = nil,
            listOpenWorkflowExecutions: ListOpenWorkflowExecutionsFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            listWorkflowTypes: ListWorkflowTypesFunctionType? = nil,
            pollForActivityTask: PollForActivityTaskFunctionType? = nil,
            pollForDecisionTask: PollForDecisionTaskFunctionType? = nil,
            recordActivityTaskHeartbeat: RecordActivityTaskHeartbeatFunctionType? = nil,
            registerActivityType: RegisterActivityTypeFunctionType? = nil,
            registerDomain: RegisterDomainFunctionType? = nil,
            registerWorkflowType: RegisterWorkflowTypeFunctionType? = nil,
            requestCancelWorkflowExecution: RequestCancelWorkflowExecutionFunctionType? = nil,
            respondActivityTaskCanceled: RespondActivityTaskCanceledFunctionType? = nil,
            respondActivityTaskCompleted: RespondActivityTaskCompletedFunctionType? = nil,
            respondActivityTaskFailed: RespondActivityTaskFailedFunctionType? = nil,
            respondDecisionTaskCompleted: RespondDecisionTaskCompletedFunctionType? = nil,
            signalWorkflowExecution: SignalWorkflowExecutionFunctionType? = nil,
            startWorkflowExecution: StartWorkflowExecutionFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            terminateWorkflowExecution: TerminateWorkflowExecutionFunctionType? = nil,
            undeprecateActivityType: UndeprecateActivityTypeFunctionType? = nil,
            undeprecateDomain: UndeprecateDomainFunctionType? = nil,
            undeprecateWorkflowType: UndeprecateWorkflowTypeFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil) {
        self.error = error
        self.countClosedWorkflowExecutionsOverride = countClosedWorkflowExecutions
        self.countOpenWorkflowExecutionsOverride = countOpenWorkflowExecutions
        self.countPendingActivityTasksOverride = countPendingActivityTasks
        self.countPendingDecisionTasksOverride = countPendingDecisionTasks
        self.deprecateActivityTypeOverride = deprecateActivityType
        self.deprecateDomainOverride = deprecateDomain
        self.deprecateWorkflowTypeOverride = deprecateWorkflowType
        self.describeActivityTypeOverride = describeActivityType
        self.describeDomainOverride = describeDomain
        self.describeWorkflowExecutionOverride = describeWorkflowExecution
        self.describeWorkflowTypeOverride = describeWorkflowType
        self.getWorkflowExecutionHistoryOverride = getWorkflowExecutionHistory
        self.listActivityTypesOverride = listActivityTypes
        self.listClosedWorkflowExecutionsOverride = listClosedWorkflowExecutions
        self.listDomainsOverride = listDomains
        self.listOpenWorkflowExecutionsOverride = listOpenWorkflowExecutions
        self.listTagsForResourceOverride = listTagsForResource
        self.listWorkflowTypesOverride = listWorkflowTypes
        self.pollForActivityTaskOverride = pollForActivityTask
        self.pollForDecisionTaskOverride = pollForDecisionTask
        self.recordActivityTaskHeartbeatOverride = recordActivityTaskHeartbeat
        self.registerActivityTypeOverride = registerActivityType
        self.registerDomainOverride = registerDomain
        self.registerWorkflowTypeOverride = registerWorkflowType
        self.requestCancelWorkflowExecutionOverride = requestCancelWorkflowExecution
        self.respondActivityTaskCanceledOverride = respondActivityTaskCanceled
        self.respondActivityTaskCompletedOverride = respondActivityTaskCompleted
        self.respondActivityTaskFailedOverride = respondActivityTaskFailed
        self.respondDecisionTaskCompletedOverride = respondDecisionTaskCompleted
        self.signalWorkflowExecutionOverride = signalWorkflowExecution
        self.startWorkflowExecutionOverride = startWorkflowExecution
        self.tagResourceOverride = tagResource
        self.terminateWorkflowExecutionOverride = terminateWorkflowExecution
        self.undeprecateActivityTypeOverride = undeprecateActivityType
        self.undeprecateDomainOverride = undeprecateDomain
        self.undeprecateWorkflowTypeOverride = undeprecateWorkflowType
        self.untagResourceOverride = untagResource
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutions(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        if let countClosedWorkflowExecutionsOverride = countClosedWorkflowExecutionsOverride {
            return try await countClosedWorkflowExecutionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutions(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        if let countOpenWorkflowExecutionsOverride = countOpenWorkflowExecutionsOverride {
            return try await countOpenWorkflowExecutionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CountPendingActivityTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasks(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput) async throws -> SimpleWorkflowModel.PendingTaskCount {
        if let countPendingActivityTasksOverride = countPendingActivityTasksOverride {
            return try await countPendingActivityTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the CountPendingDecisionTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasks(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput) async throws -> SimpleWorkflowModel.PendingTaskCount {
        if let countPendingDecisionTasksOverride = countPendingDecisionTasksOverride {
            return try await countPendingDecisionTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprecateActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityType(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput) async throws {
        if let deprecateActivityTypeOverride = deprecateActivityTypeOverride {
            return try await deprecateActivityTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprecateDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomain(
            input: SimpleWorkflowModel.DeprecateDomainInput) async throws {
        if let deprecateDomainOverride = deprecateDomainOverride {
            return try await deprecateDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprecateWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowType(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) async throws {
        if let deprecateWorkflowTypeOverride = deprecateWorkflowTypeOverride {
            return try await deprecateWorkflowTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeActivityType(
            input: SimpleWorkflowModel.DescribeActivityTypeInput) async throws -> SimpleWorkflowModel.ActivityTypeDetail {
        if let describeActivityTypeOverride = describeActivityTypeOverride {
            return try await describeActivityTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeDomain(
            input: SimpleWorkflowModel.DescribeDomainInput) async throws -> SimpleWorkflowModel.DomainDetail {
        if let describeDomainOverride = describeDomainOverride {
            return try await describeDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecution(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) async throws -> SimpleWorkflowModel.WorkflowExecutionDetail {
        if let describeWorkflowExecutionOverride = describeWorkflowExecutionOverride {
            return try await describeWorkflowExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowType(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput) async throws -> SimpleWorkflowModel.WorkflowTypeDetail {
        if let describeWorkflowTypeOverride = describeWorkflowTypeOverride {
            return try await describeWorkflowTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistory(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) async throws -> SimpleWorkflowModel.History {
        if let getWorkflowExecutionHistoryOverride = getWorkflowExecutionHistoryOverride {
            return try await getWorkflowExecutionHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListActivityTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listActivityTypes(
            input: SimpleWorkflowModel.ListActivityTypesInput) async throws -> SimpleWorkflowModel.ActivityTypeInfos {
        if let listActivityTypesOverride = listActivityTypesOverride {
            return try await listActivityTypesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutions(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        if let listClosedWorkflowExecutionsOverride = listClosedWorkflowExecutionsOverride {
            return try await listClosedWorkflowExecutionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListDomains operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    public func listDomains(
            input: SimpleWorkflowModel.ListDomainsInput) async throws -> SimpleWorkflowModel.DomainInfos {
        if let listDomainsOverride = listDomainsOverride {
            return try await listDomainsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutions(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        if let listOpenWorkflowExecutionsOverride = listOpenWorkflowExecutionsOverride {
            return try await listOpenWorkflowExecutionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func listTagsForResource(
            input: SimpleWorkflowModel.ListTagsForResourceInput) async throws -> SimpleWorkflowModel.ListTagsForResourceOutput {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListWorkflowTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypes(
            input: SimpleWorkflowModel.ListWorkflowTypesInput) async throws -> SimpleWorkflowModel.WorkflowTypeInfos {
        if let listWorkflowTypesOverride = listWorkflowTypesOverride {
            return try await listWorkflowTypesOverride(input)
        }

        throw error
    }

    /**
     Invokes the PollForActivityTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTask(
            input: SimpleWorkflowModel.PollForActivityTaskInput) async throws -> SimpleWorkflowModel.ActivityTask {
        if let pollForActivityTaskOverride = pollForActivityTaskOverride {
            return try await pollForActivityTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the PollForDecisionTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTask(
            input: SimpleWorkflowModel.PollForDecisionTaskInput) async throws -> SimpleWorkflowModel.DecisionTask {
        if let pollForDecisionTaskOverride = pollForDecisionTaskOverride {
            return try await pollForDecisionTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeat(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) async throws -> SimpleWorkflowModel.ActivityTaskStatus {
        if let recordActivityTaskHeartbeatOverride = recordActivityTaskHeartbeatOverride {
            return try await recordActivityTaskHeartbeatOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityType(
            input: SimpleWorkflowModel.RegisterActivityTypeInput) async throws {
        if let registerActivityTypeOverride = registerActivityTypeOverride {
            return try await registerActivityTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomain(
            input: SimpleWorkflowModel.RegisterDomainInput) async throws {
        if let registerDomainOverride = registerDomainOverride {
            return try await registerDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowType(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput) async throws {
        if let registerWorkflowTypeOverride = registerWorkflowTypeOverride {
            return try await registerWorkflowTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecution(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) async throws {
        if let requestCancelWorkflowExecutionOverride = requestCancelWorkflowExecutionOverride {
            return try await requestCancelWorkflowExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the RespondActivityTaskCanceled operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceled(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) async throws {
        if let respondActivityTaskCanceledOverride = respondActivityTaskCanceledOverride {
            return try await respondActivityTaskCanceledOverride(input)
        }

        throw error
    }

    /**
     Invokes the RespondActivityTaskCompleted operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompleted(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) async throws {
        if let respondActivityTaskCompletedOverride = respondActivityTaskCompletedOverride {
            return try await respondActivityTaskCompletedOverride(input)
        }

        throw error
    }

    /**
     Invokes the RespondActivityTaskFailed operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailed(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput) async throws {
        if let respondActivityTaskFailedOverride = respondActivityTaskFailedOverride {
            return try await respondActivityTaskFailedOverride(input)
        }

        throw error
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompleted(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) async throws {
        if let respondDecisionTaskCompletedOverride = respondDecisionTaskCompletedOverride {
            return try await respondDecisionTaskCompletedOverride(input)
        }

        throw error
    }

    /**
     Invokes the SignalWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecution(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput) async throws {
        if let signalWorkflowExecutionOverride = signalWorkflowExecutionOverride {
            return try await signalWorkflowExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecution(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput) async throws -> SimpleWorkflowModel.Run {
        if let startWorkflowExecutionOverride = startWorkflowExecutionOverride {
            return try await startWorkflowExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResource(
            input: SimpleWorkflowModel.TagResourceInput) async throws {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the TerminateWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecution(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) async throws {
        if let terminateWorkflowExecutionOverride = terminateWorkflowExecutionOverride {
            return try await terminateWorkflowExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the UndeprecateActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityType(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput) async throws {
        if let undeprecateActivityTypeOverride = undeprecateActivityTypeOverride {
            return try await undeprecateActivityTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the UndeprecateDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomain(
            input: SimpleWorkflowModel.UndeprecateDomainInput) async throws {
        if let undeprecateDomainOverride = undeprecateDomainOverride {
            return try await undeprecateDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the UndeprecateWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowType(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) async throws {
        if let undeprecateWorkflowTypeOverride = undeprecateWorkflowTypeOverride {
            return try await undeprecateWorkflowTypeOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResource(
            input: SimpleWorkflowModel.UntagResourceInput) async throws {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        throw error
    }
#endif
}
