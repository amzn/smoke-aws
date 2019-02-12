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
// StepFunctionsOperationsClientOutput.swift
// StepFunctionsClient
//

import Foundation
import SmokeHTTPClient
import StepFunctionsModel

/**
 Type to handle the output from the CreateActivity operation in a HTTP client.
 */
extension CreateActivityOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateActivityOutput
    public typealias HeadersType = CreateActivityOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateActivityOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateStateMachine operation in a HTTP client.
 */
extension CreateStateMachineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateStateMachineOutput
    public typealias HeadersType = CreateStateMachineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateStateMachineOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteActivity operation in a HTTP client.
 */
extension DeleteActivityOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteActivityOutput
    public typealias HeadersType = DeleteActivityOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteActivityOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteStateMachine operation in a HTTP client.
 */
extension DeleteStateMachineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteStateMachineOutput
    public typealias HeadersType = DeleteStateMachineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteStateMachineOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeActivity operation in a HTTP client.
 */
extension DescribeActivityOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeActivityOutput
    public typealias HeadersType = DescribeActivityOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeActivityOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeExecution operation in a HTTP client.
 */
extension DescribeExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeExecutionOutput
    public typealias HeadersType = DescribeExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeExecutionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStateMachine operation in a HTTP client.
 */
extension DescribeStateMachineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStateMachineOutput
    public typealias HeadersType = DescribeStateMachineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStateMachineOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeStateMachineForExecution operation in a HTTP client.
 */
extension DescribeStateMachineForExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeStateMachineForExecutionOutput
    public typealias HeadersType = DescribeStateMachineForExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeStateMachineForExecutionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetActivityTask operation in a HTTP client.
 */
extension GetActivityTaskOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetActivityTaskOutput
    public typealias HeadersType = GetActivityTaskOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetActivityTaskOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetExecutionHistory operation in a HTTP client.
 */
extension GetExecutionHistoryOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetExecutionHistoryOutput
    public typealias HeadersType = GetExecutionHistoryOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetExecutionHistoryOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListActivities operation in a HTTP client.
 */
extension ListActivitiesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListActivitiesOutput
    public typealias HeadersType = ListActivitiesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListActivitiesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListExecutions operation in a HTTP client.
 */
extension ListExecutionsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListExecutionsOutput
    public typealias HeadersType = ListExecutionsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListExecutionsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListStateMachines operation in a HTTP client.
 */
extension ListStateMachinesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListStateMachinesOutput
    public typealias HeadersType = ListStateMachinesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListStateMachinesOutput {
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
 Type to handle the output from the SendTaskFailure operation in a HTTP client.
 */
extension SendTaskFailureOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = SendTaskFailureOutput
    public typealias HeadersType = SendTaskFailureOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SendTaskFailureOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SendTaskHeartbeat operation in a HTTP client.
 */
extension SendTaskHeartbeatOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = SendTaskHeartbeatOutput
    public typealias HeadersType = SendTaskHeartbeatOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SendTaskHeartbeatOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SendTaskSuccess operation in a HTTP client.
 */
extension SendTaskSuccessOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = SendTaskSuccessOutput
    public typealias HeadersType = SendTaskSuccessOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SendTaskSuccessOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartExecution operation in a HTTP client.
 */
extension StartExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StartExecutionOutput
    public typealias HeadersType = StartExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartExecutionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopExecution operation in a HTTP client.
 */
extension StopExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StopExecutionOutput
    public typealias HeadersType = StopExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopExecutionOutput {
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
 Type to handle the output from the UpdateStateMachine operation in a HTTP client.
 */
extension UpdateStateMachineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdateStateMachineOutput
    public typealias HeadersType = UpdateStateMachineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdateStateMachineOutput {
        return try bodyDecodableProvider()
    }
}
