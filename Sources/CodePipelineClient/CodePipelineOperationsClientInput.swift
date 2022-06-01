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
// CodePipelineOperationsClientInput.swift
// CodePipelineClient
//

import Foundation
import SmokeHTTPClient
import CodePipelineModel

/**
 Type to handle the input to the AcknowledgeJob operation in a HTTP client.
 */
public typealias AcknowledgeJobOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the AcknowledgeThirdPartyJob operation in a HTTP client.
 */
public typealias AcknowledgeThirdPartyJobOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateCustomActionType operation in a HTTP client.
 */
public typealias CreateCustomActionTypeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreatePipeline operation in a HTTP client.
 */
public typealias CreatePipelineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteCustomActionType operation in a HTTP client.
 */
public typealias DeleteCustomActionTypeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeletePipeline operation in a HTTP client.
 */
public typealias DeletePipelineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteWebhook operation in a HTTP client.
 */
public typealias DeleteWebhookOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeregisterWebhookWithThirdParty operation in a HTTP client.
 */
public typealias DeregisterWebhookWithThirdPartyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DisableStageTransition operation in a HTTP client.
 */
public typealias DisableStageTransitionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the EnableStageTransition operation in a HTTP client.
 */
public typealias EnableStageTransitionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetActionType operation in a HTTP client.
 */
public typealias GetActionTypeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetJobDetails operation in a HTTP client.
 */
public typealias GetJobDetailsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetPipeline operation in a HTTP client.
 */
public typealias GetPipelineOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetPipelineExecution operation in a HTTP client.
 */
public typealias GetPipelineExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetPipelineState operation in a HTTP client.
 */
public typealias GetPipelineStateOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetThirdPartyJobDetails operation in a HTTP client.
 */
public typealias GetThirdPartyJobDetailsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListActionExecutions operation in a HTTP client.
 */
public typealias ListActionExecutionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListActionTypes operation in a HTTP client.
 */
public typealias ListActionTypesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListPipelineExecutions operation in a HTTP client.
 */
public typealias ListPipelineExecutionsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListPipelines operation in a HTTP client.
 */
public typealias ListPipelinesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public typealias ListTagsForResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListWebhooks operation in a HTTP client.
 */
public typealias ListWebhooksOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PollForJobs operation in a HTTP client.
 */
public typealias PollForJobsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PollForThirdPartyJobs operation in a HTTP client.
 */
public typealias PollForThirdPartyJobsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutActionRevision operation in a HTTP client.
 */
public typealias PutActionRevisionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutApprovalResult operation in a HTTP client.
 */
public typealias PutApprovalResultOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutJobFailureResult operation in a HTTP client.
 */
public typealias PutJobFailureResultOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutJobSuccessResult operation in a HTTP client.
 */
public typealias PutJobSuccessResultOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutThirdPartyJobFailureResult operation in a HTTP client.
 */
public typealias PutThirdPartyJobFailureResultOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutThirdPartyJobSuccessResult operation in a HTTP client.
 */
public typealias PutThirdPartyJobSuccessResultOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutWebhook operation in a HTTP client.
 */
public typealias PutWebhookOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RegisterWebhookWithThirdParty operation in a HTTP client.
 */
public typealias RegisterWebhookWithThirdPartyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RetryStageExecution operation in a HTTP client.
 */
public typealias RetryStageExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartPipelineExecution operation in a HTTP client.
 */
public typealias StartPipelineExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StopPipelineExecution operation in a HTTP client.
 */
public typealias StopPipelineExecutionOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateActionType operation in a HTTP client.
 */
public typealias UpdateActionTypeOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdatePipeline operation in a HTTP client.
 */
public typealias UpdatePipelineOperationHTTPRequestInput = BodyHTTPRequestInput
