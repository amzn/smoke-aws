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
// SchedulerClientProtocol+async.swift
// SchedulerClient
//

import Foundation
import SchedulerModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the SchedulerClientProtocol type.
 */
public extension SchedulerClientProtocol {

    /**
     Invokes the CreateSchedule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    func createSchedule(input: SchedulerModel.CreateScheduleInput) async throws
     -> SchedulerModel.CreateScheduleOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createScheduleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateScheduleGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    func createScheduleGroup(input: SchedulerModel.CreateScheduleGroupInput) async throws
     -> SchedulerModel.CreateScheduleGroupOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createScheduleGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteSchedule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteSchedule(input: SchedulerModel.DeleteScheduleInput) async throws
     -> SchedulerModel.DeleteScheduleOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteScheduleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteScheduleGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func deleteScheduleGroup(input: SchedulerModel.DeleteScheduleGroupInput) async throws
     -> SchedulerModel.DeleteScheduleGroupOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteScheduleGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetSchedule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getSchedule(input: SchedulerModel.GetScheduleInput) async throws
     -> SchedulerModel.GetScheduleOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getScheduleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetScheduleGroup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func getScheduleGroup(input: SchedulerModel.GetScheduleGroupInput) async throws
     -> SchedulerModel.GetScheduleGroupOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getScheduleGroupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListScheduleGroups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    func listScheduleGroups(input: SchedulerModel.ListScheduleGroupsInput) async throws
     -> SchedulerModel.ListScheduleGroupsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listScheduleGroupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListSchedules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listSchedules(input: SchedulerModel.ListSchedulesInput) async throws
     -> SchedulerModel.ListSchedulesOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listSchedulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    func listTagsForResource(input: SchedulerModel.ListTagsForResourceInput) async throws
     -> SchedulerModel.ListTagsForResourceOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func tagResource(input: SchedulerModel.TagResourceInput) async throws
     -> SchedulerModel.TagResourceOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func untagResource(input: SchedulerModel.UntagResourceInput) async throws
     -> SchedulerModel.UntagResourceOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateSchedule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    func updateSchedule(input: SchedulerModel.UpdateScheduleInput) async throws
     -> SchedulerModel.UpdateScheduleOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try updateScheduleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
