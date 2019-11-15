// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// SimpleWorkflowClientProtocol.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SimpleWorkflow service.
 */
public protocol SimpleWorkflowClientProtocol {
    typealias CountClosedWorkflowExecutionsSyncType = (
            _ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountClosedWorkflowExecutionsAsyncType = (
            _ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws -> ()
    typealias CountOpenWorkflowExecutionsSyncType = (
            _ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountOpenWorkflowExecutionsAsyncType = (
            _ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws -> ()
    typealias CountPendingActivityTasksSyncType = (
            _ input: SimpleWorkflowModel.CountPendingActivityTasksInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingActivityTasksAsyncType = (
            _ input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws -> ()
    typealias CountPendingDecisionTasksSyncType = (
            _ input: SimpleWorkflowModel.CountPendingDecisionTasksInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingDecisionTasksAsyncType = (
            _ input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws -> ()
    typealias DeprecateActivityTypeSyncType = (
            _ input: SimpleWorkflowModel.DeprecateActivityTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeprecateActivityTypeAsyncType = (
            _ input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateDomainSyncType = (
            _ input: SimpleWorkflowModel.DeprecateDomainInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeprecateDomainAsyncType = (
            _ input: SimpleWorkflowModel.DeprecateDomainInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateWorkflowTypeSyncType = (
            _ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeprecateWorkflowTypeAsyncType = (
            _ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DescribeActivityTypeSyncType = (
            _ input: SimpleWorkflowModel.DescribeActivityTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTypeDetail
    typealias DescribeActivityTypeAsyncType = (
            _ input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDomainSyncType = (
            _ input: SimpleWorkflowModel.DescribeDomainInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DomainDetail
    typealias DescribeDomainAsyncType = (
            _ input: SimpleWorkflowModel.DescribeDomainInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeWorkflowExecutionSyncType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionDetail
    typealias DescribeWorkflowExecutionAsyncType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeWorkflowTypeSyncType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowTypeDetail
    typealias DescribeWorkflowTypeAsyncType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) -> ()) throws -> ()
    typealias GetWorkflowExecutionHistorySyncType = (
            _ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.History
    typealias GetWorkflowExecutionHistoryAsyncType = (
            _ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.History, HTTPClientError>) -> ()) throws -> ()
    typealias ListActivityTypesSyncType = (
            _ input: SimpleWorkflowModel.ListActivityTypesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTypeInfos
    typealias ListActivityTypesAsyncType = (
            _ input: SimpleWorkflowModel.ListActivityTypesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListClosedWorkflowExecutionsSyncType = (
            _ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListClosedWorkflowExecutionsAsyncType = (
            _ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListDomainsSyncType = (
            _ input: SimpleWorkflowModel.ListDomainsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DomainInfos
    typealias ListDomainsAsyncType = (
            _ input: SimpleWorkflowModel.ListDomainsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListOpenWorkflowExecutionsSyncType = (
            _ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListOpenWorkflowExecutionsAsyncType = (
            _ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: SimpleWorkflowModel.ListTagsForResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType = (
            _ input: SimpleWorkflowModel.ListTagsForResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListWorkflowTypesSyncType = (
            _ input: SimpleWorkflowModel.ListWorkflowTypesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowTypeInfos
    typealias ListWorkflowTypesAsyncType = (
            _ input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) -> ()) throws -> ()
    typealias PollForActivityTaskSyncType = (
            _ input: SimpleWorkflowModel.PollForActivityTaskInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTask
    typealias PollForActivityTaskAsyncType = (
            _ input: SimpleWorkflowModel.PollForActivityTaskInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) -> ()) throws -> ()
    typealias PollForDecisionTaskSyncType = (
            _ input: SimpleWorkflowModel.PollForDecisionTaskInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DecisionTask
    typealias PollForDecisionTaskAsyncType = (
            _ input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) -> ()) throws -> ()
    typealias RecordActivityTaskHeartbeatSyncType = (
            _ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTaskStatus
    typealias RecordActivityTaskHeartbeatAsyncType = (
            _ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterActivityTypeSyncType = (
            _ input: SimpleWorkflowModel.RegisterActivityTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RegisterActivityTypeAsyncType = (
            _ input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterDomainSyncType = (
            _ input: SimpleWorkflowModel.RegisterDomainInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RegisterDomainAsyncType = (
            _ input: SimpleWorkflowModel.RegisterDomainInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterWorkflowTypeSyncType = (
            _ input: SimpleWorkflowModel.RegisterWorkflowTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RegisterWorkflowTypeAsyncType = (
            _ input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RequestCancelWorkflowExecutionSyncType = (
            _ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RequestCancelWorkflowExecutionAsyncType = (
            _ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskCanceledSyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RespondActivityTaskCanceledAsyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskCompletedSyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RespondActivityTaskCompletedAsyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskFailedSyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskFailedInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RespondActivityTaskFailedAsyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondDecisionTaskCompletedSyncType = (
            _ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias RespondDecisionTaskCompletedAsyncType = (
            _ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SignalWorkflowExecutionSyncType = (
            _ input: SimpleWorkflowModel.SignalWorkflowExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias SignalWorkflowExecutionAsyncType = (
            _ input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias StartWorkflowExecutionSyncType = (
            _ input: SimpleWorkflowModel.StartWorkflowExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.Run
    typealias StartWorkflowExecutionAsyncType = (
            _ input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<SimpleWorkflowModel.Run, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: SimpleWorkflowModel.TagResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias TagResourceAsyncType = (
            _ input: SimpleWorkflowModel.TagResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias TerminateWorkflowExecutionSyncType = (
            _ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias TerminateWorkflowExecutionAsyncType = (
            _ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UndeprecateActivityTypeSyncType = (
            _ input: SimpleWorkflowModel.UndeprecateActivityTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias UndeprecateActivityTypeAsyncType = (
            _ input: SimpleWorkflowModel.UndeprecateActivityTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UndeprecateDomainSyncType = (
            _ input: SimpleWorkflowModel.UndeprecateDomainInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias UndeprecateDomainAsyncType = (
            _ input: SimpleWorkflowModel.UndeprecateDomainInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UndeprecateWorkflowTypeSyncType = (
            _ input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias UndeprecateWorkflowTypeAsyncType = (
            _ input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: SimpleWorkflowModel.UntagResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias UntagResourceAsyncType = (
            _ input: SimpleWorkflowModel.UntagResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()

    /**
     Invokes the CountClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutionsSync(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutionsSync(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountPendingActivityTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasksAsync(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountPendingActivityTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasksSync(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasksAsync(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountPendingDecisionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasksSync(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the DeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityTypeAsync(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityTypeSync(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomainAsync(
            input: SimpleWorkflowModel.DeprecateDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomainSync(
            input: SimpleWorkflowModel.DeprecateDomainInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowTypeAsync(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowTypeSync(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DescribeActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
         - completion: The ActivityTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeActivityTypeAsync(
            input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeActivityTypeSync(
            input: SimpleWorkflowModel.DescribeActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTypeDetail

    /**
     Invokes the DescribeDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
         - completion: The DomainDetail object or an error will be passed to this 
           callback when the operation is complete. The DomainDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeDomainAsync(
            input: SimpleWorkflowModel.DescribeDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeDomainSync(
            input: SimpleWorkflowModel.DescribeDomainInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DomainDetail

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
         - completion: The WorkflowExecutionDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecutionAsync(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecutionSync(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionDetail

    /**
     Invokes the DescribeWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
         - completion: The WorkflowTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowTypeAsync(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowTypeSync(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowTypeDetail

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
         - completion: The History object or an error will be passed to this 
           callback when the operation is complete. The History
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistoryAsync(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.History, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetWorkflowExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistorySync(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.History

    /**
     Invokes the ListActivityTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
         - completion: The ActivityTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listActivityTypesAsync(
            input: SimpleWorkflowModel.ListActivityTypesInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListActivityTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listActivityTypesSync(
            input: SimpleWorkflowModel.ListActivityTypesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTypeInfos

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutionsSync(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
         - completion: The DomainInfos object or an error will be passed to this 
           callback when the operation is complete. The DomainInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    func listDomainsAsync(
            input: SimpleWorkflowModel.ListDomainsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    func listDomainsSync(
            input: SimpleWorkflowModel.ListDomainsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DomainInfos

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutionsSync(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResourceAsync(
            input: SimpleWorkflowModel.ListTagsForResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResourceSync(
            input: SimpleWorkflowModel.ListTagsForResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ListTagsForResourceOutput

    /**
     Invokes the ListWorkflowTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
         - completion: The WorkflowTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypesAsync(
            input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListWorkflowTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypesSync(
            input: SimpleWorkflowModel.ListWorkflowTypesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowTypeInfos

    /**
     Invokes the PollForActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
         - completion: The ActivityTask object or an error will be passed to this 
           callback when the operation is complete. The ActivityTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTaskAsync(
            input: SimpleWorkflowModel.PollForActivityTaskInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) -> ()) throws

    /**
     Invokes the PollForActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTaskSync(
            input: SimpleWorkflowModel.PollForActivityTaskInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTask

    /**
     Invokes the PollForDecisionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
         - completion: The DecisionTask object or an error will be passed to this 
           callback when the operation is complete. The DecisionTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTaskAsync(
            input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) -> ()) throws

    /**
     Invokes the PollForDecisionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTaskSync(
            input: SimpleWorkflowModel.PollForDecisionTaskInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DecisionTask

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
         - completion: The ActivityTaskStatus object or an error will be passed to this 
           callback when the operation is complete. The ActivityTaskStatus
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeatAsync(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) -> ()) throws

    /**
     Invokes the RecordActivityTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeatSync(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTaskStatus

    /**
     Invokes the RegisterActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityTypeAsync(
            input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityTypeSync(
            input: SimpleWorkflowModel.RegisterActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomainAsync(
            input: SimpleWorkflowModel.RegisterDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomainSync(
            input: SimpleWorkflowModel.RegisterDomainInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RegisterWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowTypeAsync(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowTypeSync(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecutionAsync(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecutionSync(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceledAsync(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceledSync(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompletedAsync(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompletedSync(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailedAsync(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailedSync(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompletedAsync(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompletedSync(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the SignalWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecutionAsync(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecutionSync(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the StartWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
         - completion: The Run object or an error will be passed to this 
           callback when the operation is complete. The Run
           object will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecutionAsync(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.Run, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecutionSync(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.Run

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResourceAsync(
            input: SimpleWorkflowModel.TagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResourceSync(
            input: SimpleWorkflowModel.TagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecutionAsync(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecutionSync(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the UndeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityTypeAsync(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UndeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityTypeSync(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the UndeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomainAsync(
            input: SimpleWorkflowModel.UndeprecateDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UndeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomainSync(
            input: SimpleWorkflowModel.UndeprecateDomainInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowTypeAsync(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UndeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowTypeSync(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResourceAsync(
            input: SimpleWorkflowModel.UntagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResourceSync(
            input: SimpleWorkflowModel.UntagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws
}
