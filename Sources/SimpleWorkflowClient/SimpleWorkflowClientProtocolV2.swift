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
// SimpleWorkflowClientProtocolV2.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SimpleWorkflow service.
 */
public protocol SimpleWorkflowClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias CountClosedWorkflowExecutionsFunctionType = (
            _ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountOpenWorkflowExecutionsFunctionType = (
            _ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountPendingActivityTasksFunctionType = (
            _ input: SimpleWorkflowModel.CountPendingActivityTasksInput) async throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingDecisionTasksFunctionType = (
            _ input: SimpleWorkflowModel.CountPendingDecisionTasksInput) async throws -> SimpleWorkflowModel.PendingTaskCount
    typealias DeprecateActivityTypeFunctionType = (
            _ input: SimpleWorkflowModel.DeprecateActivityTypeInput) async throws -> ()
    typealias DeprecateDomainFunctionType = (
            _ input: SimpleWorkflowModel.DeprecateDomainInput) async throws -> ()
    typealias DeprecateWorkflowTypeFunctionType = (
            _ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) async throws -> ()
    typealias DescribeActivityTypeFunctionType = (
            _ input: SimpleWorkflowModel.DescribeActivityTypeInput) async throws -> SimpleWorkflowModel.ActivityTypeDetail
    typealias DescribeDomainFunctionType = (
            _ input: SimpleWorkflowModel.DescribeDomainInput) async throws -> SimpleWorkflowModel.DomainDetail
    typealias DescribeWorkflowExecutionFunctionType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) async throws -> SimpleWorkflowModel.WorkflowExecutionDetail
    typealias DescribeWorkflowTypeFunctionType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowTypeInput) async throws -> SimpleWorkflowModel.WorkflowTypeDetail
    typealias GetWorkflowExecutionHistoryFunctionType = (
            _ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) async throws -> SimpleWorkflowModel.History
    typealias ListActivityTypesFunctionType = (
            _ input: SimpleWorkflowModel.ListActivityTypesInput) async throws -> SimpleWorkflowModel.ActivityTypeInfos
    typealias ListClosedWorkflowExecutionsFunctionType = (
            _ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListDomainsFunctionType = (
            _ input: SimpleWorkflowModel.ListDomainsInput) async throws -> SimpleWorkflowModel.DomainInfos
    typealias ListOpenWorkflowExecutionsFunctionType = (
            _ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListTagsForResourceFunctionType = (
            _ input: SimpleWorkflowModel.ListTagsForResourceInput) async throws -> SimpleWorkflowModel.ListTagsForResourceOutput
    typealias ListWorkflowTypesFunctionType = (
            _ input: SimpleWorkflowModel.ListWorkflowTypesInput) async throws -> SimpleWorkflowModel.WorkflowTypeInfos
    typealias PollForActivityTaskFunctionType = (
            _ input: SimpleWorkflowModel.PollForActivityTaskInput) async throws -> SimpleWorkflowModel.ActivityTask
    typealias PollForDecisionTaskFunctionType = (
            _ input: SimpleWorkflowModel.PollForDecisionTaskInput) async throws -> SimpleWorkflowModel.DecisionTask
    typealias RecordActivityTaskHeartbeatFunctionType = (
            _ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) async throws -> SimpleWorkflowModel.ActivityTaskStatus
    typealias RegisterActivityTypeFunctionType = (
            _ input: SimpleWorkflowModel.RegisterActivityTypeInput) async throws -> ()
    typealias RegisterDomainFunctionType = (
            _ input: SimpleWorkflowModel.RegisterDomainInput) async throws -> ()
    typealias RegisterWorkflowTypeFunctionType = (
            _ input: SimpleWorkflowModel.RegisterWorkflowTypeInput) async throws -> ()
    typealias RequestCancelWorkflowExecutionFunctionType = (
            _ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) async throws -> ()
    typealias RespondActivityTaskCanceledFunctionType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) async throws -> ()
    typealias RespondActivityTaskCompletedFunctionType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) async throws -> ()
    typealias RespondActivityTaskFailedFunctionType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskFailedInput) async throws -> ()
    typealias RespondDecisionTaskCompletedFunctionType = (
            _ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) async throws -> ()
    typealias SignalWorkflowExecutionFunctionType = (
            _ input: SimpleWorkflowModel.SignalWorkflowExecutionInput) async throws -> ()
    typealias StartWorkflowExecutionFunctionType = (
            _ input: SimpleWorkflowModel.StartWorkflowExecutionInput) async throws -> SimpleWorkflowModel.Run
    typealias TagResourceFunctionType = (
            _ input: SimpleWorkflowModel.TagResourceInput) async throws -> ()
    typealias TerminateWorkflowExecutionFunctionType = (
            _ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) async throws -> ()
    typealias UndeprecateActivityTypeFunctionType = (
            _ input: SimpleWorkflowModel.UndeprecateActivityTypeInput) async throws -> ()
    typealias UndeprecateDomainFunctionType = (
            _ input: SimpleWorkflowModel.UndeprecateDomainInput) async throws -> ()
    typealias UndeprecateWorkflowTypeFunctionType = (
            _ input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) async throws -> ()
    typealias UntagResourceFunctionType = (
            _ input: SimpleWorkflowModel.UntagResourceInput) async throws -> ()

    /**
     Invokes the CountClosedWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutions(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountOpenWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutions(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountPendingActivityTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasks(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput) async throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the CountPendingDecisionTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasks(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput) async throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the DeprecateActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityType(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput) async throws

    /**
     Invokes the DeprecateDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomain(
            input: SimpleWorkflowModel.DeprecateDomainInput) async throws

    /**
     Invokes the DeprecateWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowType(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) async throws

    /**
     Invokes the DescribeActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeActivityType(
            input: SimpleWorkflowModel.DescribeActivityTypeInput) async throws -> SimpleWorkflowModel.ActivityTypeDetail

    /**
     Invokes the DescribeDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeDomain(
            input: SimpleWorkflowModel.DescribeDomainInput) async throws -> SimpleWorkflowModel.DomainDetail

    /**
     Invokes the DescribeWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecution(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) async throws -> SimpleWorkflowModel.WorkflowExecutionDetail

    /**
     Invokes the DescribeWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowType(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput) async throws -> SimpleWorkflowModel.WorkflowTypeDetail

    /**
     Invokes the GetWorkflowExecutionHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistory(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) async throws -> SimpleWorkflowModel.History

    /**
     Invokes the ListActivityTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listActivityTypes(
            input: SimpleWorkflowModel.ListActivityTypesInput) async throws -> SimpleWorkflowModel.ActivityTypeInfos

    /**
     Invokes the ListClosedWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutions(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListDomains operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    func listDomains(
            input: SimpleWorkflowModel.ListDomainsInput) async throws -> SimpleWorkflowModel.DomainInfos

    /**
     Invokes the ListOpenWorkflowExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutions(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) async throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResource(
            input: SimpleWorkflowModel.ListTagsForResourceInput) async throws -> SimpleWorkflowModel.ListTagsForResourceOutput

    /**
     Invokes the ListWorkflowTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypes(
            input: SimpleWorkflowModel.ListWorkflowTypesInput) async throws -> SimpleWorkflowModel.WorkflowTypeInfos

    /**
     Invokes the PollForActivityTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTask(
            input: SimpleWorkflowModel.PollForActivityTaskInput) async throws -> SimpleWorkflowModel.ActivityTask

    /**
     Invokes the PollForDecisionTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTask(
            input: SimpleWorkflowModel.PollForDecisionTaskInput) async throws -> SimpleWorkflowModel.DecisionTask

    /**
     Invokes the RecordActivityTaskHeartbeat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeat(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) async throws -> SimpleWorkflowModel.ActivityTaskStatus

    /**
     Invokes the RegisterActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityType(
            input: SimpleWorkflowModel.RegisterActivityTypeInput) async throws

    /**
     Invokes the RegisterDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomain(
            input: SimpleWorkflowModel.RegisterDomainInput) async throws

    /**
     Invokes the RegisterWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowType(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput) async throws

    /**
     Invokes the RequestCancelWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecution(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) async throws

    /**
     Invokes the RespondActivityTaskCanceled operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceled(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) async throws

    /**
     Invokes the RespondActivityTaskCompleted operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompleted(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) async throws

    /**
     Invokes the RespondActivityTaskFailed operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailed(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput) async throws

    /**
     Invokes the RespondDecisionTaskCompleted operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompleted(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) async throws

    /**
     Invokes the SignalWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecution(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput) async throws

    /**
     Invokes the StartWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecution(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput) async throws -> SimpleWorkflowModel.Run

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResource(
            input: SimpleWorkflowModel.TagResourceInput) async throws

    /**
     Invokes the TerminateWorkflowExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecution(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) async throws

    /**
     Invokes the UndeprecateActivityType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityType(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput) async throws

    /**
     Invokes the UndeprecateDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomain(
            input: SimpleWorkflowModel.UndeprecateDomainInput) async throws

    /**
     Invokes the UndeprecateWorkflowType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowType(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) async throws

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResource(
            input: SimpleWorkflowModel.UntagResourceInput) async throws
#endif
}
