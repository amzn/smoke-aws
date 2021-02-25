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
// CodePipelineOperationsReporting.swift
// CodePipelineClient
//

import Foundation
import SmokeAWSCore
import CodePipelineModel

/**
 Operation reporting for the CodePipelineModel.
 */
public struct CodePipelineOperationsReporting {
    let acknowledgeJob: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let acknowledgeThirdPartyJob: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let createCustomActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let createPipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let deleteCustomActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let deletePipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let deleteWebhook: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let deregisterWebhookWithThirdParty: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let disableStageTransition: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let enableStageTransition: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let getActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let getJobDetails: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let getPipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let getPipelineExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let getPipelineState: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let getThirdPartyJobDetails: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let listActionExecutions: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let listActionTypes: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let listPipelineExecutions: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let listPipelines: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let listWebhooks: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let pollForJobs: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let pollForThirdPartyJobs: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putActionRevision: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putApprovalResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putJobFailureResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putJobSuccessResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putThirdPartyJobFailureResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putThirdPartyJobSuccessResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let putWebhook: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let registerWebhookWithThirdParty: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let retryStageExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let startPipelineExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let stopPipelineExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let updateActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    let updatePipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<CodePipelineModelOperations>) {
        self.acknowledgeJob = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acknowledgeJob, configuration: reportingConfiguration)
        self.acknowledgeThirdPartyJob = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .acknowledgeThirdPartyJob, configuration: reportingConfiguration)
        self.createCustomActionType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createCustomActionType, configuration: reportingConfiguration)
        self.createPipeline = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createPipeline, configuration: reportingConfiguration)
        self.deleteCustomActionType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteCustomActionType, configuration: reportingConfiguration)
        self.deletePipeline = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deletePipeline, configuration: reportingConfiguration)
        self.deleteWebhook = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteWebhook, configuration: reportingConfiguration)
        self.deregisterWebhookWithThirdParty = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deregisterWebhookWithThirdParty, configuration: reportingConfiguration)
        self.disableStageTransition = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableStageTransition, configuration: reportingConfiguration)
        self.enableStageTransition = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableStageTransition, configuration: reportingConfiguration)
        self.getActionType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getActionType, configuration: reportingConfiguration)
        self.getJobDetails = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getJobDetails, configuration: reportingConfiguration)
        self.getPipeline = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getPipeline, configuration: reportingConfiguration)
        self.getPipelineExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getPipelineExecution, configuration: reportingConfiguration)
        self.getPipelineState = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getPipelineState, configuration: reportingConfiguration)
        self.getThirdPartyJobDetails = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getThirdPartyJobDetails, configuration: reportingConfiguration)
        self.listActionExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listActionExecutions, configuration: reportingConfiguration)
        self.listActionTypes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listActionTypes, configuration: reportingConfiguration)
        self.listPipelineExecutions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listPipelineExecutions, configuration: reportingConfiguration)
        self.listPipelines = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listPipelines, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.listWebhooks = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listWebhooks, configuration: reportingConfiguration)
        self.pollForJobs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .pollForJobs, configuration: reportingConfiguration)
        self.pollForThirdPartyJobs = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .pollForThirdPartyJobs, configuration: reportingConfiguration)
        self.putActionRevision = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putActionRevision, configuration: reportingConfiguration)
        self.putApprovalResult = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putApprovalResult, configuration: reportingConfiguration)
        self.putJobFailureResult = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putJobFailureResult, configuration: reportingConfiguration)
        self.putJobSuccessResult = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putJobSuccessResult, configuration: reportingConfiguration)
        self.putThirdPartyJobFailureResult = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putThirdPartyJobFailureResult, configuration: reportingConfiguration)
        self.putThirdPartyJobSuccessResult = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putThirdPartyJobSuccessResult, configuration: reportingConfiguration)
        self.putWebhook = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putWebhook, configuration: reportingConfiguration)
        self.registerWebhookWithThirdParty = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .registerWebhookWithThirdParty, configuration: reportingConfiguration)
        self.retryStageExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .retryStageExecution, configuration: reportingConfiguration)
        self.startPipelineExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startPipelineExecution, configuration: reportingConfiguration)
        self.stopPipelineExecution = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopPipelineExecution, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.updateActionType = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateActionType, configuration: reportingConfiguration)
        self.updatePipeline = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updatePipeline, configuration: reportingConfiguration)
    }
}
