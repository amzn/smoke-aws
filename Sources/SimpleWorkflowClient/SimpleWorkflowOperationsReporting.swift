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
    public let countClosedWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let countOpenWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let countPendingActivityTasks: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let countPendingDecisionTasks: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let deprecateActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let deprecateDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let deprecateWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let describeActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let describeDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let describeWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let describeWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let getWorkflowExecutionHistory: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let listActivityTypes: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let listClosedWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let listDomains: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let listOpenWorkflowExecutions: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let listWorkflowTypes: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let pollForActivityTask: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let pollForDecisionTask: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let recordActivityTaskHeartbeat: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let registerActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let registerDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let registerWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let requestCancelWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let respondActivityTaskCanceled: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let respondActivityTaskCompleted: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let respondActivityTaskFailed: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let respondDecisionTaskCompleted: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let signalWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let startWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let terminateWorkflowExecution: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let undeprecateActivityType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let undeprecateDomain: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let undeprecateWorkflowType: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<SimpleWorkflowModelOperations>

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
