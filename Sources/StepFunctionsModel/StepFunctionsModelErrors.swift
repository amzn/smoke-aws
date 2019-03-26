// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// StepFunctionsModelErrors.swift
// StepFunctionsModel
//

import Foundation
import LoggerAPI

private let activityDoesNotExistIdentity = "ActivityDoesNotExist"
private let activityLimitExceededIdentity = "ActivityLimitExceeded"
private let activityWorkerLimitExceededIdentity = "ActivityWorkerLimitExceeded"
private let executionAlreadyExistsIdentity = "ExecutionAlreadyExists"
private let executionDoesNotExistIdentity = "ExecutionDoesNotExist"
private let executionLimitExceededIdentity = "ExecutionLimitExceeded"
private let invalidArnIdentity = "InvalidArn"
private let invalidDefinitionIdentity = "InvalidDefinition"
private let invalidExecutionInputIdentity = "InvalidExecutionInput"
private let invalidNameIdentity = "InvalidName"
private let invalidOutputIdentity = "InvalidOutput"
private let invalidTokenIdentity = "InvalidToken"
private let missingRequiredParameterIdentity = "MissingRequiredParameter"
private let resourceNotFoundIdentity = "ResourceNotFound"
private let stateMachineAlreadyExistsIdentity = "StateMachineAlreadyExists"
private let stateMachineDeletingIdentity = "StateMachineDeleting"
private let stateMachineDoesNotExistIdentity = "StateMachineDoesNotExist"
private let stateMachineLimitExceededIdentity = "StateMachineLimitExceeded"
private let taskDoesNotExistIdentity = "TaskDoesNotExist"
private let taskTimedOutIdentity = "TaskTimedOut"
private let tooManyTagsIdentity = "TooManyTags"
private let __accessDeniedIdentity = "AccessDenied"

public enum StepFunctionsCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum StepFunctionsError: Swift.Error, Decodable {
    case activityDoesNotExist(ActivityDoesNotExist)
    case activityLimitExceeded(ActivityLimitExceeded)
    case activityWorkerLimitExceeded(ActivityWorkerLimitExceeded)
    case executionAlreadyExists(ExecutionAlreadyExists)
    case executionDoesNotExist(ExecutionDoesNotExist)
    case executionLimitExceeded(ExecutionLimitExceeded)
    case invalidArn(InvalidArn)
    case invalidDefinition(InvalidDefinition)
    case invalidExecutionInput(InvalidExecutionInput)
    case invalidName(InvalidName)
    case invalidOutput(InvalidOutput)
    case invalidToken(InvalidToken)
    case missingRequiredParameter(MissingRequiredParameter)
    case resourceNotFound(ResourceNotFound)
    case stateMachineAlreadyExists(StateMachineAlreadyExists)
    case stateMachineDeleting(StateMachineDeleting)
    case stateMachineDoesNotExist(StateMachineDoesNotExist)
    case stateMachineLimitExceeded(StateMachineLimitExceeded)
    case taskDoesNotExist(TaskDoesNotExist)
    case taskTimedOut(TaskTimedOut)
    case tooManyTags(TooManyTags)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case activityDoesNotExistIdentity:
            let errorPayload = try ActivityDoesNotExist(from: decoder)
            self = StepFunctionsError.activityDoesNotExist(errorPayload)
        case activityLimitExceededIdentity:
            let errorPayload = try ActivityLimitExceeded(from: decoder)
            self = StepFunctionsError.activityLimitExceeded(errorPayload)
        case activityWorkerLimitExceededIdentity:
            let errorPayload = try ActivityWorkerLimitExceeded(from: decoder)
            self = StepFunctionsError.activityWorkerLimitExceeded(errorPayload)
        case executionAlreadyExistsIdentity:
            let errorPayload = try ExecutionAlreadyExists(from: decoder)
            self = StepFunctionsError.executionAlreadyExists(errorPayload)
        case executionDoesNotExistIdentity:
            let errorPayload = try ExecutionDoesNotExist(from: decoder)
            self = StepFunctionsError.executionDoesNotExist(errorPayload)
        case executionLimitExceededIdentity:
            let errorPayload = try ExecutionLimitExceeded(from: decoder)
            self = StepFunctionsError.executionLimitExceeded(errorPayload)
        case invalidArnIdentity:
            let errorPayload = try InvalidArn(from: decoder)
            self = StepFunctionsError.invalidArn(errorPayload)
        case invalidDefinitionIdentity:
            let errorPayload = try InvalidDefinition(from: decoder)
            self = StepFunctionsError.invalidDefinition(errorPayload)
        case invalidExecutionInputIdentity:
            let errorPayload = try InvalidExecutionInput(from: decoder)
            self = StepFunctionsError.invalidExecutionInput(errorPayload)
        case invalidNameIdentity:
            let errorPayload = try InvalidName(from: decoder)
            self = StepFunctionsError.invalidName(errorPayload)
        case invalidOutputIdentity:
            let errorPayload = try InvalidOutput(from: decoder)
            self = StepFunctionsError.invalidOutput(errorPayload)
        case invalidTokenIdentity:
            let errorPayload = try InvalidToken(from: decoder)
            self = StepFunctionsError.invalidToken(errorPayload)
        case missingRequiredParameterIdentity:
            let errorPayload = try MissingRequiredParameter(from: decoder)
            self = StepFunctionsError.missingRequiredParameter(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFound(from: decoder)
            self = StepFunctionsError.resourceNotFound(errorPayload)
        case stateMachineAlreadyExistsIdentity:
            let errorPayload = try StateMachineAlreadyExists(from: decoder)
            self = StepFunctionsError.stateMachineAlreadyExists(errorPayload)
        case stateMachineDeletingIdentity:
            let errorPayload = try StateMachineDeleting(from: decoder)
            self = StepFunctionsError.stateMachineDeleting(errorPayload)
        case stateMachineDoesNotExistIdentity:
            let errorPayload = try StateMachineDoesNotExist(from: decoder)
            self = StepFunctionsError.stateMachineDoesNotExist(errorPayload)
        case stateMachineLimitExceededIdentity:
            let errorPayload = try StateMachineLimitExceeded(from: decoder)
            self = StepFunctionsError.stateMachineLimitExceeded(errorPayload)
        case taskDoesNotExistIdentity:
            let errorPayload = try TaskDoesNotExist(from: decoder)
            self = StepFunctionsError.taskDoesNotExist(errorPayload)
        case taskTimedOutIdentity:
            let errorPayload = try TaskTimedOut(from: decoder)
            self = StepFunctionsError.taskTimedOut(errorPayload)
        case tooManyTagsIdentity:
            let errorPayload = try TooManyTags(from: decoder)
            self = StepFunctionsError.tooManyTags(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw StepFunctionsCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

