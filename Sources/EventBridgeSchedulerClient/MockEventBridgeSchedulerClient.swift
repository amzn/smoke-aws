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
// MockEventBridgeSchedulerClient.swift
// EventBridgeSchedulerClient
//

import Foundation
import EventBridgeSchedulerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the EventBridgeScheduler service by default returns the `__default` property of its return type.
 */
public struct MockEventBridgeSchedulerClient: EventBridgeSchedulerClientProtocol {
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
    public init(
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
            input: EventBridgeSchedulerModel.CreateScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let createScheduleAsyncOverride = createScheduleAsyncOverride {
            return try createScheduleAsyncOverride(input, completion)
        }

        let result = CreateScheduleOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.CreateScheduleInput) throws -> EventBridgeSchedulerModel.CreateScheduleOutput {
        if let createScheduleSyncOverride = createScheduleSyncOverride {
            return try createScheduleSyncOverride(input)
        }

        return CreateScheduleOutput.__default
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
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let createScheduleGroupAsyncOverride = createScheduleGroupAsyncOverride {
            return try createScheduleGroupAsyncOverride(input, completion)
        }

        let result = CreateScheduleGroupOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput) throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput {
        if let createScheduleGroupSyncOverride = createScheduleGroupSyncOverride {
            return try createScheduleGroupSyncOverride(input)
        }

        return CreateScheduleGroupOutput.__default
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
            input: EventBridgeSchedulerModel.DeleteScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let deleteScheduleAsyncOverride = deleteScheduleAsyncOverride {
            return try deleteScheduleAsyncOverride(input, completion)
        }

        let result = DeleteScheduleOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.DeleteScheduleInput) throws -> EventBridgeSchedulerModel.DeleteScheduleOutput {
        if let deleteScheduleSyncOverride = deleteScheduleSyncOverride {
            return try deleteScheduleSyncOverride(input)
        }

        return DeleteScheduleOutput.__default
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
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let deleteScheduleGroupAsyncOverride = deleteScheduleGroupAsyncOverride {
            return try deleteScheduleGroupAsyncOverride(input, completion)
        }

        let result = DeleteScheduleGroupOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput {
        if let deleteScheduleGroupSyncOverride = deleteScheduleGroupSyncOverride {
            return try deleteScheduleGroupSyncOverride(input)
        }

        return DeleteScheduleGroupOutput.__default
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
            input: EventBridgeSchedulerModel.GetScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let getScheduleAsyncOverride = getScheduleAsyncOverride {
            return try getScheduleAsyncOverride(input, completion)
        }

        let result = GetScheduleOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.GetScheduleInput) throws -> EventBridgeSchedulerModel.GetScheduleOutput {
        if let getScheduleSyncOverride = getScheduleSyncOverride {
            return try getScheduleSyncOverride(input)
        }

        return GetScheduleOutput.__default
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
            input: EventBridgeSchedulerModel.GetScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let getScheduleGroupAsyncOverride = getScheduleGroupAsyncOverride {
            return try getScheduleGroupAsyncOverride(input, completion)
        }

        let result = GetScheduleGroupOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.GetScheduleGroupInput) throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput {
        if let getScheduleGroupSyncOverride = getScheduleGroupSyncOverride {
            return try getScheduleGroupSyncOverride(input)
        }

        return GetScheduleGroupOutput.__default
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
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListScheduleGroupsOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let listScheduleGroupsAsyncOverride = listScheduleGroupsAsyncOverride {
            return try listScheduleGroupsAsyncOverride(input, completion)
        }

        let result = ListScheduleGroupsOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput) throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput {
        if let listScheduleGroupsSyncOverride = listScheduleGroupsSyncOverride {
            return try listScheduleGroupsSyncOverride(input)
        }

        return ListScheduleGroupsOutput.__default
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
            input: EventBridgeSchedulerModel.ListSchedulesInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListSchedulesOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let listSchedulesAsyncOverride = listSchedulesAsyncOverride {
            return try listSchedulesAsyncOverride(input, completion)
        }

        let result = ListSchedulesOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.ListSchedulesInput) throws -> EventBridgeSchedulerModel.ListSchedulesOutput {
        if let listSchedulesSyncOverride = listSchedulesSyncOverride {
            return try listSchedulesSyncOverride(input)
        }

        return ListSchedulesOutput.__default
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
            input: EventBridgeSchedulerModel.ListTagsForResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListTagsForResourceOutput, EventBridgeSchedulerError>) -> ()) throws {
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
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResourceSync(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput) throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        return ListTagsForResourceOutput.__default
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
            input: EventBridgeSchedulerModel.TagResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.TagResourceOutput, EventBridgeSchedulerError>) -> ()) throws {
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
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResourceSync(
            input: EventBridgeSchedulerModel.TagResourceInput) throws -> EventBridgeSchedulerModel.TagResourceOutput {
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
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResourceAsync(
            input: EventBridgeSchedulerModel.UntagResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.UntagResourceOutput, EventBridgeSchedulerError>) -> ()) throws {
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
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResourceSync(
            input: EventBridgeSchedulerModel.UntagResourceInput) throws -> EventBridgeSchedulerModel.UntagResourceOutput {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        return UntagResourceOutput.__default
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
            input: EventBridgeSchedulerModel.UpdateScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.UpdateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        if let updateScheduleAsyncOverride = updateScheduleAsyncOverride {
            return try updateScheduleAsyncOverride(input, completion)
        }

        let result = UpdateScheduleOutput.__default
        
        completion(.success(result))
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
            input: EventBridgeSchedulerModel.UpdateScheduleInput) throws -> EventBridgeSchedulerModel.UpdateScheduleOutput {
        if let updateScheduleSyncOverride = updateScheduleSyncOverride {
            return try updateScheduleSyncOverride(input)
        }

        return UpdateScheduleOutput.__default
    }
}
