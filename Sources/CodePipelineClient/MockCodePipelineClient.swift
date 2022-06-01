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
// MockCodePipelineClient.swift
// CodePipelineClient
//

import Foundation
import CodePipelineModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CodePipeline service by default returns the `__default` property of its return type.
 */
public struct MockCodePipelineClient: CodePipelineClientProtocol {
    let acknowledgeJobAsyncOverride: AcknowledgeJobAsyncType?
    let acknowledgeJobSyncOverride: AcknowledgeJobSyncType?
    let acknowledgeThirdPartyJobAsyncOverride: AcknowledgeThirdPartyJobAsyncType?
    let acknowledgeThirdPartyJobSyncOverride: AcknowledgeThirdPartyJobSyncType?
    let createCustomActionTypeAsyncOverride: CreateCustomActionTypeAsyncType?
    let createCustomActionTypeSyncOverride: CreateCustomActionTypeSyncType?
    let createPipelineAsyncOverride: CreatePipelineAsyncType?
    let createPipelineSyncOverride: CreatePipelineSyncType?
    let deleteCustomActionTypeAsyncOverride: DeleteCustomActionTypeAsyncType?
    let deleteCustomActionTypeSyncOverride: DeleteCustomActionTypeSyncType?
    let deletePipelineAsyncOverride: DeletePipelineAsyncType?
    let deletePipelineSyncOverride: DeletePipelineSyncType?
    let deleteWebhookAsyncOverride: DeleteWebhookAsyncType?
    let deleteWebhookSyncOverride: DeleteWebhookSyncType?
    let deregisterWebhookWithThirdPartyAsyncOverride: DeregisterWebhookWithThirdPartyAsyncType?
    let deregisterWebhookWithThirdPartySyncOverride: DeregisterWebhookWithThirdPartySyncType?
    let disableStageTransitionAsyncOverride: DisableStageTransitionAsyncType?
    let disableStageTransitionSyncOverride: DisableStageTransitionSyncType?
    let enableStageTransitionAsyncOverride: EnableStageTransitionAsyncType?
    let enableStageTransitionSyncOverride: EnableStageTransitionSyncType?
    let getActionTypeAsyncOverride: GetActionTypeAsyncType?
    let getActionTypeSyncOverride: GetActionTypeSyncType?
    let getJobDetailsAsyncOverride: GetJobDetailsAsyncType?
    let getJobDetailsSyncOverride: GetJobDetailsSyncType?
    let getPipelineAsyncOverride: GetPipelineAsyncType?
    let getPipelineSyncOverride: GetPipelineSyncType?
    let getPipelineExecutionAsyncOverride: GetPipelineExecutionAsyncType?
    let getPipelineExecutionSyncOverride: GetPipelineExecutionSyncType?
    let getPipelineStateAsyncOverride: GetPipelineStateAsyncType?
    let getPipelineStateSyncOverride: GetPipelineStateSyncType?
    let getThirdPartyJobDetailsAsyncOverride: GetThirdPartyJobDetailsAsyncType?
    let getThirdPartyJobDetailsSyncOverride: GetThirdPartyJobDetailsSyncType?
    let listActionExecutionsAsyncOverride: ListActionExecutionsAsyncType?
    let listActionExecutionsSyncOverride: ListActionExecutionsSyncType?
    let listActionTypesAsyncOverride: ListActionTypesAsyncType?
    let listActionTypesSyncOverride: ListActionTypesSyncType?
    let listPipelineExecutionsAsyncOverride: ListPipelineExecutionsAsyncType?
    let listPipelineExecutionsSyncOverride: ListPipelineExecutionsSyncType?
    let listPipelinesAsyncOverride: ListPipelinesAsyncType?
    let listPipelinesSyncOverride: ListPipelinesSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let listWebhooksAsyncOverride: ListWebhooksAsyncType?
    let listWebhooksSyncOverride: ListWebhooksSyncType?
    let pollForJobsAsyncOverride: PollForJobsAsyncType?
    let pollForJobsSyncOverride: PollForJobsSyncType?
    let pollForThirdPartyJobsAsyncOverride: PollForThirdPartyJobsAsyncType?
    let pollForThirdPartyJobsSyncOverride: PollForThirdPartyJobsSyncType?
    let putActionRevisionAsyncOverride: PutActionRevisionAsyncType?
    let putActionRevisionSyncOverride: PutActionRevisionSyncType?
    let putApprovalResultAsyncOverride: PutApprovalResultAsyncType?
    let putApprovalResultSyncOverride: PutApprovalResultSyncType?
    let putJobFailureResultAsyncOverride: PutJobFailureResultAsyncType?
    let putJobFailureResultSyncOverride: PutJobFailureResultSyncType?
    let putJobSuccessResultAsyncOverride: PutJobSuccessResultAsyncType?
    let putJobSuccessResultSyncOverride: PutJobSuccessResultSyncType?
    let putThirdPartyJobFailureResultAsyncOverride: PutThirdPartyJobFailureResultAsyncType?
    let putThirdPartyJobFailureResultSyncOverride: PutThirdPartyJobFailureResultSyncType?
    let putThirdPartyJobSuccessResultAsyncOverride: PutThirdPartyJobSuccessResultAsyncType?
    let putThirdPartyJobSuccessResultSyncOverride: PutThirdPartyJobSuccessResultSyncType?
    let putWebhookAsyncOverride: PutWebhookAsyncType?
    let putWebhookSyncOverride: PutWebhookSyncType?
    let registerWebhookWithThirdPartyAsyncOverride: RegisterWebhookWithThirdPartyAsyncType?
    let registerWebhookWithThirdPartySyncOverride: RegisterWebhookWithThirdPartySyncType?
    let retryStageExecutionAsyncOverride: RetryStageExecutionAsyncType?
    let retryStageExecutionSyncOverride: RetryStageExecutionSyncType?
    let startPipelineExecutionAsyncOverride: StartPipelineExecutionAsyncType?
    let startPipelineExecutionSyncOverride: StartPipelineExecutionSyncType?
    let stopPipelineExecutionAsyncOverride: StopPipelineExecutionAsyncType?
    let stopPipelineExecutionSyncOverride: StopPipelineExecutionSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let updateActionTypeAsyncOverride: UpdateActionTypeAsyncType?
    let updateActionTypeSyncOverride: UpdateActionTypeSyncType?
    let updatePipelineAsyncOverride: UpdatePipelineAsyncType?
    let updatePipelineSyncOverride: UpdatePipelineSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            acknowledgeJobAsync: AcknowledgeJobAsyncType? = nil,
            acknowledgeJobSync: AcknowledgeJobSyncType? = nil,
            acknowledgeThirdPartyJobAsync: AcknowledgeThirdPartyJobAsyncType? = nil,
            acknowledgeThirdPartyJobSync: AcknowledgeThirdPartyJobSyncType? = nil,
            createCustomActionTypeAsync: CreateCustomActionTypeAsyncType? = nil,
            createCustomActionTypeSync: CreateCustomActionTypeSyncType? = nil,
            createPipelineAsync: CreatePipelineAsyncType? = nil,
            createPipelineSync: CreatePipelineSyncType? = nil,
            deleteCustomActionTypeAsync: DeleteCustomActionTypeAsyncType? = nil,
            deleteCustomActionTypeSync: DeleteCustomActionTypeSyncType? = nil,
            deletePipelineAsync: DeletePipelineAsyncType? = nil,
            deletePipelineSync: DeletePipelineSyncType? = nil,
            deleteWebhookAsync: DeleteWebhookAsyncType? = nil,
            deleteWebhookSync: DeleteWebhookSyncType? = nil,
            deregisterWebhookWithThirdPartyAsync: DeregisterWebhookWithThirdPartyAsyncType? = nil,
            deregisterWebhookWithThirdPartySync: DeregisterWebhookWithThirdPartySyncType? = nil,
            disableStageTransitionAsync: DisableStageTransitionAsyncType? = nil,
            disableStageTransitionSync: DisableStageTransitionSyncType? = nil,
            enableStageTransitionAsync: EnableStageTransitionAsyncType? = nil,
            enableStageTransitionSync: EnableStageTransitionSyncType? = nil,
            getActionTypeAsync: GetActionTypeAsyncType? = nil,
            getActionTypeSync: GetActionTypeSyncType? = nil,
            getJobDetailsAsync: GetJobDetailsAsyncType? = nil,
            getJobDetailsSync: GetJobDetailsSyncType? = nil,
            getPipelineAsync: GetPipelineAsyncType? = nil,
            getPipelineSync: GetPipelineSyncType? = nil,
            getPipelineExecutionAsync: GetPipelineExecutionAsyncType? = nil,
            getPipelineExecutionSync: GetPipelineExecutionSyncType? = nil,
            getPipelineStateAsync: GetPipelineStateAsyncType? = nil,
            getPipelineStateSync: GetPipelineStateSyncType? = nil,
            getThirdPartyJobDetailsAsync: GetThirdPartyJobDetailsAsyncType? = nil,
            getThirdPartyJobDetailsSync: GetThirdPartyJobDetailsSyncType? = nil,
            listActionExecutionsAsync: ListActionExecutionsAsyncType? = nil,
            listActionExecutionsSync: ListActionExecutionsSyncType? = nil,
            listActionTypesAsync: ListActionTypesAsyncType? = nil,
            listActionTypesSync: ListActionTypesSyncType? = nil,
            listPipelineExecutionsAsync: ListPipelineExecutionsAsyncType? = nil,
            listPipelineExecutionsSync: ListPipelineExecutionsSyncType? = nil,
            listPipelinesAsync: ListPipelinesAsyncType? = nil,
            listPipelinesSync: ListPipelinesSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            listWebhooksAsync: ListWebhooksAsyncType? = nil,
            listWebhooksSync: ListWebhooksSyncType? = nil,
            pollForJobsAsync: PollForJobsAsyncType? = nil,
            pollForJobsSync: PollForJobsSyncType? = nil,
            pollForThirdPartyJobsAsync: PollForThirdPartyJobsAsyncType? = nil,
            pollForThirdPartyJobsSync: PollForThirdPartyJobsSyncType? = nil,
            putActionRevisionAsync: PutActionRevisionAsyncType? = nil,
            putActionRevisionSync: PutActionRevisionSyncType? = nil,
            putApprovalResultAsync: PutApprovalResultAsyncType? = nil,
            putApprovalResultSync: PutApprovalResultSyncType? = nil,
            putJobFailureResultAsync: PutJobFailureResultAsyncType? = nil,
            putJobFailureResultSync: PutJobFailureResultSyncType? = nil,
            putJobSuccessResultAsync: PutJobSuccessResultAsyncType? = nil,
            putJobSuccessResultSync: PutJobSuccessResultSyncType? = nil,
            putThirdPartyJobFailureResultAsync: PutThirdPartyJobFailureResultAsyncType? = nil,
            putThirdPartyJobFailureResultSync: PutThirdPartyJobFailureResultSyncType? = nil,
            putThirdPartyJobSuccessResultAsync: PutThirdPartyJobSuccessResultAsyncType? = nil,
            putThirdPartyJobSuccessResultSync: PutThirdPartyJobSuccessResultSyncType? = nil,
            putWebhookAsync: PutWebhookAsyncType? = nil,
            putWebhookSync: PutWebhookSyncType? = nil,
            registerWebhookWithThirdPartyAsync: RegisterWebhookWithThirdPartyAsyncType? = nil,
            registerWebhookWithThirdPartySync: RegisterWebhookWithThirdPartySyncType? = nil,
            retryStageExecutionAsync: RetryStageExecutionAsyncType? = nil,
            retryStageExecutionSync: RetryStageExecutionSyncType? = nil,
            startPipelineExecutionAsync: StartPipelineExecutionAsyncType? = nil,
            startPipelineExecutionSync: StartPipelineExecutionSyncType? = nil,
            stopPipelineExecutionAsync: StopPipelineExecutionAsyncType? = nil,
            stopPipelineExecutionSync: StopPipelineExecutionSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            updateActionTypeAsync: UpdateActionTypeAsyncType? = nil,
            updateActionTypeSync: UpdateActionTypeSyncType? = nil,
            updatePipelineAsync: UpdatePipelineAsyncType? = nil,
            updatePipelineSync: UpdatePipelineSyncType? = nil) {
        self.acknowledgeJobAsyncOverride = acknowledgeJobAsync
        self.acknowledgeJobSyncOverride = acknowledgeJobSync
        self.acknowledgeThirdPartyJobAsyncOverride = acknowledgeThirdPartyJobAsync
        self.acknowledgeThirdPartyJobSyncOverride = acknowledgeThirdPartyJobSync
        self.createCustomActionTypeAsyncOverride = createCustomActionTypeAsync
        self.createCustomActionTypeSyncOverride = createCustomActionTypeSync
        self.createPipelineAsyncOverride = createPipelineAsync
        self.createPipelineSyncOverride = createPipelineSync
        self.deleteCustomActionTypeAsyncOverride = deleteCustomActionTypeAsync
        self.deleteCustomActionTypeSyncOverride = deleteCustomActionTypeSync
        self.deletePipelineAsyncOverride = deletePipelineAsync
        self.deletePipelineSyncOverride = deletePipelineSync
        self.deleteWebhookAsyncOverride = deleteWebhookAsync
        self.deleteWebhookSyncOverride = deleteWebhookSync
        self.deregisterWebhookWithThirdPartyAsyncOverride = deregisterWebhookWithThirdPartyAsync
        self.deregisterWebhookWithThirdPartySyncOverride = deregisterWebhookWithThirdPartySync
        self.disableStageTransitionAsyncOverride = disableStageTransitionAsync
        self.disableStageTransitionSyncOverride = disableStageTransitionSync
        self.enableStageTransitionAsyncOverride = enableStageTransitionAsync
        self.enableStageTransitionSyncOverride = enableStageTransitionSync
        self.getActionTypeAsyncOverride = getActionTypeAsync
        self.getActionTypeSyncOverride = getActionTypeSync
        self.getJobDetailsAsyncOverride = getJobDetailsAsync
        self.getJobDetailsSyncOverride = getJobDetailsSync
        self.getPipelineAsyncOverride = getPipelineAsync
        self.getPipelineSyncOverride = getPipelineSync
        self.getPipelineExecutionAsyncOverride = getPipelineExecutionAsync
        self.getPipelineExecutionSyncOverride = getPipelineExecutionSync
        self.getPipelineStateAsyncOverride = getPipelineStateAsync
        self.getPipelineStateSyncOverride = getPipelineStateSync
        self.getThirdPartyJobDetailsAsyncOverride = getThirdPartyJobDetailsAsync
        self.getThirdPartyJobDetailsSyncOverride = getThirdPartyJobDetailsSync
        self.listActionExecutionsAsyncOverride = listActionExecutionsAsync
        self.listActionExecutionsSyncOverride = listActionExecutionsSync
        self.listActionTypesAsyncOverride = listActionTypesAsync
        self.listActionTypesSyncOverride = listActionTypesSync
        self.listPipelineExecutionsAsyncOverride = listPipelineExecutionsAsync
        self.listPipelineExecutionsSyncOverride = listPipelineExecutionsSync
        self.listPipelinesAsyncOverride = listPipelinesAsync
        self.listPipelinesSyncOverride = listPipelinesSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.listWebhooksAsyncOverride = listWebhooksAsync
        self.listWebhooksSyncOverride = listWebhooksSync
        self.pollForJobsAsyncOverride = pollForJobsAsync
        self.pollForJobsSyncOverride = pollForJobsSync
        self.pollForThirdPartyJobsAsyncOverride = pollForThirdPartyJobsAsync
        self.pollForThirdPartyJobsSyncOverride = pollForThirdPartyJobsSync
        self.putActionRevisionAsyncOverride = putActionRevisionAsync
        self.putActionRevisionSyncOverride = putActionRevisionSync
        self.putApprovalResultAsyncOverride = putApprovalResultAsync
        self.putApprovalResultSyncOverride = putApprovalResultSync
        self.putJobFailureResultAsyncOverride = putJobFailureResultAsync
        self.putJobFailureResultSyncOverride = putJobFailureResultSync
        self.putJobSuccessResultAsyncOverride = putJobSuccessResultAsync
        self.putJobSuccessResultSyncOverride = putJobSuccessResultSync
        self.putThirdPartyJobFailureResultAsyncOverride = putThirdPartyJobFailureResultAsync
        self.putThirdPartyJobFailureResultSyncOverride = putThirdPartyJobFailureResultSync
        self.putThirdPartyJobSuccessResultAsyncOverride = putThirdPartyJobSuccessResultAsync
        self.putThirdPartyJobSuccessResultSyncOverride = putThirdPartyJobSuccessResultSync
        self.putWebhookAsyncOverride = putWebhookAsync
        self.putWebhookSyncOverride = putWebhookSync
        self.registerWebhookWithThirdPartyAsyncOverride = registerWebhookWithThirdPartyAsync
        self.registerWebhookWithThirdPartySyncOverride = registerWebhookWithThirdPartySync
        self.retryStageExecutionAsyncOverride = retryStageExecutionAsync
        self.retryStageExecutionSyncOverride = retryStageExecutionSync
        self.startPipelineExecutionAsyncOverride = startPipelineExecutionAsync
        self.startPipelineExecutionSyncOverride = startPipelineExecutionSync
        self.stopPipelineExecutionAsyncOverride = stopPipelineExecutionAsync
        self.stopPipelineExecutionSyncOverride = stopPipelineExecutionSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateActionTypeAsyncOverride = updateActionTypeAsync
        self.updateActionTypeSyncOverride = updateActionTypeSync
        self.updatePipelineAsyncOverride = updatePipelineAsync
        self.updatePipelineSyncOverride = updatePipelineSync
    }

    /**
     Invokes the AcknowledgeJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
         - completion: The AcknowledgeJobOutput object or an error will be passed to this 
           callback when the operation is complete. The AcknowledgeJobOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeJobAsync(
            input: CodePipelineModel.AcknowledgeJobInput, 
            completion: @escaping (Result<CodePipelineModel.AcknowledgeJobOutput, CodePipelineError>) -> ()) throws {
        if let acknowledgeJobAsyncOverride = acknowledgeJobAsyncOverride {
            return try acknowledgeJobAsyncOverride(input, completion)
        }

        let result = AcknowledgeJobOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the AcknowledgeJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
     - Returns: The AcknowledgeJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeJobSync(
            input: CodePipelineModel.AcknowledgeJobInput) throws -> CodePipelineModel.AcknowledgeJobOutput {
        if let acknowledgeJobSyncOverride = acknowledgeJobSyncOverride {
            return try acknowledgeJobSyncOverride(input)
        }

        return AcknowledgeJobOutput.__default
    }

    /**
     Invokes the AcknowledgeThirdPartyJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
         - completion: The AcknowledgeThirdPartyJobOutput object or an error will be passed to this 
           callback when the operation is complete. The AcknowledgeThirdPartyJobOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeThirdPartyJobAsync(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput, 
            completion: @escaping (Result<CodePipelineModel.AcknowledgeThirdPartyJobOutput, CodePipelineError>) -> ()) throws {
        if let acknowledgeThirdPartyJobAsyncOverride = acknowledgeThirdPartyJobAsyncOverride {
            return try acknowledgeThirdPartyJobAsyncOverride(input, completion)
        }

        let result = AcknowledgeThirdPartyJobOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the AcknowledgeThirdPartyJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
     - Returns: The AcknowledgeThirdPartyJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeThirdPartyJobSync(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput) throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput {
        if let acknowledgeThirdPartyJobSyncOverride = acknowledgeThirdPartyJobSyncOverride {
            return try acknowledgeThirdPartyJobSyncOverride(input)
        }

        return AcknowledgeThirdPartyJobOutput.__default
    }

    /**
     Invokes the CreateCustomActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
         - completion: The CreateCustomActionTypeOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomActionTypeOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    public func createCustomActionTypeAsync(
            input: CodePipelineModel.CreateCustomActionTypeInput, 
            completion: @escaping (Result<CodePipelineModel.CreateCustomActionTypeOutput, CodePipelineError>) -> ()) throws {
        if let createCustomActionTypeAsyncOverride = createCustomActionTypeAsyncOverride {
            return try createCustomActionTypeAsyncOverride(input, completion)
        }

        let result = CreateCustomActionTypeOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateCustomActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
     - Returns: The CreateCustomActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    public func createCustomActionTypeSync(
            input: CodePipelineModel.CreateCustomActionTypeInput) throws -> CodePipelineModel.CreateCustomActionTypeOutput {
        if let createCustomActionTypeSyncOverride = createCustomActionTypeSyncOverride {
            return try createCustomActionTypeSyncOverride(input)
        }

        return CreateCustomActionTypeOutput.__default
    }

    /**
     Invokes the CreatePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
         - completion: The CreatePipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreatePipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    public func createPipelineAsync(
            input: CodePipelineModel.CreatePipelineInput, 
            completion: @escaping (Result<CodePipelineModel.CreatePipelineOutput, CodePipelineError>) -> ()) throws {
        if let createPipelineAsyncOverride = createPipelineAsyncOverride {
            return try createPipelineAsyncOverride(input, completion)
        }

        let result = CreatePipelineOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreatePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
     - Returns: The CreatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    public func createPipelineSync(
            input: CodePipelineModel.CreatePipelineInput) throws -> CodePipelineModel.CreatePipelineOutput {
        if let createPipelineSyncOverride = createPipelineSyncOverride {
            return try createPipelineSyncOverride(input)
        }

        return CreatePipelineOutput.__default
    }

    /**
     Invokes the DeleteCustomActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: concurrentModification, validation.
     */
    public func deleteCustomActionTypeAsync(
            input: CodePipelineModel.DeleteCustomActionTypeInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let deleteCustomActionTypeAsyncOverride = deleteCustomActionTypeAsyncOverride {
            return try deleteCustomActionTypeAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteCustomActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    public func deleteCustomActionTypeSync(
            input: CodePipelineModel.DeleteCustomActionTypeInput) throws {
        if let deleteCustomActionTypeSyncOverride = deleteCustomActionTypeSyncOverride {
            return try deleteCustomActionTypeSyncOverride(input)
        }

    }

    /**
     Invokes the DeletePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: concurrentModification, validation.
     */
    public func deletePipelineAsync(
            input: CodePipelineModel.DeletePipelineInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let deletePipelineAsyncOverride = deletePipelineAsyncOverride {
            return try deletePipelineAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeletePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    public func deletePipelineSync(
            input: CodePipelineModel.DeletePipelineInput) throws {
        if let deletePipelineSyncOverride = deletePipelineSyncOverride {
            return try deletePipelineSyncOverride(input)
        }

    }

    /**
     Invokes the DeleteWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
         - completion: The DeleteWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, validation.
     */
    public func deleteWebhookAsync(
            input: CodePipelineModel.DeleteWebhookInput, 
            completion: @escaping (Result<CodePipelineModel.DeleteWebhookOutput, CodePipelineError>) -> ()) throws {
        if let deleteWebhookAsyncOverride = deleteWebhookAsyncOverride {
            return try deleteWebhookAsyncOverride(input, completion)
        }

        let result = DeleteWebhookOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, validation.
     */
    public func deleteWebhookSync(
            input: CodePipelineModel.DeleteWebhookInput) throws -> CodePipelineModel.DeleteWebhookOutput {
        if let deleteWebhookSyncOverride = deleteWebhookSyncOverride {
            return try deleteWebhookSyncOverride(input)
        }

        return DeleteWebhookOutput.__default
    }

    /**
     Invokes the DeregisterWebhookWithThirdParty operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
         - completion: The DeregisterWebhookWithThirdPartyOutput object or an error will be passed to this 
           callback when the operation is complete. The DeregisterWebhookWithThirdPartyOutput
           object will be validated before being returned to caller.
           The possible errors are: validation, webhookNotFound.
     */
    public func deregisterWebhookWithThirdPartyAsync(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput, 
            completion: @escaping (Result<CodePipelineModel.DeregisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws {
        if let deregisterWebhookWithThirdPartyAsyncOverride = deregisterWebhookWithThirdPartyAsyncOverride {
            return try deregisterWebhookWithThirdPartyAsyncOverride(input, completion)
        }

        let result = DeregisterWebhookWithThirdPartyOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeregisterWebhookWithThirdParty operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The DeregisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    public func deregisterWebhookWithThirdPartySync(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput {
        if let deregisterWebhookWithThirdPartySyncOverride = deregisterWebhookWithThirdPartySyncOverride {
            return try deregisterWebhookWithThirdPartySyncOverride(input)
        }

        return DeregisterWebhookWithThirdPartyOutput.__default
    }

    /**
     Invokes the DisableStageTransition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: pipelineNotFound, stageNotFound, validation.
     */
    public func disableStageTransitionAsync(
            input: CodePipelineModel.DisableStageTransitionInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let disableStageTransitionAsyncOverride = disableStageTransitionAsyncOverride {
            return try disableStageTransitionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DisableStageTransition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    public func disableStageTransitionSync(
            input: CodePipelineModel.DisableStageTransitionInput) throws {
        if let disableStageTransitionSyncOverride = disableStageTransitionSyncOverride {
            return try disableStageTransitionSyncOverride(input)
        }

    }

    /**
     Invokes the EnableStageTransition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: pipelineNotFound, stageNotFound, validation.
     */
    public func enableStageTransitionAsync(
            input: CodePipelineModel.EnableStageTransitionInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let enableStageTransitionAsyncOverride = enableStageTransitionAsyncOverride {
            return try enableStageTransitionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the EnableStageTransition operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    public func enableStageTransitionSync(
            input: CodePipelineModel.EnableStageTransitionInput) throws {
        if let enableStageTransitionSyncOverride = enableStageTransitionSyncOverride {
            return try enableStageTransitionSyncOverride(input)
        }

    }

    /**
     Invokes the GetActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
         - completion: The GetActionTypeOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActionTypeOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    public func getActionTypeAsync(
            input: CodePipelineModel.GetActionTypeInput, 
            completion: @escaping (Result<CodePipelineModel.GetActionTypeOutput, CodePipelineError>) -> ()) throws {
        if let getActionTypeAsyncOverride = getActionTypeAsyncOverride {
            return try getActionTypeAsyncOverride(input, completion)
        }

        let result = GetActionTypeOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
     - Returns: The GetActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func getActionTypeSync(
            input: CodePipelineModel.GetActionTypeInput) throws -> CodePipelineModel.GetActionTypeOutput {
        if let getActionTypeSyncOverride = getActionTypeSyncOverride {
            return try getActionTypeSyncOverride(input)
        }

        return GetActionTypeOutput.__default
    }

    /**
     Invokes the GetJobDetails operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
         - completion: The GetJobDetailsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetJobDetailsOutput
           object will be validated before being returned to caller.
           The possible errors are: jobNotFound, validation.
     */
    public func getJobDetailsAsync(
            input: CodePipelineModel.GetJobDetailsInput, 
            completion: @escaping (Result<CodePipelineModel.GetJobDetailsOutput, CodePipelineError>) -> ()) throws {
        if let getJobDetailsAsyncOverride = getJobDetailsAsyncOverride {
            return try getJobDetailsAsyncOverride(input, completion)
        }

        let result = GetJobDetailsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetJobDetails operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
     - Returns: The GetJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: jobNotFound, validation.
     */
    public func getJobDetailsSync(
            input: CodePipelineModel.GetJobDetailsInput) throws -> CodePipelineModel.GetJobDetailsOutput {
        if let getJobDetailsSyncOverride = getJobDetailsSyncOverride {
            return try getJobDetailsSyncOverride(input)
        }

        return GetJobDetailsOutput.__default
    }

    /**
     Invokes the GetPipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
         - completion: The GetPipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    public func getPipelineAsync(
            input: CodePipelineModel.GetPipelineInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineOutput, CodePipelineError>) -> ()) throws {
        if let getPipelineAsyncOverride = getPipelineAsyncOverride {
            return try getPipelineAsyncOverride(input, completion)
        }

        let result = GetPipelineOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetPipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
     - Returns: The GetPipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    public func getPipelineSync(
            input: CodePipelineModel.GetPipelineInput) throws -> CodePipelineModel.GetPipelineOutput {
        if let getPipelineSyncOverride = getPipelineSyncOverride {
            return try getPipelineSyncOverride(input)
        }

        return GetPipelineOutput.__default
    }

    /**
     Invokes the GetPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
         - completion: The GetPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func getPipelineExecutionAsync(
            input: CodePipelineModel.GetPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineExecutionOutput, CodePipelineError>) -> ()) throws {
        if let getPipelineExecutionAsyncOverride = getPipelineExecutionAsyncOverride {
            return try getPipelineExecutionAsyncOverride(input, completion)
        }

        let result = GetPipelineExecutionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
     - Returns: The GetPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func getPipelineExecutionSync(
            input: CodePipelineModel.GetPipelineExecutionInput) throws -> CodePipelineModel.GetPipelineExecutionOutput {
        if let getPipelineExecutionSyncOverride = getPipelineExecutionSyncOverride {
            return try getPipelineExecutionSyncOverride(input)
        }

        return GetPipelineExecutionOutput.__default
    }

    /**
     Invokes the GetPipelineState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
         - completion: The GetPipelineStateOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineStateOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineNotFound, validation.
     */
    public func getPipelineStateAsync(
            input: CodePipelineModel.GetPipelineStateInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineStateOutput, CodePipelineError>) -> ()) throws {
        if let getPipelineStateAsyncOverride = getPipelineStateAsyncOverride {
            return try getPipelineStateAsyncOverride(input, completion)
        }

        let result = GetPipelineStateOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetPipelineState operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
     - Returns: The GetPipelineStateOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, validation.
     */
    public func getPipelineStateSync(
            input: CodePipelineModel.GetPipelineStateInput) throws -> CodePipelineModel.GetPipelineStateOutput {
        if let getPipelineStateSyncOverride = getPipelineStateSyncOverride {
            return try getPipelineStateSyncOverride(input)
        }

        return GetPipelineStateOutput.__default
    }

    /**
     Invokes the GetThirdPartyJobDetails operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
         - completion: The GetThirdPartyJobDetailsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetThirdPartyJobDetailsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    public func getThirdPartyJobDetailsAsync(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput, 
            completion: @escaping (Result<CodePipelineModel.GetThirdPartyJobDetailsOutput, CodePipelineError>) -> ()) throws {
        if let getThirdPartyJobDetailsAsyncOverride = getThirdPartyJobDetailsAsyncOverride {
            return try getThirdPartyJobDetailsAsyncOverride(input, completion)
        }

        let result = GetThirdPartyJobDetailsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetThirdPartyJobDetails operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
     - Returns: The GetThirdPartyJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    public func getThirdPartyJobDetailsSync(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput) throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput {
        if let getThirdPartyJobDetailsSyncOverride = getThirdPartyJobDetailsSyncOverride {
            return try getThirdPartyJobDetailsSyncOverride(input)
        }

        return GetThirdPartyJobDetailsOutput.__default
    }

    /**
     Invokes the ListActionExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
         - completion: The ListActionExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActionExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func listActionExecutionsAsync(
            input: CodePipelineModel.ListActionExecutionsInput, 
            completion: @escaping (Result<CodePipelineModel.ListActionExecutionsOutput, CodePipelineError>) -> ()) throws {
        if let listActionExecutionsAsyncOverride = listActionExecutionsAsyncOverride {
            return try listActionExecutionsAsyncOverride(input, completion)
        }

        let result = ListActionExecutionsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListActionExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
     - Returns: The ListActionExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func listActionExecutionsSync(
            input: CodePipelineModel.ListActionExecutionsInput) throws -> CodePipelineModel.ListActionExecutionsOutput {
        if let listActionExecutionsSyncOverride = listActionExecutionsSyncOverride {
            return try listActionExecutionsSyncOverride(input)
        }

        return ListActionExecutionsOutput.__default
    }

    /**
     Invokes the ListActionTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
         - completion: The ListActionTypesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActionTypesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    public func listActionTypesAsync(
            input: CodePipelineModel.ListActionTypesInput, 
            completion: @escaping (Result<CodePipelineModel.ListActionTypesOutput, CodePipelineError>) -> ()) throws {
        if let listActionTypesAsyncOverride = listActionTypesAsyncOverride {
            return try listActionTypesAsyncOverride(input, completion)
        }

        let result = ListActionTypesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListActionTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
     - Returns: The ListActionTypesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listActionTypesSync(
            input: CodePipelineModel.ListActionTypesInput) throws -> CodePipelineModel.ListActionTypesOutput {
        if let listActionTypesSyncOverride = listActionTypesSyncOverride {
            return try listActionTypesSyncOverride(input)
        }

        return ListActionTypesOutput.__default
    }

    /**
     Invokes the ListPipelineExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
         - completion: The ListPipelineExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPipelineExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, pipelineNotFound, validation.
     */
    public func listPipelineExecutionsAsync(
            input: CodePipelineModel.ListPipelineExecutionsInput, 
            completion: @escaping (Result<CodePipelineModel.ListPipelineExecutionsOutput, CodePipelineError>) -> ()) throws {
        if let listPipelineExecutionsAsyncOverride = listPipelineExecutionsAsyncOverride {
            return try listPipelineExecutionsAsyncOverride(input, completion)
        }

        let result = ListPipelineExecutionsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListPipelineExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
     - Returns: The ListPipelineExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineNotFound, validation.
     */
    public func listPipelineExecutionsSync(
            input: CodePipelineModel.ListPipelineExecutionsInput) throws -> CodePipelineModel.ListPipelineExecutionsOutput {
        if let listPipelineExecutionsSyncOverride = listPipelineExecutionsSyncOverride {
            return try listPipelineExecutionsSyncOverride(input)
        }

        return ListPipelineExecutionsOutput.__default
    }

    /**
     Invokes the ListPipelines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
         - completion: The ListPipelinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPipelinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    public func listPipelinesAsync(
            input: CodePipelineModel.ListPipelinesInput, 
            completion: @escaping (Result<CodePipelineModel.ListPipelinesOutput, CodePipelineError>) -> ()) throws {
        if let listPipelinesAsyncOverride = listPipelinesAsyncOverride {
            return try listPipelinesAsyncOverride(input, completion)
        }

        let result = ListPipelinesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListPipelines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
     - Returns: The ListPipelinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listPipelinesSync(
            input: CodePipelineModel.ListPipelinesInput) throws -> CodePipelineModel.ListPipelinesOutput {
        if let listPipelinesSyncOverride = listPipelinesSyncOverride {
            return try listPipelinesSyncOverride(input)
        }

        return ListPipelinesOutput.__default
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    public func listTagsForResourceAsync(
            input: CodePipelineModel.ListTagsForResourceInput, 
            completion: @escaping (Result<CodePipelineModel.ListTagsForResourceOutput, CodePipelineError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        let result = ListTagsForResourceOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    public func listTagsForResourceSync(
            input: CodePipelineModel.ListTagsForResourceInput) throws -> CodePipelineModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        return ListTagsForResourceOutput.__default
    }

    /**
     Invokes the ListWebhooks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
         - completion: The ListWebhooksOutput object or an error will be passed to this 
           callback when the operation is complete. The ListWebhooksOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    public func listWebhooksAsync(
            input: CodePipelineModel.ListWebhooksInput, 
            completion: @escaping (Result<CodePipelineModel.ListWebhooksOutput, CodePipelineError>) -> ()) throws {
        if let listWebhooksAsyncOverride = listWebhooksAsyncOverride {
            return try listWebhooksAsyncOverride(input, completion)
        }

        let result = ListWebhooksOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListWebhooks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
     - Returns: The ListWebhooksOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listWebhooksSync(
            input: CodePipelineModel.ListWebhooksInput) throws -> CodePipelineModel.ListWebhooksOutput {
        if let listWebhooksSyncOverride = listWebhooksSyncOverride {
            return try listWebhooksSyncOverride(input)
        }

        return ListWebhooksOutput.__default
    }

    /**
     Invokes the PollForJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
         - completion: The PollForJobsOutput object or an error will be passed to this 
           callback when the operation is complete. The PollForJobsOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    public func pollForJobsAsync(
            input: CodePipelineModel.PollForJobsInput, 
            completion: @escaping (Result<CodePipelineModel.PollForJobsOutput, CodePipelineError>) -> ()) throws {
        if let pollForJobsAsyncOverride = pollForJobsAsyncOverride {
            return try pollForJobsAsyncOverride(input, completion)
        }

        let result = PollForJobsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PollForJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
     - Returns: The PollForJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func pollForJobsSync(
            input: CodePipelineModel.PollForJobsInput) throws -> CodePipelineModel.PollForJobsOutput {
        if let pollForJobsSyncOverride = pollForJobsSyncOverride {
            return try pollForJobsSyncOverride(input)
        }

        return PollForJobsOutput.__default
    }

    /**
     Invokes the PollForThirdPartyJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
         - completion: The PollForThirdPartyJobsOutput object or an error will be passed to this 
           callback when the operation is complete. The PollForThirdPartyJobsOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    public func pollForThirdPartyJobsAsync(
            input: CodePipelineModel.PollForThirdPartyJobsInput, 
            completion: @escaping (Result<CodePipelineModel.PollForThirdPartyJobsOutput, CodePipelineError>) -> ()) throws {
        if let pollForThirdPartyJobsAsyncOverride = pollForThirdPartyJobsAsyncOverride {
            return try pollForThirdPartyJobsAsyncOverride(input, completion)
        }

        let result = PollForThirdPartyJobsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PollForThirdPartyJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
     - Returns: The PollForThirdPartyJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func pollForThirdPartyJobsSync(
            input: CodePipelineModel.PollForThirdPartyJobsInput) throws -> CodePipelineModel.PollForThirdPartyJobsOutput {
        if let pollForThirdPartyJobsSyncOverride = pollForThirdPartyJobsSyncOverride {
            return try pollForThirdPartyJobsSyncOverride(input)
        }

        return PollForThirdPartyJobsOutput.__default
    }

    /**
     Invokes the PutActionRevision operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
         - completion: The PutActionRevisionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutActionRevisionOutput
           object will be validated before being returned to caller.
           The possible errors are: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    public func putActionRevisionAsync(
            input: CodePipelineModel.PutActionRevisionInput, 
            completion: @escaping (Result<CodePipelineModel.PutActionRevisionOutput, CodePipelineError>) -> ()) throws {
        if let putActionRevisionAsyncOverride = putActionRevisionAsyncOverride {
            return try putActionRevisionAsyncOverride(input, completion)
        }

        let result = PutActionRevisionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutActionRevision operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
     - Returns: The PutActionRevisionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    public func putActionRevisionSync(
            input: CodePipelineModel.PutActionRevisionInput) throws -> CodePipelineModel.PutActionRevisionOutput {
        if let putActionRevisionSyncOverride = putActionRevisionSyncOverride {
            return try putActionRevisionSyncOverride(input)
        }

        return PutActionRevisionOutput.__default
    }

    /**
     Invokes the PutApprovalResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
         - completion: The PutApprovalResultOutput object or an error will be passed to this 
           callback when the operation is complete. The PutApprovalResultOutput
           object will be validated before being returned to caller.
           The possible errors are: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    public func putApprovalResultAsync(
            input: CodePipelineModel.PutApprovalResultInput, 
            completion: @escaping (Result<CodePipelineModel.PutApprovalResultOutput, CodePipelineError>) -> ()) throws {
        if let putApprovalResultAsyncOverride = putApprovalResultAsyncOverride {
            return try putApprovalResultAsyncOverride(input, completion)
        }

        let result = PutApprovalResultOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutApprovalResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
     - Returns: The PutApprovalResultOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    public func putApprovalResultSync(
            input: CodePipelineModel.PutApprovalResultInput) throws -> CodePipelineModel.PutApprovalResultOutput {
        if let putApprovalResultSyncOverride = putApprovalResultSyncOverride {
            return try putApprovalResultSyncOverride(input)
        }

        return PutApprovalResultOutput.__default
    }

    /**
     Invokes the PutJobFailureResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidJobState, jobNotFound, validation.
     */
    public func putJobFailureResultAsync(
            input: CodePipelineModel.PutJobFailureResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let putJobFailureResultAsyncOverride = putJobFailureResultAsyncOverride {
            return try putJobFailureResultAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PutJobFailureResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, validation.
     */
    public func putJobFailureResultSync(
            input: CodePipelineModel.PutJobFailureResultInput) throws {
        if let putJobFailureResultSyncOverride = putJobFailureResultSyncOverride {
            return try putJobFailureResultSyncOverride(input)
        }

    }

    /**
     Invokes the PutJobSuccessResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    public func putJobSuccessResultAsync(
            input: CodePipelineModel.PutJobSuccessResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let putJobSuccessResultAsyncOverride = putJobSuccessResultAsyncOverride {
            return try putJobSuccessResultAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PutJobSuccessResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    public func putJobSuccessResultSync(
            input: CodePipelineModel.PutJobSuccessResultInput) throws {
        if let putJobSuccessResultSyncOverride = putJobSuccessResultSyncOverride {
            return try putJobSuccessResultSyncOverride(input)
        }

    }

    /**
     Invokes the PutThirdPartyJobFailureResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobFailureResultAsync(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let putThirdPartyJobFailureResultAsyncOverride = putThirdPartyJobFailureResultAsyncOverride {
            return try putThirdPartyJobFailureResultAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PutThirdPartyJobFailureResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobFailureResultSync(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput) throws {
        if let putThirdPartyJobFailureResultSyncOverride = putThirdPartyJobFailureResultSyncOverride {
            return try putThirdPartyJobFailureResultSyncOverride(input)
        }

    }

    /**
     Invokes the PutThirdPartyJobSuccessResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobSuccessResultAsync(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let putThirdPartyJobSuccessResultAsyncOverride = putThirdPartyJobSuccessResultAsyncOverride {
            return try putThirdPartyJobSuccessResultAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PutThirdPartyJobSuccessResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobSuccessResultSync(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) throws {
        if let putThirdPartyJobSuccessResultSyncOverride = putThirdPartyJobSuccessResultSyncOverride {
            return try putThirdPartyJobSuccessResultSyncOverride(input)
        }

    }

    /**
     Invokes the PutWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
         - completion: The PutWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The PutWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    public func putWebhookAsync(
            input: CodePipelineModel.PutWebhookInput, 
            completion: @escaping (Result<CodePipelineModel.PutWebhookOutput, CodePipelineError>) -> ()) throws {
        if let putWebhookAsyncOverride = putWebhookAsyncOverride {
            return try putWebhookAsyncOverride(input, completion)
        }

        let result = PutWebhookOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
     - Returns: The PutWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    public func putWebhookSync(
            input: CodePipelineModel.PutWebhookInput) throws -> CodePipelineModel.PutWebhookOutput {
        if let putWebhookSyncOverride = putWebhookSyncOverride {
            return try putWebhookSyncOverride(input)
        }

        return PutWebhookOutput.__default
    }

    /**
     Invokes the RegisterWebhookWithThirdParty operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
         - completion: The RegisterWebhookWithThirdPartyOutput object or an error will be passed to this 
           callback when the operation is complete. The RegisterWebhookWithThirdPartyOutput
           object will be validated before being returned to caller.
           The possible errors are: validation, webhookNotFound.
     */
    public func registerWebhookWithThirdPartyAsync(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput, 
            completion: @escaping (Result<CodePipelineModel.RegisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws {
        if let registerWebhookWithThirdPartyAsyncOverride = registerWebhookWithThirdPartyAsyncOverride {
            return try registerWebhookWithThirdPartyAsyncOverride(input, completion)
        }

        let result = RegisterWebhookWithThirdPartyOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RegisterWebhookWithThirdParty operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The RegisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    public func registerWebhookWithThirdPartySync(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput {
        if let registerWebhookWithThirdPartySyncOverride = registerWebhookWithThirdPartySyncOverride {
            return try registerWebhookWithThirdPartySyncOverride(input)
        }

        return RegisterWebhookWithThirdPartyOutput.__default
    }

    /**
     Invokes the RetryStageExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
         - completion: The RetryStageExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryStageExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    public func retryStageExecutionAsync(
            input: CodePipelineModel.RetryStageExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.RetryStageExecutionOutput, CodePipelineError>) -> ()) throws {
        if let retryStageExecutionAsyncOverride = retryStageExecutionAsyncOverride {
            return try retryStageExecutionAsyncOverride(input, completion)
        }

        let result = RetryStageExecutionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RetryStageExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
     - Returns: The RetryStageExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    public func retryStageExecutionSync(
            input: CodePipelineModel.RetryStageExecutionInput) throws -> CodePipelineModel.RetryStageExecutionOutput {
        if let retryStageExecutionSyncOverride = retryStageExecutionSyncOverride {
            return try retryStageExecutionSyncOverride(input)
        }

        return RetryStageExecutionOutput.__default
    }

    /**
     Invokes the StartPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
         - completion: The StartPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, pipelineNotFound, validation.
     */
    public func startPipelineExecutionAsync(
            input: CodePipelineModel.StartPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.StartPipelineExecutionOutput, CodePipelineError>) -> ()) throws {
        if let startPipelineExecutionAsyncOverride = startPipelineExecutionAsyncOverride {
            return try startPipelineExecutionAsyncOverride(input, completion)
        }

        let result = StartPipelineExecutionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
     - Returns: The StartPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, pipelineNotFound, validation.
     */
    public func startPipelineExecutionSync(
            input: CodePipelineModel.StartPipelineExecutionInput) throws -> CodePipelineModel.StartPipelineExecutionOutput {
        if let startPipelineExecutionSyncOverride = startPipelineExecutionSyncOverride {
            return try startPipelineExecutionSyncOverride(input)
        }

        return StartPipelineExecutionOutput.__default
    }

    /**
     Invokes the StopPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
         - completion: The StopPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    public func stopPipelineExecutionAsync(
            input: CodePipelineModel.StopPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.StopPipelineExecutionOutput, CodePipelineError>) -> ()) throws {
        if let stopPipelineExecutionAsyncOverride = stopPipelineExecutionAsyncOverride {
            return try stopPipelineExecutionAsyncOverride(input, completion)
        }

        let result = StopPipelineExecutionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
     - Returns: The StopPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    public func stopPipelineExecutionSync(
            input: CodePipelineModel.StopPipelineExecutionInput) throws -> CodePipelineModel.StopPipelineExecutionOutput {
        if let stopPipelineExecutionSyncOverride = stopPipelineExecutionSyncOverride {
            return try stopPipelineExecutionSyncOverride(input)
        }

        return StopPipelineExecutionOutput.__default
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    public func tagResourceAsync(
            input: CodePipelineModel.TagResourceInput, 
            completion: @escaping (Result<CodePipelineModel.TagResourceOutput, CodePipelineError>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        let result = TagResourceOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    public func tagResourceSync(
            input: CodePipelineModel.TagResourceInput) throws -> CodePipelineModel.TagResourceOutput {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        return TagResourceOutput.__default
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    public func untagResourceAsync(
            input: CodePipelineModel.UntagResourceInput, 
            completion: @escaping (Result<CodePipelineModel.UntagResourceOutput, CodePipelineError>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        let result = UntagResourceOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    public func untagResourceSync(
            input: CodePipelineModel.UntagResourceInput) throws -> CodePipelineModel.UntagResourceOutput {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        return UntagResourceOutput.__default
    }

    /**
     Invokes the UpdateActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: actionTypeNotFound, requestFailed, validation.
     */
    public func updateActionTypeAsync(
            input: CodePipelineModel.UpdateActionTypeInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        if let updateActionTypeAsyncOverride = updateActionTypeAsyncOverride {
            return try updateActionTypeAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the UpdateActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
     - Throws: actionTypeNotFound, requestFailed, validation.
     */
    public func updateActionTypeSync(
            input: CodePipelineModel.UpdateActionTypeInput) throws {
        if let updateActionTypeSyncOverride = updateActionTypeSyncOverride {
            return try updateActionTypeSyncOverride(input)
        }

    }

    /**
     Invokes the UpdatePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
         - completion: The UpdatePipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdatePipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    public func updatePipelineAsync(
            input: CodePipelineModel.UpdatePipelineInput, 
            completion: @escaping (Result<CodePipelineModel.UpdatePipelineOutput, CodePipelineError>) -> ()) throws {
        if let updatePipelineAsyncOverride = updatePipelineAsyncOverride {
            return try updatePipelineAsyncOverride(input, completion)
        }

        let result = UpdatePipelineOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UpdatePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
     - Returns: The UpdatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    public func updatePipelineSync(
            input: CodePipelineModel.UpdatePipelineInput) throws -> CodePipelineModel.UpdatePipelineOutput {
        if let updatePipelineSyncOverride = updatePipelineSyncOverride {
            return try updatePipelineSyncOverride(input)
        }

        return UpdatePipelineOutput.__default
    }
}
