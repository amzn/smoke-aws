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
// StepFunctionsInvocationsReporting.swift
// StepFunctionsClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import StepFunctionsModel

/**
 Invocations reporting for the StepFunctionsModel.
 */
public struct StepFunctionsInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let createActivity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createStateMachineAlias: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteActivity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteStateMachineAlias: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteStateMachineVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeActivity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeMapRun: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStateMachineAlias: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeStateMachineForExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getActivityTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getExecutionHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listActivities: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listMapRuns: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStateMachineAliases: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStateMachineVersions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listStateMachines: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let publishStateMachineVersion: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let sendTaskFailure: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let sendTaskHeartbeat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let sendTaskSuccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startSyncExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateMapRun: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateStateMachineAlias: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: StepFunctionsOperationsReporting) {
        self.createActivity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createActivity)
        self.createStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStateMachine)
        self.createStateMachineAlias = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStateMachineAlias)
        self.deleteActivity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteActivity)
        self.deleteStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStateMachine)
        self.deleteStateMachineAlias = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStateMachineAlias)
        self.deleteStateMachineVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStateMachineVersion)
        self.describeActivity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeActivity)
        self.describeExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeExecution)
        self.describeMapRun = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeMapRun)
        self.describeStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStateMachine)
        self.describeStateMachineAlias = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStateMachineAlias)
        self.describeStateMachineForExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStateMachineForExecution)
        self.getActivityTask = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getActivityTask)
        self.getExecutionHistory = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getExecutionHistory)
        self.listActivities = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listActivities)
        self.listExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listExecutions)
        self.listMapRuns = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listMapRuns)
        self.listStateMachineAliases = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStateMachineAliases)
        self.listStateMachineVersions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStateMachineVersions)
        self.listStateMachines = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStateMachines)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.publishStateMachineVersion = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.publishStateMachineVersion)
        self.sendTaskFailure = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendTaskFailure)
        self.sendTaskHeartbeat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendTaskHeartbeat)
        self.sendTaskSuccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendTaskSuccess)
        self.startExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startExecution)
        self.startSyncExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startSyncExecution)
        self.stopExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopExecution)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateMapRun = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateMapRun)
        self.updateStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateStateMachine)
        self.updateStateMachineAlias = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateStateMachineAlias)
    }
}
