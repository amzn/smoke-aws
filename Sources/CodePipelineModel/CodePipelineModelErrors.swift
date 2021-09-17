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
// CodePipelineModelErrors.swift
// CodePipelineModel
//

import Foundation
import Logging

public typealias CodePipelineErrorResult<SuccessPayload> = Result<SuccessPayload, CodePipelineError>

public extension Swift.Error {
    func asUnrecognizedCodePipelineError() -> CodePipelineError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let actionNotFoundIdentity = "ActionNotFoundException"
private let actionTypeNotFoundIdentity = "ActionTypeNotFoundException"
private let approvalAlreadyCompletedIdentity = "ApprovalAlreadyCompletedException"
private let concurrentModificationIdentity = "ConcurrentModificationException"
private let conflictIdentity = "ConflictException"
private let duplicatedStopRequestIdentity = "DuplicatedStopRequestException"
private let invalidActionDeclarationIdentity = "InvalidActionDeclarationException"
private let invalidApprovalTokenIdentity = "InvalidApprovalTokenException"
private let invalidArnIdentity = "InvalidArnException"
private let invalidBlockerDeclarationIdentity = "InvalidBlockerDeclarationException"
private let invalidClientTokenIdentity = "InvalidClientTokenException"
private let invalidJobIdentity = "InvalidJobException"
private let invalidJobStateIdentity = "InvalidJobStateException"
private let invalidNextTokenIdentity = "InvalidNextTokenException"
private let invalidNonceIdentity = "InvalidNonceException"
private let invalidStageDeclarationIdentity = "InvalidStageDeclarationException"
private let invalidStructureIdentity = "InvalidStructureException"
private let invalidTagsIdentity = "InvalidTagsException"
private let invalidWebhookAuthenticationParametersIdentity = "InvalidWebhookAuthenticationParametersException"
private let invalidWebhookFilterPatternIdentity = "InvalidWebhookFilterPatternException"
private let jobNotFoundIdentity = "JobNotFoundException"
private let limitExceededIdentity = "LimitExceededException"
private let notLatestPipelineExecutionIdentity = "NotLatestPipelineExecutionException"
private let outputVariablesSizeExceededIdentity = "OutputVariablesSizeExceededException"
private let pipelineExecutionNotFoundIdentity = "PipelineExecutionNotFoundException"
private let pipelineExecutionNotStoppableIdentity = "PipelineExecutionNotStoppableException"
private let pipelineNameInUseIdentity = "PipelineNameInUseException"
private let pipelineNotFoundIdentity = "PipelineNotFoundException"
private let pipelineVersionNotFoundIdentity = "PipelineVersionNotFoundException"
private let requestFailedIdentity = "RequestFailedException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let stageNotFoundIdentity = "StageNotFoundException"
private let stageNotRetryableIdentity = "StageNotRetryableException"
private let tooManyTagsIdentity = "TooManyTagsException"
private let validationIdentity = "ValidationException"
private let webhookNotFoundIdentity = "WebhookNotFoundException"
private let __accessDeniedIdentity = "AccessDenied"

public enum CodePipelineError: Swift.Error, Decodable {
    case actionNotFound(ActionNotFoundException)
    case actionTypeNotFound(ActionTypeNotFoundException)
    case approvalAlreadyCompleted(ApprovalAlreadyCompletedException)
    case concurrentModification(ConcurrentModificationException)
    case conflict(ConflictException)
    case duplicatedStopRequest(DuplicatedStopRequestException)
    case invalidActionDeclaration(InvalidActionDeclarationException)
    case invalidApprovalToken(InvalidApprovalTokenException)
    case invalidArn(InvalidArnException)
    case invalidBlockerDeclaration(InvalidBlockerDeclarationException)
    case invalidClientToken(InvalidClientTokenException)
    case invalidJob(InvalidJobException)
    case invalidJobState(InvalidJobStateException)
    case invalidNextToken(InvalidNextTokenException)
    case invalidNonce(InvalidNonceException)
    case invalidStageDeclaration(InvalidStageDeclarationException)
    case invalidStructure(InvalidStructureException)
    case invalidTags(InvalidTagsException)
    case invalidWebhookAuthenticationParameters(InvalidWebhookAuthenticationParametersException)
    case invalidWebhookFilterPattern(InvalidWebhookFilterPatternException)
    case jobNotFound(JobNotFoundException)
    case limitExceeded(LimitExceededException)
    case notLatestPipelineExecution(NotLatestPipelineExecutionException)
    case outputVariablesSizeExceeded(OutputVariablesSizeExceededException)
    case pipelineExecutionNotFound(PipelineExecutionNotFoundException)
    case pipelineExecutionNotStoppable(PipelineExecutionNotStoppableException)
    case pipelineNameInUse(PipelineNameInUseException)
    case pipelineNotFound(PipelineNotFoundException)
    case pipelineVersionNotFound(PipelineVersionNotFoundException)
    case requestFailed(RequestFailedException)
    case resourceNotFound(ResourceNotFoundException)
    case stageNotFound(StageNotFoundException)
    case stageNotRetryable(StageNotRetryableException)
    case tooManyTags(TooManyTagsException)
    case validation(ValidationException)
    case webhookNotFound(WebhookNotFoundException)
    case accessDenied(message: String?)
    case validationError(reason: String)
    case unrecognizedError(String, String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decodeIfPresent(String.self, forKey: .type) ?? "Unspecified"
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.firstIndex(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case actionNotFoundIdentity:
            let errorPayload = try ActionNotFoundException(from: decoder)
            self = CodePipelineError.actionNotFound(errorPayload)
        case actionTypeNotFoundIdentity:
            let errorPayload = try ActionTypeNotFoundException(from: decoder)
            self = CodePipelineError.actionTypeNotFound(errorPayload)
        case approvalAlreadyCompletedIdentity:
            let errorPayload = try ApprovalAlreadyCompletedException(from: decoder)
            self = CodePipelineError.approvalAlreadyCompleted(errorPayload)
        case concurrentModificationIdentity:
            let errorPayload = try ConcurrentModificationException(from: decoder)
            self = CodePipelineError.concurrentModification(errorPayload)
        case conflictIdentity:
            let errorPayload = try ConflictException(from: decoder)
            self = CodePipelineError.conflict(errorPayload)
        case duplicatedStopRequestIdentity:
            let errorPayload = try DuplicatedStopRequestException(from: decoder)
            self = CodePipelineError.duplicatedStopRequest(errorPayload)
        case invalidActionDeclarationIdentity:
            let errorPayload = try InvalidActionDeclarationException(from: decoder)
            self = CodePipelineError.invalidActionDeclaration(errorPayload)
        case invalidApprovalTokenIdentity:
            let errorPayload = try InvalidApprovalTokenException(from: decoder)
            self = CodePipelineError.invalidApprovalToken(errorPayload)
        case invalidArnIdentity:
            let errorPayload = try InvalidArnException(from: decoder)
            self = CodePipelineError.invalidArn(errorPayload)
        case invalidBlockerDeclarationIdentity:
            let errorPayload = try InvalidBlockerDeclarationException(from: decoder)
            self = CodePipelineError.invalidBlockerDeclaration(errorPayload)
        case invalidClientTokenIdentity:
            let errorPayload = try InvalidClientTokenException(from: decoder)
            self = CodePipelineError.invalidClientToken(errorPayload)
        case invalidJobIdentity:
            let errorPayload = try InvalidJobException(from: decoder)
            self = CodePipelineError.invalidJob(errorPayload)
        case invalidJobStateIdentity:
            let errorPayload = try InvalidJobStateException(from: decoder)
            self = CodePipelineError.invalidJobState(errorPayload)
        case invalidNextTokenIdentity:
            let errorPayload = try InvalidNextTokenException(from: decoder)
            self = CodePipelineError.invalidNextToken(errorPayload)
        case invalidNonceIdentity:
            let errorPayload = try InvalidNonceException(from: decoder)
            self = CodePipelineError.invalidNonce(errorPayload)
        case invalidStageDeclarationIdentity:
            let errorPayload = try InvalidStageDeclarationException(from: decoder)
            self = CodePipelineError.invalidStageDeclaration(errorPayload)
        case invalidStructureIdentity:
            let errorPayload = try InvalidStructureException(from: decoder)
            self = CodePipelineError.invalidStructure(errorPayload)
        case invalidTagsIdentity:
            let errorPayload = try InvalidTagsException(from: decoder)
            self = CodePipelineError.invalidTags(errorPayload)
        case invalidWebhookAuthenticationParametersIdentity:
            let errorPayload = try InvalidWebhookAuthenticationParametersException(from: decoder)
            self = CodePipelineError.invalidWebhookAuthenticationParameters(errorPayload)
        case invalidWebhookFilterPatternIdentity:
            let errorPayload = try InvalidWebhookFilterPatternException(from: decoder)
            self = CodePipelineError.invalidWebhookFilterPattern(errorPayload)
        case jobNotFoundIdentity:
            let errorPayload = try JobNotFoundException(from: decoder)
            self = CodePipelineError.jobNotFound(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = CodePipelineError.limitExceeded(errorPayload)
        case notLatestPipelineExecutionIdentity:
            let errorPayload = try NotLatestPipelineExecutionException(from: decoder)
            self = CodePipelineError.notLatestPipelineExecution(errorPayload)
        case outputVariablesSizeExceededIdentity:
            let errorPayload = try OutputVariablesSizeExceededException(from: decoder)
            self = CodePipelineError.outputVariablesSizeExceeded(errorPayload)
        case pipelineExecutionNotFoundIdentity:
            let errorPayload = try PipelineExecutionNotFoundException(from: decoder)
            self = CodePipelineError.pipelineExecutionNotFound(errorPayload)
        case pipelineExecutionNotStoppableIdentity:
            let errorPayload = try PipelineExecutionNotStoppableException(from: decoder)
            self = CodePipelineError.pipelineExecutionNotStoppable(errorPayload)
        case pipelineNameInUseIdentity:
            let errorPayload = try PipelineNameInUseException(from: decoder)
            self = CodePipelineError.pipelineNameInUse(errorPayload)
        case pipelineNotFoundIdentity:
            let errorPayload = try PipelineNotFoundException(from: decoder)
            self = CodePipelineError.pipelineNotFound(errorPayload)
        case pipelineVersionNotFoundIdentity:
            let errorPayload = try PipelineVersionNotFoundException(from: decoder)
            self = CodePipelineError.pipelineVersionNotFound(errorPayload)
        case requestFailedIdentity:
            let errorPayload = try RequestFailedException(from: decoder)
            self = CodePipelineError.requestFailed(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = CodePipelineError.resourceNotFound(errorPayload)
        case stageNotFoundIdentity:
            let errorPayload = try StageNotFoundException(from: decoder)
            self = CodePipelineError.stageNotFound(errorPayload)
        case stageNotRetryableIdentity:
            let errorPayload = try StageNotRetryableException(from: decoder)
            self = CodePipelineError.stageNotRetryable(errorPayload)
        case tooManyTagsIdentity:
            let errorPayload = try TooManyTagsException(from: decoder)
            self = CodePipelineError.tooManyTags(errorPayload)
        case validationIdentity:
            let errorPayload = try ValidationException(from: decoder)
            self = CodePipelineError.validation(errorPayload)
        case webhookNotFoundIdentity:
            let errorPayload = try WebhookNotFoundException(from: decoder)
            self = CodePipelineError.webhookNotFound(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = CodePipelineError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

