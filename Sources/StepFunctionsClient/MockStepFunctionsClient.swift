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
public struct MockStepFunctionsClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: StepFunctionsClientProtocol {
    let createActivityAsyncOverride: CreateActivityAsyncType<ClientInvocationReportingType>?
    let createActivitySyncOverride: CreateActivitySyncType<ClientInvocationReportingType>?
    let createStateMachineAsyncOverride: CreateStateMachineAsyncType<ClientInvocationReportingType>?
    let createStateMachineSyncOverride: CreateStateMachineSyncType<ClientInvocationReportingType>?
    let deleteActivityAsyncOverride: DeleteActivityAsyncType<ClientInvocationReportingType>?
    let deleteActivitySyncOverride: DeleteActivitySyncType<ClientInvocationReportingType>?
    let deleteStateMachineAsyncOverride: DeleteStateMachineAsyncType<ClientInvocationReportingType>?
    let deleteStateMachineSyncOverride: DeleteStateMachineSyncType<ClientInvocationReportingType>?
    let describeActivityAsyncOverride: DescribeActivityAsyncType<ClientInvocationReportingType>?
    let describeActivitySyncOverride: DescribeActivitySyncType<ClientInvocationReportingType>?
    let describeExecutionAsyncOverride: DescribeExecutionAsyncType<ClientInvocationReportingType>?
    let describeExecutionSyncOverride: DescribeExecutionSyncType<ClientInvocationReportingType>?
    let describeStateMachineAsyncOverride: DescribeStateMachineAsyncType<ClientInvocationReportingType>?
    let describeStateMachineSyncOverride: DescribeStateMachineSyncType<ClientInvocationReportingType>?
    let describeStateMachineForExecutionAsyncOverride: DescribeStateMachineForExecutionAsyncType<ClientInvocationReportingType>?
    let describeStateMachineForExecutionSyncOverride: DescribeStateMachineForExecutionSyncType<ClientInvocationReportingType>?
    let getActivityTaskAsyncOverride: GetActivityTaskAsyncType<ClientInvocationReportingType>?
    let getActivityTaskSyncOverride: GetActivityTaskSyncType<ClientInvocationReportingType>?
    let getExecutionHistoryAsyncOverride: GetExecutionHistoryAsyncType<ClientInvocationReportingType>?
    let getExecutionHistorySyncOverride: GetExecutionHistorySyncType<ClientInvocationReportingType>?
    let listActivitiesAsyncOverride: ListActivitiesAsyncType<ClientInvocationReportingType>?
    let listActivitiesSyncOverride: ListActivitiesSyncType<ClientInvocationReportingType>?
    let listExecutionsAsyncOverride: ListExecutionsAsyncType<ClientInvocationReportingType>?
    let listExecutionsSyncOverride: ListExecutionsSyncType<ClientInvocationReportingType>?
    let listStateMachinesAsyncOverride: ListStateMachinesAsyncType<ClientInvocationReportingType>?
    let listStateMachinesSyncOverride: ListStateMachinesSyncType<ClientInvocationReportingType>?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType<ClientInvocationReportingType>?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType<ClientInvocationReportingType>?
    let sendTaskFailureAsyncOverride: SendTaskFailureAsyncType<ClientInvocationReportingType>?
    let sendTaskFailureSyncOverride: SendTaskFailureSyncType<ClientInvocationReportingType>?
    let sendTaskHeartbeatAsyncOverride: SendTaskHeartbeatAsyncType<ClientInvocationReportingType>?
    let sendTaskHeartbeatSyncOverride: SendTaskHeartbeatSyncType<ClientInvocationReportingType>?
    let sendTaskSuccessAsyncOverride: SendTaskSuccessAsyncType<ClientInvocationReportingType>?
    let sendTaskSuccessSyncOverride: SendTaskSuccessSyncType<ClientInvocationReportingType>?
    let startExecutionAsyncOverride: StartExecutionAsyncType<ClientInvocationReportingType>?
    let startExecutionSyncOverride: StartExecutionSyncType<ClientInvocationReportingType>?
    let stopExecutionAsyncOverride: StopExecutionAsyncType<ClientInvocationReportingType>?
    let stopExecutionSyncOverride: StopExecutionSyncType<ClientInvocationReportingType>?
    let tagResourceAsyncOverride: TagResourceAsyncType<ClientInvocationReportingType>?
    let tagResourceSyncOverride: TagResourceSyncType<ClientInvocationReportingType>?
    let untagResourceAsyncOverride: UntagResourceAsyncType<ClientInvocationReportingType>?
    let untagResourceSyncOverride: UntagResourceSyncType<ClientInvocationReportingType>?
    let updateStateMachineAsyncOverride: UpdateStateMachineAsyncType<ClientInvocationReportingType>?
    let updateStateMachineSyncOverride: UpdateStateMachineSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createActivityAsync: CreateActivityAsyncType<ClientInvocationReportingType>? = nil,
            createActivitySync: CreateActivitySyncType<ClientInvocationReportingType>? = nil,
            createStateMachineAsync: CreateStateMachineAsyncType<ClientInvocationReportingType>? = nil,
            createStateMachineSync: CreateStateMachineSyncType<ClientInvocationReportingType>? = nil,
            deleteActivityAsync: DeleteActivityAsyncType<ClientInvocationReportingType>? = nil,
            deleteActivitySync: DeleteActivitySyncType<ClientInvocationReportingType>? = nil,
            deleteStateMachineAsync: DeleteStateMachineAsyncType<ClientInvocationReportingType>? = nil,
            deleteStateMachineSync: DeleteStateMachineSyncType<ClientInvocationReportingType>? = nil,
            describeActivityAsync: DescribeActivityAsyncType<ClientInvocationReportingType>? = nil,
            describeActivitySync: DescribeActivitySyncType<ClientInvocationReportingType>? = nil,
            describeExecutionAsync: DescribeExecutionAsyncType<ClientInvocationReportingType>? = nil,
            describeExecutionSync: DescribeExecutionSyncType<ClientInvocationReportingType>? = nil,
            describeStateMachineAsync: DescribeStateMachineAsyncType<ClientInvocationReportingType>? = nil,
            describeStateMachineSync: DescribeStateMachineSyncType<ClientInvocationReportingType>? = nil,
            describeStateMachineForExecutionAsync: DescribeStateMachineForExecutionAsyncType<ClientInvocationReportingType>? = nil,
            describeStateMachineForExecutionSync: DescribeStateMachineForExecutionSyncType<ClientInvocationReportingType>? = nil,
            getActivityTaskAsync: GetActivityTaskAsyncType<ClientInvocationReportingType>? = nil,
            getActivityTaskSync: GetActivityTaskSyncType<ClientInvocationReportingType>? = nil,
            getExecutionHistoryAsync: GetExecutionHistoryAsyncType<ClientInvocationReportingType>? = nil,
            getExecutionHistorySync: GetExecutionHistorySyncType<ClientInvocationReportingType>? = nil,
            listActivitiesAsync: ListActivitiesAsyncType<ClientInvocationReportingType>? = nil,
            listActivitiesSync: ListActivitiesSyncType<ClientInvocationReportingType>? = nil,
            listExecutionsAsync: ListExecutionsAsyncType<ClientInvocationReportingType>? = nil,
            listExecutionsSync: ListExecutionsSyncType<ClientInvocationReportingType>? = nil,
            listStateMachinesAsync: ListStateMachinesAsyncType<ClientInvocationReportingType>? = nil,
            listStateMachinesSync: ListStateMachinesSyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType<ClientInvocationReportingType>? = nil,
            sendTaskFailureAsync: SendTaskFailureAsyncType<ClientInvocationReportingType>? = nil,
            sendTaskFailureSync: SendTaskFailureSyncType<ClientInvocationReportingType>? = nil,
            sendTaskHeartbeatAsync: SendTaskHeartbeatAsyncType<ClientInvocationReportingType>? = nil,
            sendTaskHeartbeatSync: SendTaskHeartbeatSyncType<ClientInvocationReportingType>? = nil,
            sendTaskSuccessAsync: SendTaskSuccessAsyncType<ClientInvocationReportingType>? = nil,
            sendTaskSuccessSync: SendTaskSuccessSyncType<ClientInvocationReportingType>? = nil,
            startExecutionAsync: StartExecutionAsyncType<ClientInvocationReportingType>? = nil,
            startExecutionSync: StartExecutionSyncType<ClientInvocationReportingType>? = nil,
            stopExecutionAsync: StopExecutionAsyncType<ClientInvocationReportingType>? = nil,
            stopExecutionSync: StopExecutionSyncType<ClientInvocationReportingType>? = nil,
            tagResourceAsync: TagResourceAsyncType<ClientInvocationReportingType>? = nil,
            tagResourceSync: TagResourceSyncType<ClientInvocationReportingType>? = nil,
            untagResourceAsync: UntagResourceAsyncType<ClientInvocationReportingType>? = nil,
            untagResourceSync: UntagResourceSyncType<ClientInvocationReportingType>? = nil,
            updateStateMachineAsync: UpdateStateMachineAsyncType<ClientInvocationReportingType>? = nil,
            updateStateMachineSync: UpdateStateMachineSyncType<ClientInvocationReportingType>? = nil) {
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
    public func createActivityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateActivityInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, HTTPClientError>) -> ()) throws {
        if let createActivityAsyncOverrideNonOptional = createActivityAsyncOverride {
            if let createActivityAsyncOverrideTyped = createActivityAsyncOverrideNonOptional
                    as? CreateActivityAsyncType<InvocationReportingType> {
                return try createActivityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createActivitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateActivityInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.CreateActivityOutput {
        if let createActivitySyncOverrideNonOptional = createActivitySyncOverride {
            if let createActivitySyncOverrideTyped = createActivitySyncOverrideNonOptional
                    as? CreateActivitySyncType<InvocationReportingType> {
                return try createActivitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, HTTPClientError>) -> ()) throws {
        if let createStateMachineAsyncOverrideNonOptional = createStateMachineAsyncOverride {
            if let createStateMachineAsyncOverrideTyped = createStateMachineAsyncOverrideNonOptional
                    as? CreateStateMachineAsyncType<InvocationReportingType> {
                return try createStateMachineAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.CreateStateMachineOutput {
        if let createStateMachineSyncOverrideNonOptional = createStateMachineSyncOverride {
            if let createStateMachineSyncOverrideTyped = createStateMachineSyncOverrideNonOptional
                    as? CreateStateMachineSyncType<InvocationReportingType> {
                return try createStateMachineSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteActivityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteActivityInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, HTTPClientError>) -> ()) throws {
        if let deleteActivityAsyncOverrideNonOptional = deleteActivityAsyncOverride {
            if let deleteActivityAsyncOverrideTyped = deleteActivityAsyncOverrideNonOptional
                    as? DeleteActivityAsyncType<InvocationReportingType> {
                return try deleteActivityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteActivitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteActivityInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DeleteActivityOutput {
        if let deleteActivitySyncOverrideNonOptional = deleteActivitySyncOverride {
            if let deleteActivitySyncOverrideTyped = deleteActivitySyncOverrideNonOptional
                    as? DeleteActivitySyncType<InvocationReportingType> {
                return try deleteActivitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, HTTPClientError>) -> ()) throws {
        if let deleteStateMachineAsyncOverrideNonOptional = deleteStateMachineAsyncOverride {
            if let deleteStateMachineAsyncOverrideTyped = deleteStateMachineAsyncOverrideNonOptional
                    as? DeleteStateMachineAsyncType<InvocationReportingType> {
                return try deleteStateMachineAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DeleteStateMachineOutput {
        if let deleteStateMachineSyncOverrideNonOptional = deleteStateMachineSyncOverride {
            if let deleteStateMachineSyncOverrideTyped = deleteStateMachineSyncOverrideNonOptional
                    as? DeleteStateMachineSyncType<InvocationReportingType> {
                return try deleteStateMachineSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeActivityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeActivityInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, HTTPClientError>) -> ()) throws {
        if let describeActivityAsyncOverrideNonOptional = describeActivityAsyncOverride {
            if let describeActivityAsyncOverrideTyped = describeActivityAsyncOverrideNonOptional
                    as? DescribeActivityAsyncType<InvocationReportingType> {
                return try describeActivityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeActivitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeActivityInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeActivityOutput {
        if let describeActivitySyncOverrideNonOptional = describeActivitySyncOverride {
            if let describeActivitySyncOverrideTyped = describeActivitySyncOverrideNonOptional
                    as? DescribeActivitySyncType<InvocationReportingType> {
                return try describeActivitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, HTTPClientError>) -> ()) throws {
        if let describeExecutionAsyncOverrideNonOptional = describeExecutionAsyncOverride {
            if let describeExecutionAsyncOverrideTyped = describeExecutionAsyncOverrideNonOptional
                    as? DescribeExecutionAsyncType<InvocationReportingType> {
                return try describeExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeExecutionOutput {
        if let describeExecutionSyncOverrideNonOptional = describeExecutionSyncOverride {
            if let describeExecutionSyncOverrideTyped = describeExecutionSyncOverrideNonOptional
                    as? DescribeExecutionSyncType<InvocationReportingType> {
                return try describeExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, HTTPClientError>) -> ()) throws {
        if let describeStateMachineAsyncOverrideNonOptional = describeStateMachineAsyncOverride {
            if let describeStateMachineAsyncOverrideTyped = describeStateMachineAsyncOverrideNonOptional
                    as? DescribeStateMachineAsyncType<InvocationReportingType> {
                return try describeStateMachineAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeStateMachineOutput {
        if let describeStateMachineSyncOverrideNonOptional = describeStateMachineSyncOverride {
            if let describeStateMachineSyncOverrideTyped = describeStateMachineSyncOverrideNonOptional
                    as? DescribeStateMachineSyncType<InvocationReportingType> {
                return try describeStateMachineSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeStateMachineForExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, HTTPClientError>) -> ()) throws {
        if let describeStateMachineForExecutionAsyncOverrideNonOptional = describeStateMachineForExecutionAsyncOverride {
            if let describeStateMachineForExecutionAsyncOverrideTyped = describeStateMachineForExecutionAsyncOverrideNonOptional
                    as? DescribeStateMachineForExecutionAsyncType<InvocationReportingType> {
                return try describeStateMachineForExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeStateMachineForExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        if let describeStateMachineForExecutionSyncOverrideNonOptional = describeStateMachineForExecutionSyncOverride {
            if let describeStateMachineForExecutionSyncOverrideTyped = describeStateMachineForExecutionSyncOverrideNonOptional
                    as? DescribeStateMachineForExecutionSyncType<InvocationReportingType> {
                return try describeStateMachineForExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getActivityTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetActivityTaskInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, HTTPClientError>) -> ()) throws {
        if let getActivityTaskAsyncOverrideNonOptional = getActivityTaskAsyncOverride {
            if let getActivityTaskAsyncOverrideTyped = getActivityTaskAsyncOverrideNonOptional
                    as? GetActivityTaskAsyncType<InvocationReportingType> {
                return try getActivityTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getActivityTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetActivityTaskInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.GetActivityTaskOutput {
        if let getActivityTaskSyncOverrideNonOptional = getActivityTaskSyncOverride {
            if let getActivityTaskSyncOverrideTyped = getActivityTaskSyncOverrideNonOptional
                    as? GetActivityTaskSyncType<InvocationReportingType> {
                return try getActivityTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getExecutionHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetExecutionHistoryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, HTTPClientError>) -> ()) throws {
        if let getExecutionHistoryAsyncOverrideNonOptional = getExecutionHistoryAsyncOverride {
            if let getExecutionHistoryAsyncOverrideTyped = getExecutionHistoryAsyncOverrideNonOptional
                    as? GetExecutionHistoryAsyncType<InvocationReportingType> {
                return try getExecutionHistoryAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getExecutionHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetExecutionHistoryInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.GetExecutionHistoryOutput {
        if let getExecutionHistorySyncOverrideNonOptional = getExecutionHistorySyncOverride {
            if let getExecutionHistorySyncOverrideTyped = getExecutionHistorySyncOverrideNonOptional
                    as? GetExecutionHistorySyncType<InvocationReportingType> {
                return try getExecutionHistorySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listActivitiesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListActivitiesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, HTTPClientError>) -> ()) throws {
        if let listActivitiesAsyncOverrideNonOptional = listActivitiesAsyncOverride {
            if let listActivitiesAsyncOverrideTyped = listActivitiesAsyncOverrideNonOptional
                    as? ListActivitiesAsyncType<InvocationReportingType> {
                return try listActivitiesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listActivitiesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListActivitiesInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListActivitiesOutput {
        if let listActivitiesSyncOverrideNonOptional = listActivitiesSyncOverride {
            if let listActivitiesSyncOverrideTyped = listActivitiesSyncOverrideNonOptional
                    as? ListActivitiesSyncType<InvocationReportingType> {
                return try listActivitiesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, HTTPClientError>) -> ()) throws {
        if let listExecutionsAsyncOverrideNonOptional = listExecutionsAsyncOverride {
            if let listExecutionsAsyncOverrideTyped = listExecutionsAsyncOverrideNonOptional
                    as? ListExecutionsAsyncType<InvocationReportingType> {
                return try listExecutionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListExecutionsInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListExecutionsOutput {
        if let listExecutionsSyncOverrideNonOptional = listExecutionsSyncOverride {
            if let listExecutionsSyncOverrideTyped = listExecutionsSyncOverrideNonOptional
                    as? ListExecutionsSyncType<InvocationReportingType> {
                return try listExecutionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listStateMachinesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListStateMachinesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, HTTPClientError>) -> ()) throws {
        if let listStateMachinesAsyncOverrideNonOptional = listStateMachinesAsyncOverride {
            if let listStateMachinesAsyncOverrideTyped = listStateMachinesAsyncOverrideNonOptional
                    as? ListStateMachinesAsyncType<InvocationReportingType> {
                return try listStateMachinesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listStateMachinesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListStateMachinesInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListStateMachinesOutput {
        if let listStateMachinesSyncOverrideNonOptional = listStateMachinesSyncOverride {
            if let listStateMachinesSyncOverrideTyped = listStateMachinesSyncOverrideNonOptional
                    as? ListStateMachinesSyncType<InvocationReportingType> {
                return try listStateMachinesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListTagsForResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverrideNonOptional = listTagsForResourceAsyncOverride {
            if let listTagsForResourceAsyncOverrideTyped = listTagsForResourceAsyncOverrideNonOptional
                    as? ListTagsForResourceAsyncType<InvocationReportingType> {
                return try listTagsForResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListTagsForResourceInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverrideNonOptional = listTagsForResourceSyncOverride {
            if let listTagsForResourceSyncOverrideTyped = listTagsForResourceSyncOverrideNonOptional
                    as? ListTagsForResourceSyncType<InvocationReportingType> {
                return try listTagsForResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func sendTaskFailureAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskFailureInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, HTTPClientError>) -> ()) throws {
        if let sendTaskFailureAsyncOverrideNonOptional = sendTaskFailureAsyncOverride {
            if let sendTaskFailureAsyncOverrideTyped = sendTaskFailureAsyncOverrideNonOptional
                    as? SendTaskFailureAsyncType<InvocationReportingType> {
                return try sendTaskFailureAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func sendTaskFailureSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskFailureInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskFailureOutput {
        if let sendTaskFailureSyncOverrideNonOptional = sendTaskFailureSyncOverride {
            if let sendTaskFailureSyncOverrideTyped = sendTaskFailureSyncOverrideNonOptional
                    as? SendTaskFailureSyncType<InvocationReportingType> {
                return try sendTaskFailureSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func sendTaskHeartbeatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskHeartbeatInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, HTTPClientError>) -> ()) throws {
        if let sendTaskHeartbeatAsyncOverrideNonOptional = sendTaskHeartbeatAsyncOverride {
            if let sendTaskHeartbeatAsyncOverrideTyped = sendTaskHeartbeatAsyncOverrideNonOptional
                    as? SendTaskHeartbeatAsyncType<InvocationReportingType> {
                return try sendTaskHeartbeatAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func sendTaskHeartbeatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskHeartbeatInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
        if let sendTaskHeartbeatSyncOverrideNonOptional = sendTaskHeartbeatSyncOverride {
            if let sendTaskHeartbeatSyncOverrideTyped = sendTaskHeartbeatSyncOverrideNonOptional
                    as? SendTaskHeartbeatSyncType<InvocationReportingType> {
                return try sendTaskHeartbeatSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func sendTaskSuccessAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskSuccessInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, HTTPClientError>) -> ()) throws {
        if let sendTaskSuccessAsyncOverrideNonOptional = sendTaskSuccessAsyncOverride {
            if let sendTaskSuccessAsyncOverrideTyped = sendTaskSuccessAsyncOverrideNonOptional
                    as? SendTaskSuccessAsyncType<InvocationReportingType> {
                return try sendTaskSuccessAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func sendTaskSuccessSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskSuccessInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskSuccessOutput {
        if let sendTaskSuccessSyncOverrideNonOptional = sendTaskSuccessSyncOverride {
            if let sendTaskSuccessSyncOverrideTyped = sendTaskSuccessSyncOverrideNonOptional
                    as? SendTaskSuccessSyncType<InvocationReportingType> {
                return try sendTaskSuccessSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func startExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StartExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, HTTPClientError>) -> ()) throws {
        if let startExecutionAsyncOverrideNonOptional = startExecutionAsyncOverride {
            if let startExecutionAsyncOverrideTyped = startExecutionAsyncOverrideNonOptional
                    as? StartExecutionAsyncType<InvocationReportingType> {
                return try startExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func startExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StartExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.StartExecutionOutput {
        if let startExecutionSyncOverrideNonOptional = startExecutionSyncOverride {
            if let startExecutionSyncOverrideTyped = startExecutionSyncOverrideNonOptional
                    as? StartExecutionSyncType<InvocationReportingType> {
                return try startExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func stopExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StopExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, HTTPClientError>) -> ()) throws {
        if let stopExecutionAsyncOverrideNonOptional = stopExecutionAsyncOverride {
            if let stopExecutionAsyncOverrideTyped = stopExecutionAsyncOverrideNonOptional
                    as? StopExecutionAsyncType<InvocationReportingType> {
                return try stopExecutionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func stopExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StopExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.StopExecutionOutput {
        if let stopExecutionSyncOverrideNonOptional = stopExecutionSyncOverride {
            if let stopExecutionSyncOverrideTyped = stopExecutionSyncOverrideNonOptional
                    as? StopExecutionSyncType<InvocationReportingType> {
                return try stopExecutionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, HTTPClientError>) -> ()) throws {
        if let tagResourceAsyncOverrideNonOptional = tagResourceAsyncOverride {
            if let tagResourceAsyncOverrideTyped = tagResourceAsyncOverrideNonOptional
                    as? TagResourceAsyncType<InvocationReportingType> {
                return try tagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.TagResourceInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.TagResourceOutput {
        if let tagResourceSyncOverrideNonOptional = tagResourceSyncOverride {
            if let tagResourceSyncOverrideTyped = tagResourceSyncOverrideNonOptional
                    as? TagResourceSyncType<InvocationReportingType> {
                return try tagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, HTTPClientError>) -> ()) throws {
        if let untagResourceAsyncOverrideNonOptional = untagResourceAsyncOverride {
            if let untagResourceAsyncOverrideTyped = untagResourceAsyncOverrideNonOptional
                    as? UntagResourceAsyncType<InvocationReportingType> {
                return try untagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UntagResourceInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.UntagResourceOutput {
        if let untagResourceSyncOverrideNonOptional = untagResourceSyncOverride {
            if let untagResourceSyncOverrideTyped = untagResourceSyncOverrideNonOptional
                    as? UntagResourceSyncType<InvocationReportingType> {
                return try untagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UpdateStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, HTTPClientError>) -> ()) throws {
        if let updateStateMachineAsyncOverrideNonOptional = updateStateMachineAsyncOverride {
            if let updateStateMachineAsyncOverrideTyped = updateStateMachineAsyncOverrideNonOptional
                    as? UpdateStateMachineAsyncType<InvocationReportingType> {
                return try updateStateMachineAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UpdateStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.UpdateStateMachineOutput {
        if let updateStateMachineSyncOverrideNonOptional = updateStateMachineSyncOverride {
            if let updateStateMachineSyncOverrideTyped = updateStateMachineSyncOverrideNonOptional
                    as? UpdateStateMachineSyncType<InvocationReportingType> {
                return try updateStateMachineSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return UpdateStateMachineOutput.__default
    }
}
