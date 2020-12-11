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
// -- Generated Code; do not edit --
//
// SimpleWorkflowInvocationsReporting.swift
// SimpleWorkflowClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import SimpleWorkflowModel

/**
 Operation reporting for the SimpleWorkflowModel.
 */
public struct SimpleWorkflowInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let countClosedWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let countOpenWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let countPendingActivityTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let countPendingDecisionTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deprecateActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deprecateDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deprecateWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getWorkflowExecutionHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listActivityTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listClosedWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listDomains: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listOpenWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listWorkflowTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let pollForActivityTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let pollForDecisionTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let recordActivityTaskHeartbeat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let registerWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let requestCancelWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let respondActivityTaskCanceled: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let respondActivityTaskCompleted: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let respondActivityTaskFailed: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let respondDecisionTaskCompleted: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let signalWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let terminateWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let undeprecateActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let undeprecateDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let undeprecateWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: SimpleWorkflowOperationsReporting) {
        self.countClosedWorkflowExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.countClosedWorkflowExecutions)
        self.countOpenWorkflowExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.countOpenWorkflowExecutions)
        self.countPendingActivityTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.countPendingActivityTasks)
        self.countPendingDecisionTasks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.countPendingDecisionTasks)
        self.deprecateActivityType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deprecateActivityType)
        self.deprecateDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deprecateDomain)
        self.deprecateWorkflowType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deprecateWorkflowType)
        self.describeActivityType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeActivityType)
        self.describeDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeDomain)
        self.describeWorkflowExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeWorkflowExecution)
        self.describeWorkflowType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeWorkflowType)
        self.getWorkflowExecutionHistory = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getWorkflowExecutionHistory)
        self.listActivityTypes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listActivityTypes)
        self.listClosedWorkflowExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listClosedWorkflowExecutions)
        self.listDomains = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listDomains)
        self.listOpenWorkflowExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listOpenWorkflowExecutions)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.listWorkflowTypes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listWorkflowTypes)
        self.pollForActivityTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.pollForActivityTask)
        self.pollForDecisionTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.pollForDecisionTask)
        self.recordActivityTaskHeartbeat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.recordActivityTaskHeartbeat)
        self.registerActivityType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerActivityType)
        self.registerDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerDomain)
        self.registerWorkflowType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerWorkflowType)
        self.requestCancelWorkflowExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.requestCancelWorkflowExecution)
        self.respondActivityTaskCanceled = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.respondActivityTaskCanceled)
        self.respondActivityTaskCompleted = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.respondActivityTaskCompleted)
        self.respondActivityTaskFailed = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.respondActivityTaskFailed)
        self.respondDecisionTaskCompleted = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.respondDecisionTaskCompleted)
        self.signalWorkflowExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.signalWorkflowExecution)
        self.startWorkflowExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startWorkflowExecution)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.terminateWorkflowExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.terminateWorkflowExecution)
        self.undeprecateActivityType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.undeprecateActivityType)
        self.undeprecateDomain = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.undeprecateDomain)
        self.undeprecateWorkflowType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.undeprecateWorkflowType)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
    }
}
