// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum SimpleWorkflowClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

internal extension SimpleWorkflowError {
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
public struct AWSSimpleWorkflowClient<InvocationReportingType: SmokeAWSInvocationReporting>: SimpleWorkflowClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: SimpleWorkflowOperationsReporting
    let invocationsReporting: SimpleWorkflowInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "swf",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "SimpleWorkflowService",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>() ) {
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
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = SimpleWorkflowOperationsReporting(clientName: "AWSSimpleWorkflowClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SimpleWorkflowInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (Swift.Error) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SimpleWorkflowOperationsReporting) {
        self.httpClient = httpClient
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SimpleWorkflowInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
    public func countClosedWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countClosedWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countClosedWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func countClosedWorkflowExecutionsSync(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countClosedWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countClosedWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func countOpenWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionCount, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countOpenWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countOpenWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowExecutionCount, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func countOpenWorkflowExecutionsSync(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countOpenWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countOpenWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func countPendingActivityTasksAsync(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput, 
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingActivityTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countPendingActivityTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountPendingActivityTasksOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func countPendingActivityTasksSync(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingActivityTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countPendingActivityTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountPendingActivityTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func countPendingDecisionTasksAsync(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput, 
            completion: @escaping (Result<SimpleWorkflowModel.PendingTaskCount, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingDecisionTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countPendingDecisionTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountPendingDecisionTasksOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.PendingTaskCount, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func countPendingDecisionTasksSync(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput) throws -> SimpleWorkflowModel.PendingTaskCount {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.countPendingDecisionTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.countPendingDecisionTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CountPendingDecisionTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func deprecateActivityTypeAsync(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deprecateActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeprecateActivityTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityTypeSync(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deprecateActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeprecateActivityTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func deprecateDomainAsync(
            input: SimpleWorkflowModel.DeprecateDomainInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deprecateDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeprecateDomainOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
     - Throws: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomainSync(
            input: SimpleWorkflowModel.DeprecateDomainInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deprecateDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeprecateDomainOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func deprecateWorkflowTypeAsync(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deprecateWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowTypeSync(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.deprecateWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deprecateWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func describeActivityTypeAsync(
            input: SimpleWorkflowModel.DescribeActivityTypeInput, 
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeDetail, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeActivityTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.ActivityTypeDetail, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func describeActivityTypeSync(
            input: SimpleWorkflowModel.DescribeActivityTypeInput) throws -> SimpleWorkflowModel.ActivityTypeDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeActivityTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func describeDomainAsync(
            input: SimpleWorkflowModel.DescribeDomainInput, 
            completion: @escaping (Result<SimpleWorkflowModel.DomainDetail, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeDomainOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.DomainDetail, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func describeDomainSync(
            input: SimpleWorkflowModel.DescribeDomainInput) throws -> SimpleWorkflowModel.DomainDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeDomainOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func describeWorkflowExecutionAsync(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionDetail, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowExecutionDetail, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func describeWorkflowExecutionSync(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) throws -> SimpleWorkflowModel.WorkflowExecutionDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func describeWorkflowTypeAsync(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeDetail, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeWorkflowTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowTypeDetail, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func describeWorkflowTypeSync(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput) throws -> SimpleWorkflowModel.WorkflowTypeDetail {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.describeWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeWorkflowTypeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func getWorkflowExecutionHistoryAsync(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput, 
            completion: @escaping (Result<SimpleWorkflowModel.History, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.getWorkflowExecutionHistory.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getWorkflowExecutionHistory,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetWorkflowExecutionHistoryOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.History, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func getWorkflowExecutionHistorySync(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) throws -> SimpleWorkflowModel.History {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.getWorkflowExecutionHistory.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getWorkflowExecutionHistory,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetWorkflowExecutionHistoryOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func listActivityTypesAsync(
            input: SimpleWorkflowModel.ListActivityTypesInput, 
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTypeInfos, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listActivityTypes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActivityTypes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActivityTypesOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.ActivityTypeInfos, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func listActivityTypesSync(
            input: SimpleWorkflowModel.ListActivityTypesInput) throws -> SimpleWorkflowModel.ActivityTypeInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listActivityTypes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActivityTypes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActivityTypesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func listClosedWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listClosedWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listClosedWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func listClosedWorkflowExecutionsSync(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listClosedWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listClosedWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func listDomainsAsync(
            input: SimpleWorkflowModel.ListDomainsInput, 
            completion: @escaping (Result<SimpleWorkflowModel.DomainInfos, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listDomains.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDomains,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListDomainsOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.DomainInfos, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func listDomainsSync(
            input: SimpleWorkflowModel.ListDomainsInput) throws -> SimpleWorkflowModel.DomainInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listDomains.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDomains,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListDomainsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func listOpenWorkflowExecutionsAsync(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowExecutionInfos, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listOpenWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listOpenWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowExecutionInfos, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func listOpenWorkflowExecutionsSync(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) throws -> SimpleWorkflowModel.WorkflowExecutionInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listOpenWorkflowExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listOpenWorkflowExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func listTagsForResourceAsync(
            input: SimpleWorkflowModel.ListTagsForResourceInput, 
            completion: @escaping (Result<SimpleWorkflowModel.ListTagsForResourceOutput, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.ListTagsForResourceOutput, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func listTagsForResourceSync(
            input: SimpleWorkflowModel.ListTagsForResourceInput) throws -> SimpleWorkflowModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func listWorkflowTypesAsync(
            input: SimpleWorkflowModel.ListWorkflowTypesInput, 
            completion: @escaping (Result<SimpleWorkflowModel.WorkflowTypeInfos, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listWorkflowTypes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listWorkflowTypes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListWorkflowTypesOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.WorkflowTypeInfos, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func listWorkflowTypesSync(
            input: SimpleWorkflowModel.ListWorkflowTypesInput) throws -> SimpleWorkflowModel.WorkflowTypeInfos {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.listWorkflowTypes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listWorkflowTypes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListWorkflowTypesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func pollForActivityTaskAsync(
            input: SimpleWorkflowModel.PollForActivityTaskInput, 
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTask, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForActivityTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForActivityTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForActivityTaskOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.ActivityTask, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func pollForActivityTaskSync(
            input: SimpleWorkflowModel.PollForActivityTaskInput) throws -> SimpleWorkflowModel.ActivityTask {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForActivityTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForActivityTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForActivityTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func pollForDecisionTaskAsync(
            input: SimpleWorkflowModel.PollForDecisionTaskInput, 
            completion: @escaping (Result<SimpleWorkflowModel.DecisionTask, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForDecisionTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForDecisionTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForDecisionTaskOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.DecisionTask, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func pollForDecisionTaskSync(
            input: SimpleWorkflowModel.PollForDecisionTaskInput) throws -> SimpleWorkflowModel.DecisionTask {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.pollForDecisionTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForDecisionTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForDecisionTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func recordActivityTaskHeartbeatAsync(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput, 
            completion: @escaping (Result<SimpleWorkflowModel.ActivityTaskStatus, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.recordActivityTaskHeartbeat.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.recordActivityTaskHeartbeat,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RecordActivityTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.ActivityTaskStatus, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func recordActivityTaskHeartbeatSync(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) throws -> SimpleWorkflowModel.ActivityTaskStatus {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.recordActivityTaskHeartbeat.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.recordActivityTaskHeartbeat,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RecordActivityTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func registerActivityTypeAsync(
            input: SimpleWorkflowModel.RegisterActivityTypeInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterActivityTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityTypeSync(
            input: SimpleWorkflowModel.RegisterActivityTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterActivityTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomainAsync(
            input: SimpleWorkflowModel.RegisterDomainInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterDomainOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomainSync(
            input: SimpleWorkflowModel.RegisterDomainInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterDomainOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func registerWorkflowTypeAsync(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterWorkflowTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowTypeSync(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.registerWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterWorkflowTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func requestCancelWorkflowExecutionAsync(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.requestCancelWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.requestCancelWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RequestCancelWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecutionSync(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.requestCancelWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.requestCancelWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RequestCancelWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func respondActivityTaskCanceledAsync(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCanceled.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondActivityTaskCanceled,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondActivityTaskCanceledOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskCanceled operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceledSync(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCanceled.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondActivityTaskCanceled,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondActivityTaskCanceledOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func respondActivityTaskCompletedAsync(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCompleted.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondActivityTaskCompleted,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondActivityTaskCompletedOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompletedSync(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskCompleted.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondActivityTaskCompleted,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondActivityTaskCompletedOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func respondActivityTaskFailedAsync(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskFailed.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondActivityTaskFailed,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondActivityTaskFailedOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondActivityTaskFailed operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailedSync(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondActivityTaskFailed.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondActivityTaskFailed,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondActivityTaskFailedOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func respondDecisionTaskCompletedAsync(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondDecisionTaskCompleted.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondDecisionTaskCompleted,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondDecisionTaskCompletedOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation waiting for the response before returning.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompletedSync(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.respondDecisionTaskCompleted.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.respondDecisionTaskCompleted,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RespondDecisionTaskCompletedOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func signalWorkflowExecutionAsync(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.signalWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.signalWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SignalWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SignalWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecutionSync(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.signalWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.signalWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SignalWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func startWorkflowExecutionAsync(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput, 
            completion: @escaping (Result<SimpleWorkflowModel.Run, SimpleWorkflowError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.startWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        func innerCompletion(result: Result<SimpleWorkflowModel.Run, HTTPClientError>) {
            switch result {
            case .success(let payload):
                completion(.success(payload))
            case .failure(let error):
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(.failure(typedError))
                } else {
                    completion(.failure(error.cause.asUnrecognizedSimpleWorkflowError()))
                }
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
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
    public func startWorkflowExecutionSync(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput) throws -> SimpleWorkflowModel.Run {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.startWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResourceAsync(
            input: SimpleWorkflowModel.TagResourceInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResourceSync(
            input: SimpleWorkflowModel.TagResourceInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
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
    public func terminateWorkflowExecutionAsync(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.terminateWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.terminateWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TerminateWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TerminateWorkflowExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
     - Throws: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecutionSync(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.terminateWorkflowExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.terminateWorkflowExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TerminateWorkflowExecutionOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UndeprecateActivityType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityTypeAsync(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.undeprecateActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.undeprecateActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UndeprecateActivityTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UndeprecateActivityType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityTypeSync(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.undeprecateActivityType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.undeprecateActivityType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UndeprecateActivityTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UndeprecateDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomainAsync(
            input: SimpleWorkflowModel.UndeprecateDomainInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.undeprecateDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.undeprecateDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UndeprecateDomainOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UndeprecateDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
     - Throws: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomainSync(
            input: SimpleWorkflowModel.UndeprecateDomainInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.undeprecateDomain.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.undeprecateDomain,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UndeprecateDomainOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowTypeAsync(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.undeprecateWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.undeprecateWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UndeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UndeprecateWorkflowType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
     - Throws: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowTypeSync(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.undeprecateWorkflowType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.undeprecateWorkflowType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UndeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResourceAsync(
            input: SimpleWorkflowModel.UntagResourceInput, 
            completion: @escaping (SimpleWorkflowError?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        func innerCompletion(error: HTTPClientError?) {
            if let error = error {
                if let typedError = error.cause as? SimpleWorkflowError {
                    completion(typedError)
                } else {
                    completion(error.cause.asUnrecognizedSimpleWorkflowError())
                }
            } else {
                completion(nil)
            }
        }
        
        _ = try httpClient.executeAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: innerCompletion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResourceSync(
            input: SimpleWorkflowModel.UntagResourceInput) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: SimpleWorkflowModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
