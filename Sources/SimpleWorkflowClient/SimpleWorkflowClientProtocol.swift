// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import SmokeHTTPClient

/**
 Client Protocol for the SimpleWorkflow service.
 */
public protocol SimpleWorkflowClientProtocol {
    typealias CountClosedWorkflowExecutionsSyncType = (_ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountClosedWorkflowExecutionsAsyncType = (_ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionCount>) -> ()) throws -> ()
    typealias CountOpenWorkflowExecutionsSyncType = (_ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount
    typealias CountOpenWorkflowExecutionsAsyncType = (_ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionCount>) -> ()) throws -> ()
    typealias CountPendingActivityTasksSyncType = (_ input: SimpleWorkflowModel.CountPendingActivityTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingActivityTasksAsyncType = (_ input: SimpleWorkflowModel.CountPendingActivityTasksInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.PendingTaskCount>) -> ()) throws -> ()
    typealias CountPendingDecisionTasksSyncType = (_ input: SimpleWorkflowModel.CountPendingDecisionTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount
    typealias CountPendingDecisionTasksAsyncType = (_ input: SimpleWorkflowModel.CountPendingDecisionTasksInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.PendingTaskCount>) -> ()) throws -> ()
    typealias DeprecateActivityTypeSyncType = (_ input: SimpleWorkflowModel.DeprecateActivityTypeInput) throws -> ()
    typealias DeprecateActivityTypeAsyncType = (_ input: SimpleWorkflowModel.DeprecateActivityTypeInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateDomainSyncType = (_ input: SimpleWorkflowModel.DeprecateDomainInput) throws -> ()
    typealias DeprecateDomainAsyncType = (_ input: SimpleWorkflowModel.DeprecateDomainInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprecateWorkflowTypeSyncType = (_ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) throws -> ()
    typealias DeprecateWorkflowTypeAsyncType = (_ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DescribeActivityTypeSyncType = (_ input: SimpleWorkflowModel.DescribeActivityTypeInput) throws -> SimpleWorkflowModel.ActivityTypeDetail
    typealias DescribeActivityTypeAsyncType = (_ input: SimpleWorkflowModel.DescribeActivityTypeInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTypeDetail>) -> ()) throws -> ()
    typealias DescribeDomainSyncType = (_ input: SimpleWorkflowModel.DescribeDomainInput) throws -> SimpleWorkflowModel.DomainDetail
    typealias DescribeDomainAsyncType = (_ input: SimpleWorkflowModel.DescribeDomainInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.DomainDetail>) -> ()) throws -> ()
    typealias DescribeWorkflowExecutionSyncType = (_ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) throws -> SimpleWorkflowModel.WorkflowExecutionDetail
    typealias DescribeWorkflowExecutionAsyncType = (_ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionDetail>) -> ()) throws -> ()
    typealias DescribeWorkflowTypeSyncType = (_ input: SimpleWorkflowModel.DescribeWorkflowTypeInput) throws -> SimpleWorkflowModel.WorkflowTypeDetail
    typealias DescribeWorkflowTypeAsyncType = (_ input: SimpleWorkflowModel.DescribeWorkflowTypeInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowTypeDetail>) -> ()) throws -> ()
    typealias GetWorkflowExecutionHistorySyncType = (_ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) throws -> SimpleWorkflowModel.History
    typealias GetWorkflowExecutionHistoryAsyncType = (_ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.History>) -> ()) throws -> ()
    typealias ListActivityTypesSyncType = (_ input: SimpleWorkflowModel.ListActivityTypesInput) throws -> SimpleWorkflowModel.ActivityTypeInfos
    typealias ListActivityTypesAsyncType = (_ input: SimpleWorkflowModel.ListActivityTypesInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTypeInfos>) -> ()) throws -> ()
    typealias ListClosedWorkflowExecutionsSyncType = (_ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListClosedWorkflowExecutionsAsyncType = (_ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionInfos>) -> ()) throws -> ()
    typealias ListDomainsSyncType = (_ input: SimpleWorkflowModel.ListDomainsInput) throws -> SimpleWorkflowModel.DomainInfos
    typealias ListDomainsAsyncType = (_ input: SimpleWorkflowModel.ListDomainsInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.DomainInfos>) -> ()) throws -> ()
    typealias ListOpenWorkflowExecutionsSyncType = (_ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos
    typealias ListOpenWorkflowExecutionsAsyncType = (_ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionInfos>) -> ()) throws -> ()
    typealias ListWorkflowTypesSyncType = (_ input: SimpleWorkflowModel.ListWorkflowTypesInput) throws -> SimpleWorkflowModel.WorkflowTypeInfos
    typealias ListWorkflowTypesAsyncType = (_ input: SimpleWorkflowModel.ListWorkflowTypesInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowTypeInfos>) -> ()) throws -> ()
    typealias PollForActivityTaskSyncType = (_ input: SimpleWorkflowModel.PollForActivityTaskInput) throws -> SimpleWorkflowModel.ActivityTask
    typealias PollForActivityTaskAsyncType = (_ input: SimpleWorkflowModel.PollForActivityTaskInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTask>) -> ()) throws -> ()
    typealias PollForDecisionTaskSyncType = (_ input: SimpleWorkflowModel.PollForDecisionTaskInput) throws -> SimpleWorkflowModel.DecisionTask
    typealias PollForDecisionTaskAsyncType = (_ input: SimpleWorkflowModel.PollForDecisionTaskInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.DecisionTask>) -> ()) throws -> ()
    typealias RecordActivityTaskHeartbeatSyncType = (_ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) throws -> SimpleWorkflowModel.ActivityTaskStatus
    typealias RecordActivityTaskHeartbeatAsyncType = (_ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTaskStatus>) -> ()) throws -> ()
    typealias RegisterActivityTypeSyncType = (_ input: SimpleWorkflowModel.RegisterActivityTypeInput) throws -> ()
    typealias RegisterActivityTypeAsyncType = (_ input: SimpleWorkflowModel.RegisterActivityTypeInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterDomainSyncType = (_ input: SimpleWorkflowModel.RegisterDomainInput) throws -> ()
    typealias RegisterDomainAsyncType = (_ input: SimpleWorkflowModel.RegisterDomainInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterWorkflowTypeSyncType = (_ input: SimpleWorkflowModel.RegisterWorkflowTypeInput) throws -> ()
    typealias RegisterWorkflowTypeAsyncType = (_ input: SimpleWorkflowModel.RegisterWorkflowTypeInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RequestCancelWorkflowExecutionSyncType = (_ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) throws -> ()
    typealias RequestCancelWorkflowExecutionAsyncType = (_ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskCanceledSyncType = (_ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) throws -> ()
    typealias RespondActivityTaskCanceledAsyncType = (_ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskCompletedSyncType = (_ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) throws -> ()
    typealias RespondActivityTaskCompletedAsyncType = (_ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondActivityTaskFailedSyncType = (_ input: SimpleWorkflowModel.RespondActivityTaskFailedInput) throws -> ()
    typealias RespondActivityTaskFailedAsyncType = (_ input: SimpleWorkflowModel.RespondActivityTaskFailedInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RespondDecisionTaskCompletedSyncType = (_ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) throws -> ()
    typealias RespondDecisionTaskCompletedAsyncType = (_ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SignalWorkflowExecutionSyncType = (_ input: SimpleWorkflowModel.SignalWorkflowExecutionInput) throws -> ()
    typealias SignalWorkflowExecutionAsyncType = (_ input: SimpleWorkflowModel.SignalWorkflowExecutionInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias StartWorkflowExecutionSyncType = (_ input: SimpleWorkflowModel.StartWorkflowExecutionInput) throws -> SimpleWorkflowModel.Run
    typealias StartWorkflowExecutionAsyncType = (_ input: SimpleWorkflowModel.StartWorkflowExecutionInput, _ completion: @escaping (HTTPResult<SimpleWorkflowModel.Run>) -> ()) throws -> ()
    typealias TerminateWorkflowExecutionSyncType = (_ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) throws -> ()
    typealias TerminateWorkflowExecutionAsyncType = (_ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()

    /**
     Invokes the CountClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutionsAsync(input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionCount>) -> ()) throws

    /**
     Invokes the CountClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutionsSync(input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutionsAsync(input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionCount>) -> ()) throws

    /**
     Invokes the CountOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutionsSync(input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount

    /**
     Invokes the CountPendingActivityTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasksAsync(input: SimpleWorkflowModel.CountPendingActivityTasksInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.PendingTaskCount>) -> ()) throws

    /**
     Invokes the CountPendingActivityTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasksSync(input: SimpleWorkflowModel.CountPendingActivityTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasksAsync(input: SimpleWorkflowModel.CountPendingDecisionTasksInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.PendingTaskCount>) -> ()) throws

    /**
     Invokes the CountPendingDecisionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasksSync(input: SimpleWorkflowModel.CountPendingDecisionTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount

    /**
     Invokes the DeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityTypeAsync(input: SimpleWorkflowModel.DeprecateActivityTypeInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityTypeSync(input: SimpleWorkflowModel.DeprecateActivityTypeInput) throws

    /**
     Invokes the DeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomainAsync(input: SimpleWorkflowModel.DeprecateDomainInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomainSync(input: SimpleWorkflowModel.DeprecateDomainInput) throws

    /**
     Invokes the DeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowTypeAsync(input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowTypeSync(input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) throws

    /**
     Invokes the DescribeActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
         - completion: The ActivityTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeActivityTypeAsync(input: SimpleWorkflowModel.DescribeActivityTypeInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTypeDetail>) -> ()) throws

    /**
     Invokes the DescribeActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeActivityTypeSync(input: SimpleWorkflowModel.DescribeActivityTypeInput) throws -> SimpleWorkflowModel.ActivityTypeDetail

    /**
     Invokes the DescribeDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
         - completion: The DomainDetail object or an error will be passed to this 
           callback when the operation is complete. The DomainDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeDomainAsync(input: SimpleWorkflowModel.DescribeDomainInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.DomainDetail>) -> ()) throws

    /**
     Invokes the DescribeDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeDomainSync(input: SimpleWorkflowModel.DescribeDomainInput) throws -> SimpleWorkflowModel.DomainDetail

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
         - completion: The WorkflowExecutionDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecutionAsync(input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionDetail>) -> ()) throws

    /**
     Invokes the DescribeWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecutionSync(input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) throws -> SimpleWorkflowModel.WorkflowExecutionDetail

    /**
     Invokes the DescribeWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
         - completion: The WorkflowTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowTypeAsync(input: SimpleWorkflowModel.DescribeWorkflowTypeInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowTypeDetail>) -> ()) throws

    /**
     Invokes the DescribeWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func describeWorkflowTypeSync(input: SimpleWorkflowModel.DescribeWorkflowTypeInput) throws -> SimpleWorkflowModel.WorkflowTypeDetail

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
         - completion: The History object or an error will be passed to this 
           callback when the operation is complete. The History
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistoryAsync(input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.History>) -> ()) throws

    /**
     Invokes the GetWorkflowExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistorySync(input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) throws -> SimpleWorkflowModel.History

    /**
     Invokes the ListActivityTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
         - completion: The ActivityTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listActivityTypesAsync(input: SimpleWorkflowModel.ListActivityTypesInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTypeInfos>) -> ()) throws

    /**
     Invokes the ListActivityTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listActivityTypesSync(input: SimpleWorkflowModel.ListActivityTypesInput) throws -> SimpleWorkflowModel.ActivityTypeInfos

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutionsAsync(input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionInfos>) -> ()) throws

    /**
     Invokes the ListClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutionsSync(input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
         - completion: The DomainInfos object or an error will be passed to this 
           callback when the operation is complete. The DomainInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    func listDomainsAsync(input: SimpleWorkflowModel.ListDomainsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.DomainInfos>) -> ()) throws

    /**
     Invokes the ListDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    func listDomainsSync(input: SimpleWorkflowModel.ListDomainsInput) throws -> SimpleWorkflowModel.DomainInfos

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutionsAsync(input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionInfos>) -> ()) throws

    /**
     Invokes the ListOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutionsSync(input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos

    /**
     Invokes the ListWorkflowTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
         - completion: The WorkflowTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypesAsync(input: SimpleWorkflowModel.ListWorkflowTypesInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowTypeInfos>) -> ()) throws

    /**
     Invokes the ListWorkflowTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypesSync(input: SimpleWorkflowModel.ListWorkflowTypesInput) throws -> SimpleWorkflowModel.WorkflowTypeInfos

    /**
     Invokes the PollForActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
         - completion: The ActivityTask object or an error will be passed to this 
           callback when the operation is complete. The ActivityTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTaskAsync(input: SimpleWorkflowModel.PollForActivityTaskInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTask>) -> ()) throws

    /**
     Invokes the PollForActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTaskSync(input: SimpleWorkflowModel.PollForActivityTaskInput) throws -> SimpleWorkflowModel.ActivityTask

    /**
     Invokes the PollForDecisionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
         - completion: The DecisionTask object or an error will be passed to this 
           callback when the operation is complete. The DecisionTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTaskAsync(input: SimpleWorkflowModel.PollForDecisionTaskInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.DecisionTask>) -> ()) throws

    /**
     Invokes the PollForDecisionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTaskSync(input: SimpleWorkflowModel.PollForDecisionTaskInput) throws -> SimpleWorkflowModel.DecisionTask

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
         - completion: The ActivityTaskStatus object or an error will be passed to this 
           callback when the operation is complete. The ActivityTaskStatus
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeatAsync(input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTaskStatus>) -> ()) throws

    /**
     Invokes the RecordActivityTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeatSync(input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) throws -> SimpleWorkflowModel.ActivityTaskStatus

    /**
     Invokes the RegisterActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityTypeAsync(input: SimpleWorkflowModel.RegisterActivityTypeInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityTypeSync(input: SimpleWorkflowModel.RegisterActivityTypeInput) throws

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted.
     */
    func registerDomainAsync(input: SimpleWorkflowModel.RegisterDomainInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted.
     */
    func registerDomainSync(input: SimpleWorkflowModel.RegisterDomainInput) throws

    /**
     Invokes the RegisterWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowTypeAsync(input: SimpleWorkflowModel.RegisterWorkflowTypeInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowTypeSync(input: SimpleWorkflowModel.RegisterWorkflowTypeInput) throws

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecutionAsync(input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecutionSync(input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) throws

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceledAsync(input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceledSync(input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) throws

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompletedAsync(input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompletedSync(input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) throws

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailedAsync(input: SimpleWorkflowModel.RespondActivityTaskFailedInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailedSync(input: SimpleWorkflowModel.RespondActivityTaskFailedInput) throws

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompletedAsync(input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompletedSync(input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) throws

    /**
     Invokes the SignalWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecutionAsync(input: SimpleWorkflowModel.SignalWorkflowExecutionInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecutionSync(input: SimpleWorkflowModel.SignalWorkflowExecutionInput) throws

    /**
     Invokes the StartWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
         - completion: The Run object or an error will be passed to this 
           callback when the operation is complete. The Run
           object will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecutionAsync(input: SimpleWorkflowModel.StartWorkflowExecutionInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.Run>) -> ()) throws

    /**
     Invokes the StartWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecutionSync(input: SimpleWorkflowModel.StartWorkflowExecutionInput) throws -> SimpleWorkflowModel.Run

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecutionAsync(input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecutionSync(input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) throws
}
