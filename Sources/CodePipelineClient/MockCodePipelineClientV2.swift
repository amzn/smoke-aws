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
// MockCodePipelineClientV2.swift
// CodePipelineClient
//

import Foundation
import CodePipelineModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CodePipeline service by default returns the `__default` property of its return type.
 */
public struct MockCodePipelineClientV2: CodePipelineClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let acknowledgeJobOverride: AcknowledgeJobFunctionType?
    let acknowledgeThirdPartyJobOverride: AcknowledgeThirdPartyJobFunctionType?
    let createCustomActionTypeOverride: CreateCustomActionTypeFunctionType?
    let createPipelineOverride: CreatePipelineFunctionType?
    let deleteCustomActionTypeOverride: DeleteCustomActionTypeFunctionType?
    let deletePipelineOverride: DeletePipelineFunctionType?
    let deleteWebhookOverride: DeleteWebhookFunctionType?
    let deregisterWebhookWithThirdPartyOverride: DeregisterWebhookWithThirdPartyFunctionType?
    let disableStageTransitionOverride: DisableStageTransitionFunctionType?
    let enableStageTransitionOverride: EnableStageTransitionFunctionType?
    let getActionTypeOverride: GetActionTypeFunctionType?
    let getJobDetailsOverride: GetJobDetailsFunctionType?
    let getPipelineOverride: GetPipelineFunctionType?
    let getPipelineExecutionOverride: GetPipelineExecutionFunctionType?
    let getPipelineStateOverride: GetPipelineStateFunctionType?
    let getThirdPartyJobDetailsOverride: GetThirdPartyJobDetailsFunctionType?
    let listActionExecutionsOverride: ListActionExecutionsFunctionType?
    let listActionTypesOverride: ListActionTypesFunctionType?
    let listPipelineExecutionsOverride: ListPipelineExecutionsFunctionType?
    let listPipelinesOverride: ListPipelinesFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let listWebhooksOverride: ListWebhooksFunctionType?
    let pollForJobsOverride: PollForJobsFunctionType?
    let pollForThirdPartyJobsOverride: PollForThirdPartyJobsFunctionType?
    let putActionRevisionOverride: PutActionRevisionFunctionType?
    let putApprovalResultOverride: PutApprovalResultFunctionType?
    let putJobFailureResultOverride: PutJobFailureResultFunctionType?
    let putJobSuccessResultOverride: PutJobSuccessResultFunctionType?
    let putThirdPartyJobFailureResultOverride: PutThirdPartyJobFailureResultFunctionType?
    let putThirdPartyJobSuccessResultOverride: PutThirdPartyJobSuccessResultFunctionType?
    let putWebhookOverride: PutWebhookFunctionType?
    let registerWebhookWithThirdPartyOverride: RegisterWebhookWithThirdPartyFunctionType?
    let retryStageExecutionOverride: RetryStageExecutionFunctionType?
    let startPipelineExecutionOverride: StartPipelineExecutionFunctionType?
    let stopPipelineExecutionOverride: StopPipelineExecutionFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let updateActionTypeOverride: UpdateActionTypeFunctionType?
    let updatePipelineOverride: UpdatePipelineFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            acknowledgeJob: AcknowledgeJobFunctionType? = nil,
            acknowledgeThirdPartyJob: AcknowledgeThirdPartyJobFunctionType? = nil,
            createCustomActionType: CreateCustomActionTypeFunctionType? = nil,
            createPipeline: CreatePipelineFunctionType? = nil,
            deleteCustomActionType: DeleteCustomActionTypeFunctionType? = nil,
            deletePipeline: DeletePipelineFunctionType? = nil,
            deleteWebhook: DeleteWebhookFunctionType? = nil,
            deregisterWebhookWithThirdParty: DeregisterWebhookWithThirdPartyFunctionType? = nil,
            disableStageTransition: DisableStageTransitionFunctionType? = nil,
            enableStageTransition: EnableStageTransitionFunctionType? = nil,
            getActionType: GetActionTypeFunctionType? = nil,
            getJobDetails: GetJobDetailsFunctionType? = nil,
            getPipeline: GetPipelineFunctionType? = nil,
            getPipelineExecution: GetPipelineExecutionFunctionType? = nil,
            getPipelineState: GetPipelineStateFunctionType? = nil,
            getThirdPartyJobDetails: GetThirdPartyJobDetailsFunctionType? = nil,
            listActionExecutions: ListActionExecutionsFunctionType? = nil,
            listActionTypes: ListActionTypesFunctionType? = nil,
            listPipelineExecutions: ListPipelineExecutionsFunctionType? = nil,
            listPipelines: ListPipelinesFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            listWebhooks: ListWebhooksFunctionType? = nil,
            pollForJobs: PollForJobsFunctionType? = nil,
            pollForThirdPartyJobs: PollForThirdPartyJobsFunctionType? = nil,
            putActionRevision: PutActionRevisionFunctionType? = nil,
            putApprovalResult: PutApprovalResultFunctionType? = nil,
            putJobFailureResult: PutJobFailureResultFunctionType? = nil,
            putJobSuccessResult: PutJobSuccessResultFunctionType? = nil,
            putThirdPartyJobFailureResult: PutThirdPartyJobFailureResultFunctionType? = nil,
            putThirdPartyJobSuccessResult: PutThirdPartyJobSuccessResultFunctionType? = nil,
            putWebhook: PutWebhookFunctionType? = nil,
            registerWebhookWithThirdParty: RegisterWebhookWithThirdPartyFunctionType? = nil,
            retryStageExecution: RetryStageExecutionFunctionType? = nil,
            startPipelineExecution: StartPipelineExecutionFunctionType? = nil,
            stopPipelineExecution: StopPipelineExecutionFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            updateActionType: UpdateActionTypeFunctionType? = nil,
            updatePipeline: UpdatePipelineFunctionType? = nil) {
        self.acknowledgeJobOverride = acknowledgeJob
        self.acknowledgeThirdPartyJobOverride = acknowledgeThirdPartyJob
        self.createCustomActionTypeOverride = createCustomActionType
        self.createPipelineOverride = createPipeline
        self.deleteCustomActionTypeOverride = deleteCustomActionType
        self.deletePipelineOverride = deletePipeline
        self.deleteWebhookOverride = deleteWebhook
        self.deregisterWebhookWithThirdPartyOverride = deregisterWebhookWithThirdParty
        self.disableStageTransitionOverride = disableStageTransition
        self.enableStageTransitionOverride = enableStageTransition
        self.getActionTypeOverride = getActionType
        self.getJobDetailsOverride = getJobDetails
        self.getPipelineOverride = getPipeline
        self.getPipelineExecutionOverride = getPipelineExecution
        self.getPipelineStateOverride = getPipelineState
        self.getThirdPartyJobDetailsOverride = getThirdPartyJobDetails
        self.listActionExecutionsOverride = listActionExecutions
        self.listActionTypesOverride = listActionTypes
        self.listPipelineExecutionsOverride = listPipelineExecutions
        self.listPipelinesOverride = listPipelines
        self.listTagsForResourceOverride = listTagsForResource
        self.listWebhooksOverride = listWebhooks
        self.pollForJobsOverride = pollForJobs
        self.pollForThirdPartyJobsOverride = pollForThirdPartyJobs
        self.putActionRevisionOverride = putActionRevision
        self.putApprovalResultOverride = putApprovalResult
        self.putJobFailureResultOverride = putJobFailureResult
        self.putJobSuccessResultOverride = putJobSuccessResult
        self.putThirdPartyJobFailureResultOverride = putThirdPartyJobFailureResult
        self.putThirdPartyJobSuccessResultOverride = putThirdPartyJobSuccessResult
        self.putWebhookOverride = putWebhook
        self.registerWebhookWithThirdPartyOverride = registerWebhookWithThirdParty
        self.retryStageExecutionOverride = retryStageExecution
        self.startPipelineExecutionOverride = startPipelineExecution
        self.stopPipelineExecutionOverride = stopPipelineExecution
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
        self.updateActionTypeOverride = updateActionType
        self.updatePipelineOverride = updatePipeline
    }

    /**
     Invokes the AcknowledgeJob operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
     - Returns: The AcknowledgeJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeJob(
            input: CodePipelineModel.AcknowledgeJobInput) async throws -> CodePipelineModel.AcknowledgeJobOutput {
        if let acknowledgeJobOverride = acknowledgeJobOverride {
            return try await acknowledgeJobOverride(input)
        }

        return AcknowledgeJobOutput.__default
    }

    /**
     Invokes the AcknowledgeThirdPartyJob operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
     - Returns: The AcknowledgeThirdPartyJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeThirdPartyJob(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput) async throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput {
        if let acknowledgeThirdPartyJobOverride = acknowledgeThirdPartyJobOverride {
            return try await acknowledgeThirdPartyJobOverride(input)
        }

        return AcknowledgeThirdPartyJobOutput.__default
    }

    /**
     Invokes the CreateCustomActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
     - Returns: The CreateCustomActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    public func createCustomActionType(
            input: CodePipelineModel.CreateCustomActionTypeInput) async throws -> CodePipelineModel.CreateCustomActionTypeOutput {
        if let createCustomActionTypeOverride = createCustomActionTypeOverride {
            return try await createCustomActionTypeOverride(input)
        }

        return CreateCustomActionTypeOutput.__default
    }

    /**
     Invokes the CreatePipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
     - Returns: The CreatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    public func createPipeline(
            input: CodePipelineModel.CreatePipelineInput) async throws -> CodePipelineModel.CreatePipelineOutput {
        if let createPipelineOverride = createPipelineOverride {
            return try await createPipelineOverride(input)
        }

        return CreatePipelineOutput.__default
    }

    /**
     Invokes the DeleteCustomActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    public func deleteCustomActionType(
            input: CodePipelineModel.DeleteCustomActionTypeInput) async throws {
        if let deleteCustomActionTypeOverride = deleteCustomActionTypeOverride {
            return try await deleteCustomActionTypeOverride(input)
        }

    }

    /**
     Invokes the DeletePipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    public func deletePipeline(
            input: CodePipelineModel.DeletePipelineInput) async throws {
        if let deletePipelineOverride = deletePipelineOverride {
            return try await deletePipelineOverride(input)
        }

    }

    /**
     Invokes the DeleteWebhook operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, validation.
     */
    public func deleteWebhook(
            input: CodePipelineModel.DeleteWebhookInput) async throws -> CodePipelineModel.DeleteWebhookOutput {
        if let deleteWebhookOverride = deleteWebhookOverride {
            return try await deleteWebhookOverride(input)
        }

        return DeleteWebhookOutput.__default
    }

    /**
     Invokes the DeregisterWebhookWithThirdParty operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The DeregisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    public func deregisterWebhookWithThirdParty(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) async throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput {
        if let deregisterWebhookWithThirdPartyOverride = deregisterWebhookWithThirdPartyOverride {
            return try await deregisterWebhookWithThirdPartyOverride(input)
        }

        return DeregisterWebhookWithThirdPartyOutput.__default
    }

    /**
     Invokes the DisableStageTransition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    public func disableStageTransition(
            input: CodePipelineModel.DisableStageTransitionInput) async throws {
        if let disableStageTransitionOverride = disableStageTransitionOverride {
            return try await disableStageTransitionOverride(input)
        }

    }

    /**
     Invokes the EnableStageTransition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    public func enableStageTransition(
            input: CodePipelineModel.EnableStageTransitionInput) async throws {
        if let enableStageTransitionOverride = enableStageTransitionOverride {
            return try await enableStageTransitionOverride(input)
        }

    }

    /**
     Invokes the GetActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
     - Returns: The GetActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func getActionType(
            input: CodePipelineModel.GetActionTypeInput) async throws -> CodePipelineModel.GetActionTypeOutput {
        if let getActionTypeOverride = getActionTypeOverride {
            return try await getActionTypeOverride(input)
        }

        return GetActionTypeOutput.__default
    }

    /**
     Invokes the GetJobDetails operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
     - Returns: The GetJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: jobNotFound, validation.
     */
    public func getJobDetails(
            input: CodePipelineModel.GetJobDetailsInput) async throws -> CodePipelineModel.GetJobDetailsOutput {
        if let getJobDetailsOverride = getJobDetailsOverride {
            return try await getJobDetailsOverride(input)
        }

        return GetJobDetailsOutput.__default
    }

    /**
     Invokes the GetPipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
     - Returns: The GetPipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    public func getPipeline(
            input: CodePipelineModel.GetPipelineInput) async throws -> CodePipelineModel.GetPipelineOutput {
        if let getPipelineOverride = getPipelineOverride {
            return try await getPipelineOverride(input)
        }

        return GetPipelineOutput.__default
    }

    /**
     Invokes the GetPipelineExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
     - Returns: The GetPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func getPipelineExecution(
            input: CodePipelineModel.GetPipelineExecutionInput) async throws -> CodePipelineModel.GetPipelineExecutionOutput {
        if let getPipelineExecutionOverride = getPipelineExecutionOverride {
            return try await getPipelineExecutionOverride(input)
        }

        return GetPipelineExecutionOutput.__default
    }

    /**
     Invokes the GetPipelineState operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
     - Returns: The GetPipelineStateOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, validation.
     */
    public func getPipelineState(
            input: CodePipelineModel.GetPipelineStateInput) async throws -> CodePipelineModel.GetPipelineStateOutput {
        if let getPipelineStateOverride = getPipelineStateOverride {
            return try await getPipelineStateOverride(input)
        }

        return GetPipelineStateOutput.__default
    }

    /**
     Invokes the GetThirdPartyJobDetails operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
     - Returns: The GetThirdPartyJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    public func getThirdPartyJobDetails(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput) async throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput {
        if let getThirdPartyJobDetailsOverride = getThirdPartyJobDetailsOverride {
            return try await getThirdPartyJobDetailsOverride(input)
        }

        return GetThirdPartyJobDetailsOutput.__default
    }

    /**
     Invokes the ListActionExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
     - Returns: The ListActionExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func listActionExecutions(
            input: CodePipelineModel.ListActionExecutionsInput) async throws -> CodePipelineModel.ListActionExecutionsOutput {
        if let listActionExecutionsOverride = listActionExecutionsOverride {
            return try await listActionExecutionsOverride(input)
        }

        return ListActionExecutionsOutput.__default
    }

    /**
     Invokes the ListActionTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
     - Returns: The ListActionTypesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listActionTypes(
            input: CodePipelineModel.ListActionTypesInput) async throws -> CodePipelineModel.ListActionTypesOutput {
        if let listActionTypesOverride = listActionTypesOverride {
            return try await listActionTypesOverride(input)
        }

        return ListActionTypesOutput.__default
    }

    /**
     Invokes the ListPipelineExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
     - Returns: The ListPipelineExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineNotFound, validation.
     */
    public func listPipelineExecutions(
            input: CodePipelineModel.ListPipelineExecutionsInput) async throws -> CodePipelineModel.ListPipelineExecutionsOutput {
        if let listPipelineExecutionsOverride = listPipelineExecutionsOverride {
            return try await listPipelineExecutionsOverride(input)
        }

        return ListPipelineExecutionsOutput.__default
    }

    /**
     Invokes the ListPipelines operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
     - Returns: The ListPipelinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listPipelines(
            input: CodePipelineModel.ListPipelinesInput) async throws -> CodePipelineModel.ListPipelinesOutput {
        if let listPipelinesOverride = listPipelinesOverride {
            return try await listPipelinesOverride(input)
        }

        return ListPipelinesOutput.__default
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    public func listTagsForResource(
            input: CodePipelineModel.ListTagsForResourceInput) async throws -> CodePipelineModel.ListTagsForResourceOutput {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        return ListTagsForResourceOutput.__default
    }

    /**
     Invokes the ListWebhooks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
     - Returns: The ListWebhooksOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listWebhooks(
            input: CodePipelineModel.ListWebhooksInput) async throws -> CodePipelineModel.ListWebhooksOutput {
        if let listWebhooksOverride = listWebhooksOverride {
            return try await listWebhooksOverride(input)
        }

        return ListWebhooksOutput.__default
    }

    /**
     Invokes the PollForJobs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
     - Returns: The PollForJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func pollForJobs(
            input: CodePipelineModel.PollForJobsInput) async throws -> CodePipelineModel.PollForJobsOutput {
        if let pollForJobsOverride = pollForJobsOverride {
            return try await pollForJobsOverride(input)
        }

        return PollForJobsOutput.__default
    }

    /**
     Invokes the PollForThirdPartyJobs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
     - Returns: The PollForThirdPartyJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func pollForThirdPartyJobs(
            input: CodePipelineModel.PollForThirdPartyJobsInput) async throws -> CodePipelineModel.PollForThirdPartyJobsOutput {
        if let pollForThirdPartyJobsOverride = pollForThirdPartyJobsOverride {
            return try await pollForThirdPartyJobsOverride(input)
        }

        return PollForThirdPartyJobsOutput.__default
    }

    /**
     Invokes the PutActionRevision operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
     - Returns: The PutActionRevisionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    public func putActionRevision(
            input: CodePipelineModel.PutActionRevisionInput) async throws -> CodePipelineModel.PutActionRevisionOutput {
        if let putActionRevisionOverride = putActionRevisionOverride {
            return try await putActionRevisionOverride(input)
        }

        return PutActionRevisionOutput.__default
    }

    /**
     Invokes the PutApprovalResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
     - Returns: The PutApprovalResultOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    public func putApprovalResult(
            input: CodePipelineModel.PutApprovalResultInput) async throws -> CodePipelineModel.PutApprovalResultOutput {
        if let putApprovalResultOverride = putApprovalResultOverride {
            return try await putApprovalResultOverride(input)
        }

        return PutApprovalResultOutput.__default
    }

    /**
     Invokes the PutJobFailureResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, validation.
     */
    public func putJobFailureResult(
            input: CodePipelineModel.PutJobFailureResultInput) async throws {
        if let putJobFailureResultOverride = putJobFailureResultOverride {
            return try await putJobFailureResultOverride(input)
        }

    }

    /**
     Invokes the PutJobSuccessResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    public func putJobSuccessResult(
            input: CodePipelineModel.PutJobSuccessResultInput) async throws {
        if let putJobSuccessResultOverride = putJobSuccessResultOverride {
            return try await putJobSuccessResultOverride(input)
        }

    }

    /**
     Invokes the PutThirdPartyJobFailureResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobFailureResult(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput) async throws {
        if let putThirdPartyJobFailureResultOverride = putThirdPartyJobFailureResultOverride {
            return try await putThirdPartyJobFailureResultOverride(input)
        }

    }

    /**
     Invokes the PutThirdPartyJobSuccessResult operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobSuccessResult(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) async throws {
        if let putThirdPartyJobSuccessResultOverride = putThirdPartyJobSuccessResultOverride {
            return try await putThirdPartyJobSuccessResultOverride(input)
        }

    }

    /**
     Invokes the PutWebhook operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
     - Returns: The PutWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    public func putWebhook(
            input: CodePipelineModel.PutWebhookInput) async throws -> CodePipelineModel.PutWebhookOutput {
        if let putWebhookOverride = putWebhookOverride {
            return try await putWebhookOverride(input)
        }

        return PutWebhookOutput.__default
    }

    /**
     Invokes the RegisterWebhookWithThirdParty operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The RegisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    public func registerWebhookWithThirdParty(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) async throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput {
        if let registerWebhookWithThirdPartyOverride = registerWebhookWithThirdPartyOverride {
            return try await registerWebhookWithThirdPartyOverride(input)
        }

        return RegisterWebhookWithThirdPartyOutput.__default
    }

    /**
     Invokes the RetryStageExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
     - Returns: The RetryStageExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    public func retryStageExecution(
            input: CodePipelineModel.RetryStageExecutionInput) async throws -> CodePipelineModel.RetryStageExecutionOutput {
        if let retryStageExecutionOverride = retryStageExecutionOverride {
            return try await retryStageExecutionOverride(input)
        }

        return RetryStageExecutionOutput.__default
    }

    /**
     Invokes the StartPipelineExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
     - Returns: The StartPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, pipelineNotFound, validation.
     */
    public func startPipelineExecution(
            input: CodePipelineModel.StartPipelineExecutionInput) async throws -> CodePipelineModel.StartPipelineExecutionOutput {
        if let startPipelineExecutionOverride = startPipelineExecutionOverride {
            return try await startPipelineExecutionOverride(input)
        }

        return StartPipelineExecutionOutput.__default
    }

    /**
     Invokes the StopPipelineExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
     - Returns: The StopPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    public func stopPipelineExecution(
            input: CodePipelineModel.StopPipelineExecutionInput) async throws -> CodePipelineModel.StopPipelineExecutionOutput {
        if let stopPipelineExecutionOverride = stopPipelineExecutionOverride {
            return try await stopPipelineExecutionOverride(input)
        }

        return StopPipelineExecutionOutput.__default
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    public func tagResource(
            input: CodePipelineModel.TagResourceInput) async throws -> CodePipelineModel.TagResourceOutput {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        return TagResourceOutput.__default
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    public func untagResource(
            input: CodePipelineModel.UntagResourceInput) async throws -> CodePipelineModel.UntagResourceOutput {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        return UntagResourceOutput.__default
    }

    /**
     Invokes the UpdateActionType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
     - Throws: actionTypeNotFound, requestFailed, validation.
     */
    public func updateActionType(
            input: CodePipelineModel.UpdateActionTypeInput) async throws {
        if let updateActionTypeOverride = updateActionTypeOverride {
            return try await updateActionTypeOverride(input)
        }

    }

    /**
     Invokes the UpdatePipeline operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
     - Returns: The UpdatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    public func updatePipeline(
            input: CodePipelineModel.UpdatePipelineInput) async throws -> CodePipelineModel.UpdatePipelineOutput {
        if let updatePipelineOverride = updatePipelineOverride {
            return try await updatePipelineOverride(input)
        }

        return UpdatePipelineOutput.__default
    }
#endif
}
