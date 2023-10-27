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
// MockEventBridgeSchedulerClientV2.swift
// EventBridgeSchedulerClient
//

import Foundation
import EventBridgeSchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the EventBridgeScheduler service by default returns the `__default` property of its return type.
 */
public struct MockEventBridgeSchedulerClientV2: EventBridgeSchedulerClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let createScheduleOverride: CreateScheduleFunctionType?
    let createScheduleGroupOverride: CreateScheduleGroupFunctionType?
    let deleteScheduleOverride: DeleteScheduleFunctionType?
    let deleteScheduleGroupOverride: DeleteScheduleGroupFunctionType?
    let getScheduleOverride: GetScheduleFunctionType?
    let getScheduleGroupOverride: GetScheduleGroupFunctionType?
    let listScheduleGroupsOverride: ListScheduleGroupsFunctionType?
    let listSchedulesOverride: ListSchedulesFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let updateScheduleOverride: UpdateScheduleFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createSchedule: CreateScheduleFunctionType? = nil,
            createScheduleGroup: CreateScheduleGroupFunctionType? = nil,
            deleteSchedule: DeleteScheduleFunctionType? = nil,
            deleteScheduleGroup: DeleteScheduleGroupFunctionType? = nil,
            getSchedule: GetScheduleFunctionType? = nil,
            getScheduleGroup: GetScheduleGroupFunctionType? = nil,
            listScheduleGroups: ListScheduleGroupsFunctionType? = nil,
            listSchedules: ListSchedulesFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            updateSchedule: UpdateScheduleFunctionType? = nil) {
        self.createScheduleOverride = createSchedule
        self.createScheduleGroupOverride = createScheduleGroup
        self.deleteScheduleOverride = deleteSchedule
        self.deleteScheduleGroupOverride = deleteScheduleGroup
        self.getScheduleOverride = getSchedule
        self.getScheduleGroupOverride = getScheduleGroup
        self.listScheduleGroupsOverride = listScheduleGroups
        self.listSchedulesOverride = listSchedules
        self.listTagsForResourceOverride = listTagsForResource
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
        self.updateScheduleOverride = updateSchedule
    }

    /**
     Invokes the CreateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    public func createSchedule(
            input: EventBridgeSchedulerModel.CreateScheduleInput) async throws -> EventBridgeSchedulerModel.CreateScheduleOutput {
        if let createScheduleOverride = createScheduleOverride {
            return try await createScheduleOverride(input)
        }

        return CreateScheduleOutput.__default
    }

    /**
     Invokes the CreateScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleGroup(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput) async throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput {
        if let createScheduleGroupOverride = createScheduleGroupOverride {
            return try await createScheduleGroupOverride(input)
        }

        return CreateScheduleGroupOutput.__default
    }

    /**
     Invokes the DeleteSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteSchedule(
            input: EventBridgeSchedulerModel.DeleteScheduleInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleOutput {
        if let deleteScheduleOverride = deleteScheduleOverride {
            return try await deleteScheduleOverride(input)
        }

        return DeleteScheduleOutput.__default
    }

    /**
     Invokes the DeleteScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleGroup(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput {
        if let deleteScheduleGroupOverride = deleteScheduleGroupOverride {
            return try await deleteScheduleGroupOverride(input)
        }

        return DeleteScheduleGroupOutput.__default
    }

    /**
     Invokes the GetSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getSchedule(
            input: EventBridgeSchedulerModel.GetScheduleInput) async throws -> EventBridgeSchedulerModel.GetScheduleOutput {
        if let getScheduleOverride = getScheduleOverride {
            return try await getScheduleOverride(input)
        }

        return GetScheduleOutput.__default
    }

    /**
     Invokes the GetScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleGroup(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput) async throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput {
        if let getScheduleGroupOverride = getScheduleGroupOverride {
            return try await getScheduleGroupOverride(input)
        }

        return GetScheduleGroupOutput.__default
    }

    /**
     Invokes the ListScheduleGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    public func listScheduleGroups(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput) async throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput {
        if let listScheduleGroupsOverride = listScheduleGroupsOverride {
            return try await listScheduleGroupsOverride(input)
        }

        return ListScheduleGroupsOutput.__default
    }

    /**
     Invokes the ListSchedules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listSchedules(
            input: EventBridgeSchedulerModel.ListSchedulesInput) async throws -> EventBridgeSchedulerModel.ListSchedulesOutput {
        if let listSchedulesOverride = listSchedulesOverride {
            return try await listSchedulesOverride(input)
        }

        return ListSchedulesOutput.__default
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResource(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput) async throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        return ListTagsForResourceOutput.__default
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResource(
            input: EventBridgeSchedulerModel.TagResourceInput) async throws -> EventBridgeSchedulerModel.TagResourceOutput {
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
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResource(
            input: EventBridgeSchedulerModel.UntagResourceInput) async throws -> EventBridgeSchedulerModel.UntagResourceOutput {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        return UntagResourceOutput.__default
    }

    /**
     Invokes the UpdateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func updateSchedule(
            input: EventBridgeSchedulerModel.UpdateScheduleInput) async throws -> EventBridgeSchedulerModel.UpdateScheduleOutput {
        if let updateScheduleOverride = updateScheduleOverride {
            return try await updateScheduleOverride(input)
        }

        return UpdateScheduleOutput.__default
    }
#endif
}
