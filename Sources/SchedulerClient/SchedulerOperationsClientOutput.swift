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
// SchedulerOperationsClientOutput.swift
// SchedulerClient
//

import Foundation
import SmokeHTTPClient
import SchedulerModel

/**
 Type to handle the output from the CreateSchedule operation in a HTTP client.
 */
extension CreateScheduleOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateScheduleOutput
    public typealias HeadersType = CreateScheduleOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateScheduleOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateScheduleGroup operation in a HTTP client.
 */
extension CreateScheduleGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateScheduleGroupOutput
    public typealias HeadersType = CreateScheduleGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateScheduleGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteSchedule operation in a HTTP client.
 */
extension DeleteScheduleOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteScheduleOutput
    public typealias HeadersType = DeleteScheduleOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteScheduleOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteScheduleGroup operation in a HTTP client.
 */
extension DeleteScheduleGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteScheduleGroupOutput
    public typealias HeadersType = DeleteScheduleGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteScheduleGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetSchedule operation in a HTTP client.
 */
extension GetScheduleOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetScheduleOutput
    public typealias HeadersType = GetScheduleOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetScheduleOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetScheduleGroup operation in a HTTP client.
 */
extension GetScheduleGroupOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetScheduleGroupOutput
    public typealias HeadersType = GetScheduleGroupOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetScheduleGroupOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListScheduleGroups operation in a HTTP client.
 */
extension ListScheduleGroupsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListScheduleGroupsOutput
    public typealias HeadersType = ListScheduleGroupsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListScheduleGroupsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSchedules operation in a HTTP client.
 */
extension ListSchedulesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSchedulesOutput
    public typealias HeadersType = ListSchedulesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSchedulesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ListTagsForResourceOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsForResourceOutput
    public typealias HeadersType = ListTagsForResourceOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsForResourceOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TagResource operation in a HTTP client.
 */
extension TagResourceOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = TagResourceOutput
    public typealias HeadersType = TagResourceOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagResourceOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UntagResource operation in a HTTP client.
 */
extension UntagResourceOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UntagResourceOutput
    public typealias HeadersType = UntagResourceOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UntagResourceOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UpdateSchedule operation in a HTTP client.
 */
extension UpdateScheduleOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateScheduleOutput
    public typealias HeadersType = UpdateScheduleOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateScheduleOutput {
        return try bodyDecodableProvider()
    }
}
