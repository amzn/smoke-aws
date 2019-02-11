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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// SimpleWorkflowModelOperations.swift
// SimpleWorkflowModel
//

import Foundation

/**
 Operation enumeration for the SimpleWorkflowModel.
 */
public enum SimpleWorkflowModelOperations: String {
    case countClosedWorkflowExecutions = "CountClosedWorkflowExecutions"
    case countOpenWorkflowExecutions = "CountOpenWorkflowExecutions"
    case countPendingActivityTasks = "CountPendingActivityTasks"
    case countPendingDecisionTasks = "CountPendingDecisionTasks"
    case deprecateActivityType = "DeprecateActivityType"
    case deprecateDomain = "DeprecateDomain"
    case deprecateWorkflowType = "DeprecateWorkflowType"
    case describeActivityType = "DescribeActivityType"
    case describeDomain = "DescribeDomain"
    case describeWorkflowExecution = "DescribeWorkflowExecution"
    case describeWorkflowType = "DescribeWorkflowType"
    case getWorkflowExecutionHistory = "GetWorkflowExecutionHistory"
    case listActivityTypes = "ListActivityTypes"
    case listClosedWorkflowExecutions = "ListClosedWorkflowExecutions"
    case listDomains = "ListDomains"
    case listOpenWorkflowExecutions = "ListOpenWorkflowExecutions"
    case listWorkflowTypes = "ListWorkflowTypes"
    case pollForActivityTask = "PollForActivityTask"
    case pollForDecisionTask = "PollForDecisionTask"
    case recordActivityTaskHeartbeat = "RecordActivityTaskHeartbeat"
    case registerActivityType = "RegisterActivityType"
    case registerDomain = "RegisterDomain"
    case registerWorkflowType = "RegisterWorkflowType"
    case requestCancelWorkflowExecution = "RequestCancelWorkflowExecution"
    case respondActivityTaskCanceled = "RespondActivityTaskCanceled"
    case respondActivityTaskCompleted = "RespondActivityTaskCompleted"
    case respondActivityTaskFailed = "RespondActivityTaskFailed"
    case respondDecisionTaskCompleted = "RespondDecisionTaskCompleted"
    case signalWorkflowExecution = "SignalWorkflowExecution"
    case startWorkflowExecution = "StartWorkflowExecution"
    case terminateWorkflowExecution = "TerminateWorkflowExecution"

    public var operationPath: String {
        switch self {
        case .countClosedWorkflowExecutions:
            return "/"
        case .countOpenWorkflowExecutions:
            return "/"
        case .countPendingActivityTasks:
            return "/"
        case .countPendingDecisionTasks:
            return "/"
        case .deprecateActivityType:
            return "/"
        case .deprecateDomain:
            return "/"
        case .deprecateWorkflowType:
            return "/"
        case .describeActivityType:
            return "/"
        case .describeDomain:
            return "/"
        case .describeWorkflowExecution:
            return "/"
        case .describeWorkflowType:
            return "/"
        case .getWorkflowExecutionHistory:
            return "/"
        case .listActivityTypes:
            return "/"
        case .listClosedWorkflowExecutions:
            return "/"
        case .listDomains:
            return "/"
        case .listOpenWorkflowExecutions:
            return "/"
        case .listWorkflowTypes:
            return "/"
        case .pollForActivityTask:
            return "/"
        case .pollForDecisionTask:
            return "/"
        case .recordActivityTaskHeartbeat:
            return "/"
        case .registerActivityType:
            return "/"
        case .registerDomain:
            return "/"
        case .registerWorkflowType:
            return "/"
        case .requestCancelWorkflowExecution:
            return "/"
        case .respondActivityTaskCanceled:
            return "/"
        case .respondActivityTaskCompleted:
            return "/"
        case .respondActivityTaskFailed:
            return "/"
        case .respondDecisionTaskCompleted:
            return "/"
        case .signalWorkflowExecution:
            return "/"
        case .startWorkflowExecution:
            return "/"
        case .terminateWorkflowExecution:
            return "/"
        }
    }
}
