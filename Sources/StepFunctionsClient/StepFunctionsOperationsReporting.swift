// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// StepFunctionsOperationsReporting.swift
// StepFunctionsClient
//

import Foundation
import SmokeAWSCore
import StepFunctionsModel

/**
 Operation reporting for the StepFunctionsModel.
 */
public struct StepFunctionsOperationsReporting {
    public let createActivity: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let createStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let deleteActivity: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let deleteStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let describeActivity: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let describeExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let describeStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let describeStateMachineForExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let getActivityTask: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let getExecutionHistory: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let listActivities: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let listExecutions: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let listStateMachines: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let sendTaskFailure: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let sendTaskHeartbeat: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let sendTaskSuccess: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let startExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let startSyncExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let stopExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    public let updateStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<StepFunctionsModelOperations>) {
        self.createActivity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createActivity, configuration: reportingConfiguration)
        self.createStateMachine = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createStateMachine, configuration: reportingConfiguration)
        self.deleteActivity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteActivity, configuration: reportingConfiguration)
        self.deleteStateMachine = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteStateMachine, configuration: reportingConfiguration)
        self.describeActivity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeActivity, configuration: reportingConfiguration)
        self.describeExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeExecution, configuration: reportingConfiguration)
        self.describeStateMachine = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStateMachine, configuration: reportingConfiguration)
        self.describeStateMachineForExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeStateMachineForExecution, configuration: reportingConfiguration)
        self.getActivityTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getActivityTask, configuration: reportingConfiguration)
        self.getExecutionHistory = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getExecutionHistory, configuration: reportingConfiguration)
        self.listActivities = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listActivities, configuration: reportingConfiguration)
        self.listExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listExecutions, configuration: reportingConfiguration)
        self.listStateMachines = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listStateMachines, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.sendTaskFailure = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .sendTaskFailure, configuration: reportingConfiguration)
        self.sendTaskHeartbeat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .sendTaskHeartbeat, configuration: reportingConfiguration)
        self.sendTaskSuccess = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .sendTaskSuccess, configuration: reportingConfiguration)
        self.startExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startExecution, configuration: reportingConfiguration)
        self.startSyncExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startSyncExecution, configuration: reportingConfiguration)
        self.stopExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopExecution, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.updateStateMachine = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateStateMachine, configuration: reportingConfiguration)
    }
}
