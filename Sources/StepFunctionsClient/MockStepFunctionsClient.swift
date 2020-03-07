// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// MockStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the StepFunctions service by default returns the `__default` property of its return type.
 */
public struct MockStepFunctionsClient: StepFunctionsClientProtocol {
    let createActivityAsyncOverride: CreateActivityAsyncType?
    let createActivitySyncOverride: CreateActivitySyncType?
    let createStateMachineAsyncOverride: CreateStateMachineAsyncType?
    let createStateMachineSyncOverride: CreateStateMachineSyncType?
    let deleteActivityAsyncOverride: DeleteActivityAsyncType?
    let deleteActivitySyncOverride: DeleteActivitySyncType?
    let deleteStateMachineAsyncOverride: DeleteStateMachineAsyncType?
    let deleteStateMachineSyncOverride: DeleteStateMachineSyncType?
    let describeActivityAsyncOverride: DescribeActivityAsyncType?
    let describeActivitySyncOverride: DescribeActivitySyncType?
    let describeExecutionAsyncOverride: DescribeExecutionAsyncType?
    let describeExecutionSyncOverride: DescribeExecutionSyncType?
    let describeStateMachineAsyncOverride: DescribeStateMachineAsyncType?
    let describeStateMachineSyncOverride: DescribeStateMachineSyncType?
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
    let listStateMachinesAsyncOverride: ListStateMachinesAsyncType?
    let listStateMachinesSyncOverride: ListStateMachinesSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let sendTaskFailureAsyncOverride: SendTaskFailureAsyncType?
    let sendTaskFailureSyncOverride: SendTaskFailureSyncType?
    let sendTaskHeartbeatAsyncOverride: SendTaskHeartbeatAsyncType?
    let sendTaskHeartbeatSyncOverride: SendTaskHeartbeatSyncType?
    let sendTaskSuccessAsyncOverride: SendTaskSuccessAsyncType?
    let sendTaskSuccessSyncOverride: SendTaskSuccessSyncType?
    let startExecutionAsyncOverride: StartExecutionAsyncType?
    let startExecutionSyncOverride: StartExecutionSyncType?
    let stopExecutionAsyncOverride: StopExecutionAsyncType?
    let stopExecutionSyncOverride: StopExecutionSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let updateStateMachineAsyncOverride: UpdateStateMachineAsyncType?
    let updateStateMachineSyncOverride: UpdateStateMachineSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createActivityAsync: CreateActivityAsyncType? = nil,
            createActivitySync: CreateActivitySyncType? = nil,
            createStateMachineAsync: CreateStateMachineAsyncType? = nil,
            createStateMachineSync: CreateStateMachineSyncType? = nil,
            deleteActivityAsync: DeleteActivityAsyncType? = nil,
            deleteActivitySync: DeleteActivitySyncType? = nil,
            deleteStateMachineAsync: DeleteStateMachineAsyncType? = nil,
            deleteStateMachineSync: DeleteStateMachineSyncType? = nil,
            describeActivityAsync: DescribeActivityAsyncType? = nil,
            describeActivitySync: DescribeActivitySyncType? = nil,
            describeExecutionAsync: DescribeExecutionAsyncType? = nil,
            describeExecutionSync: DescribeExecutionSyncType? = nil,
            describeStateMachineAsync: DescribeStateMachineAsyncType? = nil,
            describeStateMachineSync: DescribeStateMachineSyncType? = nil,
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
            listStateMachinesAsync: ListStateMachinesAsyncType? = nil,
            listStateMachinesSync: ListStateMachinesSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            sendTaskFailureAsync: SendTaskFailureAsyncType? = nil,
            sendTaskFailureSync: SendTaskFailureSyncType? = nil,
            sendTaskHeartbeatAsync: SendTaskHeartbeatAsyncType? = nil,
            sendTaskHeartbeatSync: SendTaskHeartbeatSyncType? = nil,
            sendTaskSuccessAsync: SendTaskSuccessAsyncType? = nil,
            sendTaskSuccessSync: SendTaskSuccessSyncType? = nil,
            startExecutionAsync: StartExecutionAsyncType? = nil,
            startExecutionSync: StartExecutionSyncType? = nil,
            stopExecutionAsync: StopExecutionAsyncType? = nil,
            stopExecutionSync: StopExecutionSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            updateStateMachineAsync: UpdateStateMachineAsyncType? = nil,
            updateStateMachineSync: UpdateStateMachineSyncType? = nil) {
        self.createActivityAsyncOverride = createActivityAsync
        self.createActivitySyncOverride = createActivitySync
        self.createStateMachineAsyncOverride = createStateMachineAsync
        self.createStateMachineSyncOverride = createStateMachineSync
        self.deleteActivityAsyncOverride = deleteActivityAsync
        self.deleteActivitySyncOverride = deleteActivitySync
        self.deleteStateMachineAsyncOverride = deleteStateMachineAsync
        self.deleteStateMachineSyncOverride = deleteStateMachineSync
        self.describeActivityAsyncOverride = describeActivityAsync
        self.describeActivitySyncOverride = describeActivitySync
        self.describeExecutionAsyncOverride = describeExecutionAsync
        self.describeExecutionSyncOverride = describeExecutionSync
        self.describeStateMachineAsyncOverride = describeStateMachineAsync
        self.describeStateMachineSyncOverride = describeStateMachineSync
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
        self.listStateMachinesAsyncOverride = listStateMachinesAsync
        self.listStateMachinesSyncOverride = listStateMachinesSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.sendTaskFailureAsyncOverride = sendTaskFailureAsync
        self.sendTaskFailureSyncOverride = sendTaskFailureSync
        self.sendTaskHeartbeatAsyncOverride = sendTaskHeartbeatAsync
        self.sendTaskHeartbeatSyncOverride = sendTaskHeartbeatSync
        self.sendTaskSuccessAsyncOverride = sendTaskSuccessAsync
        self.sendTaskSuccessSyncOverride = sendTaskSuccessSync
        self.startExecutionAsyncOverride = startExecutionAsync
        self.startExecutionSyncOverride = startExecutionSync
        self.stopExecutionAsyncOverride = stopExecutionAsync
        self.stopExecutionSyncOverride = stopExecutionSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateStateMachineAsyncOverride = updateStateMachineAsync
        self.updateStateMachineSyncOverride = updateStateMachineSync
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

        let result = CreateActivityOutput.__default
        
        completion(.success(result))
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

        return CreateActivityOutput.__default
    }

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    public func createStateMachineAsync(
            input: StepFunctionsModel.CreateStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let createStateMachineAsyncOverride = createStateMachineAsyncOverride {
            return try createStateMachineAsyncOverride(input, completion)
        }

        let result = CreateStateMachineOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    public func createStateMachineSync(
            input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput {
        if let createStateMachineSyncOverride = createStateMachineSyncOverride {
            return try createStateMachineSyncOverride(input)
        }

        return CreateStateMachineOutput.__default
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

        let result = DeleteActivityOutput.__default
        
        completion(.success(result))
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

        return DeleteActivityOutput.__default
    }

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    public func deleteStateMachineAsync(
            input: StepFunctionsModel.DeleteStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let deleteStateMachineAsyncOverride = deleteStateMachineAsyncOverride {
            return try deleteStateMachineAsyncOverride(input, completion)
        }

        let result = DeleteStateMachineOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteStateMachineSync(
            input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput {
        if let deleteStateMachineSyncOverride = deleteStateMachineSyncOverride {
            return try deleteStateMachineSyncOverride(input)
        }

        return DeleteStateMachineOutput.__default
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

        let result = DescribeActivityOutput.__default
        
        completion(.success(result))
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

        return DescribeActivityOutput.__default
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

        let result = DescribeExecutionOutput.__default
        
        completion(.success(result))
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

        return DescribeExecutionOutput.__default
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

        let result = DescribeStateMachineOutput.__default
        
        completion(.success(result))
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

        return DescribeStateMachineOutput.__default
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

        let result = DescribeStateMachineForExecutionOutput.__default
        
        completion(.success(result))
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

        return DescribeStateMachineForExecutionOutput.__default
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

        let result = GetActivityTaskOutput.__default
        
        completion(.success(result))
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

        return GetActivityTaskOutput.__default
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

        let result = GetExecutionHistoryOutput.__default
        
        completion(.success(result))
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

        return GetExecutionHistoryOutput.__default
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

        let result = ListActivitiesOutput.__default
        
        completion(.success(result))
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

        return ListActivitiesOutput.__default
    }

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func listExecutionsAsync(
            input: StepFunctionsModel.ListExecutionsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, StepFunctionsError>) -> ()) throws {
        if let listExecutionsAsyncOverride = listExecutionsAsyncOverride {
            return try listExecutionsAsyncOverride(input, completion)
        }

        let result = ListExecutionsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func listExecutionsSync(
            input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput {
        if let listExecutionsSyncOverride = listExecutionsSyncOverride {
            return try listExecutionsSyncOverride(input)
        }

        return ListExecutionsOutput.__default
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

        let result = ListStateMachinesOutput.__default
        
        completion(.success(result))
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

        return ListStateMachinesOutput.__default
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

        let result = ListTagsForResourceOutput.__default
        
        completion(.success(result))
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

        return ListTagsForResourceOutput.__default
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

        let result = SendTaskFailureOutput.__default
        
        completion(.success(result))
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

        return SendTaskFailureOutput.__default
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

        let result = SendTaskHeartbeatOutput.__default
        
        completion(.success(result))
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

        return SendTaskHeartbeatOutput.__default
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

        let result = SendTaskSuccessOutput.__default
        
        completion(.success(result))
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

        return SendTaskSuccessOutput.__default
    }

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecutionAsync(
            input: StepFunctionsModel.StartExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let startExecutionAsyncOverride = startExecutionAsyncOverride {
            return try startExecutionAsyncOverride(input, completion)
        }

        let result = StartExecutionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecutionSync(
            input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput {
        if let startExecutionSyncOverride = startExecutionSyncOverride {
            return try startExecutionSyncOverride(input)
        }

        return StartExecutionOutput.__default
    }

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func stopExecutionAsync(
            input: StepFunctionsModel.StopExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, StepFunctionsError>) -> ()) throws {
        if let stopExecutionAsyncOverride = stopExecutionAsyncOverride {
            return try stopExecutionAsyncOverride(input, completion)
        }

        let result = StopExecutionOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func stopExecutionSync(
            input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput {
        if let stopExecutionSyncOverride = stopExecutionSyncOverride {
            return try stopExecutionSyncOverride(input)
        }

        return StopExecutionOutput.__default
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

        let result = TagResourceOutput.__default
        
        completion(.success(result))
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

        return TagResourceOutput.__default
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

        let result = UntagResourceOutput.__default
        
        completion(.success(result))
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

        return UntagResourceOutput.__default
    }

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachineAsync(
            input: StepFunctionsModel.UpdateStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, StepFunctionsError>) -> ()) throws {
        if let updateStateMachineAsyncOverride = updateStateMachineAsyncOverride {
            return try updateStateMachineAsyncOverride(input, completion)
        }

        let result = UpdateStateMachineOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachineSync(
            input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput {
        if let updateStateMachineSyncOverride = updateStateMachineSyncOverride {
            return try updateStateMachineSyncOverride(input)
        }

        return UpdateStateMachineOutput.__default
    }
}
