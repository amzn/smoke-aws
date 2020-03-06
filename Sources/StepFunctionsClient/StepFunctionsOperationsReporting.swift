// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    let createActivity: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let createStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let deleteActivity: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let deleteStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let describeActivity: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let describeExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let describeStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let describeStateMachineForExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let getActivityTask: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let getExecutionHistory: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let listActivities: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let listExecutions: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let listStateMachines: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let sendTaskFailure: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let sendTaskHeartbeat: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let sendTaskSuccess: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let startExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let stopExecution: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>
    let updateStateMachine: StandardSmokeAWSOperationReporting<StepFunctionsModelOperations>

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
