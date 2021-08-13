// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// CodePipelineOperationsClientOutput.swift
// CodePipelineClient
//

import Foundation
import SmokeHTTPClient
import CodePipelineModel

/**
 Type to handle the output from the AcknowledgeJob operation in a HTTP client.
 */
extension AcknowledgeJobOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = AcknowledgeJobOutput
    public typealias HeadersType = AcknowledgeJobOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AcknowledgeJobOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AcknowledgeThirdPartyJob operation in a HTTP client.
 */
extension AcknowledgeThirdPartyJobOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = AcknowledgeThirdPartyJobOutput
    public typealias HeadersType = AcknowledgeThirdPartyJobOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AcknowledgeThirdPartyJobOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateCustomActionType operation in a HTTP client.
 */
extension CreateCustomActionTypeOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateCustomActionTypeOutput
    public typealias HeadersType = CreateCustomActionTypeOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateCustomActionTypeOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreatePipeline operation in a HTTP client.
 */
extension CreatePipelineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = CreatePipelineOutput
    public typealias HeadersType = CreatePipelineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreatePipelineOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteWebhook operation in a HTTP client.
 */
extension DeleteWebhookOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteWebhookOutput
    public typealias HeadersType = DeleteWebhookOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteWebhookOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeregisterWebhookWithThirdParty operation in a HTTP client.
 */
extension DeregisterWebhookWithThirdPartyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = DeregisterWebhookWithThirdPartyOutput
    public typealias HeadersType = DeregisterWebhookWithThirdPartyOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeregisterWebhookWithThirdPartyOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetActionType operation in a HTTP client.
 */
extension GetActionTypeOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetActionTypeOutput
    public typealias HeadersType = GetActionTypeOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetActionTypeOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetJobDetails operation in a HTTP client.
 */
extension GetJobDetailsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetJobDetailsOutput
    public typealias HeadersType = GetJobDetailsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetJobDetailsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPipeline operation in a HTTP client.
 */
extension GetPipelineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPipelineOutput
    public typealias HeadersType = GetPipelineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPipelineOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPipelineExecution operation in a HTTP client.
 */
extension GetPipelineExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPipelineExecutionOutput
    public typealias HeadersType = GetPipelineExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPipelineExecutionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPipelineState operation in a HTTP client.
 */
extension GetPipelineStateOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPipelineStateOutput
    public typealias HeadersType = GetPipelineStateOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPipelineStateOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetThirdPartyJobDetails operation in a HTTP client.
 */
extension GetThirdPartyJobDetailsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = GetThirdPartyJobDetailsOutput
    public typealias HeadersType = GetThirdPartyJobDetailsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetThirdPartyJobDetailsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListActionExecutions operation in a HTTP client.
 */
extension ListActionExecutionsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListActionExecutionsOutput
    public typealias HeadersType = ListActionExecutionsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListActionExecutionsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListActionTypes operation in a HTTP client.
 */
extension ListActionTypesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListActionTypesOutput
    public typealias HeadersType = ListActionTypesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListActionTypesOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPipelineExecutions operation in a HTTP client.
 */
extension ListPipelineExecutionsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPipelineExecutionsOutput
    public typealias HeadersType = ListPipelineExecutionsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPipelineExecutionsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPipelines operation in a HTTP client.
 */
extension ListPipelinesOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPipelinesOutput
    public typealias HeadersType = ListPipelinesOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPipelinesOutput {
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
 Type to handle the output from the ListWebhooks operation in a HTTP client.
 */
extension ListWebhooksOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = ListWebhooksOutput
    public typealias HeadersType = ListWebhooksOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListWebhooksOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PollForJobs operation in a HTTP client.
 */
extension PollForJobsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PollForJobsOutput
    public typealias HeadersType = PollForJobsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PollForJobsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PollForThirdPartyJobs operation in a HTTP client.
 */
extension PollForThirdPartyJobsOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PollForThirdPartyJobsOutput
    public typealias HeadersType = PollForThirdPartyJobsOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PollForThirdPartyJobsOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutActionRevision operation in a HTTP client.
 */
extension PutActionRevisionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutActionRevisionOutput
    public typealias HeadersType = PutActionRevisionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutActionRevisionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutApprovalResult operation in a HTTP client.
 */
extension PutApprovalResultOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutApprovalResultOutput
    public typealias HeadersType = PutApprovalResultOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutApprovalResultOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutWebhook operation in a HTTP client.
 */
extension PutWebhookOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = PutWebhookOutput
    public typealias HeadersType = PutWebhookOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutWebhookOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RegisterWebhookWithThirdParty operation in a HTTP client.
 */
extension RegisterWebhookWithThirdPartyOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RegisterWebhookWithThirdPartyOutput
    public typealias HeadersType = RegisterWebhookWithThirdPartyOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RegisterWebhookWithThirdPartyOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RetryStageExecution operation in a HTTP client.
 */
extension RetryStageExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = RetryStageExecutionOutput
    public typealias HeadersType = RetryStageExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RetryStageExecutionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StartPipelineExecution operation in a HTTP client.
 */
extension StartPipelineExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StartPipelineExecutionOutput
    public typealias HeadersType = StartPipelineExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StartPipelineExecutionOutput {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the StopPipelineExecution operation in a HTTP client.
 */
extension StopPipelineExecutionOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = StopPipelineExecutionOutput
    public typealias HeadersType = StopPipelineExecutionOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> StopPipelineExecutionOutput {
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
 Type to handle the output from the UpdatePipeline operation in a HTTP client.
 */
extension UpdatePipelineOutput: HTTPResponseOutputProtocol {
    public typealias BodyType = UpdatePipelineOutput
    public typealias HeadersType = UpdatePipelineOutput

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UpdatePipelineOutput {
        return try bodyDecodableProvider()
    }
}
