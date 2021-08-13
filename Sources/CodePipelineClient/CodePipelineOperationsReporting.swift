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
    public let acknowledgeJob: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let acknowledgeThirdPartyJob: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let createCustomActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let createPipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let deleteCustomActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let deletePipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let deleteWebhook: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let deregisterWebhookWithThirdParty: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let disableStageTransition: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let enableStageTransition: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let getActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let getJobDetails: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let getPipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let getPipelineExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let getPipelineState: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let getThirdPartyJobDetails: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let listActionExecutions: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let listActionTypes: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let listPipelineExecutions: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let listPipelines: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let listWebhooks: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let pollForJobs: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let pollForThirdPartyJobs: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putActionRevision: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putApprovalResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putJobFailureResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putJobSuccessResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putThirdPartyJobFailureResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putThirdPartyJobSuccessResult: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let putWebhook: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let registerWebhookWithThirdParty: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let retryStageExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let startPipelineExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let stopPipelineExecution: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let updateActionType: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>
    public let updatePipeline: StandardSmokeAWSOperationReporting<CodePipelineModelOperations>

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
