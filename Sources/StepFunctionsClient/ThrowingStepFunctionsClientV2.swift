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
// ThrowingStepFunctionsClientV2.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the StepFunctions service that by default always throws from its methods.
 */
public struct ThrowingStepFunctionsClientV2: StepFunctionsClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: StepFunctionsError
    let createActivityOverride: CreateActivityFunctionType?
    let createStateMachineOverride: CreateStateMachineFunctionType?
    let createStateMachineAliasOverride: CreateStateMachineAliasFunctionType?
    let deleteActivityOverride: DeleteActivityFunctionType?
    let deleteStateMachineOverride: DeleteStateMachineFunctionType?
    let deleteStateMachineAliasOverride: DeleteStateMachineAliasFunctionType?
    let deleteStateMachineVersionOverride: DeleteStateMachineVersionFunctionType?
    let describeActivityOverride: DescribeActivityFunctionType?
    let describeExecutionOverride: DescribeExecutionFunctionType?
    let describeMapRunOverride: DescribeMapRunFunctionType?
    let describeStateMachineOverride: DescribeStateMachineFunctionType?
    let describeStateMachineAliasOverride: DescribeStateMachineAliasFunctionType?
    let describeStateMachineForExecutionOverride: DescribeStateMachineForExecutionFunctionType?
    let getActivityTaskOverride: GetActivityTaskFunctionType?
    let getExecutionHistoryOverride: GetExecutionHistoryFunctionType?
    let listActivitiesOverride: ListActivitiesFunctionType?
    let listExecutionsOverride: ListExecutionsFunctionType?
    let listMapRunsOverride: ListMapRunsFunctionType?
    let listStateMachineAliasesOverride: ListStateMachineAliasesFunctionType?
    let listStateMachineVersionsOverride: ListStateMachineVersionsFunctionType?
    let listStateMachinesOverride: ListStateMachinesFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let publishStateMachineVersionOverride: PublishStateMachineVersionFunctionType?
    let sendTaskFailureOverride: SendTaskFailureFunctionType?
    let sendTaskHeartbeatOverride: SendTaskHeartbeatFunctionType?
    let sendTaskSuccessOverride: SendTaskSuccessFunctionType?
    let startExecutionOverride: StartExecutionFunctionType?
    let startSyncExecutionOverride: StartSyncExecutionFunctionType?
    let stopExecutionOverride: StopExecutionFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let updateMapRunOverride: UpdateMapRunFunctionType?
    let updateStateMachineOverride: UpdateStateMachineFunctionType?
    let updateStateMachineAliasOverride: UpdateStateMachineAliasFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: StepFunctionsError,
            createActivity: CreateActivityFunctionType? = nil,
            createStateMachine: CreateStateMachineFunctionType? = nil,
            createStateMachineAlias: CreateStateMachineAliasFunctionType? = nil,
            deleteActivity: DeleteActivityFunctionType? = nil,
            deleteStateMachine: DeleteStateMachineFunctionType? = nil,
            deleteStateMachineAlias: DeleteStateMachineAliasFunctionType? = nil,
            deleteStateMachineVersion: DeleteStateMachineVersionFunctionType? = nil,
            describeActivity: DescribeActivityFunctionType? = nil,
            describeExecution: DescribeExecutionFunctionType? = nil,
            describeMapRun: DescribeMapRunFunctionType? = nil,
            describeStateMachine: DescribeStateMachineFunctionType? = nil,
            describeStateMachineAlias: DescribeStateMachineAliasFunctionType? = nil,
            describeStateMachineForExecution: DescribeStateMachineForExecutionFunctionType? = nil,
            getActivityTask: GetActivityTaskFunctionType? = nil,
            getExecutionHistory: GetExecutionHistoryFunctionType? = nil,
            listActivities: ListActivitiesFunctionType? = nil,
            listExecutions: ListExecutionsFunctionType? = nil,
            listMapRuns: ListMapRunsFunctionType? = nil,
            listStateMachineAliases: ListStateMachineAliasesFunctionType? = nil,
            listStateMachineVersions: ListStateMachineVersionsFunctionType? = nil,
            listStateMachines: ListStateMachinesFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            publishStateMachineVersion: PublishStateMachineVersionFunctionType? = nil,
            sendTaskFailure: SendTaskFailureFunctionType? = nil,
            sendTaskHeartbeat: SendTaskHeartbeatFunctionType? = nil,
            sendTaskSuccess: SendTaskSuccessFunctionType? = nil,
            startExecution: StartExecutionFunctionType? = nil,
            startSyncExecution: StartSyncExecutionFunctionType? = nil,
            stopExecution: StopExecutionFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            updateMapRun: UpdateMapRunFunctionType? = nil,
            updateStateMachine: UpdateStateMachineFunctionType? = nil,
            updateStateMachineAlias: UpdateStateMachineAliasFunctionType? = nil) {
        self.error = error
        self.createActivityOverride = createActivity
        self.createStateMachineOverride = createStateMachine
        self.createStateMachineAliasOverride = createStateMachineAlias
        self.deleteActivityOverride = deleteActivity
        self.deleteStateMachineOverride = deleteStateMachine
        self.deleteStateMachineAliasOverride = deleteStateMachineAlias
        self.deleteStateMachineVersionOverride = deleteStateMachineVersion
        self.describeActivityOverride = describeActivity
        self.describeExecutionOverride = describeExecution
        self.describeMapRunOverride = describeMapRun
        self.describeStateMachineOverride = describeStateMachine
        self.describeStateMachineAliasOverride = describeStateMachineAlias
        self.describeStateMachineForExecutionOverride = describeStateMachineForExecution
        self.getActivityTaskOverride = getActivityTask
        self.getExecutionHistoryOverride = getExecutionHistory
        self.listActivitiesOverride = listActivities
        self.listExecutionsOverride = listExecutions
        self.listMapRunsOverride = listMapRuns
        self.listStateMachineAliasesOverride = listStateMachineAliases
        self.listStateMachineVersionsOverride = listStateMachineVersions
        self.listStateMachinesOverride = listStateMachines
        self.listTagsForResourceOverride = listTagsForResource
        self.publishStateMachineVersionOverride = publishStateMachineVersion
        self.sendTaskFailureOverride = sendTaskFailure
        self.sendTaskHeartbeatOverride = sendTaskHeartbeat
        self.sendTaskSuccessOverride = sendTaskSuccess
        self.startExecutionOverride = startExecution
        self.startSyncExecutionOverride = startSyncExecution
        self.stopExecutionOverride = stopExecution
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
        self.updateMapRunOverride = updateMapRun
        self.updateStateMachineOverride = updateStateMachine
        self.updateStateMachineAliasOverride = updateStateMachineAlias
    }

    /**
     Invokes the CreateActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivity(
            input: StepFunctionsModel.CreateActivityInput) async throws -> StepFunctionsModel.CreateActivityOutput {
        if let createActivityOverride = createActivityOverride {
            return try await createActivityOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags, validation.
     */
    public func createStateMachine(
            input: StepFunctionsModel.CreateStateMachineInput) async throws -> StepFunctionsModel.CreateStateMachineOutput {
        if let createStateMachineOverride = createStateMachineOverride {
            return try await createStateMachineOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStateMachineAliasInput object being passed to this operation.
     - Returns: The CreateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidName, resourceNotFound, serviceQuotaExceeded, stateMachineDeleting, validation.
     */
    public func createStateMachineAlias(
            input: StepFunctionsModel.CreateStateMachineAliasInput) async throws -> StepFunctionsModel.CreateStateMachineAliasOutput {
        if let createStateMachineAliasOverride = createStateMachineAliasOverride {
            return try await createStateMachineAliasOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteActivity(
            input: StepFunctionsModel.DeleteActivityInput) async throws -> StepFunctionsModel.DeleteActivityOutput {
        if let deleteActivityOverride = deleteActivityOverride {
            return try await deleteActivityOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, validation.
     */
    public func deleteStateMachine(
            input: StepFunctionsModel.DeleteStateMachineInput) async throws -> StepFunctionsModel.DeleteStateMachineOutput {
        if let deleteStateMachineOverride = deleteStateMachineOverride {
            return try await deleteStateMachineOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineAliasInput object being passed to this operation.
     - Returns: The DeleteStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func deleteStateMachineAlias(
            input: StepFunctionsModel.DeleteStateMachineAliasInput) async throws -> StepFunctionsModel.DeleteStateMachineAliasOutput {
        if let deleteStateMachineAliasOverride = deleteStateMachineAliasOverride {
            return try await deleteStateMachineAliasOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteStateMachineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineVersionInput object being passed to this operation.
     - Returns: The DeleteStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, validation.
     */
    public func deleteStateMachineVersion(
            input: StepFunctionsModel.DeleteStateMachineVersionInput) async throws -> StepFunctionsModel.DeleteStateMachineVersionOutput {
        if let deleteStateMachineVersionOverride = deleteStateMachineVersionOverride {
            return try await deleteStateMachineVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    public func describeActivity(
            input: StepFunctionsModel.DescribeActivityInput) async throws -> StepFunctionsModel.DescribeActivityOutput {
        if let describeActivityOverride = describeActivityOverride {
            return try await describeActivityOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeExecution(
            input: StepFunctionsModel.DescribeExecutionInput) async throws -> StepFunctionsModel.DescribeExecutionOutput {
        if let describeExecutionOverride = describeExecutionOverride {
            return try await describeExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeMapRun operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
     - Returns: The DescribeMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func describeMapRun(
            input: StepFunctionsModel.DescribeMapRunInput) async throws -> StepFunctionsModel.DescribeMapRunOutput {
        if let describeMapRunOverride = describeMapRunOverride {
            return try await describeMapRunOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachine(
            input: StepFunctionsModel.DescribeStateMachineInput) async throws -> StepFunctionsModel.DescribeStateMachineOutput {
        if let describeStateMachineOverride = describeStateMachineOverride {
            return try await describeStateMachineOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineAliasInput object being passed to this operation.
     - Returns: The DescribeStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func describeStateMachineAlias(
            input: StepFunctionsModel.DescribeStateMachineAliasInput) async throws -> StepFunctionsModel.DescribeStateMachineAliasOutput {
        if let describeStateMachineAliasOverride = describeStateMachineAliasOverride {
            return try await describeStateMachineAliasOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStateMachineForExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecution(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) async throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        if let describeStateMachineForExecutionOverride = describeStateMachineForExecutionOverride {
            return try await describeStateMachineForExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetActivityTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTask(
            input: StepFunctionsModel.GetActivityTaskInput) async throws -> StepFunctionsModel.GetActivityTaskOutput {
        if let getActivityTaskOverride = getActivityTaskOverride {
            return try await getActivityTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetExecutionHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistory(
            input: StepFunctionsModel.GetExecutionHistoryInput) async throws -> StepFunctionsModel.GetExecutionHistoryOutput {
        if let getExecutionHistoryOverride = getExecutionHistoryOverride {
            return try await getExecutionHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListActivities operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listActivities(
            input: StepFunctionsModel.ListActivitiesInput) async throws -> StepFunctionsModel.ListActivitiesOutput {
        if let listActivitiesOverride = listActivitiesOverride {
            return try await listActivitiesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    public func listExecutions(
            input: StepFunctionsModel.ListExecutionsInput) async throws -> StepFunctionsModel.ListExecutionsOutput {
        if let listExecutionsOverride = listExecutionsOverride {
            return try await listExecutionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListMapRuns operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
     - Returns: The ListMapRunsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func listMapRuns(
            input: StepFunctionsModel.ListMapRunsInput) async throws -> StepFunctionsModel.ListMapRunsOutput {
        if let listMapRunsOverride = listMapRunsOverride {
            return try await listMapRunsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStateMachineAliases operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachineAliasesInput object being passed to this operation.
     - Returns: The ListStateMachineAliasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func listStateMachineAliases(
            input: StepFunctionsModel.ListStateMachineAliasesInput) async throws -> StepFunctionsModel.ListStateMachineAliasesOutput {
        if let listStateMachineAliasesOverride = listStateMachineAliasesOverride {
            return try await listStateMachineAliasesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStateMachineVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachineVersionsInput object being passed to this operation.
     - Returns: The ListStateMachineVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, validation.
     */
    public func listStateMachineVersions(
            input: StepFunctionsModel.ListStateMachineVersionsInput) async throws -> StepFunctionsModel.ListStateMachineVersionsOutput {
        if let listStateMachineVersionsOverride = listStateMachineVersionsOverride {
            return try await listStateMachineVersionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListStateMachines operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listStateMachines(
            input: StepFunctionsModel.ListStateMachinesInput) async throws -> StepFunctionsModel.ListStateMachinesOutput {
        if let listStateMachinesOverride = listStateMachinesOverride {
            return try await listStateMachinesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func listTagsForResource(
            input: StepFunctionsModel.ListTagsForResourceInput) async throws -> StepFunctionsModel.ListTagsForResourceOutput {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the PublishStateMachineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishStateMachineVersionInput object being passed to this operation.
     - Returns: The PublishStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func publishStateMachineVersion(
            input: StepFunctionsModel.PublishStateMachineVersionInput) async throws -> StepFunctionsModel.PublishStateMachineVersionOutput {
        if let publishStateMachineVersionOverride = publishStateMachineVersionOverride {
            return try await publishStateMachineVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendTaskFailure operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailure(
            input: StepFunctionsModel.SendTaskFailureInput) async throws -> StepFunctionsModel.SendTaskFailureOutput {
        if let sendTaskFailureOverride = sendTaskFailureOverride {
            return try await sendTaskFailureOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendTaskHeartbeat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeat(
            input: StepFunctionsModel.SendTaskHeartbeatInput) async throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
        if let sendTaskHeartbeatOverride = sendTaskHeartbeatOverride {
            return try await sendTaskHeartbeatOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendTaskSuccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccess(
            input: StepFunctionsModel.SendTaskSuccessInput) async throws -> StepFunctionsModel.SendTaskSuccessOutput {
        if let sendTaskSuccessOverride = sendTaskSuccessOverride {
            return try await sendTaskSuccessOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func startExecution(
            input: StepFunctionsModel.StartExecutionInput) async throws -> StepFunctionsModel.StartExecutionOutput {
        if let startExecutionOverride = startExecutionOverride {
            return try await startExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartSyncExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: The StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecution(
            input: StepFunctionsModel.StartSyncExecutionInput) async throws -> StepFunctionsModel.StartSyncExecutionOutput {
        if let startSyncExecutionOverride = startSyncExecutionOverride {
            return try await startSyncExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, validation.
     */
    public func stopExecution(
            input: StepFunctionsModel.StopExecutionInput) async throws -> StepFunctionsModel.StopExecutionOutput {
        if let stopExecutionOverride = stopExecutionOverride {
            return try await stopExecutionOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResource(
            input: StepFunctionsModel.TagResourceInput) async throws -> StepFunctionsModel.TagResourceOutput {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func untagResource(
            input: StepFunctionsModel.UntagResourceInput) async throws -> StepFunctionsModel.UntagResourceOutput {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateMapRun operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
     - Returns: The UpdateMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func updateMapRun(
            input: StepFunctionsModel.UpdateMapRunInput) async throws -> StepFunctionsModel.UpdateMapRunOutput {
        if let updateMapRunOverride = updateMapRunOverride {
            return try await updateMapRunOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func updateStateMachine(
            input: StepFunctionsModel.UpdateStateMachineInput) async throws -> StepFunctionsModel.UpdateStateMachineOutput {
        if let updateStateMachineOverride = updateStateMachineOverride {
            return try await updateStateMachineOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStateMachineAliasInput object being passed to this operation.
     - Returns: The UpdateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func updateStateMachineAlias(
            input: StepFunctionsModel.UpdateStateMachineAliasInput) async throws -> StepFunctionsModel.UpdateStateMachineAliasOutput {
        if let updateStateMachineAliasOverride = updateStateMachineAliasOverride {
            return try await updateStateMachineAliasOverride(input)
        }

        throw error
    }
#endif
}
