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
// ThrowingSimpleWorkflowClient.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleWorkflow service that by default always throws from its methods.
 */
public struct ThrowingSimpleWorkflowClient: SimpleWorkflowClientProtocol {
    let error: HTTPClientError
    let countClosedWorkflowExecutionsAsyncOverride: SimpleWorkflowClientProtocol.CountClosedWorkflowExecutionsAsyncType?
    let countClosedWorkflowExecutionsSyncOverride: SimpleWorkflowClientProtocol.CountClosedWorkflowExecutionsSyncType?
    let countOpenWorkflowExecutionsAsyncOverride: SimpleWorkflowClientProtocol.CountOpenWorkflowExecutionsAsyncType?
    let countOpenWorkflowExecutionsSyncOverride: SimpleWorkflowClientProtocol.CountOpenWorkflowExecutionsSyncType?
    let countPendingActivityTasksAsyncOverride: SimpleWorkflowClientProtocol.CountPendingActivityTasksAsyncType?
    let countPendingActivityTasksSyncOverride: SimpleWorkflowClientProtocol.CountPendingActivityTasksSyncType?
    let countPendingDecisionTasksAsyncOverride: SimpleWorkflowClientProtocol.CountPendingDecisionTasksAsyncType?
    let countPendingDecisionTasksSyncOverride: SimpleWorkflowClientProtocol.CountPendingDecisionTasksSyncType?
    let deprecateActivityTypeAsyncOverride: SimpleWorkflowClientProtocol.DeprecateActivityTypeAsyncType?
    let deprecateActivityTypeSyncOverride: SimpleWorkflowClientProtocol.DeprecateActivityTypeSyncType?
    let deprecateDomainAsyncOverride: SimpleWorkflowClientProtocol.DeprecateDomainAsyncType?
    let deprecateDomainSyncOverride: SimpleWorkflowClientProtocol.DeprecateDomainSyncType?
    let deprecateWorkflowTypeAsyncOverride: SimpleWorkflowClientProtocol.DeprecateWorkflowTypeAsyncType?
    let deprecateWorkflowTypeSyncOverride: SimpleWorkflowClientProtocol.DeprecateWorkflowTypeSyncType?
    let describeActivityTypeAsyncOverride: SimpleWorkflowClientProtocol.DescribeActivityTypeAsyncType?
    let describeActivityTypeSyncOverride: SimpleWorkflowClientProtocol.DescribeActivityTypeSyncType?
    let describeDomainAsyncOverride: SimpleWorkflowClientProtocol.DescribeDomainAsyncType?
    let describeDomainSyncOverride: SimpleWorkflowClientProtocol.DescribeDomainSyncType?
    let describeWorkflowExecutionAsyncOverride: SimpleWorkflowClientProtocol.DescribeWorkflowExecutionAsyncType?
    let describeWorkflowExecutionSyncOverride: SimpleWorkflowClientProtocol.DescribeWorkflowExecutionSyncType?
    let describeWorkflowTypeAsyncOverride: SimpleWorkflowClientProtocol.DescribeWorkflowTypeAsyncType?
    let describeWorkflowTypeSyncOverride: SimpleWorkflowClientProtocol.DescribeWorkflowTypeSyncType?
    let getWorkflowExecutionHistoryAsyncOverride: SimpleWorkflowClientProtocol.GetWorkflowExecutionHistoryAsyncType?
    let getWorkflowExecutionHistorySyncOverride: SimpleWorkflowClientProtocol.GetWorkflowExecutionHistorySyncType?
    let listActivityTypesAsyncOverride: SimpleWorkflowClientProtocol.ListActivityTypesAsyncType?
    let listActivityTypesSyncOverride: SimpleWorkflowClientProtocol.ListActivityTypesSyncType?
    let listClosedWorkflowExecutionsAsyncOverride: SimpleWorkflowClientProtocol.ListClosedWorkflowExecutionsAsyncType?
    let listClosedWorkflowExecutionsSyncOverride: SimpleWorkflowClientProtocol.ListClosedWorkflowExecutionsSyncType?
    let listDomainsAsyncOverride: SimpleWorkflowClientProtocol.ListDomainsAsyncType?
    let listDomainsSyncOverride: SimpleWorkflowClientProtocol.ListDomainsSyncType?
    let listOpenWorkflowExecutionsAsyncOverride: SimpleWorkflowClientProtocol.ListOpenWorkflowExecutionsAsyncType?
    let listOpenWorkflowExecutionsSyncOverride: SimpleWorkflowClientProtocol.ListOpenWorkflowExecutionsSyncType?
    let listWorkflowTypesAsyncOverride: SimpleWorkflowClientProtocol.ListWorkflowTypesAsyncType?
    let listWorkflowTypesSyncOverride: SimpleWorkflowClientProtocol.ListWorkflowTypesSyncType?
    let pollForActivityTaskAsyncOverride: SimpleWorkflowClientProtocol.PollForActivityTaskAsyncType?
    let pollForActivityTaskSyncOverride: SimpleWorkflowClientProtocol.PollForActivityTaskSyncType?
    let pollForDecisionTaskAsyncOverride: SimpleWorkflowClientProtocol.PollForDecisionTaskAsyncType?
    let pollForDecisionTaskSyncOverride: SimpleWorkflowClientProtocol.PollForDecisionTaskSyncType?
    let recordActivityTaskHeartbeatAsyncOverride: SimpleWorkflowClientProtocol.RecordActivityTaskHeartbeatAsyncType?
    let recordActivityTaskHeartbeatSyncOverride: SimpleWorkflowClientProtocol.RecordActivityTaskHeartbeatSyncType?
    let registerActivityTypeAsyncOverride: SimpleWorkflowClientProtocol.RegisterActivityTypeAsyncType?
    let registerActivityTypeSyncOverride: SimpleWorkflowClientProtocol.RegisterActivityTypeSyncType?
    let registerDomainAsyncOverride: SimpleWorkflowClientProtocol.RegisterDomainAsyncType?
    let registerDomainSyncOverride: SimpleWorkflowClientProtocol.RegisterDomainSyncType?
    let registerWorkflowTypeAsyncOverride: SimpleWorkflowClientProtocol.RegisterWorkflowTypeAsyncType?
    let registerWorkflowTypeSyncOverride: SimpleWorkflowClientProtocol.RegisterWorkflowTypeSyncType?
    let requestCancelWorkflowExecutionAsyncOverride: SimpleWorkflowClientProtocol.RequestCancelWorkflowExecutionAsyncType?
    let requestCancelWorkflowExecutionSyncOverride: SimpleWorkflowClientProtocol.RequestCancelWorkflowExecutionSyncType?
    let respondActivityTaskCanceledAsyncOverride: SimpleWorkflowClientProtocol.RespondActivityTaskCanceledAsyncType?
    let respondActivityTaskCanceledSyncOverride: SimpleWorkflowClientProtocol.RespondActivityTaskCanceledSyncType?
    let respondActivityTaskCompletedAsyncOverride: SimpleWorkflowClientProtocol.RespondActivityTaskCompletedAsyncType?
    let respondActivityTaskCompletedSyncOverride: SimpleWorkflowClientProtocol.RespondActivityTaskCompletedSyncType?
    let respondActivityTaskFailedAsyncOverride: SimpleWorkflowClientProtocol.RespondActivityTaskFailedAsyncType?
    let respondActivityTaskFailedSyncOverride: SimpleWorkflowClientProtocol.RespondActivityTaskFailedSyncType?
    let respondDecisionTaskCompletedAsyncOverride: SimpleWorkflowClientProtocol.RespondDecisionTaskCompletedAsyncType?
    let respondDecisionTaskCompletedSyncOverride: SimpleWorkflowClientProtocol.RespondDecisionTaskCompletedSyncType?
    let signalWorkflowExecutionAsyncOverride: SimpleWorkflowClientProtocol.SignalWorkflowExecutionAsyncType?
    let signalWorkflowExecutionSyncOverride: SimpleWorkflowClientProtocol.SignalWorkflowExecutionSyncType?
    let startWorkflowExecutionAsyncOverride: SimpleWorkflowClientProtocol.StartWorkflowExecutionAsyncType?
    let startWorkflowExecutionSyncOverride: SimpleWorkflowClientProtocol.StartWorkflowExecutionSyncType?
    let terminateWorkflowExecutionAsyncOverride: SimpleWorkflowClientProtocol.TerminateWorkflowExecutionAsyncType?
    let terminateWorkflowExecutionSyncOverride: SimpleWorkflowClientProtocol.TerminateWorkflowExecutionSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            countClosedWorkflowExecutionsAsync: SimpleWorkflowClientProtocol.CountClosedWorkflowExecutionsAsyncType? = nil,
            countClosedWorkflowExecutionsSync: SimpleWorkflowClientProtocol.CountClosedWorkflowExecutionsSyncType? = nil,
            countOpenWorkflowExecutionsAsync: SimpleWorkflowClientProtocol.CountOpenWorkflowExecutionsAsyncType? = nil,
            countOpenWorkflowExecutionsSync: SimpleWorkflowClientProtocol.CountOpenWorkflowExecutionsSyncType? = nil,
            countPendingActivityTasksAsync: SimpleWorkflowClientProtocol.CountPendingActivityTasksAsyncType? = nil,
            countPendingActivityTasksSync: SimpleWorkflowClientProtocol.CountPendingActivityTasksSyncType? = nil,
            countPendingDecisionTasksAsync: SimpleWorkflowClientProtocol.CountPendingDecisionTasksAsyncType? = nil,
            countPendingDecisionTasksSync: SimpleWorkflowClientProtocol.CountPendingDecisionTasksSyncType? = nil,
            deprecateActivityTypeAsync: SimpleWorkflowClientProtocol.DeprecateActivityTypeAsyncType? = nil,
            deprecateActivityTypeSync: SimpleWorkflowClientProtocol.DeprecateActivityTypeSyncType? = nil,
            deprecateDomainAsync: SimpleWorkflowClientProtocol.DeprecateDomainAsyncType? = nil,
            deprecateDomainSync: SimpleWorkflowClientProtocol.DeprecateDomainSyncType? = nil,
            deprecateWorkflowTypeAsync: SimpleWorkflowClientProtocol.DeprecateWorkflowTypeAsyncType? = nil,
            deprecateWorkflowTypeSync: SimpleWorkflowClientProtocol.DeprecateWorkflowTypeSyncType? = nil,
            describeActivityTypeAsync: SimpleWorkflowClientProtocol.DescribeActivityTypeAsyncType? = nil,
            describeActivityTypeSync: SimpleWorkflowClientProtocol.DescribeActivityTypeSyncType? = nil,
            describeDomainAsync: SimpleWorkflowClientProtocol.DescribeDomainAsyncType? = nil,
            describeDomainSync: SimpleWorkflowClientProtocol.DescribeDomainSyncType? = nil,
            describeWorkflowExecutionAsync: SimpleWorkflowClientProtocol.DescribeWorkflowExecutionAsyncType? = nil,
            describeWorkflowExecutionSync: SimpleWorkflowClientProtocol.DescribeWorkflowExecutionSyncType? = nil,
            describeWorkflowTypeAsync: SimpleWorkflowClientProtocol.DescribeWorkflowTypeAsyncType? = nil,
            describeWorkflowTypeSync: SimpleWorkflowClientProtocol.DescribeWorkflowTypeSyncType? = nil,
            getWorkflowExecutionHistoryAsync: SimpleWorkflowClientProtocol.GetWorkflowExecutionHistoryAsyncType? = nil,
            getWorkflowExecutionHistorySync: SimpleWorkflowClientProtocol.GetWorkflowExecutionHistorySyncType? = nil,
            listActivityTypesAsync: SimpleWorkflowClientProtocol.ListActivityTypesAsyncType? = nil,
            listActivityTypesSync: SimpleWorkflowClientProtocol.ListActivityTypesSyncType? = nil,
            listClosedWorkflowExecutionsAsync: SimpleWorkflowClientProtocol.ListClosedWorkflowExecutionsAsyncType? = nil,
            listClosedWorkflowExecutionsSync: SimpleWorkflowClientProtocol.ListClosedWorkflowExecutionsSyncType? = nil,
            listDomainsAsync: SimpleWorkflowClientProtocol.ListDomainsAsyncType? = nil,
            listDomainsSync: SimpleWorkflowClientProtocol.ListDomainsSyncType? = nil,
            listOpenWorkflowExecutionsAsync: SimpleWorkflowClientProtocol.ListOpenWorkflowExecutionsAsyncType? = nil,
            listOpenWorkflowExecutionsSync: SimpleWorkflowClientProtocol.ListOpenWorkflowExecutionsSyncType? = nil,
            listWorkflowTypesAsync: SimpleWorkflowClientProtocol.ListWorkflowTypesAsyncType? = nil,
            listWorkflowTypesSync: SimpleWorkflowClientProtocol.ListWorkflowTypesSyncType? = nil,
            pollForActivityTaskAsync: SimpleWorkflowClientProtocol.PollForActivityTaskAsyncType? = nil,
            pollForActivityTaskSync: SimpleWorkflowClientProtocol.PollForActivityTaskSyncType? = nil,
            pollForDecisionTaskAsync: SimpleWorkflowClientProtocol.PollForDecisionTaskAsyncType? = nil,
            pollForDecisionTaskSync: SimpleWorkflowClientProtocol.PollForDecisionTaskSyncType? = nil,
            recordActivityTaskHeartbeatAsync: SimpleWorkflowClientProtocol.RecordActivityTaskHeartbeatAsyncType? = nil,
            recordActivityTaskHeartbeatSync: SimpleWorkflowClientProtocol.RecordActivityTaskHeartbeatSyncType? = nil,
            registerActivityTypeAsync: SimpleWorkflowClientProtocol.RegisterActivityTypeAsyncType? = nil,
            registerActivityTypeSync: SimpleWorkflowClientProtocol.RegisterActivityTypeSyncType? = nil,
            registerDomainAsync: SimpleWorkflowClientProtocol.RegisterDomainAsyncType? = nil,
            registerDomainSync: SimpleWorkflowClientProtocol.RegisterDomainSyncType? = nil,
            registerWorkflowTypeAsync: SimpleWorkflowClientProtocol.RegisterWorkflowTypeAsyncType? = nil,
            registerWorkflowTypeSync: SimpleWorkflowClientProtocol.RegisterWorkflowTypeSyncType? = nil,
            requestCancelWorkflowExecutionAsync: SimpleWorkflowClientProtocol.RequestCancelWorkflowExecutionAsyncType? = nil,
            requestCancelWorkflowExecutionSync: SimpleWorkflowClientProtocol.RequestCancelWorkflowExecutionSyncType? = nil,
            respondActivityTaskCanceledAsync: SimpleWorkflowClientProtocol.RespondActivityTaskCanceledAsyncType? = nil,
            respondActivityTaskCanceledSync: SimpleWorkflowClientProtocol.RespondActivityTaskCanceledSyncType? = nil,
            respondActivityTaskCompletedAsync: SimpleWorkflowClientProtocol.RespondActivityTaskCompletedAsyncType? = nil,
            respondActivityTaskCompletedSync: SimpleWorkflowClientProtocol.RespondActivityTaskCompletedSyncType? = nil,
            respondActivityTaskFailedAsync: SimpleWorkflowClientProtocol.RespondActivityTaskFailedAsyncType? = nil,
            respondActivityTaskFailedSync: SimpleWorkflowClientProtocol.RespondActivityTaskFailedSyncType? = nil,
            respondDecisionTaskCompletedAsync: SimpleWorkflowClientProtocol.RespondDecisionTaskCompletedAsyncType? = nil,
            respondDecisionTaskCompletedSync: SimpleWorkflowClientProtocol.RespondDecisionTaskCompletedSyncType? = nil,
            signalWorkflowExecutionAsync: SimpleWorkflowClientProtocol.SignalWorkflowExecutionAsyncType? = nil,
            signalWorkflowExecutionSync: SimpleWorkflowClientProtocol.SignalWorkflowExecutionSyncType? = nil,
            startWorkflowExecutionAsync: SimpleWorkflowClientProtocol.StartWorkflowExecutionAsyncType? = nil,
            startWorkflowExecutionSync: SimpleWorkflowClientProtocol.StartWorkflowExecutionSyncType? = nil,
            terminateWorkflowExecutionAsync: SimpleWorkflowClientProtocol.TerminateWorkflowExecutionAsyncType? = nil,
            terminateWorkflowExecutionSync: SimpleWorkflowClientProtocol.TerminateWorkflowExecutionSyncType? = nil) {
        self.error = error
        self.countClosedWorkflowExecutionsAsyncOverride = countClosedWorkflowExecutionsAsync
        self.countClosedWorkflowExecutionsSyncOverride = countClosedWorkflowExecutionsSync
        self.countOpenWorkflowExecutionsAsyncOverride = countOpenWorkflowExecutionsAsync
        self.countOpenWorkflowExecutionsSyncOverride = countOpenWorkflowExecutionsSync
        self.countPendingActivityTasksAsyncOverride = countPendingActivityTasksAsync
        self.countPendingActivityTasksSyncOverride = countPendingActivityTasksSync
        self.countPendingDecisionTasksAsyncOverride = countPendingDecisionTasksAsync
        self.countPendingDecisionTasksSyncOverride = countPendingDecisionTasksSync
        self.deprecateActivityTypeAsyncOverride = deprecateActivityTypeAsync
        self.deprecateActivityTypeSyncOverride = deprecateActivityTypeSync
        self.deprecateDomainAsyncOverride = deprecateDomainAsync
        self.deprecateDomainSyncOverride = deprecateDomainSync
        self.deprecateWorkflowTypeAsyncOverride = deprecateWorkflowTypeAsync
        self.deprecateWorkflowTypeSyncOverride = deprecateWorkflowTypeSync
        self.describeActivityTypeAsyncOverride = describeActivityTypeAsync
        self.describeActivityTypeSyncOverride = describeActivityTypeSync
        self.describeDomainAsyncOverride = describeDomainAsync
        self.describeDomainSyncOverride = describeDomainSync
        self.describeWorkflowExecutionAsyncOverride = describeWorkflowExecutionAsync
        self.describeWorkflowExecutionSyncOverride = describeWorkflowExecutionSync
        self.describeWorkflowTypeAsyncOverride = describeWorkflowTypeAsync
        self.describeWorkflowTypeSyncOverride = describeWorkflowTypeSync
        self.getWorkflowExecutionHistoryAsyncOverride = getWorkflowExecutionHistoryAsync
        self.getWorkflowExecutionHistorySyncOverride = getWorkflowExecutionHistorySync
        self.listActivityTypesAsyncOverride = listActivityTypesAsync
        self.listActivityTypesSyncOverride = listActivityTypesSync
        self.listClosedWorkflowExecutionsAsyncOverride = listClosedWorkflowExecutionsAsync
        self.listClosedWorkflowExecutionsSyncOverride = listClosedWorkflowExecutionsSync
        self.listDomainsAsyncOverride = listDomainsAsync
        self.listDomainsSyncOverride = listDomainsSync
        self.listOpenWorkflowExecutionsAsyncOverride = listOpenWorkflowExecutionsAsync
        self.listOpenWorkflowExecutionsSyncOverride = listOpenWorkflowExecutionsSync
        self.listWorkflowTypesAsyncOverride = listWorkflowTypesAsync
        self.listWorkflowTypesSyncOverride = listWorkflowTypesSync
        self.pollForActivityTaskAsyncOverride = pollForActivityTaskAsync
        self.pollForActivityTaskSyncOverride = pollForActivityTaskSync
        self.pollForDecisionTaskAsyncOverride = pollForDecisionTaskAsync
        self.pollForDecisionTaskSyncOverride = pollForDecisionTaskSync
        self.recordActivityTaskHeartbeatAsyncOverride = recordActivityTaskHeartbeatAsync
        self.recordActivityTaskHeartbeatSyncOverride = recordActivityTaskHeartbeatSync
        self.registerActivityTypeAsyncOverride = registerActivityTypeAsync
        self.registerActivityTypeSyncOverride = registerActivityTypeSync
        self.registerDomainAsyncOverride = registerDomainAsync
        self.registerDomainSyncOverride = registerDomainSync
        self.registerWorkflowTypeAsyncOverride = registerWorkflowTypeAsync
        self.registerWorkflowTypeSyncOverride = registerWorkflowTypeSync
        self.requestCancelWorkflowExecutionAsyncOverride = requestCancelWorkflowExecutionAsync
        self.requestCancelWorkflowExecutionSyncOverride = requestCancelWorkflowExecutionSync
        self.respondActivityTaskCanceledAsyncOverride = respondActivityTaskCanceledAsync
        self.respondActivityTaskCanceledSyncOverride = respondActivityTaskCanceledSync
        self.respondActivityTaskCompletedAsyncOverride = respondActivityTaskCompletedAsync
        self.respondActivityTaskCompletedSyncOverride = respondActivityTaskCompletedSync
        self.respondActivityTaskFailedAsyncOverride = respondActivityTaskFailedAsync
        self.respondActivityTaskFailedSyncOverride = respondActivityTaskFailedSync
        self.respondDecisionTaskCompletedAsyncOverride = respondDecisionTaskCompletedAsync
        self.respondDecisionTaskCompletedSyncOverride = respondDecisionTaskCompletedSync
        self.signalWorkflowExecutionAsyncOverride = signalWorkflowExecutionAsync
        self.signalWorkflowExecutionSyncOverride = signalWorkflowExecutionSync
        self.startWorkflowExecutionAsyncOverride = startWorkflowExecutionAsync
        self.startWorkflowExecutionSyncOverride = startWorkflowExecutionSync
        self.terminateWorkflowExecutionAsyncOverride = terminateWorkflowExecutionAsync
        self.terminateWorkflowExecutionSyncOverride = terminateWorkflowExecutionSync
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws {
        if let countClosedWorkflowExecutionsAsyncOverride = countClosedWorkflowExecutionsAsyncOverride {
            return try countClosedWorkflowExecutionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutionsSync(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        if let countClosedWorkflowExecutionsSyncOverride = countClosedWorkflowExecutionsSyncOverride {
            return try countClosedWorkflowExecutionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws {
        if let countOpenWorkflowExecutionsAsyncOverride = countOpenWorkflowExecutionsAsyncOverride {
            return try countOpenWorkflowExecutionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutionsSync(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        if let countOpenWorkflowExecutionsSyncOverride = countOpenWorkflowExecutionsSyncOverride {
            return try countOpenWorkflowExecutionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CountPendingActivityTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasksAsync(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws {
        if let countPendingActivityTasksAsyncOverride = countPendingActivityTasksAsyncOverride {
            return try countPendingActivityTasksAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CountPendingActivityTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasksSync(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.PendingTaskCount {
        if let countPendingActivityTasksSyncOverride = countPendingActivityTasksSyncOverride {
            return try countPendingActivityTasksSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasksAsync(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws {
        if let countPendingDecisionTasksAsyncOverride = countPendingDecisionTasksAsyncOverride {
            return try countPendingDecisionTasksAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CountPendingDecisionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasksSync(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.PendingTaskCount {
        if let countPendingDecisionTasksSyncOverride = countPendingDecisionTasksSyncOverride {
            return try countPendingDecisionTasksSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeAsync(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deprecateActivityTypeAsyncOverride = deprecateActivityTypeAsyncOverride {
            return try deprecateActivityTypeAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeSync(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deprecateActivityTypeSyncOverride = deprecateActivityTypeSyncOverride {
            return try deprecateActivityTypeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainAsync(
            input: SimpleWorkflowModel.DeprecateDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deprecateDomainAsyncOverride = deprecateDomainAsyncOverride {
            return try deprecateDomainAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainSync(
            input: SimpleWorkflowModel.DeprecateDomainInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deprecateDomainSyncOverride = deprecateDomainSyncOverride {
            return try deprecateDomainSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeAsync(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deprecateWorkflowTypeAsyncOverride = deprecateWorkflowTypeAsyncOverride {
            return try deprecateWorkflowTypeAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeSync(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deprecateWorkflowTypeSyncOverride = deprecateWorkflowTypeSyncOverride {
            return try deprecateWorkflowTypeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
         - completion: The ActivityTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeActivityTypeAsync(
            input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) -> ()) throws {
        if let describeActivityTypeAsyncOverride = describeActivityTypeAsyncOverride {
            return try describeActivityTypeAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeActivityTypeSync(
            input: SimpleWorkflowModel.DescribeActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTypeDetail {
        if let describeActivityTypeSyncOverride = describeActivityTypeSyncOverride {
            return try describeActivityTypeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
         - completion: The DomainDetail object or an error will be passed to this 
           callback when the operation is complete. The DomainDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeDomainAsync(
            input: SimpleWorkflowModel.DescribeDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) -> ()) throws {
        if let describeDomainAsyncOverride = describeDomainAsyncOverride {
            return try describeDomainAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeDomainSync(
            input: SimpleWorkflowModel.DescribeDomainInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DomainDetail {
        if let describeDomainSyncOverride = describeDomainSyncOverride {
            return try describeDomainSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
         - completion: The WorkflowExecutionDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecutionAsync(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) -> ()) throws {
        if let describeWorkflowExecutionAsyncOverride = describeWorkflowExecutionAsyncOverride {
            return try describeWorkflowExecutionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecutionSync(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionDetail {
        if let describeWorkflowExecutionSyncOverride = describeWorkflowExecutionSyncOverride {
            return try describeWorkflowExecutionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the DescribeWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
         - completion: The WorkflowTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowTypeAsync(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) -> ()) throws {
        if let describeWorkflowTypeAsyncOverride = describeWorkflowTypeAsyncOverride {
            return try describeWorkflowTypeAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowTypeSync(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowTypeDetail {
        if let describeWorkflowTypeSyncOverride = describeWorkflowTypeSyncOverride {
            return try describeWorkflowTypeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
         - completion: The History object or an error will be passed to this 
           callback when the operation is complete. The History
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistoryAsync(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.History, HTTPClientError>) -> ()) throws {
        if let getWorkflowExecutionHistoryAsyncOverride = getWorkflowExecutionHistoryAsyncOverride {
            return try getWorkflowExecutionHistoryAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistorySync(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.History {
        if let getWorkflowExecutionHistorySyncOverride = getWorkflowExecutionHistorySyncOverride {
            return try getWorkflowExecutionHistorySyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ListActivityTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
         - completion: The ActivityTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listActivityTypesAsync(
            input: SimpleWorkflowModel.ListActivityTypesInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) -> ()) throws {
        if let listActivityTypesAsyncOverride = listActivityTypesAsyncOverride {
            return try listActivityTypesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListActivityTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listActivityTypesSync(
            input: SimpleWorkflowModel.ListActivityTypesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTypeInfos {
        if let listActivityTypesSyncOverride = listActivityTypesSyncOverride {
            return try listActivityTypesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws {
        if let listClosedWorkflowExecutionsAsyncOverride = listClosedWorkflowExecutionsAsyncOverride {
            return try listClosedWorkflowExecutionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutionsSync(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        if let listClosedWorkflowExecutionsSyncOverride = listClosedWorkflowExecutionsSyncOverride {
            return try listClosedWorkflowExecutionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ListDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
         - completion: The DomainInfos object or an error will be passed to this 
           callback when the operation is complete. The DomainInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    public func listDomainsAsync(
            input: SimpleWorkflowModel.ListDomainsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) -> ()) throws {
        if let listDomainsAsyncOverride = listDomainsAsyncOverride {
            return try listDomainsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    public func listDomainsSync(
            input: SimpleWorkflowModel.ListDomainsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DomainInfos {
        if let listDomainsSyncOverride = listDomainsSyncOverride {
            return try listDomainsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws {
        if let listOpenWorkflowExecutionsAsyncOverride = listOpenWorkflowExecutionsAsyncOverride {
            return try listOpenWorkflowExecutionsAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutionsSync(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        if let listOpenWorkflowExecutionsSyncOverride = listOpenWorkflowExecutionsSyncOverride {
            return try listOpenWorkflowExecutionsSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the ListWorkflowTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
         - completion: The WorkflowTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypesAsync(
            input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) -> ()) throws {
        if let listWorkflowTypesAsyncOverride = listWorkflowTypesAsyncOverride {
            return try listWorkflowTypesAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListWorkflowTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypesSync(
            input: SimpleWorkflowModel.ListWorkflowTypesInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.WorkflowTypeInfos {
        if let listWorkflowTypesSyncOverride = listWorkflowTypesSyncOverride {
            return try listWorkflowTypesSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the PollForActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
         - completion: The ActivityTask object or an error will be passed to this 
           callback when the operation is complete. The ActivityTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTaskAsync(
            input: SimpleWorkflowModel.PollForActivityTaskInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) -> ()) throws {
        if let pollForActivityTaskAsyncOverride = pollForActivityTaskAsyncOverride {
            return try pollForActivityTaskAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PollForActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTaskSync(
            input: SimpleWorkflowModel.PollForActivityTaskInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTask {
        if let pollForActivityTaskSyncOverride = pollForActivityTaskSyncOverride {
            return try pollForActivityTaskSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the PollForDecisionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
         - completion: The DecisionTask object or an error will be passed to this 
           callback when the operation is complete. The DecisionTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTaskAsync(
            input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) -> ()) throws {
        if let pollForDecisionTaskAsyncOverride = pollForDecisionTaskAsyncOverride {
            return try pollForDecisionTaskAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PollForDecisionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTaskSync(
            input: SimpleWorkflowModel.PollForDecisionTaskInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.DecisionTask {
        if let pollForDecisionTaskSyncOverride = pollForDecisionTaskSyncOverride {
            return try pollForDecisionTaskSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
         - completion: The ActivityTaskStatus object or an error will be passed to this 
           callback when the operation is complete. The ActivityTaskStatus
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeatAsync(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) -> ()) throws {
        if let recordActivityTaskHeartbeatAsyncOverride = recordActivityTaskHeartbeatAsyncOverride {
            return try recordActivityTaskHeartbeatAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeatSync(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.ActivityTaskStatus {
        if let recordActivityTaskHeartbeatSyncOverride = recordActivityTaskHeartbeatSyncOverride {
            return try recordActivityTaskHeartbeatSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RegisterActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeAsync(
            input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let registerActivityTypeAsyncOverride = registerActivityTypeAsyncOverride {
            return try registerActivityTypeAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeSync(
            input: SimpleWorkflowModel.RegisterActivityTypeInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let registerActivityTypeSyncOverride = registerActivityTypeSyncOverride {
            return try registerActivityTypeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted.
     */
    public func registerDomainAsync(
            input: SimpleWorkflowModel.RegisterDomainInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let registerDomainAsyncOverride = registerDomainAsyncOverride {
            return try registerDomainAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted.
     */
    public func registerDomainSync(
            input: SimpleWorkflowModel.RegisterDomainInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let registerDomainSyncOverride = registerDomainSyncOverride {
            return try registerDomainSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RegisterWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeAsync(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let registerWorkflowTypeAsyncOverride = registerWorkflowTypeAsyncOverride {
            return try registerWorkflowTypeAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeSync(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let registerWorkflowTypeSyncOverride = registerWorkflowTypeSyncOverride {
            return try registerWorkflowTypeSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionAsync(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let requestCancelWorkflowExecutionAsyncOverride = requestCancelWorkflowExecutionAsyncOverride {
            return try requestCancelWorkflowExecutionAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionSync(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let requestCancelWorkflowExecutionSyncOverride = requestCancelWorkflowExecutionSyncOverride {
            return try requestCancelWorkflowExecutionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledAsync(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondActivityTaskCanceledAsyncOverride = respondActivityTaskCanceledAsyncOverride {
            return try respondActivityTaskCanceledAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledSync(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let respondActivityTaskCanceledSyncOverride = respondActivityTaskCanceledSyncOverride {
            return try respondActivityTaskCanceledSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedAsync(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondActivityTaskCompletedAsyncOverride = respondActivityTaskCompletedAsyncOverride {
            return try respondActivityTaskCompletedAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedSync(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let respondActivityTaskCompletedSyncOverride = respondActivityTaskCompletedSyncOverride {
            return try respondActivityTaskCompletedSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedAsync(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondActivityTaskFailedAsyncOverride = respondActivityTaskFailedAsyncOverride {
            return try respondActivityTaskFailedAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedSync(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let respondActivityTaskFailedSyncOverride = respondActivityTaskFailedSyncOverride {
            return try respondActivityTaskFailedSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedAsync(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondDecisionTaskCompletedAsyncOverride = respondDecisionTaskCompletedAsyncOverride {
            return try respondDecisionTaskCompletedAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedSync(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let respondDecisionTaskCompletedSyncOverride = respondDecisionTaskCompletedSyncOverride {
            return try respondDecisionTaskCompletedSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the SignalWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionAsync(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let signalWorkflowExecutionAsyncOverride = signalWorkflowExecutionAsyncOverride {
            return try signalWorkflowExecutionAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionSync(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let signalWorkflowExecutionSyncOverride = signalWorkflowExecutionSyncOverride {
            return try signalWorkflowExecutionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the StartWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
         - completion: The Run object or an error will be passed to this 
           callback when the operation is complete. The Run
           object will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecutionAsync(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleWorkflowModel.Run, HTTPClientError>) -> ()) throws {
        if let startWorkflowExecutionAsyncOverride = startWorkflowExecutionAsyncOverride {
            return try startWorkflowExecutionAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecutionSync(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleWorkflowModel.Run {
        if let startWorkflowExecutionSyncOverride = startWorkflowExecutionSyncOverride {
            return try startWorkflowExecutionSyncOverride(input, reporting)
        }

        throw error
    }

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionAsync(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let terminateWorkflowExecutionAsyncOverride = terminateWorkflowExecutionAsyncOverride {
            return try terminateWorkflowExecutionAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionSync(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let terminateWorkflowExecutionSyncOverride = terminateWorkflowExecutionSyncOverride {
            return try terminateWorkflowExecutionSyncOverride(input, reporting)
        }

        throw error
    }
}
