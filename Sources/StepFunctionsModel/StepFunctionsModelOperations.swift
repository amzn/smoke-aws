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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// StepFunctionsModelOperations.swift
// StepFunctionsModel
//

import Foundation

/**
 Operation enumeration for the StepFunctionsModel.
 */
public enum StepFunctionsModelOperations: String, Hashable, CustomStringConvertible {
    case createActivity = "CreateActivity"
    case createStateMachine = "CreateStateMachine"
    case deleteActivity = "DeleteActivity"
    case deleteStateMachine = "DeleteStateMachine"
    case describeActivity = "DescribeActivity"
    case describeExecution = "DescribeExecution"
    case describeStateMachine = "DescribeStateMachine"
    case describeStateMachineForExecution = "DescribeStateMachineForExecution"
    case getActivityTask = "GetActivityTask"
    case getExecutionHistory = "GetExecutionHistory"
    case listActivities = "ListActivities"
    case listExecutions = "ListExecutions"
    case listStateMachines = "ListStateMachines"
    case listTagsForResource = "ListTagsForResource"
    case sendTaskFailure = "SendTaskFailure"
    case sendTaskHeartbeat = "SendTaskHeartbeat"
    case sendTaskSuccess = "SendTaskSuccess"
    case startExecution = "StartExecution"
    case stopExecution = "StopExecution"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateStateMachine = "UpdateStateMachine"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .createActivity:
            return "/"
        case .createStateMachine:
            return "/"
        case .deleteActivity:
            return "/"
        case .deleteStateMachine:
            return "/"
        case .describeActivity:
            return "/"
        case .describeExecution:
            return "/"
        case .describeStateMachine:
            return "/"
        case .describeStateMachineForExecution:
            return "/"
        case .getActivityTask:
            return "/"
        case .getExecutionHistory:
            return "/"
        case .listActivities:
            return "/"
        case .listExecutions:
            return "/"
        case .listStateMachines:
            return "/"
        case .listTagsForResource:
            return "/"
        case .sendTaskFailure:
            return "/"
        case .sendTaskHeartbeat:
            return "/"
        case .sendTaskSuccess:
            return "/"
        case .startExecution:
            return "/"
        case .stopExecution:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        case .updateStateMachine:
            return "/"
        }
    }
}
