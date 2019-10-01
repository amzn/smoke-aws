// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// SimpleWorkflowOperationsClientOutput.swift
// SimpleWorkflowClient
//

import Foundation
import SmokeHTTPClient
import SimpleWorkflowModel

/**
 Type to handle the output from the CountClosedWorkflowExecutions operation in a HTTP client.
 */
extension WorkflowExecutionCount: HTTPResponseOutputProtocol {
    public typealias BodyType = WorkflowExecutionCount
    public typealias HeadersType = WorkflowExecutionCount

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> WorkflowExecutionCount {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CountPendingActivityTasks operation in a HTTP client.
 */
extension PendingTaskCount: HTTPResponseOutputProtocol {
    public typealias BodyType = PendingTaskCount
    public typealias HeadersType = PendingTaskCount

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PendingTaskCount {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeActivityType operation in a HTTP client.
 */
extension ActivityTypeDetail: HTTPResponseOutputProtocol {
    public typealias BodyType = ActivityTypeDetail
    public typealias HeadersType = ActivityTypeDetail

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ActivityTypeDetail {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeDomain operation in a HTTP client.
 */
extension DomainDetail: HTTPResponseOutputProtocol {
    public typealias BodyType = DomainDetail
    public typealias HeadersType = DomainDetail

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DomainDetail {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeWorkflowExecution operation in a HTTP client.
 */
extension WorkflowExecutionDetail: HTTPResponseOutputProtocol {
    public typealias BodyType = WorkflowExecutionDetail
    public typealias HeadersType = WorkflowExecutionDetail

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> WorkflowExecutionDetail {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeWorkflowType operation in a HTTP client.
 */
extension WorkflowTypeDetail: HTTPResponseOutputProtocol {
    public typealias BodyType = WorkflowTypeDetail
    public typealias HeadersType = WorkflowTypeDetail

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> WorkflowTypeDetail {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetWorkflowExecutionHistory operation in a HTTP client.
 */
extension History: HTTPResponseOutputProtocol {
    public typealias BodyType = History
    public typealias HeadersType = History

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> History {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListActivityTypes operation in a HTTP client.
 */
extension ActivityTypeInfos: HTTPResponseOutputProtocol {
    public typealias BodyType = ActivityTypeInfos
    public typealias HeadersType = ActivityTypeInfos

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ActivityTypeInfos {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListClosedWorkflowExecutions operation in a HTTP client.
 */
extension WorkflowExecutionInfos: HTTPResponseOutputProtocol {
    public typealias BodyType = WorkflowExecutionInfos
    public typealias HeadersType = WorkflowExecutionInfos

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> WorkflowExecutionInfos {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListDomains operation in a HTTP client.
 */
extension DomainInfos: HTTPResponseOutputProtocol {
    public typealias BodyType = DomainInfos
    public typealias HeadersType = DomainInfos

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DomainInfos {
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
 Type to handle the output from the ListWorkflowTypes operation in a HTTP client.
 */
extension WorkflowTypeInfos: HTTPResponseOutputProtocol {
    public typealias BodyType = WorkflowTypeInfos
    public typealias HeadersType = WorkflowTypeInfos

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> WorkflowTypeInfos {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PollForActivityTask operation in a HTTP client.
 */
extension ActivityTask: HTTPResponseOutputProtocol {
    public typealias BodyType = ActivityTask
    public typealias HeadersType = ActivityTask

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ActivityTask {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PollForDecisionTask operation in a HTTP client.
 */
extension DecisionTask: HTTPResponseOutputProtocol {
    public typealias BodyType = DecisionTask
    public typealias HeadersType = DecisionTask

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DecisionTask {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RecordActivityTaskHeartbeat operation in a HTTP client.
 */
extension ActivityTaskStatus: HTTPResponseOutputProtocol {
    public typealias BodyType = ActivityTaskStatus
    public typealias HeadersType = ActivityTaskStatus

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ActivityTaskStatus {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartWorkflowExecution operation in a HTTP client.
 */
extension Run: HTTPResponseOutputProtocol {
    public typealias BodyType = Run
    public typealias HeadersType = Run

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> Run {
        return try bodyDecodableProvider()
    }
}
