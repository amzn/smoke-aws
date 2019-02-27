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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// ThrowingStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeHTTPClient

/**
 Mock Client for the StepFunctions service that by default always throws from its methods.
 */
public struct ThrowingStepFunctionsClient: StepFunctionsClientProtocol {
    let error: Swift.Error
    let createActivityAsyncOverride: StepFunctionsClientProtocol.CreateActivityAsyncType?
    let createActivitySyncOverride: StepFunctionsClientProtocol.CreateActivitySyncType?
    let createStateMachineAsyncOverride: StepFunctionsClientProtocol.CreateStateMachineAsyncType?
    let createStateMachineSyncOverride: StepFunctionsClientProtocol.CreateStateMachineSyncType?
    let deleteActivityAsyncOverride: StepFunctionsClientProtocol.DeleteActivityAsyncType?
    let deleteActivitySyncOverride: StepFunctionsClientProtocol.DeleteActivitySyncType?
    let deleteStateMachineAsyncOverride: StepFunctionsClientProtocol.DeleteStateMachineAsyncType?
    let deleteStateMachineSyncOverride: StepFunctionsClientProtocol.DeleteStateMachineSyncType?
    let describeActivityAsyncOverride: StepFunctionsClientProtocol.DescribeActivityAsyncType?
    let describeActivitySyncOverride: StepFunctionsClientProtocol.DescribeActivitySyncType?
    let describeExecutionAsyncOverride: StepFunctionsClientProtocol.DescribeExecutionAsyncType?
    let describeExecutionSyncOverride: StepFunctionsClientProtocol.DescribeExecutionSyncType?
    let describeStateMachineAsyncOverride: StepFunctionsClientProtocol.DescribeStateMachineAsyncType?
    let describeStateMachineSyncOverride: StepFunctionsClientProtocol.DescribeStateMachineSyncType?
    let describeStateMachineForExecutionAsyncOverride: StepFunctionsClientProtocol.DescribeStateMachineForExecutionAsyncType?
    let describeStateMachineForExecutionSyncOverride: StepFunctionsClientProtocol.DescribeStateMachineForExecutionSyncType?
    let getActivityTaskAsyncOverride: StepFunctionsClientProtocol.GetActivityTaskAsyncType?
    let getActivityTaskSyncOverride: StepFunctionsClientProtocol.GetActivityTaskSyncType?
    let getExecutionHistoryAsyncOverride: StepFunctionsClientProtocol.GetExecutionHistoryAsyncType?
    let getExecutionHistorySyncOverride: StepFunctionsClientProtocol.GetExecutionHistorySyncType?
    let listActivitiesAsyncOverride: StepFunctionsClientProtocol.ListActivitiesAsyncType?
    let listActivitiesSyncOverride: StepFunctionsClientProtocol.ListActivitiesSyncType?
    let listExecutionsAsyncOverride: StepFunctionsClientProtocol.ListExecutionsAsyncType?
    let listExecutionsSyncOverride: StepFunctionsClientProtocol.ListExecutionsSyncType?
    let listStateMachinesAsyncOverride: StepFunctionsClientProtocol.ListStateMachinesAsyncType?
    let listStateMachinesSyncOverride: StepFunctionsClientProtocol.ListStateMachinesSyncType?
    let listTagsForResourceAsyncOverride: StepFunctionsClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: StepFunctionsClientProtocol.ListTagsForResourceSyncType?
    let sendTaskFailureAsyncOverride: StepFunctionsClientProtocol.SendTaskFailureAsyncType?
    let sendTaskFailureSyncOverride: StepFunctionsClientProtocol.SendTaskFailureSyncType?
    let sendTaskHeartbeatAsyncOverride: StepFunctionsClientProtocol.SendTaskHeartbeatAsyncType?
    let sendTaskHeartbeatSyncOverride: StepFunctionsClientProtocol.SendTaskHeartbeatSyncType?
    let sendTaskSuccessAsyncOverride: StepFunctionsClientProtocol.SendTaskSuccessAsyncType?
    let sendTaskSuccessSyncOverride: StepFunctionsClientProtocol.SendTaskSuccessSyncType?
    let startExecutionAsyncOverride: StepFunctionsClientProtocol.StartExecutionAsyncType?
    let startExecutionSyncOverride: StepFunctionsClientProtocol.StartExecutionSyncType?
    let stopExecutionAsyncOverride: StepFunctionsClientProtocol.StopExecutionAsyncType?
    let stopExecutionSyncOverride: StepFunctionsClientProtocol.StopExecutionSyncType?
    let tagResourceAsyncOverride: StepFunctionsClientProtocol.TagResourceAsyncType?
    let tagResourceSyncOverride: StepFunctionsClientProtocol.TagResourceSyncType?
    let untagResourceAsyncOverride: StepFunctionsClientProtocol.UntagResourceAsyncType?
    let untagResourceSyncOverride: StepFunctionsClientProtocol.UntagResourceSyncType?
    let updateStateMachineAsyncOverride: StepFunctionsClientProtocol.UpdateStateMachineAsyncType?
    let updateStateMachineSyncOverride: StepFunctionsClientProtocol.UpdateStateMachineSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: Swift.Error,
            createActivityAsync: StepFunctionsClientProtocol.CreateActivityAsyncType? = nil,
            createActivitySync: StepFunctionsClientProtocol.CreateActivitySyncType? = nil,
            createStateMachineAsync: StepFunctionsClientProtocol.CreateStateMachineAsyncType? = nil,
            createStateMachineSync: StepFunctionsClientProtocol.CreateStateMachineSyncType? = nil,
            deleteActivityAsync: StepFunctionsClientProtocol.DeleteActivityAsyncType? = nil,
            deleteActivitySync: StepFunctionsClientProtocol.DeleteActivitySyncType? = nil,
            deleteStateMachineAsync: StepFunctionsClientProtocol.DeleteStateMachineAsyncType? = nil,
            deleteStateMachineSync: StepFunctionsClientProtocol.DeleteStateMachineSyncType? = nil,
            describeActivityAsync: StepFunctionsClientProtocol.DescribeActivityAsyncType? = nil,
            describeActivitySync: StepFunctionsClientProtocol.DescribeActivitySyncType? = nil,
            describeExecutionAsync: StepFunctionsClientProtocol.DescribeExecutionAsyncType? = nil,
            describeExecutionSync: StepFunctionsClientProtocol.DescribeExecutionSyncType? = nil,
            describeStateMachineAsync: StepFunctionsClientProtocol.DescribeStateMachineAsyncType? = nil,
            describeStateMachineSync: StepFunctionsClientProtocol.DescribeStateMachineSyncType? = nil,
            describeStateMachineForExecutionAsync: StepFunctionsClientProtocol.DescribeStateMachineForExecutionAsyncType? = nil,
            describeStateMachineForExecutionSync: StepFunctionsClientProtocol.DescribeStateMachineForExecutionSyncType? = nil,
            getActivityTaskAsync: StepFunctionsClientProtocol.GetActivityTaskAsyncType? = nil,
            getActivityTaskSync: StepFunctionsClientProtocol.GetActivityTaskSyncType? = nil,
            getExecutionHistoryAsync: StepFunctionsClientProtocol.GetExecutionHistoryAsyncType? = nil,
            getExecutionHistorySync: StepFunctionsClientProtocol.GetExecutionHistorySyncType? = nil,
            listActivitiesAsync: StepFunctionsClientProtocol.ListActivitiesAsyncType? = nil,
            listActivitiesSync: StepFunctionsClientProtocol.ListActivitiesSyncType? = nil,
            listExecutionsAsync: StepFunctionsClientProtocol.ListExecutionsAsyncType? = nil,
            listExecutionsSync: StepFunctionsClientProtocol.ListExecutionsSyncType? = nil,
            listStateMachinesAsync: StepFunctionsClientProtocol.ListStateMachinesAsyncType? = nil,
            listStateMachinesSync: StepFunctionsClientProtocol.ListStateMachinesSyncType? = nil,
            listTagsForResourceAsync: StepFunctionsClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: StepFunctionsClientProtocol.ListTagsForResourceSyncType? = nil,
            sendTaskFailureAsync: StepFunctionsClientProtocol.SendTaskFailureAsyncType? = nil,
            sendTaskFailureSync: StepFunctionsClientProtocol.SendTaskFailureSyncType? = nil,
            sendTaskHeartbeatAsync: StepFunctionsClientProtocol.SendTaskHeartbeatAsyncType? = nil,
            sendTaskHeartbeatSync: StepFunctionsClientProtocol.SendTaskHeartbeatSyncType? = nil,
            sendTaskSuccessAsync: StepFunctionsClientProtocol.SendTaskSuccessAsyncType? = nil,
            sendTaskSuccessSync: StepFunctionsClientProtocol.SendTaskSuccessSyncType? = nil,
            startExecutionAsync: StepFunctionsClientProtocol.StartExecutionAsyncType? = nil,
            startExecutionSync: StepFunctionsClientProtocol.StartExecutionSyncType? = nil,
            stopExecutionAsync: StepFunctionsClientProtocol.StopExecutionAsyncType? = nil,
            stopExecutionSync: StepFunctionsClientProtocol.StopExecutionSyncType? = nil,
            tagResourceAsync: StepFunctionsClientProtocol.TagResourceAsyncType? = nil,
            tagResourceSync: StepFunctionsClientProtocol.TagResourceSyncType? = nil,
            untagResourceAsync: StepFunctionsClientProtocol.UntagResourceAsyncType? = nil,
            untagResourceSync: StepFunctionsClientProtocol.UntagResourceSyncType? = nil,
            updateStateMachineAsync: StepFunctionsClientProtocol.UpdateStateMachineAsyncType? = nil,
            updateStateMachineSync: StepFunctionsClientProtocol.UpdateStateMachineSyncType? = nil) {
        self.error = error
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
    public func createActivityAsync(input: StepFunctionsModel.CreateActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.CreateActivityOutput>) -> ()) throws {
        if let createActivityAsyncOverride = createActivityAsyncOverride {
            return try createActivityAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivitySync(input: StepFunctionsModel.CreateActivityInput) throws -> StepFunctionsModel.CreateActivityOutput {
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
           The possible errors are: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    public func createStateMachineAsync(input: StepFunctionsModel.CreateStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.CreateStateMachineOutput>) -> ()) throws {
        if let createStateMachineAsyncOverride = createStateMachineAsyncOverride {
            return try createStateMachineAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    public func createStateMachineSync(input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput {
        if let createStateMachineSyncOverride = createStateMachineSyncOverride {
            return try createStateMachineSyncOverride(input)
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
    public func deleteActivityAsync(input: StepFunctionsModel.DeleteActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.DeleteActivityOutput>) -> ()) throws {
        if let deleteActivityAsyncOverride = deleteActivityAsyncOverride {
            return try deleteActivityAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteActivitySync(input: StepFunctionsModel.DeleteActivityInput) throws -> StepFunctionsModel.DeleteActivityOutput {
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
           The possible errors are: invalidArn.
     */
    public func deleteStateMachineAsync(input: StepFunctionsModel.DeleteStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.DeleteStateMachineOutput>) -> ()) throws {
        if let deleteStateMachineAsyncOverride = deleteStateMachineAsyncOverride {
            return try deleteStateMachineAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteStateMachineSync(input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput {
        if let deleteStateMachineSyncOverride = deleteStateMachineSyncOverride {
            return try deleteStateMachineSyncOverride(input)
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
    public func describeActivityAsync(input: StepFunctionsModel.DescribeActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeActivityOutput>) -> ()) throws {
        if let describeActivityAsyncOverride = describeActivityAsyncOverride {
            return try describeActivityAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    public func describeActivitySync(input: StepFunctionsModel.DescribeActivityInput) throws -> StepFunctionsModel.DescribeActivityOutput {
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
    public func describeExecutionAsync(input: StepFunctionsModel.DescribeExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeExecutionOutput>) -> ()) throws {
        if let describeExecutionAsyncOverride = describeExecutionAsyncOverride {
            return try describeExecutionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeExecutionSync(input: StepFunctionsModel.DescribeExecutionInput) throws -> StepFunctionsModel.DescribeExecutionOutput {
        if let describeExecutionSyncOverride = describeExecutionSyncOverride {
            return try describeExecutionSyncOverride(input)
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
    public func describeStateMachineAsync(input: StepFunctionsModel.DescribeStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineOutput>) -> ()) throws {
        if let describeStateMachineAsyncOverride = describeStateMachineAsyncOverride {
            return try describeStateMachineAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachineSync(input: StepFunctionsModel.DescribeStateMachineInput) throws -> StepFunctionsModel.DescribeStateMachineOutput {
        if let describeStateMachineSyncOverride = describeStateMachineSyncOverride {
            return try describeStateMachineSyncOverride(input)
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
    public func describeStateMachineForExecutionAsync(input: StepFunctionsModel.DescribeStateMachineForExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineForExecutionOutput>) -> ()) throws {
        if let describeStateMachineForExecutionAsyncOverride = describeStateMachineForExecutionAsyncOverride {
            return try describeStateMachineForExecutionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeStateMachineForExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecutionSync(input: StepFunctionsModel.DescribeStateMachineForExecutionInput) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
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
    public func getActivityTaskAsync(input: StepFunctionsModel.GetActivityTaskInput, completion: @escaping (HTTPResult<StepFunctionsModel.GetActivityTaskOutput>) -> ()) throws {
        if let getActivityTaskAsyncOverride = getActivityTaskAsyncOverride {
            return try getActivityTaskAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTaskSync(input: StepFunctionsModel.GetActivityTaskInput) throws -> StepFunctionsModel.GetActivityTaskOutput {
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
    public func getExecutionHistoryAsync(input: StepFunctionsModel.GetExecutionHistoryInput, completion: @escaping (HTTPResult<StepFunctionsModel.GetExecutionHistoryOutput>) -> ()) throws {
        if let getExecutionHistoryAsyncOverride = getExecutionHistoryAsyncOverride {
            return try getExecutionHistoryAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistorySync(input: StepFunctionsModel.GetExecutionHistoryInput) throws -> StepFunctionsModel.GetExecutionHistoryOutput {
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
    public func listActivitiesAsync(input: StepFunctionsModel.ListActivitiesInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListActivitiesOutput>) -> ()) throws {
        if let listActivitiesAsyncOverride = listActivitiesAsyncOverride {
            return try listActivitiesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListActivities operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listActivitiesSync(input: StepFunctionsModel.ListActivitiesInput) throws -> StepFunctionsModel.ListActivitiesOutput {
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
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    public func listExecutionsAsync(input: StepFunctionsModel.ListExecutionsInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListExecutionsOutput>) -> ()) throws {
        if let listExecutionsAsyncOverride = listExecutionsAsyncOverride {
            return try listExecutionsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    public func listExecutionsSync(input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput {
        if let listExecutionsSyncOverride = listExecutionsSyncOverride {
            return try listExecutionsSyncOverride(input)
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
    public func listStateMachinesAsync(input: StepFunctionsModel.ListStateMachinesInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListStateMachinesOutput>) -> ()) throws {
        if let listStateMachinesAsyncOverride = listStateMachinesAsyncOverride {
            return try listStateMachinesAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListStateMachines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listStateMachinesSync(input: StepFunctionsModel.ListStateMachinesInput) throws -> StepFunctionsModel.ListStateMachinesOutput {
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
    public func listTagsForResourceAsync(input: StepFunctionsModel.ListTagsForResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListTagsForResourceOutput>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func listTagsForResourceSync(input: StepFunctionsModel.ListTagsForResourceInput) throws -> StepFunctionsModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
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
    public func sendTaskFailureAsync(input: StepFunctionsModel.SendTaskFailureInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskFailureOutput>) -> ()) throws {
        if let sendTaskFailureAsyncOverride = sendTaskFailureAsyncOverride {
            return try sendTaskFailureAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the SendTaskFailure operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailureSync(input: StepFunctionsModel.SendTaskFailureInput) throws -> StepFunctionsModel.SendTaskFailureOutput {
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
    public func sendTaskHeartbeatAsync(input: StepFunctionsModel.SendTaskHeartbeatInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskHeartbeatOutput>) -> ()) throws {
        if let sendTaskHeartbeatAsyncOverride = sendTaskHeartbeatAsyncOverride {
            return try sendTaskHeartbeatAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the SendTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeatSync(input: StepFunctionsModel.SendTaskHeartbeatInput) throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
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
    public func sendTaskSuccessAsync(input: StepFunctionsModel.SendTaskSuccessInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskSuccessOutput>) -> ()) throws {
        if let sendTaskSuccessAsyncOverride = sendTaskSuccessAsyncOverride {
            return try sendTaskSuccessAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the SendTaskSuccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccessSync(input: StepFunctionsModel.SendTaskSuccessInput) throws -> StepFunctionsModel.SendTaskSuccessOutput {
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
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecutionAsync(input: StepFunctionsModel.StartExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.StartExecutionOutput>) -> ()) throws {
        if let startExecutionAsyncOverride = startExecutionAsyncOverride {
            return try startExecutionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecutionSync(input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput {
        if let startExecutionSyncOverride = startExecutionSyncOverride {
            return try startExecutionSyncOverride(input)
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
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func stopExecutionAsync(input: StepFunctionsModel.StopExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.StopExecutionOutput>) -> ()) throws {
        if let stopExecutionAsyncOverride = stopExecutionAsyncOverride {
            return try stopExecutionAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func stopExecutionSync(input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput {
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
    public func tagResourceAsync(input: StepFunctionsModel.TagResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.TagResourceOutput>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResourceSync(input: StepFunctionsModel.TagResourceInput) throws -> StepFunctionsModel.TagResourceOutput {
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
    public func untagResourceAsync(input: StepFunctionsModel.UntagResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.UntagResourceOutput>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func untagResourceSync(input: StepFunctionsModel.UntagResourceInput) throws -> StepFunctionsModel.UntagResourceOutput {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
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
           The possible errors are: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachineAsync(input: StepFunctionsModel.UpdateStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.UpdateStateMachineOutput>) -> ()) throws {
        if let updateStateMachineAsyncOverride = updateStateMachineAsyncOverride {
            return try updateStateMachineAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachineSync(input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput {
        if let updateStateMachineSyncOverride = updateStateMachineSyncOverride {
            return try updateStateMachineSyncOverride(input)
        }

        throw error
    }
}
