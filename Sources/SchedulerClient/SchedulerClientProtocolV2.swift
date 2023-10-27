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
// SchedulerClientProtocolV2.swift
// SchedulerClient
//

import Foundation
import SchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the Scheduler service.
 */
public protocol SchedulerClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias CreateScheduleFunctionType = (
            _ input: SchedulerModel.CreateScheduleInput) async throws -> SchedulerModel.CreateScheduleOutput
    typealias CreateScheduleGroupFunctionType = (
            _ input: SchedulerModel.CreateScheduleGroupInput) async throws -> SchedulerModel.CreateScheduleGroupOutput
    typealias DeleteScheduleFunctionType = (
            _ input: SchedulerModel.DeleteScheduleInput) async throws -> SchedulerModel.DeleteScheduleOutput
    typealias DeleteScheduleGroupFunctionType = (
            _ input: SchedulerModel.DeleteScheduleGroupInput) async throws -> SchedulerModel.DeleteScheduleGroupOutput
    typealias GetScheduleFunctionType = (
            _ input: SchedulerModel.GetScheduleInput) async throws -> SchedulerModel.GetScheduleOutput
    typealias GetScheduleGroupFunctionType = (
            _ input: SchedulerModel.GetScheduleGroupInput) async throws -> SchedulerModel.GetScheduleGroupOutput
    typealias ListScheduleGroupsFunctionType = (
            _ input: SchedulerModel.ListScheduleGroupsInput) async throws -> SchedulerModel.ListScheduleGroupsOutput
    typealias ListSchedulesFunctionType = (
            _ input: SchedulerModel.ListSchedulesInput) async throws -> SchedulerModel.ListSchedulesOutput
    typealias ListTagsForResourceFunctionType = (
            _ input: SchedulerModel.ListTagsForResourceInput) async throws -> SchedulerModel.ListTagsForResourceOutput
    typealias TagResourceFunctionType = (
            _ input: SchedulerModel.TagResourceInput) async throws -> SchedulerModel.TagResourceOutput
    typealias UntagResourceFunctionType = (
            _ input: SchedulerModel.UntagResourceInput) async throws -> SchedulerModel.UntagResourceOutput
    typealias UpdateScheduleFunctionType = (
            _ input: SchedulerModel.UpdateScheduleInput) async throws -> SchedulerModel.UpdateScheduleOutput

    /**
     Invokes the CreateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    func createSchedule(
            input: SchedulerModel.CreateScheduleInput) async throws -> SchedulerModel.CreateScheduleOutput

    /**
     Invokes the CreateScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleGroup(
            input: SchedulerModel.CreateScheduleGroupInput) async throws -> SchedulerModel.CreateScheduleGroupOutput

    /**
     Invokes the DeleteSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteSchedule(
            input: SchedulerModel.DeleteScheduleInput) async throws -> SchedulerModel.DeleteScheduleOutput

    /**
     Invokes the DeleteScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleGroup(
            input: SchedulerModel.DeleteScheduleGroupInput) async throws -> SchedulerModel.DeleteScheduleGroupOutput

    /**
     Invokes the GetSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getSchedule(
            input: SchedulerModel.GetScheduleInput) async throws -> SchedulerModel.GetScheduleOutput

    /**
     Invokes the GetScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleGroup(
            input: SchedulerModel.GetScheduleGroupInput) async throws -> SchedulerModel.GetScheduleGroupOutput

    /**
     Invokes the ListScheduleGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    func listScheduleGroups(
            input: SchedulerModel.ListScheduleGroupsInput) async throws -> SchedulerModel.ListScheduleGroupsOutput

    /**
     Invokes the ListSchedules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listSchedules(
            input: SchedulerModel.ListSchedulesInput) async throws -> SchedulerModel.ListSchedulesOutput

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listTagsForResource(
            input: SchedulerModel.ListTagsForResourceInput) async throws -> SchedulerModel.ListTagsForResourceOutput

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func tagResource(
            input: SchedulerModel.TagResourceInput) async throws -> SchedulerModel.TagResourceOutput

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func untagResource(
            input: SchedulerModel.UntagResourceInput) async throws -> SchedulerModel.UntagResourceOutput

    /**
     Invokes the UpdateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func updateSchedule(
            input: SchedulerModel.UpdateScheduleInput) async throws -> SchedulerModel.UpdateScheduleOutput
#endif
}
