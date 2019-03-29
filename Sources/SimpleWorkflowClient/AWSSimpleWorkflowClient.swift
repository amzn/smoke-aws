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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// AWSSimpleWorkflowClient.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum SimpleWorkflowClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension SimpleWorkflowError {
    func isRetriable() -> Bool {
        switch self {
        case .limitExceeded:
            return true
        default:
            return false
        }
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? SimpleWorkflowError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the SimpleWorkflow service.
 */
public struct AWSSimpleWorkflowClient: SimpleWorkflowClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "swf",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "SimpleWorkflowService",
                connectionTimeoutSeconds: Int = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads) {
        let clientDelegate = JSONAWSHttpClientDelegate<SimpleWorkflowError>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutionsAsync(input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionCount>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countClosedWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = CountClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutionsSync(input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countClosedWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = CountClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionCount object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutionsAsync(input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionCount>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countOpenWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = CountOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutionsSync(input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countOpenWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = CountOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountPendingActivityTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasksAsync(input: SimpleWorkflowModel.CountPendingActivityTasksInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.PendingTaskCount>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingActivityTasks.rawValue,
                    target: target)

        let requestInput = CountPendingActivityTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountPendingActivityTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasksSync(input: SimpleWorkflowModel.CountPendingActivityTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingActivityTasks.rawValue,
                    target: target)

        let requestInput = CountPendingActivityTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
         - completion: The PendingTaskCount object or an error will be passed to this 
           callback when the operation is complete. The PendingTaskCount
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasksAsync(input: SimpleWorkflowModel.CountPendingDecisionTasksInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.PendingTaskCount>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingDecisionTasks.rawValue,
                    target: target)

        let requestInput = CountPendingDecisionTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CountPendingDecisionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: The PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasksSync(input: SimpleWorkflowModel.CountPendingDecisionTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingDecisionTasks.rawValue,
                    target: target)

        let requestInput = CountPendingDecisionTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeAsync(input: SimpleWorkflowModel.DeprecateActivityTypeInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateActivityType.rawValue,
                    target: target)

        let requestInput = DeprecateActivityTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeSync(input: SimpleWorkflowModel.DeprecateActivityTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateActivityType.rawValue,
                    target: target)

        let requestInput = DeprecateActivityTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainAsync(input: SimpleWorkflowModel.DeprecateDomainInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateDomain.rawValue,
                    target: target)

        let requestInput = DeprecateDomainOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainSync(input: SimpleWorkflowModel.DeprecateDomainInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateDomain.rawValue,
                    target: target)

        let requestInput = DeprecateDomainOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeAsync(input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateWorkflowType.rawValue,
                    target: target)

        let requestInput = DeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeSync(input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateWorkflowType.rawValue,
                    target: target)

        let requestInput = DeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
         - completion: The ActivityTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeActivityTypeAsync(input: SimpleWorkflowModel.DescribeActivityTypeInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTypeDetail>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeActivityType.rawValue,
                    target: target)

        let requestInput = DescribeActivityTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: The ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeActivityTypeSync(input: SimpleWorkflowModel.DescribeActivityTypeInput) throws -> SimpleWorkflowModel.ActivityTypeDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeActivityType.rawValue,
                    target: target)

        let requestInput = DescribeActivityTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
         - completion: The DomainDetail object or an error will be passed to this 
           callback when the operation is complete. The DomainDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeDomainAsync(input: SimpleWorkflowModel.DescribeDomainInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.DomainDetail>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeDomain.rawValue,
                    target: target)

        let requestInput = DescribeDomainOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: The DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeDomainSync(input: SimpleWorkflowModel.DescribeDomainInput) throws -> SimpleWorkflowModel.DomainDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeDomain.rawValue,
                    target: target)

        let requestInput = DescribeDomainOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
         - completion: The WorkflowExecutionDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecutionAsync(input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionDetail>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowExecution.rawValue,
                    target: target)

        let requestInput = DescribeWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: The WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecutionSync(input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) throws -> SimpleWorkflowModel.WorkflowExecutionDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowExecution.rawValue,
                    target: target)

        let requestInput = DescribeWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
         - completion: The WorkflowTypeDetail object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeDetail
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowTypeAsync(input: SimpleWorkflowModel.DescribeWorkflowTypeInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowTypeDetail>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowType.rawValue,
                    target: target)

        let requestInput = DescribeWorkflowTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: The WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowTypeSync(input: SimpleWorkflowModel.DescribeWorkflowTypeInput) throws -> SimpleWorkflowModel.WorkflowTypeDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowType.rawValue,
                    target: target)

        let requestInput = DescribeWorkflowTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
         - completion: The History object or an error will be passed to this 
           callback when the operation is complete. The History
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistoryAsync(input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.History>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.getWorkflowExecutionHistory.rawValue,
                    target: target)

        let requestInput = GetWorkflowExecutionHistoryOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: The History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistorySync(input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) throws -> SimpleWorkflowModel.History {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.getWorkflowExecutionHistory.rawValue,
                    target: target)

        let requestInput = GetWorkflowExecutionHistoryOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListActivityTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
         - completion: The ActivityTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The ActivityTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listActivityTypesAsync(input: SimpleWorkflowModel.ListActivityTypesInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTypeInfos>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listActivityTypes.rawValue,
                    target: target)

        let requestInput = ListActivityTypesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListActivityTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: The ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listActivityTypesSync(input: SimpleWorkflowModel.ListActivityTypesInput) throws -> SimpleWorkflowModel.ActivityTypeInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listActivityTypes.rawValue,
                    target: target)

        let requestInput = ListActivityTypesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutionsAsync(input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionInfos>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listClosedWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = ListClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutionsSync(input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listClosedWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = ListClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
         - completion: The DomainInfos object or an error will be passed to this 
           callback when the operation is complete. The DomainInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    public func listDomainsAsync(input: SimpleWorkflowModel.ListDomainsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.DomainInfos>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listDomains.rawValue,
                    target: target)

        let requestInput = ListDomainsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: The DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted.
     */
    public func listDomainsSync(input: SimpleWorkflowModel.ListDomainsInput) throws -> SimpleWorkflowModel.DomainInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listDomains.rawValue,
                    target: target)

        let requestInput = ListDomainsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
         - completion: The WorkflowExecutionInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowExecutionInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutionsAsync(input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowExecutionInfos>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listOpenWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = ListOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: The WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutionsSync(input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listOpenWorkflowExecutions.rawValue,
                    target: target)

        let requestInput = ListOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListWorkflowTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
         - completion: The WorkflowTypeInfos object or an error will be passed to this 
           callback when the operation is complete. The WorkflowTypeInfos
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypesAsync(input: SimpleWorkflowModel.ListWorkflowTypesInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.WorkflowTypeInfos>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listWorkflowTypes.rawValue,
                    target: target)

        let requestInput = ListWorkflowTypesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListWorkflowTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: The WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypesSync(input: SimpleWorkflowModel.ListWorkflowTypesInput) throws -> SimpleWorkflowModel.WorkflowTypeInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listWorkflowTypes.rawValue,
                    target: target)

        let requestInput = ListWorkflowTypesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PollForActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
         - completion: The ActivityTask object or an error will be passed to this 
           callback when the operation is complete. The ActivityTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTaskAsync(input: SimpleWorkflowModel.PollForActivityTaskInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTask>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForActivityTask.rawValue,
                    target: target)

        let requestInput = PollForActivityTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PollForActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: The ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTaskSync(input: SimpleWorkflowModel.PollForActivityTaskInput) throws -> SimpleWorkflowModel.ActivityTask {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForActivityTask.rawValue,
                    target: target)

        let requestInput = PollForActivityTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PollForDecisionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
         - completion: The DecisionTask object or an error will be passed to this 
           callback when the operation is complete. The DecisionTask
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTaskAsync(input: SimpleWorkflowModel.PollForDecisionTaskInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.DecisionTask>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForDecisionTask.rawValue,
                    target: target)

        let requestInput = PollForDecisionTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PollForDecisionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: The DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTaskSync(input: SimpleWorkflowModel.PollForDecisionTaskInput) throws -> SimpleWorkflowModel.DecisionTask {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForDecisionTask.rawValue,
                    target: target)

        let requestInput = PollForDecisionTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
         - completion: The ActivityTaskStatus object or an error will be passed to this 
           callback when the operation is complete. The ActivityTaskStatus
           object will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeatAsync(input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.ActivityTaskStatus>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.recordActivityTaskHeartbeat.rawValue,
                    target: target)

        let requestInput = RecordActivityTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: The ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeatSync(input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) throws -> SimpleWorkflowModel.ActivityTaskStatus {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.recordActivityTaskHeartbeat.rawValue,
                    target: target)

        let requestInput = RecordActivityTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeAsync(input: SimpleWorkflowModel.RegisterActivityTypeInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerActivityType.rawValue,
                    target: target)

        let requestInput = RegisterActivityTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeSync(input: SimpleWorkflowModel.RegisterActivityTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerActivityType.rawValue,
                    target: target)

        let requestInput = RegisterActivityTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted.
     */
    public func registerDomainAsync(input: SimpleWorkflowModel.RegisterDomainInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerDomain.rawValue,
                    target: target)

        let requestInput = RegisterDomainOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted.
     */
    public func registerDomainSync(input: SimpleWorkflowModel.RegisterDomainInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerDomain.rawValue,
                    target: target)

        let requestInput = RegisterDomainOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeAsync(input: SimpleWorkflowModel.RegisterWorkflowTypeInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerWorkflowType.rawValue,
                    target: target)

        let requestInput = RegisterWorkflowTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeSync(input: SimpleWorkflowModel.RegisterWorkflowTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerWorkflowType.rawValue,
                    target: target)

        let requestInput = RegisterWorkflowTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionAsync(input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.requestCancelWorkflowExecution.rawValue,
                    target: target)

        let requestInput = RequestCancelWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionSync(input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.requestCancelWorkflowExecution.rawValue,
                    target: target)

        let requestInput = RequestCancelWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledAsync(input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCanceled.rawValue,
                    target: target)

        let requestInput = RespondActivityTaskCanceledOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledSync(input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCanceled.rawValue,
                    target: target)

        let requestInput = RespondActivityTaskCanceledOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedAsync(input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCompleted.rawValue,
                    target: target)

        let requestInput = RespondActivityTaskCompletedOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedSync(input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCompleted.rawValue,
                    target: target)

        let requestInput = RespondActivityTaskCompletedOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedAsync(input: SimpleWorkflowModel.RespondActivityTaskFailedInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskFailed.rawValue,
                    target: target)

        let requestInput = RespondActivityTaskFailedOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedSync(input: SimpleWorkflowModel.RespondActivityTaskFailedInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskFailed.rawValue,
                    target: target)

        let requestInput = RespondActivityTaskFailedOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedAsync(input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondDecisionTaskCompleted.rawValue,
                    target: target)

        let requestInput = RespondDecisionTaskCompletedOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedSync(input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondDecisionTaskCompleted.rawValue,
                    target: target)

        let requestInput = RespondDecisionTaskCompletedOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SignalWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionAsync(input: SimpleWorkflowModel.SignalWorkflowExecutionInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.signalWorkflowExecution.rawValue,
                    target: target)

        let requestInput = SignalWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionSync(input: SimpleWorkflowModel.SignalWorkflowExecutionInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.signalWorkflowExecution.rawValue,
                    target: target)

        let requestInput = SignalWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
         - completion: The Run object or an error will be passed to this 
           callback when the operation is complete. The Run
           object will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecutionAsync(input: SimpleWorkflowModel.StartWorkflowExecutionInput, completion: @escaping (HTTPResult<SimpleWorkflowModel.Run>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.startWorkflowExecution.rawValue,
                    target: target)

        let requestInput = StartWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: The Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecutionSync(input: SimpleWorkflowModel.StartWorkflowExecutionInput) throws -> SimpleWorkflowModel.Run {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.startWorkflowExecution.rawValue,
                    target: target)

        let requestInput = StartWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionAsync(input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.terminateWorkflowExecution.rawValue,
                    target: target)

        let requestInput = TerminateWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionSync(input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.terminateWorkflowExecution.rawValue,
                    target: target)

        let requestInput = TerminateWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
