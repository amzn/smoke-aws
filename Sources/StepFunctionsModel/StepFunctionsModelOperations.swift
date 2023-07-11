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
    case createStateMachineAlias = "CreateStateMachineAlias"
    case deleteActivity = "DeleteActivity"
    case deleteStateMachine = "DeleteStateMachine"
    case deleteStateMachineAlias = "DeleteStateMachineAlias"
    case deleteStateMachineVersion = "DeleteStateMachineVersion"
    case describeActivity = "DescribeActivity"
    case describeExecution = "DescribeExecution"
    case describeMapRun = "DescribeMapRun"
    case describeStateMachine = "DescribeStateMachine"
    case describeStateMachineAlias = "DescribeStateMachineAlias"
    case describeStateMachineForExecution = "DescribeStateMachineForExecution"
    case getActivityTask = "GetActivityTask"
    case getExecutionHistory = "GetExecutionHistory"
    case listActivities = "ListActivities"
    case listExecutions = "ListExecutions"
    case listMapRuns = "ListMapRuns"
    case listStateMachineAliases = "ListStateMachineAliases"
    case listStateMachineVersions = "ListStateMachineVersions"
    case listStateMachines = "ListStateMachines"
    case listTagsForResource = "ListTagsForResource"
    case publishStateMachineVersion = "PublishStateMachineVersion"
    case sendTaskFailure = "SendTaskFailure"
    case sendTaskHeartbeat = "SendTaskHeartbeat"
    case sendTaskSuccess = "SendTaskSuccess"
    case startExecution = "StartExecution"
    case startSyncExecution = "StartSyncExecution"
    case stopExecution = "StopExecution"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateMapRun = "UpdateMapRun"
    case updateStateMachine = "UpdateStateMachine"
    case updateStateMachineAlias = "UpdateStateMachineAlias"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .createActivity:
            return "/"
        case .createStateMachine:
            return "/"
        case .createStateMachineAlias:
            return "/"
        case .deleteActivity:
            return "/"
        case .deleteStateMachine:
            return "/"
        case .deleteStateMachineAlias:
            return "/"
        case .deleteStateMachineVersion:
            return "/"
        case .describeActivity:
            return "/"
        case .describeExecution:
            return "/"
        case .describeMapRun:
            return "/"
        case .describeStateMachine:
            return "/"
        case .describeStateMachineAlias:
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
        case .listMapRuns:
            return "/"
        case .listStateMachineAliases:
            return "/"
        case .listStateMachineVersions:
            return "/"
        case .listStateMachines:
            return "/"
        case .listTagsForResource:
            return "/"
        case .publishStateMachineVersion:
            return "/"
        case .sendTaskFailure:
            return "/"
        case .sendTaskHeartbeat:
            return "/"
        case .sendTaskSuccess:
            return "/"
        case .startExecution:
            return "/"
        case .startSyncExecution:
            return "/"
        case .stopExecution:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        case .updateMapRun:
            return "/"
        case .updateStateMachine:
            return "/"
        case .updateStateMachineAlias:
            return "/"
        }
    }
}
