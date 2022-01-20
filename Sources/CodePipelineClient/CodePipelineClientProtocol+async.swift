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
// CodePipelineClientProtocol+async.swift
// CodePipelineClient
//

import Foundation
import CodePipelineModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the CodePipelineClientProtocol type.
 */
public extension CodePipelineClientProtocol {

    /**
     Invokes the AcknowledgeJob operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
     - Returns: The AcknowledgeJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNonce, jobNotFound, validation.
     */
    func acknowledgeJob(input: CodePipelineModel.AcknowledgeJobInput) async throws
     -> CodePipelineModel.AcknowledgeJobOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try acknowledgeJobAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the AcknowledgeThirdPartyJob operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
     - Returns: The AcknowledgeThirdPartyJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    func acknowledgeThirdPartyJob(input: CodePipelineModel.AcknowledgeThirdPartyJobInput) async throws
     -> CodePipelineModel.AcknowledgeThirdPartyJobOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try acknowledgeThirdPartyJobAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateCustomActionType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
     - Returns: The CreateCustomActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    func createCustomActionType(input: CodePipelineModel.CreateCustomActionTypeInput) async throws
     -> CodePipelineModel.CreateCustomActionTypeOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createCustomActionTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreatePipeline operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
     - Returns: The CreatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    func createPipeline(input: CodePipelineModel.CreatePipelineInput) async throws
     -> CodePipelineModel.CreatePipelineOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createPipelineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteCustomActionType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    func deleteCustomActionType(input: CodePipelineModel.DeleteCustomActionTypeInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteCustomActionTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeletePipeline operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    func deletePipeline(input: CodePipelineModel.DeletePipelineInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deletePipelineAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteWebhook operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, validation.
     */
    func deleteWebhook(input: CodePipelineModel.DeleteWebhookInput) async throws
     -> CodePipelineModel.DeleteWebhookOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteWebhookAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeregisterWebhookWithThirdParty operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The DeregisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    func deregisterWebhookWithThirdParty(input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) async throws
     -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deregisterWebhookWithThirdPartyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableStageTransition operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    func disableStageTransition(input: CodePipelineModel.DisableStageTransitionInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try disableStageTransitionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableStageTransition operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    func enableStageTransition(input: CodePipelineModel.EnableStageTransitionInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try enableStageTransitionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetActionType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
     - Returns: The GetActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func getActionType(input: CodePipelineModel.GetActionTypeInput) async throws
     -> CodePipelineModel.GetActionTypeOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getActionTypeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetJobDetails operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
     - Returns: The GetJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: jobNotFound, validation.
     */
    func getJobDetails(input: CodePipelineModel.GetJobDetailsInput) async throws
     -> CodePipelineModel.GetJobDetailsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getJobDetailsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetPipeline operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
     - Returns: The GetPipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    func getPipeline(input: CodePipelineModel.GetPipelineInput) async throws
     -> CodePipelineModel.GetPipelineOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getPipelineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetPipelineExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
     - Returns: The GetPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func getPipelineExecution(input: CodePipelineModel.GetPipelineExecutionInput) async throws
     -> CodePipelineModel.GetPipelineExecutionOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getPipelineExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetPipelineState operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
     - Returns: The GetPipelineStateOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, validation.
     */
    func getPipelineState(input: CodePipelineModel.GetPipelineStateInput) async throws
     -> CodePipelineModel.GetPipelineStateOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getPipelineStateAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetThirdPartyJobDetails operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
     - Returns: The GetThirdPartyJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    func getThirdPartyJobDetails(input: CodePipelineModel.GetThirdPartyJobDetailsInput) async throws
     -> CodePipelineModel.GetThirdPartyJobDetailsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getThirdPartyJobDetailsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListActionExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
     - Returns: The ListActionExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    func listActionExecutions(input: CodePipelineModel.ListActionExecutionsInput) async throws
     -> CodePipelineModel.ListActionExecutionsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listActionExecutionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListActionTypes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
     - Returns: The ListActionTypesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listActionTypes(input: CodePipelineModel.ListActionTypesInput) async throws
     -> CodePipelineModel.ListActionTypesOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listActionTypesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListPipelineExecutions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
     - Returns: The ListPipelineExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineNotFound, validation.
     */
    func listPipelineExecutions(input: CodePipelineModel.ListPipelineExecutionsInput) async throws
     -> CodePipelineModel.ListPipelineExecutionsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listPipelineExecutionsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListPipelines operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
     - Returns: The ListPipelinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listPipelines(input: CodePipelineModel.ListPipelinesInput) async throws
     -> CodePipelineModel.ListPipelinesOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listPipelinesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    func listTagsForResource(input: CodePipelineModel.ListTagsForResourceInput) async throws
     -> CodePipelineModel.ListTagsForResourceOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListWebhooks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
     - Returns: The ListWebhooksOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    func listWebhooks(input: CodePipelineModel.ListWebhooksInput) async throws
     -> CodePipelineModel.ListWebhooksOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listWebhooksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PollForJobs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
     - Returns: The PollForJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func pollForJobs(input: CodePipelineModel.PollForJobsInput) async throws
     -> CodePipelineModel.PollForJobsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try pollForJobsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PollForThirdPartyJobs operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
     - Returns: The PollForThirdPartyJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    func pollForThirdPartyJobs(input: CodePipelineModel.PollForThirdPartyJobsInput) async throws
     -> CodePipelineModel.PollForThirdPartyJobsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try pollForThirdPartyJobsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutActionRevision operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
     - Returns: The PutActionRevisionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    func putActionRevision(input: CodePipelineModel.PutActionRevisionInput) async throws
     -> CodePipelineModel.PutActionRevisionOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putActionRevisionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutApprovalResult operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
     - Returns: The PutApprovalResultOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    func putApprovalResult(input: CodePipelineModel.PutApprovalResultInput) async throws
     -> CodePipelineModel.PutApprovalResultOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putApprovalResultAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutJobFailureResult operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, validation.
     */
    func putJobFailureResult(input: CodePipelineModel.PutJobFailureResultInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putJobFailureResultAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutJobSuccessResult operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    func putJobSuccessResult(input: CodePipelineModel.PutJobSuccessResultInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putJobSuccessResultAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutThirdPartyJobFailureResult operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobFailureResult(input: CodePipelineModel.PutThirdPartyJobFailureResultInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putThirdPartyJobFailureResultAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutThirdPartyJobSuccessResult operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    func putThirdPartyJobSuccessResult(input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putThirdPartyJobSuccessResultAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutWebhook operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
     - Returns: The PutWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    func putWebhook(input: CodePipelineModel.PutWebhookInput) async throws
     -> CodePipelineModel.PutWebhookOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putWebhookAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RegisterWebhookWithThirdParty operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The RegisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    func registerWebhookWithThirdParty(input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) async throws
     -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try registerWebhookWithThirdPartyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RetryStageExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
     - Returns: The RetryStageExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    func retryStageExecution(input: CodePipelineModel.RetryStageExecutionInput) async throws
     -> CodePipelineModel.RetryStageExecutionOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try retryStageExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartPipelineExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
     - Returns: The StartPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, pipelineNotFound, validation.
     */
    func startPipelineExecution(input: CodePipelineModel.StartPipelineExecutionInput) async throws
     -> CodePipelineModel.StartPipelineExecutionOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startPipelineExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopPipelineExecution operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
     - Returns: The StopPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    func stopPipelineExecution(input: CodePipelineModel.StopPipelineExecutionInput) async throws
     -> CodePipelineModel.StopPipelineExecutionOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopPipelineExecutionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    func tagResource(input: CodePipelineModel.TagResourceInput) async throws
     -> CodePipelineModel.TagResourceOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    func untagResource(input: CodePipelineModel.UntagResourceInput) async throws
     -> CodePipelineModel.UntagResourceOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateActionType operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
     - Throws: actionTypeNotFound, requestFailed, validation.
     */
    func updateActionType(input: CodePipelineModel.UpdateActionTypeInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateActionTypeAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdatePipeline operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
     - Returns: The UpdatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    func updatePipeline(input: CodePipelineModel.UpdatePipelineInput) async throws
     -> CodePipelineModel.UpdatePipelineOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updatePipelineAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
