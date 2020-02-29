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
// StepFunctionsInvocationsReporting.swift
// StepFunctionsClient
//

import Foundation
import SmokeAWSCore
import SmokeAWSHttp
import StepFunctionsModel

/**
 Operation reporting for the StepFunctionsModel.
 */
public struct StepFunctionsInvocationsReporting<InvocationReportingType: SmokeAWSInvocationReporting> {
    let createActivity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteActivity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeActivity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeStateMachineForExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getActivityTask: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getExecutionHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listActivities: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listStateMachines: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let sendTaskFailure: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let sendTaskHeartbeat: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let sendTaskSuccess: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateStateMachine: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: StepFunctionsOperationsReporting) {
        self.createActivity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createActivity)
        self.createStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createStateMachine)
        self.deleteActivity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteActivity)
        self.deleteStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteStateMachine)
        self.describeActivity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeActivity)
        self.describeExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeExecution)
        self.describeStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeStateMachine)
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
        self.listStateMachines = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listStateMachines)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.sendTaskFailure = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendTaskFailure)
        self.sendTaskHeartbeat = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendTaskHeartbeat)
        self.sendTaskSuccess = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendTaskSuccess)
        self.startExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startExecution)
        self.stopExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopExecution)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateStateMachine = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateStateMachine)
    }
}
