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
// SimpleWorkflowOperationsReporting.swift
// SimpleWorkflowClient
//

import Foundation
import SmokeAWSCore
import SimpleWorkflowModel

/**
 Operation reporting for the SimpleWorkflowModel.
 */
public struct SimpleWorkflowOperationsReporting {
    let countClosedWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let countOpenWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let countPendingActivityTasks: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let countPendingDecisionTasks: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let deprecateActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let deprecateDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let deprecateWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let describeActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let describeDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let describeWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let describeWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let getWorkflowExecutionHistory: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let listActivityTypes: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let listClosedWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let listDomains: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let listOpenWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let listWorkflowTypes: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let pollForActivityTask: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let pollForDecisionTask: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let recordActivityTaskHeartbeat: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let registerActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let registerDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let registerWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let requestCancelWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let respondActivityTaskCanceled: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let respondActivityTaskCompleted: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let respondActivityTaskFailed: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let respondDecisionTaskCompleted: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let signalWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let startWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let terminateWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let undeprecateActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let undeprecateDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let undeprecateWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>) {
        self.countClosedWorkflowExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .countClosedWorkflowExecutions, configuration: reportingConfiguration)
        self.countOpenWorkflowExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .countOpenWorkflowExecutions, configuration: reportingConfiguration)
        self.countPendingActivityTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .countPendingActivityTasks, configuration: reportingConfiguration)
        self.countPendingDecisionTasks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .countPendingDecisionTasks, configuration: reportingConfiguration)
        self.deprecateActivityType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deprecateActivityType, configuration: reportingConfiguration)
        self.deprecateDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deprecateDomain, configuration: reportingConfiguration)
        self.deprecateWorkflowType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deprecateWorkflowType, configuration: reportingConfiguration)
        self.describeActivityType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeActivityType, configuration: reportingConfiguration)
        self.describeDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeDomain, configuration: reportingConfiguration)
        self.describeWorkflowExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeWorkflowExecution, configuration: reportingConfiguration)
        self.describeWorkflowType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeWorkflowType, configuration: reportingConfiguration)
        self.getWorkflowExecutionHistory = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getWorkflowExecutionHistory, configuration: reportingConfiguration)
        self.listActivityTypes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listActivityTypes, configuration: reportingConfiguration)
        self.listClosedWorkflowExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listClosedWorkflowExecutions, configuration: reportingConfiguration)
        self.listDomains = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listDomains, configuration: reportingConfiguration)
        self.listOpenWorkflowExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listOpenWorkflowExecutions, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.listWorkflowTypes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listWorkflowTypes, configuration: reportingConfiguration)
        self.pollForActivityTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .pollForActivityTask, configuration: reportingConfiguration)
        self.pollForDecisionTask = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .pollForDecisionTask, configuration: reportingConfiguration)
        self.recordActivityTaskHeartbeat = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .recordActivityTaskHeartbeat, configuration: reportingConfiguration)
        self.registerActivityType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerActivityType, configuration: reportingConfiguration)
        self.registerDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerDomain, configuration: reportingConfiguration)
        self.registerWorkflowType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerWorkflowType, configuration: reportingConfiguration)
        self.requestCancelWorkflowExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .requestCancelWorkflowExecution, configuration: reportingConfiguration)
        self.respondActivityTaskCanceled = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .respondActivityTaskCanceled, configuration: reportingConfiguration)
        self.respondActivityTaskCompleted = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .respondActivityTaskCompleted, configuration: reportingConfiguration)
        self.respondActivityTaskFailed = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .respondActivityTaskFailed, configuration: reportingConfiguration)
        self.respondDecisionTaskCompleted = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .respondDecisionTaskCompleted, configuration: reportingConfiguration)
        self.signalWorkflowExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .signalWorkflowExecution, configuration: reportingConfiguration)
        self.startWorkflowExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startWorkflowExecution, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.terminateWorkflowExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .terminateWorkflowExecution, configuration: reportingConfiguration)
        self.undeprecateActivityType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .undeprecateActivityType, configuration: reportingConfiguration)
        self.undeprecateDomain = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .undeprecateDomain, configuration: reportingConfiguration)
        self.undeprecateWorkflowType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .undeprecateWorkflowType, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
    }
}
