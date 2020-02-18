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
    typealias CountClosedWorkflowExecutionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountClosedWorkflowExecutionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws -> ()
    typealias CountOpenWorkflowExecutionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountOpenWorkflowExecutionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws -> ()
    typealias CountPendingActivityTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountPendingActivityTasksInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingActivityTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws -> ()
    typealias CountPendingDecisionTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountPendingDecisionTasksInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingDecisionTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws -> ()
    typealias DeprecateActivityTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DeprecateActivityTypeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeprecateActivityTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DeprecateDomainInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeprecateDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DeprecateDomainInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateWorkflowTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeprecateWorkflowTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DescribeActivityTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeActivityTypeInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTypeDetail
    typealias DescribeActivityTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeDomainInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DomainDetail
    typealias DescribeDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeDomainInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeWorkflowExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionDetail
    typealias DescribeWorkflowExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeWorkflowTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeWorkflowTypeInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowTypeDetail
    typealias DescribeWorkflowTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) -> ()) throws -> ()
    typealias GetWorkflowExecutionHistorySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.History
    typealias GetWorkflowExecutionHistoryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.History, HTTPClientError>) -> ()) throws -> ()
    typealias ListActivityTypesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListActivityTypesInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTypeInfos
    typealias ListActivityTypesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListActivityTypesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListClosedWorkflowExecutionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListClosedWorkflowExecutionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListDomainsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListDomainsInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DomainInfos
    typealias ListDomainsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListDomainsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListOpenWorkflowExecutionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListOpenWorkflowExecutionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListTagsForResourceInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListTagsForResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListWorkflowTypesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListWorkflowTypesInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowTypeInfos
    typealias ListWorkflowTypesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) -> ()) throws -> ()
    typealias PollForActivityTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.PollForActivityTaskInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTask
    typealias PollForActivityTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.PollForActivityTaskInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) -> ()) throws -> ()
    typealias PollForDecisionTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.PollForDecisionTaskInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DecisionTask
    typealias PollForDecisionTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) -> ()) throws -> ()
    typealias RecordActivityTaskHeartbeatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTaskStatus
    typealias RecordActivityTaskHeartbeatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterActivityTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RegisterActivityTypeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RegisterActivityTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RegisterDomainInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RegisterDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RegisterDomainInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterWorkflowTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RegisterWorkflowTypeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RegisterWorkflowTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RequestCancelWorkflowExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RequestCancelWorkflowExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskCanceledSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RespondActivityTaskCanceledAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskCompletedSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RespondActivityTaskCompletedAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskFailedSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondActivityTaskFailedInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RespondActivityTaskFailedAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondDecisionTaskCompletedSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RespondDecisionTaskCompletedAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SignalWorkflowExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.SignalWorkflowExecutionInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SignalWorkflowExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias StartWorkflowExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.StartWorkflowExecutionInput,
            _ reporting: InvocationReportingType) throws -> SimpleWorkflowModel.Run
    typealias StartWorkflowExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleWorkflowModel.Run, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.TagResourceInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias TagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.TagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias TerminateWorkflowExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias TerminateWorkflowExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UndeprecateActivityTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UndeprecateActivityTypeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UndeprecateActivityTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UndeprecateActivityTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UndeprecateDomainSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UndeprecateDomainInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UndeprecateDomainAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UndeprecateDomainInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UndeprecateWorkflowTypeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UndeprecateWorkflowTypeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UntagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UntagResourceInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UntagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleWorkflowModel.UntagResourceInput, 
            _ reporting: InvocationReportingType,
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
    func countClosedWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountPendingActivityTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountPendingActivityTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws

    /**
     Invokes the CountPendingDecisionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the DeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateDomainInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DescribeActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
         - completion: The ActivityTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeActivityTypeInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTypeDetail

    /**
     Invokes the DescribeDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
         - completion: The DomainDetail object or an error will be passed to this 
           callback when the operation is complete. The DomainDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeDomainInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DomainDetail

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
         - completion: The WorkflowExecutionDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionDetail

    /**
     Invokes the DescribeWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
         - completion: The WorkflowTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowTypeDetail

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
         - completion: The History object or an error will be passed to this 
           callback when the operation is complete. The History
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.History, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetWorkflowExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.History

    /**
     Invokes the ListActivityTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
         - completion: The ActivityTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listActivityTypesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListActivityTypesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListActivityTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listActivityTypesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListActivityTypesInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTypeInfos

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
         - completion: The DomainInfos object or an error will be passed to this 
           callback when the operation is complete. The DomainInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    func listDomainsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListDomainsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    func listDomainsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListDomainsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DomainInfos

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListTagsForResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListTagsForResourceInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ListTagsForResourceOutput

    /**
     Invokes the ListWorkflowTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
         - completion: The WorkflowTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListWorkflowTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListWorkflowTypesInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowTypeInfos

    /**
     Invokes the PollForActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
         - completion: The ActivityTask object or an error will be passed to this 
           callback when the operation is complete. The ActivityTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForActivityTaskInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) -> ()) throws

    /**
     Invokes the PollForActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForActivityTaskInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTask

    /**
     Invokes the PollForDecisionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
         - completion: The DecisionTask object or an error will be passed to this 
           callback when the operation is complete. The DecisionTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) -> ()) throws

    /**
     Invokes the PollForDecisionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForDecisionTaskInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DecisionTask

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
         - completion: The ActivityTaskStatus object or an error will be passed to this 
           callback when the operation is complete. The ActivityTaskStatus
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) -> ()) throws

    /**
     Invokes the RecordActivityTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTaskStatus

    /**
     Invokes the RegisterActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterActivityTypeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterDomainInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RegisterWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceledAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceledSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompletedAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompletedSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailedAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailedSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompletedAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompletedSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SignalWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the StartWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
         - completion: The Run object or an error will be passed to this 
           callback when the operation is complete. The Run
           object will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.Run, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.Run

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TagResourceInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UndeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UndeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UndeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UndeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateDomainInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UndeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UntagResourceInput,
            reporting: InvocationReportingType) throws
}
