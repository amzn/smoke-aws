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
// CodePipelineClientProtocolV2.swift
// CodePipelineClient
//

import Foundation
import CodePipelineModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the CodePipeline service.
 */
public protocol CodePipelineClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AcknowledgeJobFunctionType = (
            _ input: CodePipelineModel.AcknowledgeJobInput) async throws -> CodePipelineModel.AcknowledgeJobOutput
    typealias AcknowledgeThirdPartyJobFunctionType = (
            _ input: CodePipelineModel.AcknowledgeThirdPartyJobInput) async throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput
    typealias CreateCustomActionTypeFunctionType = (
            _ input: CodePipelineModel.CreateCustomActionTypeInput) async throws -> CodePipelineModel.CreateCustomActionTypeOutput
    typealias CreatePipelineFunctionType = (
            _ input: CodePipelineModel.CreatePipelineInput) async throws -> CodePipelineModel.CreatePipelineOutput
    typealias DeleteCustomActionTypeFunctionType = (
            _ input: CodePipelineModel.DeleteCustomActionTypeInput) async throws -> ()
    typealias DeletePipelineFunctionType = (
            _ input: CodePipelineModel.DeletePipelineInput) async throws -> ()
    typealias DeleteWebhookFunctionType = (
            _ input: CodePipelineModel.DeleteWebhookInput) async throws -> CodePipelineModel.DeleteWebhookOutput
    typealias DeregisterWebhookWithThirdPartyFunctionType = (
            _ input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) async throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput
    typealias DisableStageTransitionFunctionType = (
            _ input: CodePipelineModel.DisableStageTransitionInput) async throws -> ()
    typealias EnableStageTransitionFunctionType = (
            _ input: CodePipelineModel.EnableStageTransitionInput) async throws -> ()
    typealias GetActionTypeFunctionType = (
            _ input: CodePipelineModel.GetActionTypeInput) async throws -> CodePipelineModel.GetActionTypeOutput
    typealias GetJobDetailsFunctionType = (
            _ input: CodePipelineModel.GetJobDetailsInput) async throws -> CodePipelineModel.GetJobDetailsOutput
    typealias GetPipelineFunctionType = (
            _ input: CodePipelineModel.GetPipelineInput) async throws -> CodePipelineModel.GetPipelineOutput
    typealias GetPipelineExecutionFunctionType = (
            _ input: CodePipelineModel.GetPipelineExecutionInput) async throws -> CodePipelineModel.GetPipelineExecutionOutput
    typealias GetPipelineStateFunctionType = (
            _ input: CodePipelineModel.GetPipelineStateInput) async throws -> CodePipelineModel.GetPipelineStateOutput
    typealias GetThirdPartyJobDetailsFunctionType = (
            _ input: CodePipelineModel.GetThirdPartyJobDetailsInput) async throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput
    typealias ListActionExecutionsFunctionType = (
            _ input: CodePipelineModel.ListActionExecutionsInput) async throws -> CodePipelineModel.ListActionExecutionsOutput
    typealias ListActionTypesFunctionType = (
            _ input: CodePipelineModel.ListActionTypesInput) async throws -> CodePipelineModel.ListActionTypesOutput
    typealias ListPipelineExecutionsFunctionType = (
            _ input: CodePipelineModel.ListPipelineExecutionsInput) async throws -> CodePipelineModel.ListPipelineExecutionsOutput
    typealias ListPipelinesFunctionType = (
            _ input: CodePipelineModel.ListPipelinesInput) async throws -> CodePipelineModel.ListPipelinesOutput
    typealias ListTagsForResourceFunctionType = (
            _ input: CodePipelineModel.ListTagsForResourceInput) async throws -> CodePipelineModel.ListTagsForResourceOutput
    typealias ListWebhooksFunctionType = (
            _ input: CodePipelineModel.ListWebhooksInput) async throws -> CodePipelineModel.ListWebhooksOutput
    typealias PollForJobsFunctionType = (
            _ input: CodePipelineModel.PollForJobsInput) async throws -> CodePipelineModel.PollForJobsOutput
    typealias PollForThirdPartyJobsFunctionType = (
            _ input: CodePipelineModel.PollForThirdPartyJobsInput) async throws -> CodePipelineModel.PollForThirdPartyJobsOutput
    typealias PutActionRevisionFunctionType = (
            _ input: CodePipelineModel.PutActionRevisionInput) async throws -> CodePipelineModel.PutActionRevisionOutput
    typealias PutApprovalResultFunctionType = (
            _ input: CodePipelineModel.PutApprovalResultInput) async throws -> CodePipelineModel.PutApprovalResultOutput
    typealias PutJobFailureResultFunctionType = (
            _ input: CodePipelineModel.PutJobFailureResultInput) async throws -> ()
    typealias PutJobSuccessResultFunctionType = (
            _ input: CodePipelineModel.PutJobSuccessResultInput) async throws -> ()
    typealias PutThirdPartyJobFailureResultFunctionType = (
            _ input: CodePipelineModel.PutThirdPartyJobFailureResultInput) async throws -> ()
    typealias PutThirdPartyJobSuccessResultFunctionType = (
            _ input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) async throws -> ()
    typealias PutWebhookFunctionType = (
            _ input: CodePipelineModel.PutWebhookInput) async throws -> CodePipelineModel.PutWebhookOutput
    typealias RegisterWebhookWithThirdPartyFunctionType = (
            _ input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) async throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput
    typealias RetryStageExecutionFunctionType = (
            _ input: CodePipelineModel.RetryStageExecutionInput) async throws -> CodePipelineModel.RetryStageExecutionOutput
    typealias StartPipelineExecutionFunctionType = (
            _ input: CodePipelineModel.StartPipelineExecutionInput) async throws -> CodePipelineModel.StartPipelineExecutionOutput
    typealias StopPipelineExecutionFunctionType = (
            _ input: CodePipelineModel.StopPipelineExecutionInput) async throws -> CodePipelineModel.StopPipelineExecutionOutput
    typealias TagResourceFunctionType = (
            _ input: CodePipelineModel.TagResourceInput) async throws -> CodePipelineModel.TagResourceOutput
    typealias UntagResourceFunctionType = (
            _ input: CodePipelineModel.UntagResourceInput) async throws -> CodePipelineModel.UntagResourceOutput
    typealias UpdateActionTypeFunctionType = (
            _ input: CodePipelineModel.UpdateActionTypeInput) async throws -> ()
    typealias UpdatePipelineFunctionType = (
            _ input: CodePipelineModel.UpdatePipelineInput) async throws -> CodePipelineModel.UpdatePipelineOutput

    /**
     Invokes the AcknowledgeJob operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
     - Returns: The AcknowledgeJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNonce, jobNotFound, validation.
     */
    func acknowledgeJob(
            input: CodePipelineModel.AcknowledgeJobInput) async throws -> CodePipelineModel.AcknowledgeJobOutput

    /**
     Invokes the AcknowledgeThirdPartyJob operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
     - Returns: The AcknowledgeThirdPartyJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    func acknowledgeThirdPartyJob(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput) async throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput

    /**
     Invokes the CreateCustomActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
     - Returns: The CreateCustomActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    func createCustomActionType(
            input: CodePipelineModel.CreateCustomActionTypeInput) async throws -> CodePipelineModel.CreateCustomActionTypeOutput

    /**
     Invokes the CreatePipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
     - Returns: The CreatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    func createPipeline(
            input: CodePipelineModel.CreatePipelineInput) async throws -> CodePipelineModel.CreatePipelineOutput

    /**
     Invokes the DeleteCustomActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    func deleteCustomActionType(
            input: CodePipelineModel.DeleteCustomActionTypeInput) async throws

    /**
     Invokes the DeletePipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    func deletePipeline(
            input: CodePipelineModel.DeletePipelineInput) async throws

    /**
     Invokes the DeleteWebhook operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, validation.
     */
    func deleteWebhook(
            input: CodePipelineModel.DeleteWebhookInput) async throws -> CodePipelineModel.DeleteWebhookOutput

    /**
     Invokes the DeregisterWebhookWithThirdParty operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The DeregisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    func deregisterWebhookWithThirdParty(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) async throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput

    /**
     Invokes the DisableStageTransition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    func disableStageTransition(
            input: CodePipelineModel.DisableStageTransitionInput) async throws

    /**
     Invokes the EnableStageTransition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    func enableStageTransition(
            input: CodePipelineModel.EnableStageTransitionInput) async throws

    /**
     Invokes the GetActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
     - Returns: The GetActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func getActionType(
            input: CodePipelineModel.GetActionTypeInput) async throws -> CodePipelineModel.GetActionTypeOutput

    /**
     Invokes the GetJobDetails operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
     - Returns: The GetJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: jobNotFound, validation.
     */
    func getJobDetails(
            input: CodePipelineModel.GetJobDetailsInput) async throws -> CodePipelineModel.GetJobDetailsOutput

    /**
     Invokes the GetPipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
     - Returns: The GetPipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    func getPipeline(
            input: CodePipelineModel.GetPipelineInput) async throws -> CodePipelineModel.GetPipelineOutput

    /**
     Invokes the GetPipelineExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
     - Returns: The GetPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func getPipelineExecution(
            input: CodePipelineModel.GetPipelineExecutionInput) async throws -> CodePipelineModel.GetPipelineExecutionOutput

    /**
     Invokes the GetPipelineState operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
     - Returns: The GetPipelineStateOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, validation.
     */
    func getPipelineState(
            input: CodePipelineModel.GetPipelineStateInput) async throws -> CodePipelineModel.GetPipelineStateOutput

    /**
     Invokes the GetThirdPartyJobDetails operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
     - Returns: The GetThirdPartyJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    func getThirdPartyJobDetails(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput) async throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput

    /**
     Invokes the ListActionExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
     - Returns: The ListActionExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func listActionExecutions(
            input: CodePipelineModel.ListActionExecutionsInput) async throws -> CodePipelineModel.ListActionExecutionsOutput

    /**
     Invokes the ListActionTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
     - Returns: The ListActionTypesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listActionTypes(
            input: CodePipelineModel.ListActionTypesInput) async throws -> CodePipelineModel.ListActionTypesOutput

    /**
     Invokes the ListPipelineExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
     - Returns: The ListPipelineExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineNotFound, validation.
     */
    func listPipelineExecutions(
            input: CodePipelineModel.ListPipelineExecutionsInput) async throws -> CodePipelineModel.ListPipelineExecutionsOutput

    /**
     Invokes the ListPipelines operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
     - Returns: The ListPipelinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listPipelines(
            input: CodePipelineModel.ListPipelinesInput) async throws -> CodePipelineModel.ListPipelinesOutput

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    func listTagsForResource(
            input: CodePipelineModel.ListTagsForResourceInput) async throws -> CodePipelineModel.ListTagsForResourceOutput

    /**
     Invokes the ListWebhooks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
     - Returns: The ListWebhooksOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listWebhooks(
            input: CodePipelineModel.ListWebhooksInput) async throws -> CodePipelineModel.ListWebhooksOutput

    /**
     Invokes the PollForJobs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
     - Returns: The PollForJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func pollForJobs(
            input: CodePipelineModel.PollForJobsInput) async throws -> CodePipelineModel.PollForJobsOutput

    /**
     Invokes the PollForThirdPartyJobs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
     - Returns: The PollForThirdPartyJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func pollForThirdPartyJobs(
            input: CodePipelineModel.PollForThirdPartyJobsInput) async throws -> CodePipelineModel.PollForThirdPartyJobsOutput

    /**
     Invokes the PutActionRevision operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
     - Returns: The PutActionRevisionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    func putActionRevision(
            input: CodePipelineModel.PutActionRevisionInput) async throws -> CodePipelineModel.PutActionRevisionOutput

    /**
     Invokes the PutApprovalResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
     - Returns: The PutApprovalResultOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    func putApprovalResult(
            input: CodePipelineModel.PutApprovalResultInput) async throws -> CodePipelineModel.PutApprovalResultOutput

    /**
     Invokes the PutJobFailureResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, validation.
     */
    func putJobFailureResult(
            input: CodePipelineModel.PutJobFailureResultInput) async throws

    /**
     Invokes the PutJobSuccessResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    func putJobSuccessResult(
            input: CodePipelineModel.PutJobSuccessResultInput) async throws

    /**
     Invokes the PutThirdPartyJobFailureResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobFailureResult(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput) async throws

    /**
     Invokes the PutThirdPartyJobSuccessResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobSuccessResult(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) async throws

    /**
     Invokes the PutWebhook operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
     - Returns: The PutWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    func putWebhook(
            input: CodePipelineModel.PutWebhookInput) async throws -> CodePipelineModel.PutWebhookOutput

    /**
     Invokes the RegisterWebhookWithThirdParty operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The RegisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    func registerWebhookWithThirdParty(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) async throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput

    /**
     Invokes the RetryStageExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
     - Returns: The RetryStageExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    func retryStageExecution(
            input: CodePipelineModel.RetryStageExecutionInput) async throws -> CodePipelineModel.RetryStageExecutionOutput

    /**
     Invokes the StartPipelineExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
     - Returns: The StartPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, pipelineNotFound, validation.
     */
    func startPipelineExecution(
            input: CodePipelineModel.StartPipelineExecutionInput) async throws -> CodePipelineModel.StartPipelineExecutionOutput

    /**
     Invokes the StopPipelineExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
     - Returns: The StopPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    func stopPipelineExecution(
            input: CodePipelineModel.StopPipelineExecutionInput) async throws -> CodePipelineModel.StopPipelineExecutionOutput

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    func tagResource(
            input: CodePipelineModel.TagResourceInput) async throws -> CodePipelineModel.TagResourceOutput

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    func untagResource(
            input: CodePipelineModel.UntagResourceInput) async throws -> CodePipelineModel.UntagResourceOutput

    /**
     Invokes the UpdateActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
     - Throws: actionTypeNotFound, requestFailed, validation.
     */
    func updateActionType(
            input: CodePipelineModel.UpdateActionTypeInput) async throws

    /**
     Invokes the UpdatePipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
     - Returns: The UpdatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    func updatePipeline(
            input: CodePipelineModel.UpdatePipelineInput) async throws -> CodePipelineModel.UpdatePipelineOutput
#endif
}
