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
// SchedulerClientProtocol.swift
// SchedulerClient
//

import Foundation
import SchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the Scheduler service.
 */
public protocol SchedulerClientProtocol: SchedulerClientProtocolV2 {
    typealias CreateScheduleSyncType = (
            _ input: SchedulerModel.CreateScheduleInput) throws -> SchedulerModel.CreateScheduleOutput
    typealias CreateScheduleAsyncType = (
            _ input: SchedulerModel.CreateScheduleInput, 
            _ completion: @escaping (Result<SchedulerModel.CreateScheduleOutput, SchedulerError>) -> ()) throws -> ()
    typealias CreateScheduleGroupSyncType = (
            _ input: SchedulerModel.CreateScheduleGroupInput) throws -> SchedulerModel.CreateScheduleGroupOutput
    typealias CreateScheduleGroupAsyncType = (
            _ input: SchedulerModel.CreateScheduleGroupInput, 
            _ completion: @escaping (Result<SchedulerModel.CreateScheduleGroupOutput, SchedulerError>) -> ()) throws -> ()
    typealias DeleteScheduleSyncType = (
            _ input: SchedulerModel.DeleteScheduleInput) throws -> SchedulerModel.DeleteScheduleOutput
    typealias DeleteScheduleAsyncType = (
            _ input: SchedulerModel.DeleteScheduleInput, 
            _ completion: @escaping (Result<SchedulerModel.DeleteScheduleOutput, SchedulerError>) -> ()) throws -> ()
    typealias DeleteScheduleGroupSyncType = (
            _ input: SchedulerModel.DeleteScheduleGroupInput) throws -> SchedulerModel.DeleteScheduleGroupOutput
    typealias DeleteScheduleGroupAsyncType = (
            _ input: SchedulerModel.DeleteScheduleGroupInput, 
            _ completion: @escaping (Result<SchedulerModel.DeleteScheduleGroupOutput, SchedulerError>) -> ()) throws -> ()
    typealias GetScheduleSyncType = (
            _ input: SchedulerModel.GetScheduleInput) throws -> SchedulerModel.GetScheduleOutput
    typealias GetScheduleAsyncType = (
            _ input: SchedulerModel.GetScheduleInput, 
            _ completion: @escaping (Result<SchedulerModel.GetScheduleOutput, SchedulerError>) -> ()) throws -> ()
    typealias GetScheduleGroupSyncType = (
            _ input: SchedulerModel.GetScheduleGroupInput) throws -> SchedulerModel.GetScheduleGroupOutput
    typealias GetScheduleGroupAsyncType = (
            _ input: SchedulerModel.GetScheduleGroupInput, 
            _ completion: @escaping (Result<SchedulerModel.GetScheduleGroupOutput, SchedulerError>) -> ()) throws -> ()
    typealias ListScheduleGroupsSyncType = (
            _ input: SchedulerModel.ListScheduleGroupsInput) throws -> SchedulerModel.ListScheduleGroupsOutput
    typealias ListScheduleGroupsAsyncType = (
            _ input: SchedulerModel.ListScheduleGroupsInput, 
            _ completion: @escaping (Result<SchedulerModel.ListScheduleGroupsOutput, SchedulerError>) -> ()) throws -> ()
    typealias ListSchedulesSyncType = (
            _ input: SchedulerModel.ListSchedulesInput) throws -> SchedulerModel.ListSchedulesOutput
    typealias ListSchedulesAsyncType = (
            _ input: SchedulerModel.ListSchedulesInput, 
            _ completion: @escaping (Result<SchedulerModel.ListSchedulesOutput, SchedulerError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: SchedulerModel.ListTagsForResourceInput) throws -> SchedulerModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType = (
            _ input: SchedulerModel.ListTagsForResourceInput, 
            _ completion: @escaping (Result<SchedulerModel.ListTagsForResourceOutput, SchedulerError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: SchedulerModel.TagResourceInput) throws -> SchedulerModel.TagResourceOutput
    typealias TagResourceAsyncType = (
            _ input: SchedulerModel.TagResourceInput, 
            _ completion: @escaping (Result<SchedulerModel.TagResourceOutput, SchedulerError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: SchedulerModel.UntagResourceInput) throws -> SchedulerModel.UntagResourceOutput
    typealias UntagResourceAsyncType = (
            _ input: SchedulerModel.UntagResourceInput, 
            _ completion: @escaping (Result<SchedulerModel.UntagResourceOutput, SchedulerError>) -> ()) throws -> ()
    typealias UpdateScheduleSyncType = (
            _ input: SchedulerModel.UpdateScheduleInput) throws -> SchedulerModel.UpdateScheduleOutput
    typealias UpdateScheduleAsyncType = (
            _ input: SchedulerModel.UpdateScheduleInput, 
            _ completion: @escaping (Result<SchedulerModel.UpdateScheduleOutput, SchedulerError>) -> ()) throws -> ()

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
            input: SchedulerModel.CreateScheduleInput, 
            completion: @escaping (Result<SchedulerModel.CreateScheduleOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the CreateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleSync(
            input: SchedulerModel.CreateScheduleInput) throws -> SchedulerModel.CreateScheduleOutput

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
            input: SchedulerModel.CreateScheduleGroupInput, 
            completion: @escaping (Result<SchedulerModel.CreateScheduleGroupOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the CreateScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleGroupSync(
            input: SchedulerModel.CreateScheduleGroupInput) throws -> SchedulerModel.CreateScheduleGroupOutput

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
            input: SchedulerModel.DeleteScheduleInput, 
            completion: @escaping (Result<SchedulerModel.DeleteScheduleOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the DeleteSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleSync(
            input: SchedulerModel.DeleteScheduleInput) throws -> SchedulerModel.DeleteScheduleOutput

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
            input: SchedulerModel.DeleteScheduleGroupInput, 
            completion: @escaping (Result<SchedulerModel.DeleteScheduleGroupOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the DeleteScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleGroupSync(
            input: SchedulerModel.DeleteScheduleGroupInput) throws -> SchedulerModel.DeleteScheduleGroupOutput

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
            input: SchedulerModel.GetScheduleInput, 
            completion: @escaping (Result<SchedulerModel.GetScheduleOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the GetSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleSync(
            input: SchedulerModel.GetScheduleInput) throws -> SchedulerModel.GetScheduleOutput

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
            input: SchedulerModel.GetScheduleGroupInput, 
            completion: @escaping (Result<SchedulerModel.GetScheduleGroupOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the GetScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleGroupSync(
            input: SchedulerModel.GetScheduleGroupInput) throws -> SchedulerModel.GetScheduleGroupOutput

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
            input: SchedulerModel.ListScheduleGroupsInput, 
            completion: @escaping (Result<SchedulerModel.ListScheduleGroupsOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the ListScheduleGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    func listScheduleGroupsSync(
            input: SchedulerModel.ListScheduleGroupsInput) throws -> SchedulerModel.ListScheduleGroupsOutput

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
            input: SchedulerModel.ListSchedulesInput, 
            completion: @escaping (Result<SchedulerModel.ListSchedulesOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the ListSchedules operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listSchedulesSync(
            input: SchedulerModel.ListSchedulesInput) throws -> SchedulerModel.ListSchedulesOutput

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
            input: SchedulerModel.ListTagsForResourceInput, 
            completion: @escaping (Result<SchedulerModel.ListTagsForResourceOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listTagsForResourceSync(
            input: SchedulerModel.ListTagsForResourceInput) throws -> SchedulerModel.ListTagsForResourceOutput

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
            input: SchedulerModel.TagResourceInput, 
            completion: @escaping (Result<SchedulerModel.TagResourceOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func tagResourceSync(
            input: SchedulerModel.TagResourceInput) throws -> SchedulerModel.TagResourceOutput

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
            input: SchedulerModel.UntagResourceInput, 
            completion: @escaping (Result<SchedulerModel.UntagResourceOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func untagResourceSync(
            input: SchedulerModel.UntagResourceInput) throws -> SchedulerModel.UntagResourceOutput

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
            input: SchedulerModel.UpdateScheduleInput, 
            completion: @escaping (Result<SchedulerModel.UpdateScheduleOutput, SchedulerError>) -> ()) throws

    /**
     Invokes the UpdateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func updateScheduleSync(
            input: SchedulerModel.UpdateScheduleInput) throws -> SchedulerModel.UpdateScheduleOutput
}
