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
// SchedulerOperationsClientInput.swift
// SchedulerClient
//

import Foundation
import SmokeHTTPClient
import SchedulerModel

/**
 Type to handle the input to the CreateSchedule operation in a HTTP client.
 */
public struct CreateScheduleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateScheduleOperationInputPath?
    public let bodyEncodable: CreateScheduleOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateScheduleInput) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asSchedulerModelCreateScheduleOperationInputPath()
        self.bodyEncodable = encodable.asSchedulerModelCreateScheduleOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the CreateScheduleGroup operation in a HTTP client.
 */
public struct CreateScheduleGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: CreateScheduleGroupOperationInputPath?
    public let bodyEncodable: CreateScheduleGroupOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: CreateScheduleGroupInput) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asSchedulerModelCreateScheduleGroupOperationInputPath()
        self.bodyEncodable = encodable.asSchedulerModelCreateScheduleGroupOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteSchedule operation in a HTTP client.
 */
public struct DeleteScheduleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteScheduleOperationInputQuery?
    public let pathEncodable: DeleteScheduleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteScheduleInput) {
        self.queryEncodable = encodable.asSchedulerModelDeleteScheduleOperationInputQuery()
        self.pathEncodable = encodable.asSchedulerModelDeleteScheduleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the DeleteScheduleGroup operation in a HTTP client.
 */
public struct DeleteScheduleGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteScheduleGroupOperationInputQuery?
    public let pathEncodable: DeleteScheduleGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteScheduleGroupInput) {
        self.queryEncodable = encodable.asSchedulerModelDeleteScheduleGroupOperationInputQuery()
        self.pathEncodable = encodable.asSchedulerModelDeleteScheduleGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetSchedule operation in a HTTP client.
 */
public struct GetScheduleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetScheduleOperationInputQuery?
    public let pathEncodable: GetScheduleOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetScheduleInput) {
        self.queryEncodable = encodable.asSchedulerModelGetScheduleOperationInputQuery()
        self.pathEncodable = encodable.asSchedulerModelGetScheduleOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the GetScheduleGroup operation in a HTTP client.
 */
public struct GetScheduleGroupOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: GetScheduleGroupOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetScheduleGroupInput) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asSchedulerModelGetScheduleGroupOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListScheduleGroups operation in a HTTP client.
 */
public struct ListScheduleGroupsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListScheduleGroupsOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListScheduleGroupsInput) {
        self.queryEncodable = encodable.asSchedulerModelListScheduleGroupsOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListSchedules operation in a HTTP client.
 */
public struct ListSchedulesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ListSchedulesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListSchedulesInput) {
        self.queryEncodable = encodable.asSchedulerModelListSchedulesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public struct ListTagsForResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: ListTagsForResourceOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListTagsForResourceInput) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asSchedulerModelListTagsForResourceOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public struct TagResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: TagResourceOperationInputPath?
    public let bodyEncodable: TagResourceOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: TagResourceInput) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asSchedulerModelTagResourceOperationInputPath()
        self.bodyEncodable = encodable.asSchedulerModelTagResourceOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public struct UntagResourceOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UntagResourceOperationInputQuery?
    public let pathEncodable: UntagResourceOperationInputPath?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UntagResourceInput) {
        self.queryEncodable = encodable.asSchedulerModelUntagResourceOperationInputQuery()
        self.pathEncodable = encodable.asSchedulerModelUntagResourceOperationInputPath()
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}

/**
 Type to handle the input to the UpdateSchedule operation in a HTTP client.
 */
public struct UpdateScheduleOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: UpdateScheduleOperationInputPath?
    public let bodyEncodable: UpdateScheduleOperationInputBody?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UpdateScheduleInput) {
        self.queryEncodable = nil
        self.pathEncodable = encodable.asSchedulerModelUpdateScheduleOperationInputPath()
        self.bodyEncodable = encodable.asSchedulerModelUpdateScheduleOperationInputBody()
        self.additionalHeadersEncodable = nil
        self.pathPostfix = nil
    }
}
