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
// CodePipelineInvocationsReporting.swift
// CodePipelineClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import CodePipelineModel

/**
 Invocations reporting for the CodePipelineModel.
 */
public struct CodePipelineInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable> {
    public let acknowledgeJob: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let acknowledgeThirdPartyJob: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createCustomActionType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createPipeline: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteCustomActionType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deletePipeline: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteWebhook: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deregisterWebhookWithThirdParty: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableStageTransition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableStageTransition: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getActionType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getJobDetails: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getPipeline: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getPipelineExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getPipelineState: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getThirdPartyJobDetails: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listActionExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listActionTypes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listPipelineExecutions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listPipelines: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listWebhooks: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let pollForJobs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let pollForThirdPartyJobs: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putActionRevision: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putApprovalResult: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putJobFailureResult: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putJobSuccessResult: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putThirdPartyJobFailureResult: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putThirdPartyJobSuccessResult: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putWebhook: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let registerWebhookWithThirdParty: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let retryStageExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startPipelineExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopPipelineExecution: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateActionType: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updatePipeline: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: CodePipelineOperationsReporting) {
        self.acknowledgeJob = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acknowledgeJob)
        self.acknowledgeThirdPartyJob = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.acknowledgeThirdPartyJob)
        self.createCustomActionType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createCustomActionType)
        self.createPipeline = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createPipeline)
        self.deleteCustomActionType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteCustomActionType)
        self.deletePipeline = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deletePipeline)
        self.deleteWebhook = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteWebhook)
        self.deregisterWebhookWithThirdParty = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deregisterWebhookWithThirdParty)
        self.disableStageTransition = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableStageTransition)
        self.enableStageTransition = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableStageTransition)
        self.getActionType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getActionType)
        self.getJobDetails = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getJobDetails)
        self.getPipeline = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPipeline)
        self.getPipelineExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPipelineExecution)
        self.getPipelineState = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPipelineState)
        self.getThirdPartyJobDetails = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getThirdPartyJobDetails)
        self.listActionExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listActionExecutions)
        self.listActionTypes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listActionTypes)
        self.listPipelineExecutions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listPipelineExecutions)
        self.listPipelines = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listPipelines)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.listWebhooks = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listWebhooks)
        self.pollForJobs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.pollForJobs)
        self.pollForThirdPartyJobs = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.pollForThirdPartyJobs)
        self.putActionRevision = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putActionRevision)
        self.putApprovalResult = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putApprovalResult)
        self.putJobFailureResult = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putJobFailureResult)
        self.putJobSuccessResult = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putJobSuccessResult)
        self.putThirdPartyJobFailureResult = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putThirdPartyJobFailureResult)
        self.putThirdPartyJobSuccessResult = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putThirdPartyJobSuccessResult)
        self.putWebhook = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putWebhook)
        self.registerWebhookWithThirdParty = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.registerWebhookWithThirdParty)
        self.retryStageExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.retryStageExecution)
        self.startPipelineExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startPipelineExecution)
        self.stopPipelineExecution = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopPipelineExecution)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateActionType = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateActionType)
        self.updatePipeline = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updatePipeline)
    }
}
