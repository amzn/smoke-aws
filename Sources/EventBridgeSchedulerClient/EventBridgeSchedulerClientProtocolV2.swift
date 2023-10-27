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
// EventBridgeSchedulerClientProtocolV2.swift
// EventBridgeSchedulerClient
//

import Foundation
import EventBridgeSchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the EventBridgeScheduler service.
 */
public protocol EventBridgeSchedulerClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias CreateScheduleFunctionType = (
            _ input: EventBridgeSchedulerModel.CreateScheduleInput) async throws -> EventBridgeSchedulerModel.CreateScheduleOutput
    typealias CreateScheduleGroupFunctionType = (
            _ input: EventBridgeSchedulerModel.CreateScheduleGroupInput) async throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput
    typealias DeleteScheduleFunctionType = (
            _ input: EventBridgeSchedulerModel.DeleteScheduleInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleOutput
    typealias DeleteScheduleGroupFunctionType = (
            _ input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput
    typealias GetScheduleFunctionType = (
            _ input: EventBridgeSchedulerModel.GetScheduleInput) async throws -> EventBridgeSchedulerModel.GetScheduleOutput
    typealias GetScheduleGroupFunctionType = (
            _ input: EventBridgeSchedulerModel.GetScheduleGroupInput) async throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput
    typealias ListScheduleGroupsFunctionType = (
            _ input: EventBridgeSchedulerModel.ListScheduleGroupsInput) async throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput
    typealias ListSchedulesFunctionType = (
            _ input: EventBridgeSchedulerModel.ListSchedulesInput) async throws -> EventBridgeSchedulerModel.ListSchedulesOutput
    typealias ListTagsForResourceFunctionType = (
            _ input: EventBridgeSchedulerModel.ListTagsForResourceInput) async throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput
    typealias TagResourceFunctionType = (
            _ input: EventBridgeSchedulerModel.TagResourceInput) async throws -> EventBridgeSchedulerModel.TagResourceOutput
    typealias UntagResourceFunctionType = (
            _ input: EventBridgeSchedulerModel.UntagResourceInput) async throws -> EventBridgeSchedulerModel.UntagResourceOutput
    typealias UpdateScheduleFunctionType = (
            _ input: EventBridgeSchedulerModel.UpdateScheduleInput) async throws -> EventBridgeSchedulerModel.UpdateScheduleOutput

    /**
     Invokes the CreateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    func createSchedule(
            input: EventBridgeSchedulerModel.CreateScheduleInput) async throws -> EventBridgeSchedulerModel.CreateScheduleOutput

    /**
     Invokes the CreateScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleGroup(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput) async throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput

    /**
     Invokes the DeleteSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteSchedule(
            input: EventBridgeSchedulerModel.DeleteScheduleInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleOutput

    /**
     Invokes the DeleteScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleGroup(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput

    /**
     Invokes the GetSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getSchedule(
            input: EventBridgeSchedulerModel.GetScheduleInput) async throws -> EventBridgeSchedulerModel.GetScheduleOutput

    /**
     Invokes the GetScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleGroup(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput) async throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput

    /**
     Invokes the ListScheduleGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    func listScheduleGroups(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput) async throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput

    /**
     Invokes the ListSchedules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listSchedules(
            input: EventBridgeSchedulerModel.ListSchedulesInput) async throws -> EventBridgeSchedulerModel.ListSchedulesOutput

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listTagsForResource(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput) async throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func tagResource(
            input: EventBridgeSchedulerModel.TagResourceInput) async throws -> EventBridgeSchedulerModel.TagResourceOutput

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func untagResource(
            input: EventBridgeSchedulerModel.UntagResourceInput) async throws -> EventBridgeSchedulerModel.UntagResourceOutput

    /**
     Invokes the UpdateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func updateSchedule(
            input: EventBridgeSchedulerModel.UpdateScheduleInput) async throws -> EventBridgeSchedulerModel.UpdateScheduleOutput
#endif
}
