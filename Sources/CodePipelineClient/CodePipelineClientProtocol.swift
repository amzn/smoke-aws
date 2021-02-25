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
// CodePipelineClientProtocol.swift
// CodePipelineClient
//

import Foundation
import CodePipelineModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the CodePipeline service.
 */
public protocol CodePipelineClientProtocol {
    typealias AcknowledgeJobSyncType = (
            _ input: CodePipelineModel.AcknowledgeJobInput) throws -> CodePipelineModel.AcknowledgeJobOutput
    typealias AcknowledgeJobAsyncType = (
            _ input: CodePipelineModel.AcknowledgeJobInput, 
            _ completion: @escaping (Result<CodePipelineModel.AcknowledgeJobOutput, CodePipelineError>) -> ()) throws -> ()
    typealias AcknowledgeThirdPartyJobSyncType = (
            _ input: CodePipelineModel.AcknowledgeThirdPartyJobInput) throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput
    typealias AcknowledgeThirdPartyJobAsyncType = (
            _ input: CodePipelineModel.AcknowledgeThirdPartyJobInput, 
            _ completion: @escaping (Result<CodePipelineModel.AcknowledgeThirdPartyJobOutput, CodePipelineError>) -> ()) throws -> ()
    typealias CreateCustomActionTypeSyncType = (
            _ input: CodePipelineModel.CreateCustomActionTypeInput) throws -> CodePipelineModel.CreateCustomActionTypeOutput
    typealias CreateCustomActionTypeAsyncType = (
            _ input: CodePipelineModel.CreateCustomActionTypeInput, 
            _ completion: @escaping (Result<CodePipelineModel.CreateCustomActionTypeOutput, CodePipelineError>) -> ()) throws -> ()
    typealias CreatePipelineSyncType = (
            _ input: CodePipelineModel.CreatePipelineInput) throws -> CodePipelineModel.CreatePipelineOutput
    typealias CreatePipelineAsyncType = (
            _ input: CodePipelineModel.CreatePipelineInput, 
            _ completion: @escaping (Result<CodePipelineModel.CreatePipelineOutput, CodePipelineError>) -> ()) throws -> ()
    typealias DeleteCustomActionTypeSyncType = (
            _ input: CodePipelineModel.DeleteCustomActionTypeInput) throws -> ()
    typealias DeleteCustomActionTypeAsyncType = (
            _ input: CodePipelineModel.DeleteCustomActionTypeInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias DeletePipelineSyncType = (
            _ input: CodePipelineModel.DeletePipelineInput) throws -> ()
    typealias DeletePipelineAsyncType = (
            _ input: CodePipelineModel.DeletePipelineInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias DeleteWebhookSyncType = (
            _ input: CodePipelineModel.DeleteWebhookInput) throws -> CodePipelineModel.DeleteWebhookOutput
    typealias DeleteWebhookAsyncType = (
            _ input: CodePipelineModel.DeleteWebhookInput, 
            _ completion: @escaping (Result<CodePipelineModel.DeleteWebhookOutput, CodePipelineError>) -> ()) throws -> ()
    typealias DeregisterWebhookWithThirdPartySyncType = (
            _ input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput
    typealias DeregisterWebhookWithThirdPartyAsyncType = (
            _ input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput, 
            _ completion: @escaping (Result<CodePipelineModel.DeregisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws -> ()
    typealias DisableStageTransitionSyncType = (
            _ input: CodePipelineModel.DisableStageTransitionInput) throws -> ()
    typealias DisableStageTransitionAsyncType = (
            _ input: CodePipelineModel.DisableStageTransitionInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias EnableStageTransitionSyncType = (
            _ input: CodePipelineModel.EnableStageTransitionInput) throws -> ()
    typealias EnableStageTransitionAsyncType = (
            _ input: CodePipelineModel.EnableStageTransitionInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias GetActionTypeSyncType = (
            _ input: CodePipelineModel.GetActionTypeInput) throws -> CodePipelineModel.GetActionTypeOutput
    typealias GetActionTypeAsyncType = (
            _ input: CodePipelineModel.GetActionTypeInput, 
            _ completion: @escaping (Result<CodePipelineModel.GetActionTypeOutput, CodePipelineError>) -> ()) throws -> ()
    typealias GetJobDetailsSyncType = (
            _ input: CodePipelineModel.GetJobDetailsInput) throws -> CodePipelineModel.GetJobDetailsOutput
    typealias GetJobDetailsAsyncType = (
            _ input: CodePipelineModel.GetJobDetailsInput, 
            _ completion: @escaping (Result<CodePipelineModel.GetJobDetailsOutput, CodePipelineError>) -> ()) throws -> ()
    typealias GetPipelineSyncType = (
            _ input: CodePipelineModel.GetPipelineInput) throws -> CodePipelineModel.GetPipelineOutput
    typealias GetPipelineAsyncType = (
            _ input: CodePipelineModel.GetPipelineInput, 
            _ completion: @escaping (Result<CodePipelineModel.GetPipelineOutput, CodePipelineError>) -> ()) throws -> ()
    typealias GetPipelineExecutionSyncType = (
            _ input: CodePipelineModel.GetPipelineExecutionInput) throws -> CodePipelineModel.GetPipelineExecutionOutput
    typealias GetPipelineExecutionAsyncType = (
            _ input: CodePipelineModel.GetPipelineExecutionInput, 
            _ completion: @escaping (Result<CodePipelineModel.GetPipelineExecutionOutput, CodePipelineError>) -> ()) throws -> ()
    typealias GetPipelineStateSyncType = (
            _ input: CodePipelineModel.GetPipelineStateInput) throws -> CodePipelineModel.GetPipelineStateOutput
    typealias GetPipelineStateAsyncType = (
            _ input: CodePipelineModel.GetPipelineStateInput, 
            _ completion: @escaping (Result<CodePipelineModel.GetPipelineStateOutput, CodePipelineError>) -> ()) throws -> ()
    typealias GetThirdPartyJobDetailsSyncType = (
            _ input: CodePipelineModel.GetThirdPartyJobDetailsInput) throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput
    typealias GetThirdPartyJobDetailsAsyncType = (
            _ input: CodePipelineModel.GetThirdPartyJobDetailsInput, 
            _ completion: @escaping (Result<CodePipelineModel.GetThirdPartyJobDetailsOutput, CodePipelineError>) -> ()) throws -> ()
    typealias ListActionExecutionsSyncType = (
            _ input: CodePipelineModel.ListActionExecutionsInput) throws -> CodePipelineModel.ListActionExecutionsOutput
    typealias ListActionExecutionsAsyncType = (
            _ input: CodePipelineModel.ListActionExecutionsInput, 
            _ completion: @escaping (Result<CodePipelineModel.ListActionExecutionsOutput, CodePipelineError>) -> ()) throws -> ()
    typealias ListActionTypesSyncType = (
            _ input: CodePipelineModel.ListActionTypesInput) throws -> CodePipelineModel.ListActionTypesOutput
    typealias ListActionTypesAsyncType = (
            _ input: CodePipelineModel.ListActionTypesInput, 
            _ completion: @escaping (Result<CodePipelineModel.ListActionTypesOutput, CodePipelineError>) -> ()) throws -> ()
    typealias ListPipelineExecutionsSyncType = (
            _ input: CodePipelineModel.ListPipelineExecutionsInput) throws -> CodePipelineModel.ListPipelineExecutionsOutput
    typealias ListPipelineExecutionsAsyncType = (
            _ input: CodePipelineModel.ListPipelineExecutionsInput, 
            _ completion: @escaping (Result<CodePipelineModel.ListPipelineExecutionsOutput, CodePipelineError>) -> ()) throws -> ()
    typealias ListPipelinesSyncType = (
            _ input: CodePipelineModel.ListPipelinesInput) throws -> CodePipelineModel.ListPipelinesOutput
    typealias ListPipelinesAsyncType = (
            _ input: CodePipelineModel.ListPipelinesInput, 
            _ completion: @escaping (Result<CodePipelineModel.ListPipelinesOutput, CodePipelineError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: CodePipelineModel.ListTagsForResourceInput) throws -> CodePipelineModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType = (
            _ input: CodePipelineModel.ListTagsForResourceInput, 
            _ completion: @escaping (Result<CodePipelineModel.ListTagsForResourceOutput, CodePipelineError>) -> ()) throws -> ()
    typealias ListWebhooksSyncType = (
            _ input: CodePipelineModel.ListWebhooksInput) throws -> CodePipelineModel.ListWebhooksOutput
    typealias ListWebhooksAsyncType = (
            _ input: CodePipelineModel.ListWebhooksInput, 
            _ completion: @escaping (Result<CodePipelineModel.ListWebhooksOutput, CodePipelineError>) -> ()) throws -> ()
    typealias PollForJobsSyncType = (
            _ input: CodePipelineModel.PollForJobsInput) throws -> CodePipelineModel.PollForJobsOutput
    typealias PollForJobsAsyncType = (
            _ input: CodePipelineModel.PollForJobsInput, 
            _ completion: @escaping (Result<CodePipelineModel.PollForJobsOutput, CodePipelineError>) -> ()) throws -> ()
    typealias PollForThirdPartyJobsSyncType = (
            _ input: CodePipelineModel.PollForThirdPartyJobsInput) throws -> CodePipelineModel.PollForThirdPartyJobsOutput
    typealias PollForThirdPartyJobsAsyncType = (
            _ input: CodePipelineModel.PollForThirdPartyJobsInput, 
            _ completion: @escaping (Result<CodePipelineModel.PollForThirdPartyJobsOutput, CodePipelineError>) -> ()) throws -> ()
    typealias PutActionRevisionSyncType = (
            _ input: CodePipelineModel.PutActionRevisionInput) throws -> CodePipelineModel.PutActionRevisionOutput
    typealias PutActionRevisionAsyncType = (
            _ input: CodePipelineModel.PutActionRevisionInput, 
            _ completion: @escaping (Result<CodePipelineModel.PutActionRevisionOutput, CodePipelineError>) -> ()) throws -> ()
    typealias PutApprovalResultSyncType = (
            _ input: CodePipelineModel.PutApprovalResultInput) throws -> CodePipelineModel.PutApprovalResultOutput
    typealias PutApprovalResultAsyncType = (
            _ input: CodePipelineModel.PutApprovalResultInput, 
            _ completion: @escaping (Result<CodePipelineModel.PutApprovalResultOutput, CodePipelineError>) -> ()) throws -> ()
    typealias PutJobFailureResultSyncType = (
            _ input: CodePipelineModel.PutJobFailureResultInput) throws -> ()
    typealias PutJobFailureResultAsyncType = (
            _ input: CodePipelineModel.PutJobFailureResultInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias PutJobSuccessResultSyncType = (
            _ input: CodePipelineModel.PutJobSuccessResultInput) throws -> ()
    typealias PutJobSuccessResultAsyncType = (
            _ input: CodePipelineModel.PutJobSuccessResultInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias PutThirdPartyJobFailureResultSyncType = (
            _ input: CodePipelineModel.PutThirdPartyJobFailureResultInput) throws -> ()
    typealias PutThirdPartyJobFailureResultAsyncType = (
            _ input: CodePipelineModel.PutThirdPartyJobFailureResultInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias PutThirdPartyJobSuccessResultSyncType = (
            _ input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) throws -> ()
    typealias PutThirdPartyJobSuccessResultAsyncType = (
            _ input: CodePipelineModel.PutThirdPartyJobSuccessResultInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias PutWebhookSyncType = (
            _ input: CodePipelineModel.PutWebhookInput) throws -> CodePipelineModel.PutWebhookOutput
    typealias PutWebhookAsyncType = (
            _ input: CodePipelineModel.PutWebhookInput, 
            _ completion: @escaping (Result<CodePipelineModel.PutWebhookOutput, CodePipelineError>) -> ()) throws -> ()
    typealias RegisterWebhookWithThirdPartySyncType = (
            _ input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput
    typealias RegisterWebhookWithThirdPartyAsyncType = (
            _ input: CodePipelineModel.RegisterWebhookWithThirdPartyInput, 
            _ completion: @escaping (Result<CodePipelineModel.RegisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws -> ()
    typealias RetryStageExecutionSyncType = (
            _ input: CodePipelineModel.RetryStageExecutionInput) throws -> CodePipelineModel.RetryStageExecutionOutput
    typealias RetryStageExecutionAsyncType = (
            _ input: CodePipelineModel.RetryStageExecutionInput, 
            _ completion: @escaping (Result<CodePipelineModel.RetryStageExecutionOutput, CodePipelineError>) -> ()) throws -> ()
    typealias StartPipelineExecutionSyncType = (
            _ input: CodePipelineModel.StartPipelineExecutionInput) throws -> CodePipelineModel.StartPipelineExecutionOutput
    typealias StartPipelineExecutionAsyncType = (
            _ input: CodePipelineModel.StartPipelineExecutionInput, 
            _ completion: @escaping (Result<CodePipelineModel.StartPipelineExecutionOutput, CodePipelineError>) -> ()) throws -> ()
    typealias StopPipelineExecutionSyncType = (
            _ input: CodePipelineModel.StopPipelineExecutionInput) throws -> CodePipelineModel.StopPipelineExecutionOutput
    typealias StopPipelineExecutionAsyncType = (
            _ input: CodePipelineModel.StopPipelineExecutionInput, 
            _ completion: @escaping (Result<CodePipelineModel.StopPipelineExecutionOutput, CodePipelineError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: CodePipelineModel.TagResourceInput) throws -> CodePipelineModel.TagResourceOutput
    typealias TagResourceAsyncType = (
            _ input: CodePipelineModel.TagResourceInput, 
            _ completion: @escaping (Result<CodePipelineModel.TagResourceOutput, CodePipelineError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: CodePipelineModel.UntagResourceInput) throws -> CodePipelineModel.UntagResourceOutput
    typealias UntagResourceAsyncType = (
            _ input: CodePipelineModel.UntagResourceInput, 
            _ completion: @escaping (Result<CodePipelineModel.UntagResourceOutput, CodePipelineError>) -> ()) throws -> ()
    typealias UpdateActionTypeSyncType = (
            _ input: CodePipelineModel.UpdateActionTypeInput) throws -> ()
    typealias UpdateActionTypeAsyncType = (
            _ input: CodePipelineModel.UpdateActionTypeInput, 
            _ completion: @escaping (CodePipelineError?) -> ()) throws -> ()
    typealias UpdatePipelineSyncType = (
            _ input: CodePipelineModel.UpdatePipelineInput) throws -> CodePipelineModel.UpdatePipelineOutput
    typealias UpdatePipelineAsyncType = (
            _ input: CodePipelineModel.UpdatePipelineInput, 
            _ completion: @escaping (Result<CodePipelineModel.UpdatePipelineOutput, CodePipelineError>) -> ()) throws -> ()

    /**
     Invokes the AcknowledgeJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
         - completion: The AcknowledgeJobOutput object or an error will be passed to this 
           callback when the operation is complete. The AcknowledgeJobOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNonce, jobNotFound, validation.
     */
    func acknowledgeJobAsync(
            input: CodePipelineModel.AcknowledgeJobInput, 
            completion: @escaping (Result<CodePipelineModel.AcknowledgeJobOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the AcknowledgeJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
     - Returns: The AcknowledgeJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNonce, jobNotFound, validation.
     */
    func acknowledgeJobSync(
            input: CodePipelineModel.AcknowledgeJobInput) throws -> CodePipelineModel.AcknowledgeJobOutput

    /**
     Invokes the AcknowledgeThirdPartyJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
         - completion: The AcknowledgeThirdPartyJobOutput object or an error will be passed to this 
           callback when the operation is complete. The AcknowledgeThirdPartyJobOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    func acknowledgeThirdPartyJobAsync(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput, 
            completion: @escaping (Result<CodePipelineModel.AcknowledgeThirdPartyJobOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the AcknowledgeThirdPartyJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
     - Returns: The AcknowledgeThirdPartyJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    func acknowledgeThirdPartyJobSync(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput) throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput

    /**
     Invokes the CreateCustomActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
         - completion: The CreateCustomActionTypeOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomActionTypeOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    func createCustomActionTypeAsync(
            input: CodePipelineModel.CreateCustomActionTypeInput, 
            completion: @escaping (Result<CodePipelineModel.CreateCustomActionTypeOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the CreateCustomActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
     - Returns: The CreateCustomActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    func createCustomActionTypeSync(
            input: CodePipelineModel.CreateCustomActionTypeInput) throws -> CodePipelineModel.CreateCustomActionTypeOutput

    /**
     Invokes the CreatePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
         - completion: The CreatePipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreatePipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    func createPipelineAsync(
            input: CodePipelineModel.CreatePipelineInput, 
            completion: @escaping (Result<CodePipelineModel.CreatePipelineOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the CreatePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
     - Returns: The CreatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    func createPipelineSync(
            input: CodePipelineModel.CreatePipelineInput) throws -> CodePipelineModel.CreatePipelineOutput

    /**
     Invokes the DeleteCustomActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: concurrentModification, validation.
     */
    func deleteCustomActionTypeAsync(
            input: CodePipelineModel.DeleteCustomActionTypeInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the DeleteCustomActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    func deleteCustomActionTypeSync(
            input: CodePipelineModel.DeleteCustomActionTypeInput) throws

    /**
     Invokes the DeletePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: concurrentModification, validation.
     */
    func deletePipelineAsync(
            input: CodePipelineModel.DeletePipelineInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the DeletePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    func deletePipelineSync(
            input: CodePipelineModel.DeletePipelineInput) throws

    /**
     Invokes the DeleteWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
         - completion: The DeleteWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, validation.
     */
    func deleteWebhookAsync(
            input: CodePipelineModel.DeleteWebhookInput, 
            completion: @escaping (Result<CodePipelineModel.DeleteWebhookOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the DeleteWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, validation.
     */
    func deleteWebhookSync(
            input: CodePipelineModel.DeleteWebhookInput) throws -> CodePipelineModel.DeleteWebhookOutput

    /**
     Invokes the DeregisterWebhookWithThirdParty operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
         - completion: The DeregisterWebhookWithThirdPartyOutput object or an error will be passed to this 
           callback when the operation is complete. The DeregisterWebhookWithThirdPartyOutput
           object will be validated before being returned to caller.
           The possible errors are: validation, webhookNotFound.
     */
    func deregisterWebhookWithThirdPartyAsync(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput, 
            completion: @escaping (Result<CodePipelineModel.DeregisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the DeregisterWebhookWithThirdParty operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The DeregisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    func deregisterWebhookWithThirdPartySync(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput

    /**
     Invokes the DisableStageTransition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: pipelineNotFound, stageNotFound, validation.
     */
    func disableStageTransitionAsync(
            input: CodePipelineModel.DisableStageTransitionInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the DisableStageTransition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    func disableStageTransitionSync(
            input: CodePipelineModel.DisableStageTransitionInput) throws

    /**
     Invokes the EnableStageTransition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: pipelineNotFound, stageNotFound, validation.
     */
    func enableStageTransitionAsync(
            input: CodePipelineModel.EnableStageTransitionInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the EnableStageTransition operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    func enableStageTransitionSync(
            input: CodePipelineModel.EnableStageTransitionInput) throws

    /**
     Invokes the GetActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
         - completion: The GetActionTypeOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActionTypeOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    func getActionTypeAsync(
            input: CodePipelineModel.GetActionTypeInput, 
            completion: @escaping (Result<CodePipelineModel.GetActionTypeOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the GetActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
     - Returns: The GetActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func getActionTypeSync(
            input: CodePipelineModel.GetActionTypeInput) throws -> CodePipelineModel.GetActionTypeOutput

    /**
     Invokes the GetJobDetails operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
         - completion: The GetJobDetailsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetJobDetailsOutput
           object will be validated before being returned to caller.
           The possible errors are: jobNotFound, validation.
     */
    func getJobDetailsAsync(
            input: CodePipelineModel.GetJobDetailsInput, 
            completion: @escaping (Result<CodePipelineModel.GetJobDetailsOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the GetJobDetails operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
     - Returns: The GetJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: jobNotFound, validation.
     */
    func getJobDetailsSync(
            input: CodePipelineModel.GetJobDetailsInput) throws -> CodePipelineModel.GetJobDetailsOutput

    /**
     Invokes the GetPipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
         - completion: The GetPipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    func getPipelineAsync(
            input: CodePipelineModel.GetPipelineInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the GetPipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
     - Returns: The GetPipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    func getPipelineSync(
            input: CodePipelineModel.GetPipelineInput) throws -> CodePipelineModel.GetPipelineOutput

    /**
     Invokes the GetPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
         - completion: The GetPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func getPipelineExecutionAsync(
            input: CodePipelineModel.GetPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineExecutionOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the GetPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
     - Returns: The GetPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func getPipelineExecutionSync(
            input: CodePipelineModel.GetPipelineExecutionInput) throws -> CodePipelineModel.GetPipelineExecutionOutput

    /**
     Invokes the GetPipelineState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
         - completion: The GetPipelineStateOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineStateOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineNotFound, validation.
     */
    func getPipelineStateAsync(
            input: CodePipelineModel.GetPipelineStateInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineStateOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the GetPipelineState operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
     - Returns: The GetPipelineStateOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, validation.
     */
    func getPipelineStateSync(
            input: CodePipelineModel.GetPipelineStateInput) throws -> CodePipelineModel.GetPipelineStateOutput

    /**
     Invokes the GetThirdPartyJobDetails operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
         - completion: The GetThirdPartyJobDetailsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetThirdPartyJobDetailsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    func getThirdPartyJobDetailsAsync(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput, 
            completion: @escaping (Result<CodePipelineModel.GetThirdPartyJobDetailsOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the GetThirdPartyJobDetails operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
     - Returns: The GetThirdPartyJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    func getThirdPartyJobDetailsSync(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput) throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput

    /**
     Invokes the ListActionExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
         - completion: The ListActionExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActionExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func listActionExecutionsAsync(
            input: CodePipelineModel.ListActionExecutionsInput, 
            completion: @escaping (Result<CodePipelineModel.ListActionExecutionsOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the ListActionExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
     - Returns: The ListActionExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func listActionExecutionsSync(
            input: CodePipelineModel.ListActionExecutionsInput) throws -> CodePipelineModel.ListActionExecutionsOutput

    /**
     Invokes the ListActionTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
         - completion: The ListActionTypesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActionTypesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    func listActionTypesAsync(
            input: CodePipelineModel.ListActionTypesInput, 
            completion: @escaping (Result<CodePipelineModel.ListActionTypesOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the ListActionTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
     - Returns: The ListActionTypesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listActionTypesSync(
            input: CodePipelineModel.ListActionTypesInput) throws -> CodePipelineModel.ListActionTypesOutput

    /**
     Invokes the ListPipelineExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
         - completion: The ListPipelineExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPipelineExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, pipelineNotFound, validation.
     */
    func listPipelineExecutionsAsync(
            input: CodePipelineModel.ListPipelineExecutionsInput, 
            completion: @escaping (Result<CodePipelineModel.ListPipelineExecutionsOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the ListPipelineExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
     - Returns: The ListPipelineExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineNotFound, validation.
     */
    func listPipelineExecutionsSync(
            input: CodePipelineModel.ListPipelineExecutionsInput) throws -> CodePipelineModel.ListPipelineExecutionsOutput

    /**
     Invokes the ListPipelines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
         - completion: The ListPipelinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPipelinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    func listPipelinesAsync(
            input: CodePipelineModel.ListPipelinesInput, 
            completion: @escaping (Result<CodePipelineModel.ListPipelinesOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the ListPipelines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
     - Returns: The ListPipelinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listPipelinesSync(
            input: CodePipelineModel.ListPipelinesInput) throws -> CodePipelineModel.ListPipelinesOutput

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    func listTagsForResourceAsync(
            input: CodePipelineModel.ListTagsForResourceInput, 
            completion: @escaping (Result<CodePipelineModel.ListTagsForResourceOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    func listTagsForResourceSync(
            input: CodePipelineModel.ListTagsForResourceInput) throws -> CodePipelineModel.ListTagsForResourceOutput

    /**
     Invokes the ListWebhooks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
         - completion: The ListWebhooksOutput object or an error will be passed to this 
           callback when the operation is complete. The ListWebhooksOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    func listWebhooksAsync(
            input: CodePipelineModel.ListWebhooksInput, 
            completion: @escaping (Result<CodePipelineModel.ListWebhooksOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the ListWebhooks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
     - Returns: The ListWebhooksOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listWebhooksSync(
            input: CodePipelineModel.ListWebhooksInput) throws -> CodePipelineModel.ListWebhooksOutput

    /**
     Invokes the PollForJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
         - completion: The PollForJobsOutput object or an error will be passed to this 
           callback when the operation is complete. The PollForJobsOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    func pollForJobsAsync(
            input: CodePipelineModel.PollForJobsInput, 
            completion: @escaping (Result<CodePipelineModel.PollForJobsOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the PollForJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
     - Returns: The PollForJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func pollForJobsSync(
            input: CodePipelineModel.PollForJobsInput) throws -> CodePipelineModel.PollForJobsOutput

    /**
     Invokes the PollForThirdPartyJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
         - completion: The PollForThirdPartyJobsOutput object or an error will be passed to this 
           callback when the operation is complete. The PollForThirdPartyJobsOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    func pollForThirdPartyJobsAsync(
            input: CodePipelineModel.PollForThirdPartyJobsInput, 
            completion: @escaping (Result<CodePipelineModel.PollForThirdPartyJobsOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the PollForThirdPartyJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
     - Returns: The PollForThirdPartyJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func pollForThirdPartyJobsSync(
            input: CodePipelineModel.PollForThirdPartyJobsInput) throws -> CodePipelineModel.PollForThirdPartyJobsOutput

    /**
     Invokes the PutActionRevision operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
         - completion: The PutActionRevisionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutActionRevisionOutput
           object will be validated before being returned to caller.
           The possible errors are: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    func putActionRevisionAsync(
            input: CodePipelineModel.PutActionRevisionInput, 
            completion: @escaping (Result<CodePipelineModel.PutActionRevisionOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the PutActionRevision operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
     - Returns: The PutActionRevisionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    func putActionRevisionSync(
            input: CodePipelineModel.PutActionRevisionInput) throws -> CodePipelineModel.PutActionRevisionOutput

    /**
     Invokes the PutApprovalResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
         - completion: The PutApprovalResultOutput object or an error will be passed to this 
           callback when the operation is complete. The PutApprovalResultOutput
           object will be validated before being returned to caller.
           The possible errors are: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    func putApprovalResultAsync(
            input: CodePipelineModel.PutApprovalResultInput, 
            completion: @escaping (Result<CodePipelineModel.PutApprovalResultOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the PutApprovalResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
     - Returns: The PutApprovalResultOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    func putApprovalResultSync(
            input: CodePipelineModel.PutApprovalResultInput) throws -> CodePipelineModel.PutApprovalResultOutput

    /**
     Invokes the PutJobFailureResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidJobState, jobNotFound, validation.
     */
    func putJobFailureResultAsync(
            input: CodePipelineModel.PutJobFailureResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the PutJobFailureResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, validation.
     */
    func putJobFailureResultSync(
            input: CodePipelineModel.PutJobFailureResultInput) throws

    /**
     Invokes the PutJobSuccessResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    func putJobSuccessResultAsync(
            input: CodePipelineModel.PutJobSuccessResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the PutJobSuccessResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    func putJobSuccessResultSync(
            input: CodePipelineModel.PutJobSuccessResultInput) throws

    /**
     Invokes the PutThirdPartyJobFailureResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobFailureResultAsync(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the PutThirdPartyJobFailureResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobFailureResultSync(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput) throws

    /**
     Invokes the PutThirdPartyJobSuccessResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobSuccessResultAsync(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the PutThirdPartyJobSuccessResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobSuccessResultSync(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) throws

    /**
     Invokes the PutWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
         - completion: The PutWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The PutWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    func putWebhookAsync(
            input: CodePipelineModel.PutWebhookInput, 
            completion: @escaping (Result<CodePipelineModel.PutWebhookOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the PutWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
     - Returns: The PutWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    func putWebhookSync(
            input: CodePipelineModel.PutWebhookInput) throws -> CodePipelineModel.PutWebhookOutput

    /**
     Invokes the RegisterWebhookWithThirdParty operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
         - completion: The RegisterWebhookWithThirdPartyOutput object or an error will be passed to this 
           callback when the operation is complete. The RegisterWebhookWithThirdPartyOutput
           object will be validated before being returned to caller.
           The possible errors are: validation, webhookNotFound.
     */
    func registerWebhookWithThirdPartyAsync(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput, 
            completion: @escaping (Result<CodePipelineModel.RegisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the RegisterWebhookWithThirdParty operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The RegisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    func registerWebhookWithThirdPartySync(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput

    /**
     Invokes the RetryStageExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
         - completion: The RetryStageExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryStageExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    func retryStageExecutionAsync(
            input: CodePipelineModel.RetryStageExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.RetryStageExecutionOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the RetryStageExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
     - Returns: The RetryStageExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    func retryStageExecutionSync(
            input: CodePipelineModel.RetryStageExecutionInput) throws -> CodePipelineModel.RetryStageExecutionOutput

    /**
     Invokes the StartPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
         - completion: The StartPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, pipelineNotFound, validation.
     */
    func startPipelineExecutionAsync(
            input: CodePipelineModel.StartPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.StartPipelineExecutionOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the StartPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
     - Returns: The StartPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, pipelineNotFound, validation.
     */
    func startPipelineExecutionSync(
            input: CodePipelineModel.StartPipelineExecutionInput) throws -> CodePipelineModel.StartPipelineExecutionOutput

    /**
     Invokes the StopPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
         - completion: The StopPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    func stopPipelineExecutionAsync(
            input: CodePipelineModel.StopPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.StopPipelineExecutionOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the StopPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
     - Returns: The StopPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    func stopPipelineExecutionSync(
            input: CodePipelineModel.StopPipelineExecutionInput) throws -> CodePipelineModel.StopPipelineExecutionOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    func tagResourceAsync(
            input: CodePipelineModel.TagResourceInput, 
            completion: @escaping (Result<CodePipelineModel.TagResourceOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    func tagResourceSync(
            input: CodePipelineModel.TagResourceInput) throws -> CodePipelineModel.TagResourceOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    func untagResourceAsync(
            input: CodePipelineModel.UntagResourceInput, 
            completion: @escaping (Result<CodePipelineModel.UntagResourceOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    func untagResourceSync(
            input: CodePipelineModel.UntagResourceInput) throws -> CodePipelineModel.UntagResourceOutput

    /**
     Invokes the UpdateActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: actionTypeNotFound, requestFailed, validation.
     */
    func updateActionTypeAsync(
            input: CodePipelineModel.UpdateActionTypeInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws

    /**
     Invokes the UpdateActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
     - Throws: actionTypeNotFound, requestFailed, validation.
     */
    func updateActionTypeSync(
            input: CodePipelineModel.UpdateActionTypeInput) throws

    /**
     Invokes the UpdatePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
         - completion: The UpdatePipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdatePipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    func updatePipelineAsync(
            input: CodePipelineModel.UpdatePipelineInput, 
            completion: @escaping (Result<CodePipelineModel.UpdatePipelineOutput, CodePipelineError>) -> ()) throws

    /**
     Invokes the UpdatePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
     - Returns: The UpdatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    func updatePipelineSync(
            input: CodePipelineModel.UpdatePipelineInput) throws -> CodePipelineModel.UpdatePipelineOutput
}
