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
// MockSimpleWorkflowClient.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleWorkflow service by default returns the `__default` property of its return type.
 */
public struct MockSimpleWorkflowClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: SimpleWorkflowClientProtocol {
    let countClosedWorkflowExecutionsAsyncOverride: CountClosedWorkflowExecutionsAsyncType<ClientInvocationReportingType>?
    let countClosedWorkflowExecutionsSyncOverride: CountClosedWorkflowExecutionsSyncType<ClientInvocationReportingType>?
    let countOpenWorkflowExecutionsAsyncOverride: CountOpenWorkflowExecutionsAsyncType<ClientInvocationReportingType>?
    let countOpenWorkflowExecutionsSyncOverride: CountOpenWorkflowExecutionsSyncType<ClientInvocationReportingType>?
    let countPendingActivityTasksAsyncOverride: CountPendingActivityTasksAsyncType<ClientInvocationReportingType>?
    let countPendingActivityTasksSyncOverride: CountPendingActivityTasksSyncType<ClientInvocationReportingType>?
    let countPendingDecisionTasksAsyncOverride: CountPendingDecisionTasksAsyncType<ClientInvocationReportingType>?
    let countPendingDecisionTasksSyncOverride: CountPendingDecisionTasksSyncType<ClientInvocationReportingType>?
    let deprecateActivityTypeAsyncOverride: DeprecateActivityTypeAsyncType<ClientInvocationReportingType>?
    let deprecateActivityTypeSyncOverride: DeprecateActivityTypeSyncType<ClientInvocationReportingType>?
    let deprecateDomainAsyncOverride: DeprecateDomainAsyncType<ClientInvocationReportingType>?
    let deprecateDomainSyncOverride: DeprecateDomainSyncType<ClientInvocationReportingType>?
    let deprecateWorkflowTypeAsyncOverride: DeprecateWorkflowTypeAsyncType<ClientInvocationReportingType>?
    let deprecateWorkflowTypeSyncOverride: DeprecateWorkflowTypeSyncType<ClientInvocationReportingType>?
    let describeActivityTypeAsyncOverride: DescribeActivityTypeAsyncType<ClientInvocationReportingType>?
    let describeActivityTypeSyncOverride: DescribeActivityTypeSyncType<ClientInvocationReportingType>?
    let describeDomainAsyncOverride: DescribeDomainAsyncType<ClientInvocationReportingType>?
    let describeDomainSyncOverride: DescribeDomainSyncType<ClientInvocationReportingType>?
    let describeWorkflowExecutionAsyncOverride: DescribeWorkflowExecutionAsyncType<ClientInvocationReportingType>?
    let describeWorkflowExecutionSyncOverride: DescribeWorkflowExecutionSyncType<ClientInvocationReportingType>?
    let describeWorkflowTypeAsyncOverride: DescribeWorkflowTypeAsyncType<ClientInvocationReportingType>?
    let describeWorkflowTypeSyncOverride: DescribeWorkflowTypeSyncType<ClientInvocationReportingType>?
    let getWorkflowExecutionHistoryAsyncOverride: GetWorkflowExecutionHistoryAsyncType<ClientInvocationReportingType>?
    let getWorkflowExecutionHistorySyncOverride: GetWorkflowExecutionHistorySyncType<ClientInvocationReportingType>?
    let listActivityTypesAsyncOverride: ListActivityTypesAsyncType<ClientInvocationReportingType>?
    let listActivityTypesSyncOverride: ListActivityTypesSyncType<ClientInvocationReportingType>?
    let listClosedWorkflowExecutionsAsyncOverride: ListClosedWorkflowExecutionsAsyncType<ClientInvocationReportingType>?
    let listClosedWorkflowExecutionsSyncOverride: ListClosedWorkflowExecutionsSyncType<ClientInvocationReportingType>?
    let listDomainsAsyncOverride: ListDomainsAsyncType<ClientInvocationReportingType>?
    let listDomainsSyncOverride: ListDomainsSyncType<ClientInvocationReportingType>?
    let listOpenWorkflowExecutionsAsyncOverride: ListOpenWorkflowExecutionsAsyncType<ClientInvocationReportingType>?
    let listOpenWorkflowExecutionsSyncOverride: ListOpenWorkflowExecutionsSyncType<ClientInvocationReportingType>?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType<ClientInvocationReportingType>?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType<ClientInvocationReportingType>?
    let listWorkflowTypesAsyncOverride: ListWorkflowTypesAsyncType<ClientInvocationReportingType>?
    let listWorkflowTypesSyncOverride: ListWorkflowTypesSyncType<ClientInvocationReportingType>?
    let pollForActivityTaskAsyncOverride: PollForActivityTaskAsyncType<ClientInvocationReportingType>?
    let pollForActivityTaskSyncOverride: PollForActivityTaskSyncType<ClientInvocationReportingType>?
    let pollForDecisionTaskAsyncOverride: PollForDecisionTaskAsyncType<ClientInvocationReportingType>?
    let pollForDecisionTaskSyncOverride: PollForDecisionTaskSyncType<ClientInvocationReportingType>?
    let recordActivityTaskHeartbeatAsyncOverride: RecordActivityTaskHeartbeatAsyncType<ClientInvocationReportingType>?
    let recordActivityTaskHeartbeatSyncOverride: RecordActivityTaskHeartbeatSyncType<ClientInvocationReportingType>?
    let registerActivityTypeAsyncOverride: RegisterActivityTypeAsyncType<ClientInvocationReportingType>?
    let registerActivityTypeSyncOverride: RegisterActivityTypeSyncType<ClientInvocationReportingType>?
    let registerDomainAsyncOverride: RegisterDomainAsyncType<ClientInvocationReportingType>?
    let registerDomainSyncOverride: RegisterDomainSyncType<ClientInvocationReportingType>?
    let registerWorkflowTypeAsyncOverride: RegisterWorkflowTypeAsyncType<ClientInvocationReportingType>?
    let registerWorkflowTypeSyncOverride: RegisterWorkflowTypeSyncType<ClientInvocationReportingType>?
    let requestCancelWorkflowExecutionAsyncOverride: RequestCancelWorkflowExecutionAsyncType<ClientInvocationReportingType>?
    let requestCancelWorkflowExecutionSyncOverride: RequestCancelWorkflowExecutionSyncType<ClientInvocationReportingType>?
    let respondActivityTaskCanceledAsyncOverride: RespondActivityTaskCanceledAsyncType<ClientInvocationReportingType>?
    let respondActivityTaskCanceledSyncOverride: RespondActivityTaskCanceledSyncType<ClientInvocationReportingType>?
    let respondActivityTaskCompletedAsyncOverride: RespondActivityTaskCompletedAsyncType<ClientInvocationReportingType>?
    let respondActivityTaskCompletedSyncOverride: RespondActivityTaskCompletedSyncType<ClientInvocationReportingType>?
    let respondActivityTaskFailedAsyncOverride: RespondActivityTaskFailedAsyncType<ClientInvocationReportingType>?
    let respondActivityTaskFailedSyncOverride: RespondActivityTaskFailedSyncType<ClientInvocationReportingType>?
    let respondDecisionTaskCompletedAsyncOverride: RespondDecisionTaskCompletedAsyncType<ClientInvocationReportingType>?
    let respondDecisionTaskCompletedSyncOverride: RespondDecisionTaskCompletedSyncType<ClientInvocationReportingType>?
    let signalWorkflowExecutionAsyncOverride: SignalWorkflowExecutionAsyncType<ClientInvocationReportingType>?
    let signalWorkflowExecutionSyncOverride: SignalWorkflowExecutionSyncType<ClientInvocationReportingType>?
    let startWorkflowExecutionAsyncOverride: StartWorkflowExecutionAsyncType<ClientInvocationReportingType>?
    let startWorkflowExecutionSyncOverride: StartWorkflowExecutionSyncType<ClientInvocationReportingType>?
    let tagResourceAsyncOverride: TagResourceAsyncType<ClientInvocationReportingType>?
    let tagResourceSyncOverride: TagResourceSyncType<ClientInvocationReportingType>?
    let terminateWorkflowExecutionAsyncOverride: TerminateWorkflowExecutionAsyncType<ClientInvocationReportingType>?
    let terminateWorkflowExecutionSyncOverride: TerminateWorkflowExecutionSyncType<ClientInvocationReportingType>?
    let undeprecateActivityTypeAsyncOverride: UndeprecateActivityTypeAsyncType<ClientInvocationReportingType>?
    let undeprecateActivityTypeSyncOverride: UndeprecateActivityTypeSyncType<ClientInvocationReportingType>?
    let undeprecateDomainAsyncOverride: UndeprecateDomainAsyncType<ClientInvocationReportingType>?
    let undeprecateDomainSyncOverride: UndeprecateDomainSyncType<ClientInvocationReportingType>?
    let undeprecateWorkflowTypeAsyncOverride: UndeprecateWorkflowTypeAsyncType<ClientInvocationReportingType>?
    let undeprecateWorkflowTypeSyncOverride: UndeprecateWorkflowTypeSyncType<ClientInvocationReportingType>?
    let untagResourceAsyncOverride: UntagResourceAsyncType<ClientInvocationReportingType>?
    let untagResourceSyncOverride: UntagResourceSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            countClosedWorkflowExecutionsAsync: CountClosedWorkflowExecutionsAsyncType<ClientInvocationReportingType>? = nil,
            countClosedWorkflowExecutionsSync: CountClosedWorkflowExecutionsSyncType<ClientInvocationReportingType>? = nil,
            countOpenWorkflowExecutionsAsync: CountOpenWorkflowExecutionsAsyncType<ClientInvocationReportingType>? = nil,
            countOpenWorkflowExecutionsSync: CountOpenWorkflowExecutionsSyncType<ClientInvocationReportingType>? = nil,
            countPendingActivityTasksAsync: CountPendingActivityTasksAsyncType<ClientInvocationReportingType>? = nil,
            countPendingActivityTasksSync: CountPendingActivityTasksSyncType<ClientInvocationReportingType>? = nil,
            countPendingDecisionTasksAsync: CountPendingDecisionTasksAsyncType<ClientInvocationReportingType>? = nil,
            countPendingDecisionTasksSync: CountPendingDecisionTasksSyncType<ClientInvocationReportingType>? = nil,
            deprecateActivityTypeAsync: DeprecateActivityTypeAsyncType<ClientInvocationReportingType>? = nil,
            deprecateActivityTypeSync: DeprecateActivityTypeSyncType<ClientInvocationReportingType>? = nil,
            deprecateDomainAsync: DeprecateDomainAsyncType<ClientInvocationReportingType>? = nil,
            deprecateDomainSync: DeprecateDomainSyncType<ClientInvocationReportingType>? = nil,
            deprecateWorkflowTypeAsync: DeprecateWorkflowTypeAsyncType<ClientInvocationReportingType>? = nil,
            deprecateWorkflowTypeSync: DeprecateWorkflowTypeSyncType<ClientInvocationReportingType>? = nil,
            describeActivityTypeAsync: DescribeActivityTypeAsyncType<ClientInvocationReportingType>? = nil,
            describeActivityTypeSync: DescribeActivityTypeSyncType<ClientInvocationReportingType>? = nil,
            describeDomainAsync: DescribeDomainAsyncType<ClientInvocationReportingType>? = nil,
            describeDomainSync: DescribeDomainSyncType<ClientInvocationReportingType>? = nil,
            describeWorkflowExecutionAsync: DescribeWorkflowExecutionAsyncType<ClientInvocationReportingType>? = nil,
            describeWorkflowExecutionSync: DescribeWorkflowExecutionSyncType<ClientInvocationReportingType>? = nil,
            describeWorkflowTypeAsync: DescribeWorkflowTypeAsyncType<ClientInvocationReportingType>? = nil,
            describeWorkflowTypeSync: DescribeWorkflowTypeSyncType<ClientInvocationReportingType>? = nil,
            getWorkflowExecutionHistoryAsync: GetWorkflowExecutionHistoryAsyncType<ClientInvocationReportingType>? = nil,
            getWorkflowExecutionHistorySync: GetWorkflowExecutionHistorySyncType<ClientInvocationReportingType>? = nil,
            listActivityTypesAsync: ListActivityTypesAsyncType<ClientInvocationReportingType>? = nil,
            listActivityTypesSync: ListActivityTypesSyncType<ClientInvocationReportingType>? = nil,
            listClosedWorkflowExecutionsAsync: ListClosedWorkflowExecutionsAsyncType<ClientInvocationReportingType>? = nil,
            listClosedWorkflowExecutionsSync: ListClosedWorkflowExecutionsSyncType<ClientInvocationReportingType>? = nil,
            listDomainsAsync: ListDomainsAsyncType<ClientInvocationReportingType>? = nil,
            listDomainsSync: ListDomainsSyncType<ClientInvocationReportingType>? = nil,
            listOpenWorkflowExecutionsAsync: ListOpenWorkflowExecutionsAsyncType<ClientInvocationReportingType>? = nil,
            listOpenWorkflowExecutionsSync: ListOpenWorkflowExecutionsSyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType<ClientInvocationReportingType>? = nil,
            listWorkflowTypesAsync: ListWorkflowTypesAsyncType<ClientInvocationReportingType>? = nil,
            listWorkflowTypesSync: ListWorkflowTypesSyncType<ClientInvocationReportingType>? = nil,
            pollForActivityTaskAsync: PollForActivityTaskAsyncType<ClientInvocationReportingType>? = nil,
            pollForActivityTaskSync: PollForActivityTaskSyncType<ClientInvocationReportingType>? = nil,
            pollForDecisionTaskAsync: PollForDecisionTaskAsyncType<ClientInvocationReportingType>? = nil,
            pollForDecisionTaskSync: PollForDecisionTaskSyncType<ClientInvocationReportingType>? = nil,
            recordActivityTaskHeartbeatAsync: RecordActivityTaskHeartbeatAsyncType<ClientInvocationReportingType>? = nil,
            recordActivityTaskHeartbeatSync: RecordActivityTaskHeartbeatSyncType<ClientInvocationReportingType>? = nil,
            registerActivityTypeAsync: RegisterActivityTypeAsyncType<ClientInvocationReportingType>? = nil,
            registerActivityTypeSync: RegisterActivityTypeSyncType<ClientInvocationReportingType>? = nil,
            registerDomainAsync: RegisterDomainAsyncType<ClientInvocationReportingType>? = nil,
            registerDomainSync: RegisterDomainSyncType<ClientInvocationReportingType>? = nil,
            registerWorkflowTypeAsync: RegisterWorkflowTypeAsyncType<ClientInvocationReportingType>? = nil,
            registerWorkflowTypeSync: RegisterWorkflowTypeSyncType<ClientInvocationReportingType>? = nil,
            requestCancelWorkflowExecutionAsync: RequestCancelWorkflowExecutionAsyncType<ClientInvocationReportingType>? = nil,
            requestCancelWorkflowExecutionSync: RequestCancelWorkflowExecutionSyncType<ClientInvocationReportingType>? = nil,
            respondActivityTaskCanceledAsync: RespondActivityTaskCanceledAsyncType<ClientInvocationReportingType>? = nil,
            respondActivityTaskCanceledSync: RespondActivityTaskCanceledSyncType<ClientInvocationReportingType>? = nil,
            respondActivityTaskCompletedAsync: RespondActivityTaskCompletedAsyncType<ClientInvocationReportingType>? = nil,
            respondActivityTaskCompletedSync: RespondActivityTaskCompletedSyncType<ClientInvocationReportingType>? = nil,
            respondActivityTaskFailedAsync: RespondActivityTaskFailedAsyncType<ClientInvocationReportingType>? = nil,
            respondActivityTaskFailedSync: RespondActivityTaskFailedSyncType<ClientInvocationReportingType>? = nil,
            respondDecisionTaskCompletedAsync: RespondDecisionTaskCompletedAsyncType<ClientInvocationReportingType>? = nil,
            respondDecisionTaskCompletedSync: RespondDecisionTaskCompletedSyncType<ClientInvocationReportingType>? = nil,
            signalWorkflowExecutionAsync: SignalWorkflowExecutionAsyncType<ClientInvocationReportingType>? = nil,
            signalWorkflowExecutionSync: SignalWorkflowExecutionSyncType<ClientInvocationReportingType>? = nil,
            startWorkflowExecutionAsync: StartWorkflowExecutionAsyncType<ClientInvocationReportingType>? = nil,
            startWorkflowExecutionSync: StartWorkflowExecutionSyncType<ClientInvocationReportingType>? = nil,
            tagResourceAsync: TagResourceAsyncType<ClientInvocationReportingType>? = nil,
            tagResourceSync: TagResourceSyncType<ClientInvocationReportingType>? = nil,
            terminateWorkflowExecutionAsync: TerminateWorkflowExecutionAsyncType<ClientInvocationReportingType>? = nil,
            terminateWorkflowExecutionSync: TerminateWorkflowExecutionSyncType<ClientInvocationReportingType>? = nil,
            undeprecateActivityTypeAsync: UndeprecateActivityTypeAsyncType<ClientInvocationReportingType>? = nil,
            undeprecateActivityTypeSync: UndeprecateActivityTypeSyncType<ClientInvocationReportingType>? = nil,
            undeprecateDomainAsync: UndeprecateDomainAsyncType<ClientInvocationReportingType>? = nil,
            undeprecateDomainSync: UndeprecateDomainSyncType<ClientInvocationReportingType>? = nil,
            undeprecateWorkflowTypeAsync: UndeprecateWorkflowTypeAsyncType<ClientInvocationReportingType>? = nil,
            undeprecateWorkflowTypeSync: UndeprecateWorkflowTypeSyncType<ClientInvocationReportingType>? = nil,
            untagResourceAsync: UntagResourceAsyncType<ClientInvocationReportingType>? = nil,
            untagResourceSync: UntagResourceSyncType<ClientInvocationReportingType>? = nil) {
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
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
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
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.terminateWorkflowExecutionAsyncOverride = terminateWorkflowExecutionAsync
        self.terminateWorkflowExecutionSyncOverride = terminateWorkflowExecutionSync
        self.undeprecateActivityTypeAsyncOverride = undeprecateActivityTypeAsync
        self.undeprecateActivityTypeSyncOverride = undeprecateActivityTypeSync
        self.undeprecateDomainAsyncOverride = undeprecateDomainAsync
        self.undeprecateDomainSyncOverride = undeprecateDomainSync
        self.undeprecateWorkflowTypeAsyncOverride = undeprecateWorkflowTypeAsync
        self.undeprecateWorkflowTypeSyncOverride = undeprecateWorkflowTypeSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
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
    public func countClosedWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws {
        if let countClosedWorkflowExecutionsAsyncOverrideNonOptional = countClosedWorkflowExecutionsAsyncOverride {
            if let countClosedWorkflowExecutionsAsyncOverrideTyped = countClosedWorkflowExecutionsAsyncOverrideNonOptional
                    as? CountClosedWorkflowExecutionsAsyncType<InvocationReportingType> {
                return try countClosedWorkflowExecutionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowExecutionCount.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        if let countClosedWorkflowExecutionsSyncOverrideNonOptional = countClosedWorkflowExecutionsSyncOverride {
            if let countClosedWorkflowExecutionsSyncOverrideTyped = countClosedWorkflowExecutionsSyncOverrideNonOptional
                    as? CountClosedWorkflowExecutionsSyncType<InvocationReportingType> {
                return try countClosedWorkflowExecutionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowExecutionCount.__default
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
    public func countOpenWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) -> ()) throws {
        if let countOpenWorkflowExecutionsAsyncOverrideNonOptional = countOpenWorkflowExecutionsAsyncOverride {
            if let countOpenWorkflowExecutionsAsyncOverrideTyped = countOpenWorkflowExecutionsAsyncOverrideNonOptional
                    as? CountOpenWorkflowExecutionsAsyncType<InvocationReportingType> {
                return try countOpenWorkflowExecutionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowExecutionCount.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        if let countOpenWorkflowExecutionsSyncOverrideNonOptional = countOpenWorkflowExecutionsSyncOverride {
            if let countOpenWorkflowExecutionsSyncOverrideTyped = countOpenWorkflowExecutionsSyncOverrideNonOptional
                    as? CountOpenWorkflowExecutionsSyncType<InvocationReportingType> {
                return try countOpenWorkflowExecutionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowExecutionCount.__default
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
    public func countPendingActivityTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws {
        if let countPendingActivityTasksAsyncOverrideNonOptional = countPendingActivityTasksAsyncOverride {
            if let countPendingActivityTasksAsyncOverrideTyped = countPendingActivityTasksAsyncOverrideNonOptional
                    as? CountPendingActivityTasksAsyncType<InvocationReportingType> {
                return try countPendingActivityTasksAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = PendingTaskCount.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CountPendingActivityTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.PendingTaskCount {
        if let countPendingActivityTasksSyncOverrideNonOptional = countPendingActivityTasksSyncOverride {
            if let countPendingActivityTasksSyncOverrideTyped = countPendingActivityTasksSyncOverrideNonOptional
                    as? CountPendingActivityTasksSyncType<InvocationReportingType> {
                return try countPendingActivityTasksSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return PendingTaskCount.__default
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
    public func countPendingDecisionTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) -> ()) throws {
        if let countPendingDecisionTasksAsyncOverrideNonOptional = countPendingDecisionTasksAsyncOverride {
            if let countPendingDecisionTasksAsyncOverrideTyped = countPendingDecisionTasksAsyncOverrideNonOptional
                    as? CountPendingDecisionTasksAsyncType<InvocationReportingType> {
                return try countPendingDecisionTasksAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = PendingTaskCount.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CountPendingDecisionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.PendingTaskCount {
        if let countPendingDecisionTasksSyncOverrideNonOptional = countPendingDecisionTasksSyncOverride {
            if let countPendingDecisionTasksSyncOverrideTyped = countPendingDecisionTasksSyncOverrideNonOptional
                    as? CountPendingDecisionTasksSyncType<InvocationReportingType> {
                return try countPendingDecisionTasksSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return PendingTaskCount.__default
    }

    /**
     Invokes the DeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deprecateActivityTypeAsyncOverrideNonOptional = deprecateActivityTypeAsyncOverride {
            if let deprecateActivityTypeAsyncOverrideTyped = deprecateActivityTypeAsyncOverrideNonOptional
                    as? DeprecateActivityTypeAsyncType<InvocationReportingType> {
                return try deprecateActivityTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput,
            reporting: InvocationReportingType) throws {
        if let deprecateActivityTypeSyncOverrideNonOptional = deprecateActivityTypeSyncOverride {
            if let deprecateActivityTypeSyncOverrideTyped = deprecateActivityTypeSyncOverrideNonOptional
                    as? DeprecateActivityTypeSyncType<InvocationReportingType> {
                return try deprecateActivityTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the DeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deprecateDomainAsyncOverrideNonOptional = deprecateDomainAsyncOverride {
            if let deprecateDomainAsyncOverrideTyped = deprecateDomainAsyncOverrideNonOptional
                    as? DeprecateDomainAsyncType<InvocationReportingType> {
                return try deprecateDomainAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateDomainInput,
            reporting: InvocationReportingType) throws {
        if let deprecateDomainSyncOverrideNonOptional = deprecateDomainSyncOverride {
            if let deprecateDomainSyncOverrideTyped = deprecateDomainSyncOverrideNonOptional
                    as? DeprecateDomainSyncType<InvocationReportingType> {
                return try deprecateDomainSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the DeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deprecateWorkflowTypeAsyncOverrideNonOptional = deprecateWorkflowTypeAsyncOverride {
            if let deprecateWorkflowTypeAsyncOverrideTyped = deprecateWorkflowTypeAsyncOverrideNonOptional
                    as? DeprecateWorkflowTypeAsyncType<InvocationReportingType> {
                return try deprecateWorkflowTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput,
            reporting: InvocationReportingType) throws {
        if let deprecateWorkflowTypeSyncOverrideNonOptional = deprecateWorkflowTypeSyncOverride {
            if let deprecateWorkflowTypeSyncOverrideTyped = deprecateWorkflowTypeSyncOverrideNonOptional
                    as? DeprecateWorkflowTypeSyncType<InvocationReportingType> {
                return try deprecateWorkflowTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

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
    public func describeActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) -> ()) throws {
        if let describeActivityTypeAsyncOverrideNonOptional = describeActivityTypeAsyncOverride {
            if let describeActivityTypeAsyncOverrideTyped = describeActivityTypeAsyncOverrideNonOptional
                    as? DescribeActivityTypeAsyncType<InvocationReportingType> {
                return try describeActivityTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ActivityTypeDetail.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeActivityTypeInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTypeDetail {
        if let describeActivityTypeSyncOverrideNonOptional = describeActivityTypeSyncOverride {
            if let describeActivityTypeSyncOverrideTyped = describeActivityTypeSyncOverrideNonOptional
                    as? DescribeActivityTypeSyncType<InvocationReportingType> {
                return try describeActivityTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ActivityTypeDetail.__default
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
    public func describeDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) -> ()) throws {
        if let describeDomainAsyncOverrideNonOptional = describeDomainAsyncOverride {
            if let describeDomainAsyncOverrideTyped = describeDomainAsyncOverrideNonOptional
                    as? DescribeDomainAsyncType<InvocationReportingType> {
                return try describeDomainAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = DomainDetail.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeDomainInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DomainDetail {
        if let describeDomainSyncOverrideNonOptional = describeDomainSyncOverride {
            if let describeDomainSyncOverrideTyped = describeDomainSyncOverrideNonOptional
                    as? DescribeDomainSyncType<InvocationReportingType> {
                return try describeDomainSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return DomainDetail.__default
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
    public func describeWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) -> ()) throws {
        if let describeWorkflowExecutionAsyncOverrideNonOptional = describeWorkflowExecutionAsyncOverride {
            if let describeWorkflowExecutionAsyncOverrideTyped = describeWorkflowExecutionAsyncOverrideNonOptional
                    as? DescribeWorkflowExecutionAsyncType<InvocationReportingType> {
                return try describeWorkflowExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowExecutionDetail.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionDetail {
        if let describeWorkflowExecutionSyncOverrideNonOptional = describeWorkflowExecutionSyncOverride {
            if let describeWorkflowExecutionSyncOverrideTyped = describeWorkflowExecutionSyncOverrideNonOptional
                    as? DescribeWorkflowExecutionSyncType<InvocationReportingType> {
                return try describeWorkflowExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowExecutionDetail.__default
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
    public func describeWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) -> ()) throws {
        if let describeWorkflowTypeAsyncOverrideNonOptional = describeWorkflowTypeAsyncOverride {
            if let describeWorkflowTypeAsyncOverrideTyped = describeWorkflowTypeAsyncOverrideNonOptional
                    as? DescribeWorkflowTypeAsyncType<InvocationReportingType> {
                return try describeWorkflowTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowTypeDetail.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowTypeDetail {
        if let describeWorkflowTypeSyncOverrideNonOptional = describeWorkflowTypeSyncOverride {
            if let describeWorkflowTypeSyncOverrideTyped = describeWorkflowTypeSyncOverrideNonOptional
                    as? DescribeWorkflowTypeSyncType<InvocationReportingType> {
                return try describeWorkflowTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowTypeDetail.__default
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
    public func getWorkflowExecutionHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.History, HTTPClientError>) -> ()) throws {
        if let getWorkflowExecutionHistoryAsyncOverrideNonOptional = getWorkflowExecutionHistoryAsyncOverride {
            if let getWorkflowExecutionHistoryAsyncOverrideTyped = getWorkflowExecutionHistoryAsyncOverrideNonOptional
                    as? GetWorkflowExecutionHistoryAsyncType<InvocationReportingType> {
                return try getWorkflowExecutionHistoryAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = History.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.History {
        if let getWorkflowExecutionHistorySyncOverrideNonOptional = getWorkflowExecutionHistorySyncOverride {
            if let getWorkflowExecutionHistorySyncOverrideTyped = getWorkflowExecutionHistorySyncOverrideNonOptional
                    as? GetWorkflowExecutionHistorySyncType<InvocationReportingType> {
                return try getWorkflowExecutionHistorySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return History.__default
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
    public func listActivityTypesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListActivityTypesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) -> ()) throws {
        if let listActivityTypesAsyncOverrideNonOptional = listActivityTypesAsyncOverride {
            if let listActivityTypesAsyncOverrideTyped = listActivityTypesAsyncOverrideNonOptional
                    as? ListActivityTypesAsyncType<InvocationReportingType> {
                return try listActivityTypesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ActivityTypeInfos.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListActivityTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listActivityTypesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListActivityTypesInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTypeInfos {
        if let listActivityTypesSyncOverrideNonOptional = listActivityTypesSyncOverride {
            if let listActivityTypesSyncOverrideTyped = listActivityTypesSyncOverrideNonOptional
                    as? ListActivityTypesSyncType<InvocationReportingType> {
                return try listActivityTypesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ActivityTypeInfos.__default
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
    public func listClosedWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws {
        if let listClosedWorkflowExecutionsAsyncOverrideNonOptional = listClosedWorkflowExecutionsAsyncOverride {
            if let listClosedWorkflowExecutionsAsyncOverrideTyped = listClosedWorkflowExecutionsAsyncOverrideNonOptional
                    as? ListClosedWorkflowExecutionsAsyncType<InvocationReportingType> {
                return try listClosedWorkflowExecutionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowExecutionInfos.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        if let listClosedWorkflowExecutionsSyncOverrideNonOptional = listClosedWorkflowExecutionsSyncOverride {
            if let listClosedWorkflowExecutionsSyncOverrideTyped = listClosedWorkflowExecutionsSyncOverrideNonOptional
                    as? ListClosedWorkflowExecutionsSyncType<InvocationReportingType> {
                return try listClosedWorkflowExecutionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowExecutionInfos.__default
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
    public func listDomainsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListDomainsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) -> ()) throws {
        if let listDomainsAsyncOverrideNonOptional = listDomainsAsyncOverride {
            if let listDomainsAsyncOverrideTyped = listDomainsAsyncOverrideNonOptional
                    as? ListDomainsAsyncType<InvocationReportingType> {
                return try listDomainsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = DomainInfos.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    public func listDomainsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListDomainsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DomainInfos {
        if let listDomainsSyncOverrideNonOptional = listDomainsSyncOverride {
            if let listDomainsSyncOverrideTyped = listDomainsSyncOverrideNonOptional
                    as? ListDomainsSyncType<InvocationReportingType> {
                return try listDomainsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return DomainInfos.__default
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
    public func listOpenWorkflowExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) -> ()) throws {
        if let listOpenWorkflowExecutionsAsyncOverrideNonOptional = listOpenWorkflowExecutionsAsyncOverride {
            if let listOpenWorkflowExecutionsAsyncOverrideTyped = listOpenWorkflowExecutionsAsyncOverrideNonOptional
                    as? ListOpenWorkflowExecutionsAsyncType<InvocationReportingType> {
                return try listOpenWorkflowExecutionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowExecutionInfos.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        if let listOpenWorkflowExecutionsSyncOverrideNonOptional = listOpenWorkflowExecutionsSyncOverride {
            if let listOpenWorkflowExecutionsSyncOverrideTyped = listOpenWorkflowExecutionsSyncOverrideNonOptional
                    as? ListOpenWorkflowExecutionsSyncType<InvocationReportingType> {
                return try listOpenWorkflowExecutionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowExecutionInfos.__default
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListTagsForResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverrideNonOptional = listTagsForResourceAsyncOverride {
            if let listTagsForResourceAsyncOverrideTyped = listTagsForResourceAsyncOverrideNonOptional
                    as? ListTagsForResourceAsyncType<InvocationReportingType> {
                return try listTagsForResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ListTagsForResourceOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListTagsForResourceInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverrideNonOptional = listTagsForResourceSyncOverride {
            if let listTagsForResourceSyncOverrideTyped = listTagsForResourceSyncOverrideNonOptional
                    as? ListTagsForResourceSyncType<InvocationReportingType> {
                return try listTagsForResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ListTagsForResourceOutput.__default
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
    public func listWorkflowTypesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) -> ()) throws {
        if let listWorkflowTypesAsyncOverrideNonOptional = listWorkflowTypesAsyncOverride {
            if let listWorkflowTypesAsyncOverrideTyped = listWorkflowTypesAsyncOverrideNonOptional
                    as? ListWorkflowTypesAsyncType<InvocationReportingType> {
                return try listWorkflowTypesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = WorkflowTypeInfos.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListWorkflowTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.ListWorkflowTypesInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.WorkflowTypeInfos {
        if let listWorkflowTypesSyncOverrideNonOptional = listWorkflowTypesSyncOverride {
            if let listWorkflowTypesSyncOverrideTyped = listWorkflowTypesSyncOverrideNonOptional
                    as? ListWorkflowTypesSyncType<InvocationReportingType> {
                return try listWorkflowTypesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return WorkflowTypeInfos.__default
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
    public func pollForActivityTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForActivityTaskInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) -> ()) throws {
        if let pollForActivityTaskAsyncOverrideNonOptional = pollForActivityTaskAsyncOverride {
            if let pollForActivityTaskAsyncOverrideTyped = pollForActivityTaskAsyncOverrideNonOptional
                    as? PollForActivityTaskAsyncType<InvocationReportingType> {
                return try pollForActivityTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ActivityTask.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PollForActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForActivityTaskInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTask {
        if let pollForActivityTaskSyncOverrideNonOptional = pollForActivityTaskSyncOverride {
            if let pollForActivityTaskSyncOverrideTyped = pollForActivityTaskSyncOverrideNonOptional
                    as? PollForActivityTaskSyncType<InvocationReportingType> {
                return try pollForActivityTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ActivityTask.__default
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
    public func pollForDecisionTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) -> ()) throws {
        if let pollForDecisionTaskAsyncOverrideNonOptional = pollForDecisionTaskAsyncOverride {
            if let pollForDecisionTaskAsyncOverrideTyped = pollForDecisionTaskAsyncOverrideNonOptional
                    as? PollForDecisionTaskAsyncType<InvocationReportingType> {
                return try pollForDecisionTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = DecisionTask.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PollForDecisionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.PollForDecisionTaskInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.DecisionTask {
        if let pollForDecisionTaskSyncOverrideNonOptional = pollForDecisionTaskSyncOverride {
            if let pollForDecisionTaskSyncOverrideTyped = pollForDecisionTaskSyncOverrideNonOptional
                    as? PollForDecisionTaskSyncType<InvocationReportingType> {
                return try pollForDecisionTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return DecisionTask.__default
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
    public func recordActivityTaskHeartbeatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) -> ()) throws {
        if let recordActivityTaskHeartbeatAsyncOverrideNonOptional = recordActivityTaskHeartbeatAsyncOverride {
            if let recordActivityTaskHeartbeatAsyncOverrideTyped = recordActivityTaskHeartbeatAsyncOverrideNonOptional
                    as? RecordActivityTaskHeartbeatAsyncType<InvocationReportingType> {
                return try recordActivityTaskHeartbeatAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = ActivityTaskStatus.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.ActivityTaskStatus {
        if let recordActivityTaskHeartbeatSyncOverrideNonOptional = recordActivityTaskHeartbeatSyncOverride {
            if let recordActivityTaskHeartbeatSyncOverrideTyped = recordActivityTaskHeartbeatSyncOverrideNonOptional
                    as? RecordActivityTaskHeartbeatSyncType<InvocationReportingType> {
                return try recordActivityTaskHeartbeatSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return ActivityTaskStatus.__default
    }

    /**
     Invokes the RegisterActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let registerActivityTypeAsyncOverrideNonOptional = registerActivityTypeAsyncOverride {
            if let registerActivityTypeAsyncOverrideTyped = registerActivityTypeAsyncOverrideNonOptional
                    as? RegisterActivityTypeAsyncType<InvocationReportingType> {
                return try registerActivityTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterActivityTypeInput,
            reporting: InvocationReportingType) throws {
        if let registerActivityTypeSyncOverrideNonOptional = registerActivityTypeSyncOverride {
            if let registerActivityTypeSyncOverrideTyped = registerActivityTypeSyncOverrideNonOptional
                    as? RegisterActivityTypeSyncType<InvocationReportingType> {
                return try registerActivityTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let registerDomainAsyncOverrideNonOptional = registerDomainAsyncOverride {
            if let registerDomainAsyncOverrideTyped = registerDomainAsyncOverrideNonOptional
                    as? RegisterDomainAsyncType<InvocationReportingType> {
                return try registerDomainAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterDomainInput,
            reporting: InvocationReportingType) throws {
        if let registerDomainSyncOverrideNonOptional = registerDomainSyncOverride {
            if let registerDomainSyncOverrideTyped = registerDomainSyncOverrideNonOptional
                    as? RegisterDomainSyncType<InvocationReportingType> {
                return try registerDomainSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RegisterWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let registerWorkflowTypeAsyncOverrideNonOptional = registerWorkflowTypeAsyncOverride {
            if let registerWorkflowTypeAsyncOverrideTyped = registerWorkflowTypeAsyncOverrideNonOptional
                    as? RegisterWorkflowTypeAsyncType<InvocationReportingType> {
                return try registerWorkflowTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput,
            reporting: InvocationReportingType) throws {
        if let registerWorkflowTypeSyncOverrideNonOptional = registerWorkflowTypeSyncOverride {
            if let registerWorkflowTypeSyncOverrideTyped = registerWorkflowTypeSyncOverrideNonOptional
                    as? RegisterWorkflowTypeSyncType<InvocationReportingType> {
                return try registerWorkflowTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let requestCancelWorkflowExecutionAsyncOverrideNonOptional = requestCancelWorkflowExecutionAsyncOverride {
            if let requestCancelWorkflowExecutionAsyncOverrideTyped = requestCancelWorkflowExecutionAsyncOverrideNonOptional
                    as? RequestCancelWorkflowExecutionAsyncType<InvocationReportingType> {
                return try requestCancelWorkflowExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput,
            reporting: InvocationReportingType) throws {
        if let requestCancelWorkflowExecutionSyncOverrideNonOptional = requestCancelWorkflowExecutionSyncOverride {
            if let requestCancelWorkflowExecutionSyncOverrideTyped = requestCancelWorkflowExecutionSyncOverrideNonOptional
                    as? RequestCancelWorkflowExecutionSyncType<InvocationReportingType> {
                return try requestCancelWorkflowExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondActivityTaskCanceledAsyncOverrideNonOptional = respondActivityTaskCanceledAsyncOverride {
            if let respondActivityTaskCanceledAsyncOverrideTyped = respondActivityTaskCanceledAsyncOverrideNonOptional
                    as? RespondActivityTaskCanceledAsyncType<InvocationReportingType> {
                return try respondActivityTaskCanceledAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput,
            reporting: InvocationReportingType) throws {
        if let respondActivityTaskCanceledSyncOverrideNonOptional = respondActivityTaskCanceledSyncOverride {
            if let respondActivityTaskCanceledSyncOverrideTyped = respondActivityTaskCanceledSyncOverrideNonOptional
                    as? RespondActivityTaskCanceledSyncType<InvocationReportingType> {
                return try respondActivityTaskCanceledSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondActivityTaskCompletedAsyncOverrideNonOptional = respondActivityTaskCompletedAsyncOverride {
            if let respondActivityTaskCompletedAsyncOverrideTyped = respondActivityTaskCompletedAsyncOverrideNonOptional
                    as? RespondActivityTaskCompletedAsyncType<InvocationReportingType> {
                return try respondActivityTaskCompletedAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput,
            reporting: InvocationReportingType) throws {
        if let respondActivityTaskCompletedSyncOverrideNonOptional = respondActivityTaskCompletedSyncOverride {
            if let respondActivityTaskCompletedSyncOverrideTyped = respondActivityTaskCompletedSyncOverrideNonOptional
                    as? RespondActivityTaskCompletedSyncType<InvocationReportingType> {
                return try respondActivityTaskCompletedSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondActivityTaskFailedAsyncOverrideNonOptional = respondActivityTaskFailedAsyncOverride {
            if let respondActivityTaskFailedAsyncOverrideTyped = respondActivityTaskFailedAsyncOverrideNonOptional
                    as? RespondActivityTaskFailedAsyncType<InvocationReportingType> {
                return try respondActivityTaskFailedAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput,
            reporting: InvocationReportingType) throws {
        if let respondActivityTaskFailedSyncOverrideNonOptional = respondActivityTaskFailedSyncOverride {
            if let respondActivityTaskFailedSyncOverrideTyped = respondActivityTaskFailedSyncOverrideNonOptional
                    as? RespondActivityTaskFailedSyncType<InvocationReportingType> {
                return try respondActivityTaskFailedSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let respondDecisionTaskCompletedAsyncOverrideNonOptional = respondDecisionTaskCompletedAsyncOverride {
            if let respondDecisionTaskCompletedAsyncOverrideTyped = respondDecisionTaskCompletedAsyncOverrideNonOptional
                    as? RespondDecisionTaskCompletedAsyncType<InvocationReportingType> {
                return try respondDecisionTaskCompletedAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput,
            reporting: InvocationReportingType) throws {
        if let respondDecisionTaskCompletedSyncOverrideNonOptional = respondDecisionTaskCompletedSyncOverride {
            if let respondDecisionTaskCompletedSyncOverrideTyped = respondDecisionTaskCompletedSyncOverrideNonOptional
                    as? RespondDecisionTaskCompletedSyncType<InvocationReportingType> {
                return try respondDecisionTaskCompletedSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the SignalWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let signalWorkflowExecutionAsyncOverrideNonOptional = signalWorkflowExecutionAsyncOverride {
            if let signalWorkflowExecutionAsyncOverrideTyped = signalWorkflowExecutionAsyncOverrideNonOptional
                    as? SignalWorkflowExecutionAsyncType<InvocationReportingType> {
                return try signalWorkflowExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput,
            reporting: InvocationReportingType) throws {
        if let signalWorkflowExecutionSyncOverrideNonOptional = signalWorkflowExecutionSyncOverride {
            if let signalWorkflowExecutionSyncOverrideTyped = signalWorkflowExecutionSyncOverrideNonOptional
                    as? SignalWorkflowExecutionSyncType<InvocationReportingType> {
                return try signalWorkflowExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

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
    public func startWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleWorkflowModel.Run, HTTPClientError>) -> ()) throws {
        if let startWorkflowExecutionAsyncOverrideNonOptional = startWorkflowExecutionAsyncOverride {
            if let startWorkflowExecutionAsyncOverrideTyped = startWorkflowExecutionAsyncOverrideNonOptional
                    as? StartWorkflowExecutionAsyncType<InvocationReportingType> {
                return try startWorkflowExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        let result = Run.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput,
            reporting: InvocationReportingType) throws -> SimpleWorkflowModel.Run {
        if let startWorkflowExecutionSyncOverrideNonOptional = startWorkflowExecutionSyncOverride {
            if let startWorkflowExecutionSyncOverrideTyped = startWorkflowExecutionSyncOverrideNonOptional
                    as? StartWorkflowExecutionSyncType<InvocationReportingType> {
                return try startWorkflowExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return Run.__default
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let tagResourceAsyncOverrideNonOptional = tagResourceAsyncOverride {
            if let tagResourceAsyncOverrideTyped = tagResourceAsyncOverrideNonOptional
                    as? TagResourceAsyncType<InvocationReportingType> {
                return try tagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TagResourceInput,
            reporting: InvocationReportingType) throws {
        if let tagResourceSyncOverrideNonOptional = tagResourceSyncOverride {
            if let tagResourceSyncOverrideTyped = tagResourceSyncOverrideNonOptional
                    as? TagResourceSyncType<InvocationReportingType> {
                return try tagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let terminateWorkflowExecutionAsyncOverrideNonOptional = terminateWorkflowExecutionAsyncOverride {
            if let terminateWorkflowExecutionAsyncOverrideTyped = terminateWorkflowExecutionAsyncOverrideNonOptional
                    as? TerminateWorkflowExecutionAsyncType<InvocationReportingType> {
                return try terminateWorkflowExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput,
            reporting: InvocationReportingType) throws {
        if let terminateWorkflowExecutionSyncOverrideNonOptional = terminateWorkflowExecutionSyncOverride {
            if let terminateWorkflowExecutionSyncOverrideTyped = terminateWorkflowExecutionSyncOverrideNonOptional
                    as? TerminateWorkflowExecutionSyncType<InvocationReportingType> {
                return try terminateWorkflowExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the UndeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let undeprecateActivityTypeAsyncOverrideNonOptional = undeprecateActivityTypeAsyncOverride {
            if let undeprecateActivityTypeAsyncOverrideTyped = undeprecateActivityTypeAsyncOverrideNonOptional
                    as? UndeprecateActivityTypeAsyncType<InvocationReportingType> {
                return try undeprecateActivityTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the UndeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput,
            reporting: InvocationReportingType) throws {
        if let undeprecateActivityTypeSyncOverrideNonOptional = undeprecateActivityTypeSyncOverride {
            if let undeprecateActivityTypeSyncOverrideTyped = undeprecateActivityTypeSyncOverrideNonOptional
                    as? UndeprecateActivityTypeSyncType<InvocationReportingType> {
                return try undeprecateActivityTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the UndeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomainAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateDomainInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let undeprecateDomainAsyncOverrideNonOptional = undeprecateDomainAsyncOverride {
            if let undeprecateDomainAsyncOverrideTyped = undeprecateDomainAsyncOverrideNonOptional
                    as? UndeprecateDomainAsyncType<InvocationReportingType> {
                return try undeprecateDomainAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the UndeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomainSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateDomainInput,
            reporting: InvocationReportingType) throws {
        if let undeprecateDomainSyncOverrideNonOptional = undeprecateDomainSyncOverride {
            if let undeprecateDomainSyncOverrideTyped = undeprecateDomainSyncOverrideNonOptional
                    as? UndeprecateDomainSyncType<InvocationReportingType> {
                return try undeprecateDomainSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowTypeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let undeprecateWorkflowTypeAsyncOverrideNonOptional = undeprecateWorkflowTypeAsyncOverride {
            if let undeprecateWorkflowTypeAsyncOverrideTyped = undeprecateWorkflowTypeAsyncOverrideNonOptional
                    as? UndeprecateWorkflowTypeAsyncType<InvocationReportingType> {
                return try undeprecateWorkflowTypeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the UndeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowTypeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput,
            reporting: InvocationReportingType) throws {
        if let undeprecateWorkflowTypeSyncOverrideNonOptional = undeprecateWorkflowTypeSyncOverride {
            if let undeprecateWorkflowTypeSyncOverrideTyped = undeprecateWorkflowTypeSyncOverrideNonOptional
                    as? UndeprecateWorkflowTypeSyncType<InvocationReportingType> {
                return try undeprecateWorkflowTypeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let untagResourceAsyncOverrideNonOptional = untagResourceAsyncOverride {
            if let untagResourceAsyncOverrideTyped = untagResourceAsyncOverrideNonOptional
                    as? UntagResourceAsyncType<InvocationReportingType> {
                return try untagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(nil)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleWorkflowModel.UntagResourceInput,
            reporting: InvocationReportingType) throws {
        if let untagResourceSyncOverrideNonOptional = untagResourceSyncOverride {
            if let untagResourceSyncOverrideTyped = untagResourceSyncOverrideNonOptional
                    as? UntagResourceSyncType<InvocationReportingType> {
                return try untagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

    }
}
