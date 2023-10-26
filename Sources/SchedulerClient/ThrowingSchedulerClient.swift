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
// ThrowingSchedulerClient.swift
// SchedulerClient
//

import Foundation
import SchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the Scheduler service that by default always throws from its methods.
 */
public struct ThrowingSchedulerClient: SchedulerClientProtocol {
    let error: SchedulerError
    let createScheduleAsyncOverride: CreateScheduleAsyncType?
    let createScheduleSyncOverride: CreateScheduleSyncType?
    let createScheduleGroupAsyncOverride: CreateScheduleGroupAsyncType?
    let createScheduleGroupSyncOverride: CreateScheduleGroupSyncType?
    let deleteScheduleAsyncOverride: DeleteScheduleAsyncType?
    let deleteScheduleSyncOverride: DeleteScheduleSyncType?
    let deleteScheduleGroupAsyncOverride: DeleteScheduleGroupAsyncType?
    let deleteScheduleGroupSyncOverride: DeleteScheduleGroupSyncType?
    let getScheduleAsyncOverride: GetScheduleAsyncType?
    let getScheduleSyncOverride: GetScheduleSyncType?
    let getScheduleGroupAsyncOverride: GetScheduleGroupAsyncType?
    let getScheduleGroupSyncOverride: GetScheduleGroupSyncType?
    let listScheduleGroupsAsyncOverride: ListScheduleGroupsAsyncType?
    let listScheduleGroupsSyncOverride: ListScheduleGroupsSyncType?
    let listSchedulesAsyncOverride: ListSchedulesAsyncType?
    let listSchedulesSyncOverride: ListSchedulesSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let updateScheduleAsyncOverride: UpdateScheduleAsyncType?
    let updateScheduleSyncOverride: UpdateScheduleSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: SchedulerError,
            createScheduleAsync: CreateScheduleAsyncType? = nil,
            createScheduleSync: CreateScheduleSyncType? = nil,
            createScheduleGroupAsync: CreateScheduleGroupAsyncType? = nil,
            createScheduleGroupSync: CreateScheduleGroupSyncType? = nil,
            deleteScheduleAsync: DeleteScheduleAsyncType? = nil,
            deleteScheduleSync: DeleteScheduleSyncType? = nil,
            deleteScheduleGroupAsync: DeleteScheduleGroupAsyncType? = nil,
            deleteScheduleGroupSync: DeleteScheduleGroupSyncType? = nil,
            getScheduleAsync: GetScheduleAsyncType? = nil,
            getScheduleSync: GetScheduleSyncType? = nil,
            getScheduleGroupAsync: GetScheduleGroupAsyncType? = nil,
            getScheduleGroupSync: GetScheduleGroupSyncType? = nil,
            listScheduleGroupsAsync: ListScheduleGroupsAsyncType? = nil,
            listScheduleGroupsSync: ListScheduleGroupsSyncType? = nil,
            listSchedulesAsync: ListSchedulesAsyncType? = nil,
            listSchedulesSync: ListSchedulesSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            updateScheduleAsync: UpdateScheduleAsyncType? = nil,
            updateScheduleSync: UpdateScheduleSyncType? = nil) {
        self.error = error
        self.createScheduleAsyncOverride = createScheduleAsync
        self.createScheduleSyncOverride = createScheduleSync
        self.createScheduleGroupAsyncOverride = createScheduleGroupAsync
        self.createScheduleGroupSyncOverride = createScheduleGroupSync
        self.deleteScheduleAsyncOverride = deleteScheduleAsync
        self.deleteScheduleSyncOverride = deleteScheduleSync
        self.deleteScheduleGroupAsyncOverride = deleteScheduleGroupAsync
        self.deleteScheduleGroupSyncOverride = deleteScheduleGroupSync
        self.getScheduleAsyncOverride = getScheduleAsync
        self.getScheduleSyncOverride = getScheduleSync
        self.getScheduleGroupAsyncOverride = getScheduleGroupAsync
        self.getScheduleGroupSyncOverride = getScheduleGroupSync
        self.listScheduleGroupsAsyncOverride = listScheduleGroupsAsync
        self.listScheduleGroupsSyncOverride = listScheduleGroupsSync
        self.listSchedulesAsyncOverride = listSchedulesAsync
        self.listSchedulesSyncOverride = listSchedulesSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateScheduleAsyncOverride = updateScheduleAsync
        self.updateScheduleSyncOverride = updateScheduleSync
    }

    /**
     Invokes the CreateSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
         - completion: The CreateScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleAsync(
            input: SchedulerModel.CreateScheduleInput, 
            completion: @escaping (Result<SchedulerModel.CreateScheduleOutput, SchedulerError>) -> ()) throws {
        if let createScheduleAsyncOverride = createScheduleAsyncOverride {
            return try createScheduleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleSync(
            input: SchedulerModel.CreateScheduleInput) throws -> SchedulerModel.CreateScheduleOutput {
        if let createScheduleSyncOverride = createScheduleSyncOverride {
            return try createScheduleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
         - completion: The CreateScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleGroupAsync(
            input: SchedulerModel.CreateScheduleGroupInput, 
            completion: @escaping (Result<SchedulerModel.CreateScheduleGroupOutput, SchedulerError>) -> ()) throws {
        if let createScheduleGroupAsyncOverride = createScheduleGroupAsyncOverride {
            return try createScheduleGroupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleGroupSync(
            input: SchedulerModel.CreateScheduleGroupInput) throws -> SchedulerModel.CreateScheduleGroupOutput {
        if let createScheduleGroupSyncOverride = createScheduleGroupSyncOverride {
            return try createScheduleGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
         - completion: The DeleteScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleAsync(
            input: SchedulerModel.DeleteScheduleInput, 
            completion: @escaping (Result<SchedulerModel.DeleteScheduleOutput, SchedulerError>) -> ()) throws {
        if let deleteScheduleAsyncOverride = deleteScheduleAsyncOverride {
            return try deleteScheduleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleSync(
            input: SchedulerModel.DeleteScheduleInput) throws -> SchedulerModel.DeleteScheduleOutput {
        if let deleteScheduleSyncOverride = deleteScheduleSyncOverride {
            return try deleteScheduleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
         - completion: The DeleteScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleGroupAsync(
            input: SchedulerModel.DeleteScheduleGroupInput, 
            completion: @escaping (Result<SchedulerModel.DeleteScheduleGroupOutput, SchedulerError>) -> ()) throws {
        if let deleteScheduleGroupAsyncOverride = deleteScheduleGroupAsyncOverride {
            return try deleteScheduleGroupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleGroupSync(
            input: SchedulerModel.DeleteScheduleGroupInput) throws -> SchedulerModel.DeleteScheduleGroupOutput {
        if let deleteScheduleGroupSyncOverride = deleteScheduleGroupSyncOverride {
            return try deleteScheduleGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
         - completion: The GetScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleAsync(
            input: SchedulerModel.GetScheduleInput, 
            completion: @escaping (Result<SchedulerModel.GetScheduleOutput, SchedulerError>) -> ()) throws {
        if let getScheduleAsyncOverride = getScheduleAsyncOverride {
            return try getScheduleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleSync(
            input: SchedulerModel.GetScheduleInput) throws -> SchedulerModel.GetScheduleOutput {
        if let getScheduleSyncOverride = getScheduleSyncOverride {
            return try getScheduleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
         - completion: The GetScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The GetScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleGroupAsync(
            input: SchedulerModel.GetScheduleGroupInput, 
            completion: @escaping (Result<SchedulerModel.GetScheduleGroupOutput, SchedulerError>) -> ()) throws {
        if let getScheduleGroupAsyncOverride = getScheduleGroupAsyncOverride {
            return try getScheduleGroupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleGroupSync(
            input: SchedulerModel.GetScheduleGroupInput) throws -> SchedulerModel.GetScheduleGroupOutput {
        if let getScheduleGroupSyncOverride = getScheduleGroupSyncOverride {
            return try getScheduleGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListScheduleGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
         - completion: The ListScheduleGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListScheduleGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, throttling, validation.
     */
    public func listScheduleGroupsAsync(
            input: SchedulerModel.ListScheduleGroupsInput, 
            completion: @escaping (Result<SchedulerModel.ListScheduleGroupsOutput, SchedulerError>) -> ()) throws {
        if let listScheduleGroupsAsyncOverride = listScheduleGroupsAsyncOverride {
            return try listScheduleGroupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListScheduleGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    public func listScheduleGroupsSync(
            input: SchedulerModel.ListScheduleGroupsInput) throws -> SchedulerModel.ListScheduleGroupsOutput {
        if let listScheduleGroupsSyncOverride = listScheduleGroupsSyncOverride {
            return try listScheduleGroupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSchedules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
         - completion: The ListSchedulesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSchedulesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func listSchedulesAsync(
            input: SchedulerModel.ListSchedulesInput, 
            completion: @escaping (Result<SchedulerModel.ListSchedulesOutput, SchedulerError>) -> ()) throws {
        if let listSchedulesAsyncOverride = listSchedulesAsyncOverride {
            return try listSchedulesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListSchedules operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listSchedulesSync(
            input: SchedulerModel.ListSchedulesInput) throws -> SchedulerModel.ListSchedulesOutput {
        if let listSchedulesSyncOverride = listSchedulesSyncOverride {
            return try listSchedulesSyncOverride(input)
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
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResourceAsync(
            input: SchedulerModel.ListTagsForResourceInput, 
            completion: @escaping (Result<SchedulerModel.ListTagsForResourceOutput, SchedulerError>) -> ()) throws {
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
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResourceSync(
            input: SchedulerModel.ListTagsForResourceInput) throws -> SchedulerModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
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
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResourceAsync(
            input: SchedulerModel.TagResourceInput, 
            completion: @escaping (Result<SchedulerModel.TagResourceOutput, SchedulerError>) -> ()) throws {
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
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResourceSync(
            input: SchedulerModel.TagResourceInput) throws -> SchedulerModel.TagResourceOutput {
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
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResourceAsync(
            input: SchedulerModel.UntagResourceInput, 
            completion: @escaping (Result<SchedulerModel.UntagResourceOutput, SchedulerError>) -> ()) throws {
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
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResourceSync(
            input: SchedulerModel.UntagResourceInput) throws -> SchedulerModel.UntagResourceOutput {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
         - completion: The UpdateScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func updateScheduleAsync(
            input: SchedulerModel.UpdateScheduleInput, 
            completion: @escaping (Result<SchedulerModel.UpdateScheduleOutput, SchedulerError>) -> ()) throws {
        if let updateScheduleAsyncOverride = updateScheduleAsyncOverride {
            return try updateScheduleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func updateScheduleSync(
            input: SchedulerModel.UpdateScheduleInput) throws -> SchedulerModel.UpdateScheduleOutput {
        if let updateScheduleSyncOverride = updateScheduleSyncOverride {
            return try updateScheduleSyncOverride(input)
        }

        throw error
    }
}
