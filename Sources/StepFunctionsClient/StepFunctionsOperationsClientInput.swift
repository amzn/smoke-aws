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
// StepFunctionsOperationsClientInput.swift
// StepFunctionsClient
//

import Foundation
import SmokeHTTPClient
import StepFunctionsModel

/**
 Type to handle the input to the CreateActivity operation in a HTTP client.
 */
public typealias CreateActivityOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateStateMachine operation in a HTTP client.
 */
public typealias CreateStateMachineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateStateMachineAlias operation in a HTTP client.
 */
public typealias CreateStateMachineAliasOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteActivity operation in a HTTP client.
 */
public typealias DeleteActivityOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteStateMachine operation in a HTTP client.
 */
public typealias DeleteStateMachineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteStateMachineAlias operation in a HTTP client.
 */
public typealias DeleteStateMachineAliasOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteStateMachineVersion operation in a HTTP client.
 */
public typealias DeleteStateMachineVersionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeActivity operation in a HTTP client.
 */
public typealias DescribeActivityOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeExecution operation in a HTTP client.
 */
public typealias DescribeExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeMapRun operation in a HTTP client.
 */
public typealias DescribeMapRunOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeStateMachine operation in a HTTP client.
 */
public typealias DescribeStateMachineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeStateMachineAlias operation in a HTTP client.
 */
public typealias DescribeStateMachineAliasOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeStateMachineForExecution operation in a HTTP client.
 */
public typealias DescribeStateMachineForExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetActivityTask operation in a HTTP client.
 */
public typealias GetActivityTaskOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetExecutionHistory operation in a HTTP client.
 */
public typealias GetExecutionHistoryOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListActivities operation in a HTTP client.
 */
public typealias ListActivitiesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListExecutions operation in a HTTP client.
 */
public typealias ListExecutionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListMapRuns operation in a HTTP client.
 */
public typealias ListMapRunsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListStateMachineAliases operation in a HTTP client.
 */
public typealias ListStateMachineAliasesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListStateMachineVersions operation in a HTTP client.
 */
public typealias ListStateMachineVersionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListStateMachines operation in a HTTP client.
 */
public typealias ListStateMachinesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public typealias ListTagsForResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PublishStateMachineVersion operation in a HTTP client.
 */
public typealias PublishStateMachineVersionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SendTaskFailure operation in a HTTP client.
 */
public typealias SendTaskFailureOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SendTaskHeartbeat operation in a HTTP client.
 */
public typealias SendTaskHeartbeatOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the SendTaskSuccess operation in a HTTP client.
 */
public typealias SendTaskSuccessOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartExecution operation in a HTTP client.
 */
public typealias StartExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartSyncExecution operation in a HTTP client.
 */
public typealias StartSyncExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StopExecution operation in a HTTP client.
 */
public typealias StopExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateMapRun operation in a HTTP client.
 */
public typealias UpdateMapRunOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateStateMachine operation in a HTTP client.
 */
public typealias UpdateStateMachineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateStateMachineAlias operation in a HTTP client.
 */
public typealias UpdateStateMachineAliasOperationHTTPRequestInput = BodyHTTPRequestInput
