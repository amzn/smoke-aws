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
// ThrowingStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the StepFunctions service that by default always throws from its methods.
 */
public struct ThrowingStepFunctionsClient: StepFunctionsClientProtocol {
    let error: StepFunctionsError
    let createActivityAsyncOverride: CreateActivityAsyncType?
    let createActivitySyncOverride: CreateActivitySyncType?
    let createStateMachineAsyncOverride: CreateStateMachineAsyncType?
    let createStateMachineSyncOverride: CreateStateMachineSyncType?
    let createStateMachineAliasAsyncOverride: CreateStateMachineAliasAsyncType?
    let createStateMachineAliasSyncOverride: CreateStateMachineAliasSyncType?
    let deleteActivityAsyncOverride: DeleteActivityAsyncType?
    let deleteActivitySyncOverride: DeleteActivitySyncType?
    let deleteStateMachineAsyncOverride: DeleteStateMachineAsyncType?
    let deleteStateMachineSyncOverride: DeleteStateMachineSyncType?
    let deleteStateMachineAliasAsyncOverride: DeleteStateMachineAliasAsyncType?
    let deleteStateMachineAliasSyncOverride: DeleteStateMachineAliasSyncType?
    let deleteStateMachineVersionAsyncOverride: DeleteStateMachineVersionAsyncType?
    let deleteStateMachineVersionSyncOverride: DeleteStateMachineVersionSyncType?
    let describeActivityAsyncOverride: DescribeActivityAsyncType?
    let describeActivitySyncOverride: DescribeActivitySyncType?
    let describeExecutionAsyncOverride: DescribeExecutionAsyncType?
    let describeExecutionSyncOverride: DescribeExecutionSyncType?
    let describeMapRunAsyncOverride: DescribeMapRunAsyncType?
    let describeMapRunSyncOverride: DescribeMapRunSyncType?
    let describeStateMachineAsyncOverride: DescribeStateMachineAsyncType?
    let describeStateMachineSyncOverride: DescribeStateMachineSyncType?
    let describeStateMachineAliasAsyncOverride: DescribeStateMachineAliasAsyncType?
    let describeStateMachineAliasSyncOverride: DescribeStateMachineAliasSyncType?
    let describeStateMachineForExecutionAsyncOverride: DescribeStateMachineForExecutionAsyncType?
    let describeStateMachineForExecutionSyncOverride: DescribeStateMachineForExecutionSyncType?
    let getActivityTaskAsyncOverride: GetActivityTaskAsyncType?
    let getActivityTaskSyncOverride: GetActivityTaskSyncType?
    let getExecutionHistoryAsyncOverride: GetExecutionHistoryAsyncType?
    let getExecutionHistorySyncOverride: GetExecutionHistorySyncType?
    let listActivitiesAsyncOverride: ListActivitiesAsyncType?
    let listActivitiesSyncOverride: ListActivitiesSyncType?
    let listExecutionsAsyncOverride: ListExecutionsAsyncType?
    let listExecutionsSyncOverride: ListExecutionsSyncType?
    let listMapRunsAsyncOverride: ListMapRunsAsyncType?
    let listMapRunsSyncOverride: ListMapRunsSyncType?
    let listStateMachineAliasesAsyncOverride: ListStateMachineAliasesAsyncType?
    let listStateMachineAliasesSyncOverride: ListStateMachineAliasesSyncType?
    let listStateMachineVersionsAsyncOverride: ListStateMachineVersionsAsyncType?
    let listStateMachineVersionsSyncOverride: ListStateMachineVersionsSyncType?
    let listStateMachinesAsyncOverride: ListStateMachinesAsyncType?
    let listStateMachinesSyncOverride: ListStateMachinesSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let publishStateMachineVersionAsyncOverride: PublishStateMachineVersionAsyncType?
    let publishStateMachineVersionSyncOverride: PublishStateMachineVersionSyncType?
    let sendTaskFailureAsyncOverride: SendTaskFailureAsyncType?
    let sendTaskFailureSyncOverride: SendTaskFailureSyncType?
    let sendTaskHeartbeatAsyncOverride: SendTaskHeartbeatAsyncType?
    let sendTaskHeartbeatSyncOverride: SendTaskHeartbeatSyncType?
    let sendTaskSuccessAsyncOverride: SendTaskSuccessAsyncType?
    let sendTaskSuccessSyncOverride: SendTaskSuccessSyncType?
    let startExecutionAsyncOverride: StartExecutionAsyncType?
    let startExecutionSyncOverride: StartExecutionSyncType?
    let startSyncExecutionAsyncOverride: StartSyncExecutionAsyncType?
    let startSyncExecutionSyncOverride: StartSyncExecutionSyncType?
    let stopExecutionAsyncOverride: StopExecutionAsyncType?
    let stopExecutionSyncOverride: StopExecutionSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let updateMapRunAsyncOverride: UpdateMapRunAsyncType?
    let updateMapRunSyncOverride: UpdateMapRunSyncType?
    let updateStateMachineAsyncOverride: UpdateStateMachineAsyncType?
    let updateStateMachineSyncOverride: UpdateStateMachineSyncType?
    let updateStateMachineAliasAsyncOverride: UpdateStateMachineAliasAsyncType?
    let updateStateMachineAliasSyncOverride: UpdateStateMachineAliasSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: StepFunctionsError,
            createActivityAsync: CreateActivityAsyncType? = nil,
            createActivitySync: CreateActivitySyncType? = nil,
            createStateMachineAsync: CreateStateMachineAsyncType? = nil,
            createStateMachineSync: CreateStateMachineSyncType? = nil,
            createStateMachineAliasAsync: CreateStateMachineAliasAsyncType? = nil,
            createStateMachineAliasSync: CreateStateMachineAliasSyncType? = nil,
            deleteActivityAsync: DeleteActivityAsyncType? = nil,
            deleteActivitySync: DeleteActivitySyncType? = nil,
            deleteStateMachineAsync: DeleteStateMachineAsyncType? = nil,
            deleteStateMachineSync: DeleteStateMachineSyncType? = nil,
            deleteStateMachineAliasAsync: DeleteStateMachineAliasAsyncType? = nil,
            deleteStateMachineAliasSync: DeleteStateMachineAliasSyncType? = nil,
            deleteStateMachineVersionAsync: DeleteStateMachineVersionAsyncType? = nil,
            deleteStateMachineVersionSync: DeleteStateMachineVersionSyncType? = nil,
            describeActivityAsync: DescribeActivityAsyncType? = nil,
            describeActivitySync: DescribeActivitySyncType? = nil,
            describeExecutionAsync: DescribeExecutionAsyncType? = nil,
            describeExecutionSync: DescribeExecutionSyncType? = nil,
            describeMapRunAsync: DescribeMapRunAsyncType? = nil,
            describeMapRunSync: DescribeMapRunSyncType? = nil,
            describeStateMachineAsync: DescribeStateMachineAsyncType? = nil,
            describeStateMachineSync: DescribeStateMachineSyncType? = nil,
            describeStateMachineAliasAsync: DescribeStateMachineAliasAsyncType? = nil,
            describeStateMachineAliasSync: DescribeStateMachineAliasSyncType? = nil,
            describeStateMachineForExecutionAsync: DescribeStateMachineForExecutionAsyncType? = nil,
            describeStateMachineForExecutionSync: DescribeStateMachineForExecutionSyncType? = nil,
            getActivityTaskAsync: GetActivityTaskAsyncType? = nil,
            getActivityTaskSync: GetActivityTaskSyncType? = nil,
            getExecutionHistoryAsync: GetExecutionHistoryAsyncType? = nil,
            getExecutionHistorySync: GetExecutionHistorySyncType? = nil,
            listActivitiesAsync: ListActivitiesAsyncType? = nil,
            listActivitiesSync: ListActivitiesSyncType? = nil,
            listExecutionsAsync: ListExecutionsAsyncType? = nil,
            listExecutionsSync: ListExecutionsSyncType? = nil,
            listMapRunsAsync: ListMapRunsAsyncType? = nil,
            listMapRunsSync: ListMapRunsSyncType? = nil,
            listStateMachineAliasesAsync: ListStateMachineAliasesAsyncType? = nil,
            listStateMachineAliasesSync: ListStateMachineAliasesSyncType? = nil,
            listStateMachineVersionsAsync: ListStateMachineVersionsAsyncType? = nil,
            listStateMachineVersionsSync: ListStateMachineVersionsSyncType? = nil,
            listStateMachinesAsync: ListStateMachinesAsyncType? = nil,
            listStateMachinesSync: ListStateMachinesSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            publishStateMachineVersionAsync: PublishStateMachineVersionAsyncType? = nil,
            publishStateMachineVersionSync: PublishStateMachineVersionSyncType? = nil,
            sendTaskFailureAsync: SendTaskFailureAsyncType? = nil,
            sendTaskFailureSync: SendTaskFailureSyncType? = nil,
            sendTaskHeartbeatAsync: SendTaskHeartbeatAsyncType? = nil,
            sendTaskHeartbeatSync: SendTaskHeartbeatSyncType? = nil,
            sendTaskSuccessAsync: SendTaskSuccessAsyncType? = nil,
            sendTaskSuccessSync: SendTaskSuccessSyncType? = nil,
            startExecutionAsync: StartExecutionAsyncType? = nil,
            startExecutionSync: StartExecutionSyncType? = nil,
            startSyncExecutionAsync: StartSyncExecutionAsyncType? = nil,
            startSyncExecutionSync: StartSyncExecutionSyncType? = nil,
            stopExecutionAsync: StopExecutionAsyncType? = nil,
            stopExecutionSync: StopExecutionSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            updateMapRunAsync: UpdateMapRunAsyncType? = nil,
            updateMapRunSync: UpdateMapRunSyncType? = nil,
            updateStateMachineAsync: UpdateStateMachineAsyncType? = nil,
            updateStateMachineSync: UpdateStateMachineSyncType? = nil,
            updateStateMachineAliasAsync: UpdateStateMachineAliasAsyncType? = nil,
            updateStateMachineAliasSync: UpdateStateMachineAliasSyncType? = nil) {
        self.error = error
        self.createActivityAsyncOverride = createActivityAsync
        self.createActivitySyncOverride = createActivitySync
        self.createStateMachineAsyncOverride = createStateMachineAsync
        self.createStateMachineSyncOverride = createStateMachineSync
        self.createStateMachineAliasAsyncOverride = createStateMachineAliasAsync
        self.createStateMachineAliasSyncOverride = createStateMachineAliasSync
        self.deleteActivityAsyncOverride = deleteActivityAsync
        self.deleteActivitySyncOverride = deleteActivitySync
        self.deleteStateMachineAsyncOverride = deleteStateMachineAsync
        self.deleteStateMachineSyncOverride = deleteStateMachineSync
        self.deleteStateMachineAliasAsyncOverride = deleteStateMachineAliasAsync
        self.deleteStateMachineAliasSyncOverride = deleteStateMachineAliasSync
        self.deleteStateMachineVersionAsyncOverride = deleteStateMachineVersionAsync
        self.deleteStateMachineVersionSyncOverride = deleteStateMachineVersionSync
        self.describeActivityAsyncOverride = describeActivityAsync
        self.describeActivitySyncOverride = describeActivitySync
        self.describeExecutionAsyncOverride = describeExecutionAsync
        self.describeExecutionSyncOverride = describeExecutionSync
        self.describeMapRunAsyncOverride = describeMapRunAsync
        self.describeMapRunSyncOverride = describeMapRunSync
        self.describeStateMachineAsyncOverride = describeStateMachineAsync
        self.describeStateMachineSyncOverride = describeStateMachineSync
        self.describeStateMachineAliasAsyncOverride = describeStateMachineAliasAsync
        self.describeStateMachineAliasSyncOverride = describeStateMachineAliasSync
        self.describeStateMachineForExecutionAsyncOverride = describeStateMachineForExecutionAsync
        self.describeStateMachineForExecutionSyncOverride = describeStateMachineForExecutionSync
        self.getActivityTaskAsyncOverride = getActivityTaskAsync
        self.getActivityTaskSyncOverride = getActivityTaskSync
        self.getExecutionHistoryAsyncOverride = getExecutionHistoryAsync
        self.getExecutionHistorySyncOverride = getExecutionHistorySync
        self.listActivitiesAsyncOverride = listActivitiesAsync
        self.listActivitiesSyncOverride = listActivitiesSync
        self.listExecutionsAsyncOverride = listExecutionsAsync
        self.listExecutionsSyncOverride = listExecutionsSync
        self.listMapRunsAsyncOverride = listMapRunsAsync
        self.listMapRunsSyncOverride = listMapRunsSync
        self.listStateMachineAliasesAsyncOverride = listStateMachineAliasesAsync
        self.listStateMachineAliasesSyncOverride = listStateMachineAliasesSync
        self.listStateMachineVersionsAsyncOverride = listStateMachineVersionsAsync
        self.listStateMachineVersionsSyncOverride = listStateMachineVersionsSync
        self.listStateMachinesAsyncOverride = listStateMachinesAsync
        self.listStateMachinesSyncOverride = listStateMachinesSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.publishStateMachineVersionAsyncOverride = publishStateMachineVersionAsync
        self.publishStateMachineVersionSyncOverride = publishStateMachineVersionSync
        self.sendTaskFailureAsyncOverride = sendTaskFailureAsync
        self.sendTaskFailureSyncOverride = sendTaskFailureSync
        self.sendTaskHeartbeatAsyncOverride = sendTaskHeartbeatAsync
        self.sendTaskHeartbeatSyncOverride = sendTaskHeartbeatSync
        self.sendTaskSuccessAsyncOverride = sendTaskSuccessAsync
        self.sendTaskSuccessSyncOverride = sendTaskSuccessSync
        self.startExecutionAsyncOverride = startExecutionAsync
        self.startExecutionSyncOverride = startExecutionSync
        self.startSyncExecutionAsyncOverride = startSyncExecutionAsync
        self.startSyncExecutionSyncOverride = startSyncExecutionSync
        self.stopExecutionAsyncOverride = stopExecutionAsync
        self.stopExecutionSyncOverride = stopExecutionSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateMapRunAsyncOverride = updateMapRunAsync
        self.updateMapRunSyncOverride = updateMapRunSync
        self.updateStateMachineAsyncOverride = updateStateMachineAsync
        self.updateStateMachineSyncOverride = updateStateMachineSync
        self.updateStateMachineAliasAsyncOverride = updateStateMachineAliasAsync
        self.updateStateMachineAliasSyncOverride = updateStateMachineAliasSync
    }

    /**
     Invokes the CreateActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
         - completion: The CreateActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivityAsync(
            input: StepFunctionsModel.CreateActivityInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, StepFunctionsError>) -> ()) throws {
        if let createActivityAsyncOverride = createActivityAsyncOverride {
            return try createActivityAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivitySync(
            input: StepFunctionsModel.CreateActivityInput) throws -> StepFunctionsModel.CreateActivityOutput {
        if let createActivitySyncOverride = createActivitySyncOverride {
            return try createActivitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags, validation.
     */
    public func createStateMachineAsync(
            input: StepFunctionsModel.CreateStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let createStateMachineAsyncOverride = createStateMachineAsyncOverride {
            return try createStateMachineAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags, validation.
     */
    public func createStateMachineSync(
            input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput {
        if let createStateMachineSyncOverride = createStateMachineSyncOverride {
            return try createStateMachineSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineAliasInput object being passed to this operation.
         - completion: The CreateStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, invalidName, resourceNotFound, serviceQuotaExceeded, stateMachineDeleting, validation.
     */
    public func createStateMachineAliasAsync(
            input: StepFunctionsModel.CreateStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        if let createStateMachineAliasAsyncOverride = createStateMachineAliasAsyncOverride {
            return try createStateMachineAliasAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineAliasInput object being passed to this operation.
     - Returns: The CreateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidName, resourceNotFound, serviceQuotaExceeded, stateMachineDeleting, validation.
     */
    public func createStateMachineAliasSync(
            input: StepFunctionsModel.CreateStateMachineAliasInput) throws -> StepFunctionsModel.CreateStateMachineAliasOutput {
        if let createStateMachineAliasSyncOverride = createStateMachineAliasSyncOverride {
            return try createStateMachineAliasSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
         - completion: The DeleteActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    public func deleteActivityAsync(
            input: StepFunctionsModel.DeleteActivityInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, StepFunctionsError>) -> ()) throws {
        if let deleteActivityAsyncOverride = deleteActivityAsyncOverride {
            return try deleteActivityAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteActivitySync(
            input: StepFunctionsModel.DeleteActivityInput) throws -> StepFunctionsModel.DeleteActivityOutput {
        if let deleteActivitySyncOverride = deleteActivitySyncOverride {
            return try deleteActivitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, validation.
     */
    public func deleteStateMachineAsync(
            input: StepFunctionsModel.DeleteStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let deleteStateMachineAsyncOverride = deleteStateMachineAsyncOverride {
            return try deleteStateMachineAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, validation.
     */
    public func deleteStateMachineSync(
            input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput {
        if let deleteStateMachineSyncOverride = deleteStateMachineSyncOverride {
            return try deleteStateMachineSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineAliasInput object being passed to this operation.
         - completion: The DeleteStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, resourceNotFound, validation.
     */
    public func deleteStateMachineAliasAsync(
            input: StepFunctionsModel.DeleteStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        if let deleteStateMachineAliasAsyncOverride = deleteStateMachineAliasAsyncOverride {
            return try deleteStateMachineAliasAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineAliasInput object being passed to this operation.
     - Returns: The DeleteStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func deleteStateMachineAliasSync(
            input: StepFunctionsModel.DeleteStateMachineAliasInput) throws -> StepFunctionsModel.DeleteStateMachineAliasOutput {
        if let deleteStateMachineAliasSyncOverride = deleteStateMachineAliasSyncOverride {
            return try deleteStateMachineAliasSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStateMachineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineVersionInput object being passed to this operation.
         - completion: The DeleteStateMachineVersionOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineVersionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, validation.
     */
    public func deleteStateMachineVersionAsync(
            input: StepFunctionsModel.DeleteStateMachineVersionInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineVersionOutput, StepFunctionsError>) -> ()) throws {
        if let deleteStateMachineVersionAsyncOverride = deleteStateMachineVersionAsyncOverride {
            return try deleteStateMachineVersionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteStateMachineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineVersionInput object being passed to this operation.
     - Returns: The DeleteStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, validation.
     */
    public func deleteStateMachineVersionSync(
            input: StepFunctionsModel.DeleteStateMachineVersionInput) throws -> StepFunctionsModel.DeleteStateMachineVersionOutput {
        if let deleteStateMachineVersionSyncOverride = deleteStateMachineVersionSyncOverride {
            return try deleteStateMachineVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
         - completion: The DescribeActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    public func describeActivityAsync(
            input: StepFunctionsModel.DescribeActivityInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, StepFunctionsError>) -> ()) throws {
        if let describeActivityAsyncOverride = describeActivityAsyncOverride {
            return try describeActivityAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    public func describeActivitySync(
            input: StepFunctionsModel.DescribeActivityInput) throws -> StepFunctionsModel.DescribeActivityOutput {
        if let describeActivitySyncOverride = describeActivitySyncOverride {
            return try describeActivitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
         - completion: The DescribeExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func describeExecutionAsync(
            input: StepFunctionsModel.DescribeExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let describeExecutionAsyncOverride = describeExecutionAsyncOverride {
            return try describeExecutionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeExecutionSync(
            input: StepFunctionsModel.DescribeExecutionInput) throws -> StepFunctionsModel.DescribeExecutionOutput {
        if let describeExecutionSyncOverride = describeExecutionSyncOverride {
            return try describeExecutionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeMapRun operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
         - completion: The DescribeMapRunOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeMapRunOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func describeMapRunAsync(
            input: StepFunctionsModel.DescribeMapRunInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeMapRunOutput, StepFunctionsError>) -> ()) throws {
        if let describeMapRunAsyncOverride = describeMapRunAsyncOverride {
            return try describeMapRunAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeMapRun operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
     - Returns: The DescribeMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func describeMapRunSync(
            input: StepFunctionsModel.DescribeMapRunInput) throws -> StepFunctionsModel.DescribeMapRunOutput {
        if let describeMapRunSyncOverride = describeMapRunSyncOverride {
            return try describeMapRunSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
         - completion: The DescribeStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachineAsync(
            input: StepFunctionsModel.DescribeStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let describeStateMachineAsyncOverride = describeStateMachineAsyncOverride {
            return try describeStateMachineAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachineSync(
            input: StepFunctionsModel.DescribeStateMachineInput) throws -> StepFunctionsModel.DescribeStateMachineOutput {
        if let describeStateMachineSyncOverride = describeStateMachineSyncOverride {
            return try describeStateMachineSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineAliasInput object being passed to this operation.
         - completion: The DescribeStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, validation.
     */
    public func describeStateMachineAliasAsync(
            input: StepFunctionsModel.DescribeStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        if let describeStateMachineAliasAsyncOverride = describeStateMachineAliasAsyncOverride {
            return try describeStateMachineAliasAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineAliasInput object being passed to this operation.
     - Returns: The DescribeStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func describeStateMachineAliasSync(
            input: StepFunctionsModel.DescribeStateMachineAliasInput) throws -> StepFunctionsModel.DescribeStateMachineAliasOutput {
        if let describeStateMachineAliasSyncOverride = describeStateMachineAliasSyncOverride {
            return try describeStateMachineAliasSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
         - completion: The DescribeStateMachineForExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineForExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecutionAsync(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let describeStateMachineForExecutionAsyncOverride = describeStateMachineForExecutionAsyncOverride {
            return try describeStateMachineForExecutionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeStateMachineForExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecutionSync(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        if let describeStateMachineForExecutionSyncOverride = describeStateMachineForExecutionSyncOverride {
            return try describeStateMachineForExecutionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
         - completion: The GetActivityTaskOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActivityTaskOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTaskAsync(
            input: StepFunctionsModel.GetActivityTaskInput, 
            completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, StepFunctionsError>) -> ()) throws {
        if let getActivityTaskAsyncOverride = getActivityTaskAsyncOverride {
            return try getActivityTaskAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTaskSync(
            input: StepFunctionsModel.GetActivityTaskInput) throws -> StepFunctionsModel.GetActivityTaskOutput {
        if let getActivityTaskSyncOverride = getActivityTaskSyncOverride {
            return try getActivityTaskSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
         - completion: The GetExecutionHistoryOutput object or an error will be passed to this 
           callback when the operation is complete. The GetExecutionHistoryOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistoryAsync(
            input: StepFunctionsModel.GetExecutionHistoryInput, 
            completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, StepFunctionsError>) -> ()) throws {
        if let getExecutionHistoryAsyncOverride = getExecutionHistoryAsyncOverride {
            return try getExecutionHistoryAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistorySync(
            input: StepFunctionsModel.GetExecutionHistoryInput) throws -> StepFunctionsModel.GetExecutionHistoryOutput {
        if let getExecutionHistorySyncOverride = getExecutionHistorySyncOverride {
            return try getExecutionHistorySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListActivities operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
         - completion: The ListActivitiesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActivitiesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    public func listActivitiesAsync(
            input: StepFunctionsModel.ListActivitiesInput, 
            completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, StepFunctionsError>) -> ()) throws {
        if let listActivitiesAsyncOverride = listActivitiesAsyncOverride {
            return try listActivitiesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListActivities operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listActivitiesSync(
            input: StepFunctionsModel.ListActivitiesInput) throws -> StepFunctionsModel.ListActivitiesOutput {
        if let listActivitiesSyncOverride = listActivitiesSyncOverride {
            return try listActivitiesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    public func listExecutionsAsync(
            input: StepFunctionsModel.ListExecutionsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, StepFunctionsError>) -> ()) throws {
        if let listExecutionsAsyncOverride = listExecutionsAsyncOverride {
            return try listExecutionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    public func listExecutionsSync(
            input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput {
        if let listExecutionsSyncOverride = listExecutionsSyncOverride {
            return try listExecutionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListMapRuns operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
         - completion: The ListMapRunsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListMapRunsOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func listMapRunsAsync(
            input: StepFunctionsModel.ListMapRunsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListMapRunsOutput, StepFunctionsError>) -> ()) throws {
        if let listMapRunsAsyncOverride = listMapRunsAsyncOverride {
            return try listMapRunsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListMapRuns operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
     - Returns: The ListMapRunsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func listMapRunsSync(
            input: StepFunctionsModel.ListMapRunsInput) throws -> StepFunctionsModel.ListMapRunsOutput {
        if let listMapRunsSyncOverride = listMapRunsSyncOverride {
            return try listMapRunsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStateMachineAliases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachineAliasesInput object being passed to this operation.
         - completion: The ListStateMachineAliasesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachineAliasesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, resourceNotFound, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func listStateMachineAliasesAsync(
            input: StepFunctionsModel.ListStateMachineAliasesInput, 
            completion: @escaping (Result<StepFunctionsModel.ListStateMachineAliasesOutput, StepFunctionsError>) -> ()) throws {
        if let listStateMachineAliasesAsyncOverride = listStateMachineAliasesAsyncOverride {
            return try listStateMachineAliasesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListStateMachineAliases operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachineAliasesInput object being passed to this operation.
     - Returns: The ListStateMachineAliasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func listStateMachineAliasesSync(
            input: StepFunctionsModel.ListStateMachineAliasesInput) throws -> StepFunctionsModel.ListStateMachineAliasesOutput {
        if let listStateMachineAliasesSyncOverride = listStateMachineAliasesSyncOverride {
            return try listStateMachineAliasesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStateMachineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachineVersionsInput object being passed to this operation.
         - completion: The ListStateMachineVersionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachineVersionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, validation.
     */
    public func listStateMachineVersionsAsync(
            input: StepFunctionsModel.ListStateMachineVersionsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListStateMachineVersionsOutput, StepFunctionsError>) -> ()) throws {
        if let listStateMachineVersionsAsyncOverride = listStateMachineVersionsAsyncOverride {
            return try listStateMachineVersionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListStateMachineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachineVersionsInput object being passed to this operation.
     - Returns: The ListStateMachineVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, validation.
     */
    public func listStateMachineVersionsSync(
            input: StepFunctionsModel.ListStateMachineVersionsInput) throws -> StepFunctionsModel.ListStateMachineVersionsOutput {
        if let listStateMachineVersionsSyncOverride = listStateMachineVersionsSyncOverride {
            return try listStateMachineVersionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStateMachines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
         - completion: The ListStateMachinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    public func listStateMachinesAsync(
            input: StepFunctionsModel.ListStateMachinesInput, 
            completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, StepFunctionsError>) -> ()) throws {
        if let listStateMachinesAsyncOverride = listStateMachinesAsyncOverride {
            return try listStateMachinesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListStateMachines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listStateMachinesSync(
            input: StepFunctionsModel.ListStateMachinesInput) throws -> StepFunctionsModel.ListStateMachinesOutput {
        if let listStateMachinesSyncOverride = listStateMachinesSyncOverride {
            return try listStateMachinesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func listTagsForResourceAsync(
            input: StepFunctionsModel.ListTagsForResourceInput, 
            completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, StepFunctionsError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func listTagsForResourceSync(
            input: StepFunctionsModel.ListTagsForResourceInput) throws -> StepFunctionsModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PublishStateMachineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishStateMachineVersionInput object being passed to this operation.
         - completion: The PublishStateMachineVersionOutput object or an error will be passed to this 
           callback when the operation is complete. The PublishStateMachineVersionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func publishStateMachineVersionAsync(
            input: StepFunctionsModel.PublishStateMachineVersionInput, 
            completion: @escaping (Result<StepFunctionsModel.PublishStateMachineVersionOutput, StepFunctionsError>) -> ()) throws {
        if let publishStateMachineVersionAsyncOverride = publishStateMachineVersionAsyncOverride {
            return try publishStateMachineVersionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PublishStateMachineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishStateMachineVersionInput object being passed to this operation.
     - Returns: The PublishStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func publishStateMachineVersionSync(
            input: StepFunctionsModel.PublishStateMachineVersionInput) throws -> StepFunctionsModel.PublishStateMachineVersionOutput {
        if let publishStateMachineVersionSyncOverride = publishStateMachineVersionSyncOverride {
            return try publishStateMachineVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendTaskFailure operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
         - completion: The SendTaskFailureOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskFailureOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailureAsync(
            input: StepFunctionsModel.SendTaskFailureInput, 
            completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, StepFunctionsError>) -> ()) throws {
        if let sendTaskFailureAsyncOverride = sendTaskFailureAsyncOverride {
            return try sendTaskFailureAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SendTaskFailure operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailureSync(
            input: StepFunctionsModel.SendTaskFailureInput) throws -> StepFunctionsModel.SendTaskFailureOutput {
        if let sendTaskFailureSyncOverride = sendTaskFailureSyncOverride {
            return try sendTaskFailureSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
         - completion: The SendTaskHeartbeatOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskHeartbeatOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeatAsync(
            input: StepFunctionsModel.SendTaskHeartbeatInput, 
            completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, StepFunctionsError>) -> ()) throws {
        if let sendTaskHeartbeatAsyncOverride = sendTaskHeartbeatAsyncOverride {
            return try sendTaskHeartbeatAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SendTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeatSync(
            input: StepFunctionsModel.SendTaskHeartbeatInput) throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
        if let sendTaskHeartbeatSyncOverride = sendTaskHeartbeatSyncOverride {
            return try sendTaskHeartbeatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendTaskSuccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
         - completion: The SendTaskSuccessOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskSuccessOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccessAsync(
            input: StepFunctionsModel.SendTaskSuccessInput, 
            completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, StepFunctionsError>) -> ()) throws {
        if let sendTaskSuccessAsyncOverride = sendTaskSuccessAsyncOverride {
            return try sendTaskSuccessAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SendTaskSuccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccessSync(
            input: StepFunctionsModel.SendTaskSuccessInput) throws -> StepFunctionsModel.SendTaskSuccessOutput {
        if let sendTaskSuccessSyncOverride = sendTaskSuccessSyncOverride {
            return try sendTaskSuccessSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func startExecutionAsync(
            input: StepFunctionsModel.StartExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let startExecutionAsyncOverride = startExecutionAsyncOverride {
            return try startExecutionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func startExecutionSync(
            input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput {
        if let startExecutionSyncOverride = startExecutionSyncOverride {
            return try startExecutionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartSyncExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
         - completion: The StartSyncExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartSyncExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecutionAsync(
            input: StepFunctionsModel.StartSyncExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StartSyncExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let startSyncExecutionAsyncOverride = startSyncExecutionAsyncOverride {
            return try startSyncExecutionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartSyncExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: The StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecutionSync(
            input: StepFunctionsModel.StartSyncExecutionInput) throws -> StepFunctionsModel.StartSyncExecutionOutput {
        if let startSyncExecutionSyncOverride = startSyncExecutionSyncOverride {
            return try startSyncExecutionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, validation.
     */
    public func stopExecutionAsync(
            input: StepFunctionsModel.StopExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let stopExecutionAsyncOverride = stopExecutionAsyncOverride {
            return try stopExecutionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, validation.
     */
    public func stopExecutionSync(
            input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput {
        if let stopExecutionSyncOverride = stopExecutionSyncOverride {
            return try stopExecutionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResourceAsync(
            input: StepFunctionsModel.TagResourceInput, 
            completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, StepFunctionsError>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResourceSync(
            input: StepFunctionsModel.TagResourceInput) throws -> StepFunctionsModel.TagResourceOutput {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func untagResourceAsync(
            input: StepFunctionsModel.UntagResourceInput, 
            completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, StepFunctionsError>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func untagResourceSync(
            input: StepFunctionsModel.UntagResourceInput) throws -> StepFunctionsModel.UntagResourceOutput {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateMapRun operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
         - completion: The UpdateMapRunOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateMapRunOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, validation.
     */
    public func updateMapRunAsync(
            input: StepFunctionsModel.UpdateMapRunInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateMapRunOutput, StepFunctionsError>) -> ()) throws {
        if let updateMapRunAsyncOverride = updateMapRunAsyncOverride {
            return try updateMapRunAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateMapRun operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
     - Returns: The UpdateMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func updateMapRunSync(
            input: StepFunctionsModel.UpdateMapRunInput) throws -> StepFunctionsModel.UpdateMapRunOutput {
        if let updateMapRunSyncOverride = updateMapRunSyncOverride {
            return try updateMapRunSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func updateStateMachineAsync(
            input: StepFunctionsModel.UpdateStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let updateStateMachineAsyncOverride = updateStateMachineAsyncOverride {
            return try updateStateMachineAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func updateStateMachineSync(
            input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput {
        if let updateStateMachineSyncOverride = updateStateMachineSyncOverride {
            return try updateStateMachineSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineAliasInput object being passed to this operation.
         - completion: The UpdateStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, resourceNotFound, validation.
     */
    public func updateStateMachineAliasAsync(
            input: StepFunctionsModel.UpdateStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        if let updateStateMachineAliasAsyncOverride = updateStateMachineAliasAsyncOverride {
            return try updateStateMachineAliasAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineAliasInput object being passed to this operation.
     - Returns: The UpdateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func updateStateMachineAliasSync(
            input: StepFunctionsModel.UpdateStateMachineAliasInput) throws -> StepFunctionsModel.UpdateStateMachineAliasOutput {
        if let updateStateMachineAliasSyncOverride = updateStateMachineAliasSyncOverride {
            return try updateStateMachineAliasSyncOverride(input)
        }

        throw error
    }
}
