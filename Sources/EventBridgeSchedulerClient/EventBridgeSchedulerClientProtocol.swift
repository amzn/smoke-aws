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
// EventBridgeSchedulerClientProtocol.swift
// EventBridgeSchedulerClient
//

import Foundation
import EventBridgeSchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the EventBridgeScheduler service.
 */
public protocol EventBridgeSchedulerClientProtocol: EventBridgeSchedulerClientProtocolV2 {
    typealias CreateScheduleSyncType = (
            _ input: EventBridgeSchedulerModel.CreateScheduleInput) throws -> EventBridgeSchedulerModel.CreateScheduleOutput
    typealias CreateScheduleAsyncType = (
            _ input: EventBridgeSchedulerModel.CreateScheduleInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias CreateScheduleGroupSyncType = (
            _ input: EventBridgeSchedulerModel.CreateScheduleGroupInput) throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput
    typealias CreateScheduleGroupAsyncType = (
            _ input: EventBridgeSchedulerModel.CreateScheduleGroupInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias DeleteScheduleSyncType = (
            _ input: EventBridgeSchedulerModel.DeleteScheduleInput) throws -> EventBridgeSchedulerModel.DeleteScheduleOutput
    typealias DeleteScheduleAsyncType = (
            _ input: EventBridgeSchedulerModel.DeleteScheduleInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias DeleteScheduleGroupSyncType = (
            _ input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput
    typealias DeleteScheduleGroupAsyncType = (
            _ input: EventBridgeSchedulerModel.DeleteScheduleGroupInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias GetScheduleSyncType = (
            _ input: EventBridgeSchedulerModel.GetScheduleInput) throws -> EventBridgeSchedulerModel.GetScheduleOutput
    typealias GetScheduleAsyncType = (
            _ input: EventBridgeSchedulerModel.GetScheduleInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias GetScheduleGroupSyncType = (
            _ input: EventBridgeSchedulerModel.GetScheduleGroupInput) throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput
    typealias GetScheduleGroupAsyncType = (
            _ input: EventBridgeSchedulerModel.GetScheduleGroupInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias ListScheduleGroupsSyncType = (
            _ input: EventBridgeSchedulerModel.ListScheduleGroupsInput) throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput
    typealias ListScheduleGroupsAsyncType = (
            _ input: EventBridgeSchedulerModel.ListScheduleGroupsInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.ListScheduleGroupsOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias ListSchedulesSyncType = (
            _ input: EventBridgeSchedulerModel.ListSchedulesInput) throws -> EventBridgeSchedulerModel.ListSchedulesOutput
    typealias ListSchedulesAsyncType = (
            _ input: EventBridgeSchedulerModel.ListSchedulesInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.ListSchedulesOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: EventBridgeSchedulerModel.ListTagsForResourceInput) throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType = (
            _ input: EventBridgeSchedulerModel.ListTagsForResourceInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.ListTagsForResourceOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: EventBridgeSchedulerModel.TagResourceInput) throws -> EventBridgeSchedulerModel.TagResourceOutput
    typealias TagResourceAsyncType = (
            _ input: EventBridgeSchedulerModel.TagResourceInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.TagResourceOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: EventBridgeSchedulerModel.UntagResourceInput) throws -> EventBridgeSchedulerModel.UntagResourceOutput
    typealias UntagResourceAsyncType = (
            _ input: EventBridgeSchedulerModel.UntagResourceInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.UntagResourceOutput, EventBridgeSchedulerError>) -> ()) throws -> ()
    typealias UpdateScheduleSyncType = (
            _ input: EventBridgeSchedulerModel.UpdateScheduleInput) throws -> EventBridgeSchedulerModel.UpdateScheduleOutput
    typealias UpdateScheduleAsyncType = (
            _ input: EventBridgeSchedulerModel.UpdateScheduleInput, 
            _ completion: @escaping (Result<EventBridgeSchedulerModel.UpdateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws -> ()

    /**
     Invokes the CreateSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
         - completion: The CreateScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleAsync(
            input: EventBridgeSchedulerModel.CreateScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the CreateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleSync(
            input: EventBridgeSchedulerModel.CreateScheduleInput) throws -> EventBridgeSchedulerModel.CreateScheduleOutput

    /**
     Invokes the CreateScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
         - completion: The CreateScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleGroupAsync(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the CreateScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleGroupSync(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput) throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput

    /**
     Invokes the DeleteSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
         - completion: The DeleteScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleAsync(
            input: EventBridgeSchedulerModel.DeleteScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the DeleteSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleSync(
            input: EventBridgeSchedulerModel.DeleteScheduleInput) throws -> EventBridgeSchedulerModel.DeleteScheduleOutput

    /**
     Invokes the DeleteScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
         - completion: The DeleteScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleGroupAsync(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the DeleteScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleGroupSync(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput

    /**
     Invokes the GetSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
         - completion: The GetScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleAsync(
            input: EventBridgeSchedulerModel.GetScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the GetSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleSync(
            input: EventBridgeSchedulerModel.GetScheduleInput) throws -> EventBridgeSchedulerModel.GetScheduleOutput

    /**
     Invokes the GetScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
         - completion: The GetScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The GetScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleGroupAsync(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the GetScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleGroupSync(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput) throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput

    /**
     Invokes the ListScheduleGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
         - completion: The ListScheduleGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListScheduleGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, throttling, validation.
     */
    func listScheduleGroupsAsync(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListScheduleGroupsOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the ListScheduleGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    func listScheduleGroupsSync(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput) throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput

    /**
     Invokes the ListSchedules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
         - completion: The ListSchedulesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSchedulesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    func listSchedulesAsync(
            input: EventBridgeSchedulerModel.ListSchedulesInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListSchedulesOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the ListSchedules operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listSchedulesSync(
            input: EventBridgeSchedulerModel.ListSchedulesInput) throws -> EventBridgeSchedulerModel.ListSchedulesOutput

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    func listTagsForResourceAsync(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListTagsForResourceOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listTagsForResourceSync(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput) throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func tagResourceAsync(
            input: EventBridgeSchedulerModel.TagResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.TagResourceOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func tagResourceSync(
            input: EventBridgeSchedulerModel.TagResourceInput) throws -> EventBridgeSchedulerModel.TagResourceOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func untagResourceAsync(
            input: EventBridgeSchedulerModel.UntagResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.UntagResourceOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func untagResourceSync(
            input: EventBridgeSchedulerModel.UntagResourceInput) throws -> EventBridgeSchedulerModel.UntagResourceOutput

    /**
     Invokes the UpdateSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
         - completion: The UpdateScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func updateScheduleAsync(
            input: EventBridgeSchedulerModel.UpdateScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.UpdateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws

    /**
     Invokes the UpdateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func updateScheduleSync(
            input: EventBridgeSchedulerModel.UpdateScheduleInput) throws -> EventBridgeSchedulerModel.UpdateScheduleOutput
}
