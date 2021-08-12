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
// CodePipelineModelOperations.swift
// CodePipelineModel
//

import Foundation

/**
 Operation enumeration for the CodePipelineModel.
 */
public enum CodePipelineModelOperations: String, Hashable, CustomStringConvertible {
    case acknowledgeJob = "AcknowledgeJob"
    case acknowledgeThirdPartyJob = "AcknowledgeThirdPartyJob"
    case createCustomActionType = "CreateCustomActionType"
    case createPipeline = "CreatePipeline"
    case deleteCustomActionType = "DeleteCustomActionType"
    case deletePipeline = "DeletePipeline"
    case deleteWebhook = "DeleteWebhook"
    case deregisterWebhookWithThirdParty = "DeregisterWebhookWithThirdParty"
    case disableStageTransition = "DisableStageTransition"
    case enableStageTransition = "EnableStageTransition"
    case getActionType = "GetActionType"
    case getJobDetails = "GetJobDetails"
    case getPipeline = "GetPipeline"
    case getPipelineExecution = "GetPipelineExecution"
    case getPipelineState = "GetPipelineState"
    case getThirdPartyJobDetails = "GetThirdPartyJobDetails"
    case listActionExecutions = "ListActionExecutions"
    case listActionTypes = "ListActionTypes"
    case listPipelineExecutions = "ListPipelineExecutions"
    case listPipelines = "ListPipelines"
    case listTagsForResource = "ListTagsForResource"
    case listWebhooks = "ListWebhooks"
    case pollForJobs = "PollForJobs"
    case pollForThirdPartyJobs = "PollForThirdPartyJobs"
    case putActionRevision = "PutActionRevision"
    case putApprovalResult = "PutApprovalResult"
    case putJobFailureResult = "PutJobFailureResult"
    case putJobSuccessResult = "PutJobSuccessResult"
    case putThirdPartyJobFailureResult = "PutThirdPartyJobFailureResult"
    case putThirdPartyJobSuccessResult = "PutThirdPartyJobSuccessResult"
    case putWebhook = "PutWebhook"
    case registerWebhookWithThirdParty = "RegisterWebhookWithThirdParty"
    case retryStageExecution = "RetryStageExecution"
    case startPipelineExecution = "StartPipelineExecution"
    case stopPipelineExecution = "StopPipelineExecution"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"
    case updateActionType = "UpdateActionType"
    case updatePipeline = "UpdatePipeline"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .acknowledgeJob:
            return "/"
        case .acknowledgeThirdPartyJob:
            return "/"
        case .createCustomActionType:
            return "/"
        case .createPipeline:
            return "/"
        case .deleteCustomActionType:
            return "/"
        case .deletePipeline:
            return "/"
        case .deleteWebhook:
            return "/"
        case .deregisterWebhookWithThirdParty:
            return "/"
        case .disableStageTransition:
            return "/"
        case .enableStageTransition:
            return "/"
        case .getActionType:
            return "/"
        case .getJobDetails:
            return "/"
        case .getPipeline:
            return "/"
        case .getPipelineExecution:
            return "/"
        case .getPipelineState:
            return "/"
        case .getThirdPartyJobDetails:
            return "/"
        case .listActionExecutions:
            return "/"
        case .listActionTypes:
            return "/"
        case .listPipelineExecutions:
            return "/"
        case .listPipelines:
            return "/"
        case .listTagsForResource:
            return "/"
        case .listWebhooks:
            return "/"
        case .pollForJobs:
            return "/"
        case .pollForThirdPartyJobs:
            return "/"
        case .putActionRevision:
            return "/"
        case .putApprovalResult:
            return "/"
        case .putJobFailureResult:
            return "/"
        case .putJobSuccessResult:
            return "/"
        case .putThirdPartyJobFailureResult:
            return "/"
        case .putThirdPartyJobSuccessResult:
            return "/"
        case .putWebhook:
            return "/"
        case .registerWebhookWithThirdParty:
            return "/"
        case .retryStageExecution:
            return "/"
        case .startPipelineExecution:
            return "/"
        case .stopPipelineExecution:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        case .updateActionType:
            return "/"
        case .updatePipeline:
            return "/"
        }
    }
}
