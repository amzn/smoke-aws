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
// SimpleWorkflowInvocationsReporting.swift
// SimpleWorkflowClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import SimpleWorkflowModel

/**
 Invocations reporting for the SimpleWorkflowModel.
 */
public struct SimpleWorkflowInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let countClosedWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let countOpenWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let countPendingActivityTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let countPendingDecisionTasks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deprecateActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deprecateDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deprecateWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getWorkflowExecutionHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listActivityTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listClosedWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listDomains: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listOpenWorkflowExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listWorkflowTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let pollForActivityTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let pollForDecisionTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let recordActivityTaskHeartbeat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let requestCancelWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let respondActivityTaskCanceled: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let respondActivityTaskCompleted: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let respondActivityTaskFailed: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let respondDecisionTaskCompleted: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let signalWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let terminateWorkflowExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let undeprecateActivityType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let undeprecateDomain: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let undeprecateWorkflowType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

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
