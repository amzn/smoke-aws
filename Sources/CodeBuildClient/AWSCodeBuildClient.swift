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
// AWSCodeBuildClient.swift
// CodeBuildClient
//

import Foundation
import CodeBuildModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum CodeBuildClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension CodeBuildError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> CodeBuildError {
        return error.asUnrecognizedCodeBuildError()
    }
}

/**
 AWS Client for the CodeBuild service.
 */
public struct AWSCodeBuildClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: CodeBuildClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: CodeBuildOperationsReporting
    let invocationsReporting: CodeBuildInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "codebuild",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "CodeBuild_20161006",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CodeBuildModelOperations>
                    = SmokeAWSClientReportingConfiguration<CodeBuildModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<CodeBuildError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = CodeBuildOperationsReporting(clientName: "AWSCodeBuildClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = CodeBuildInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: CodeBuildOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = CodeBuildInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        if self.ownsHttpClients {
            try httpClient.close()
        }
    }

    /**
     Invokes the BatchDeleteBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDeleteBuildsInput object being passed to this operation.
         - completion: The BatchDeleteBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchDeleteBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchDeleteBuildsAsync(
            input: CodeBuildModel.BatchDeleteBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchDeleteBuildsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchDeleteBuilds.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDeleteBuilds,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchDeleteBuildsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchDeleteBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDeleteBuildsInput object being passed to this operation.
     - Returns: The BatchDeleteBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchDeleteBuildsSync(
            input: CodeBuildModel.BatchDeleteBuildsInput) throws -> CodeBuildModel.BatchDeleteBuildsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchDeleteBuilds.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDeleteBuilds,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchDeleteBuildsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchGetBuildBatches operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetBuildBatchesInput object being passed to this operation.
         - completion: The BatchGetBuildBatchesOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetBuildBatchesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetBuildBatchesAsync(
            input: CodeBuildModel.BatchGetBuildBatchesInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetBuildBatchesOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetBuildBatches.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetBuildBatches,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetBuildBatchesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchGetBuildBatches operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetBuildBatchesInput object being passed to this operation.
     - Returns: The BatchGetBuildBatchesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetBuildBatchesSync(
            input: CodeBuildModel.BatchGetBuildBatchesInput) throws -> CodeBuildModel.BatchGetBuildBatchesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetBuildBatches.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetBuildBatches,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetBuildBatchesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchGetBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetBuildsInput object being passed to this operation.
         - completion: The BatchGetBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetBuildsAsync(
            input: CodeBuildModel.BatchGetBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetBuildsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetBuilds.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetBuilds,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetBuildsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchGetBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetBuildsInput object being passed to this operation.
     - Returns: The BatchGetBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetBuildsSync(
            input: CodeBuildModel.BatchGetBuildsInput) throws -> CodeBuildModel.BatchGetBuildsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetBuilds.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetBuilds,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetBuildsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchGetProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetProjectsInput object being passed to this operation.
         - completion: The BatchGetProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetProjectsAsync(
            input: CodeBuildModel.BatchGetProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetProjectsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetProjects.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetProjects,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetProjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchGetProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetProjectsInput object being passed to this operation.
     - Returns: The BatchGetProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetProjectsSync(
            input: CodeBuildModel.BatchGetProjectsInput) throws -> CodeBuildModel.BatchGetProjectsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetProjects.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetProjects,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetProjectsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchGetReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetReportGroupsInput object being passed to this operation.
         - completion: The BatchGetReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetReportGroupsAsync(
            input: CodeBuildModel.BatchGetReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetReportGroupsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetReportGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetReportGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetReportGroupsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchGetReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetReportGroupsInput object being passed to this operation.
     - Returns: The BatchGetReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetReportGroupsSync(
            input: CodeBuildModel.BatchGetReportGroupsInput) throws -> CodeBuildModel.BatchGetReportGroupsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetReportGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetReportGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetReportGroupsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchGetReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetReportsInput object being passed to this operation.
         - completion: The BatchGetReportsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetReportsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetReportsAsync(
            input: CodeBuildModel.BatchGetReportsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetReportsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetReports.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetReports,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetReportsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchGetReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetReportsInput object being passed to this operation.
     - Returns: The BatchGetReportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetReportsSync(
            input: CodeBuildModel.BatchGetReportsInput) throws -> CodeBuildModel.BatchGetReportsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.batchGetReports.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetReports,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetReportsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateProjectInput object being passed to this operation.
         - completion: The CreateProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createProjectAsync(
            input: CodeBuildModel.CreateProjectInput, 
            completion: @escaping (Result<CodeBuildModel.CreateProjectOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.createProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateProjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateProjectInput object being passed to this operation.
     - Returns: The CreateProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createProjectSync(
            input: CodeBuildModel.CreateProjectInput) throws -> CodeBuildModel.CreateProjectOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.createProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateProjectOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReportGroupInput object being passed to this operation.
         - completion: The CreateReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createReportGroupAsync(
            input: CodeBuildModel.CreateReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.CreateReportGroupOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.createReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateReportGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReportGroupInput object being passed to this operation.
     - Returns: The CreateReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createReportGroupSync(
            input: CodeBuildModel.CreateReportGroupInput) throws -> CodeBuildModel.CreateReportGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.createReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateReportGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateWebhookInput object being passed to this operation.
         - completion: The CreateWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceAlreadyExists, resourceNotFound.
     */
    public func createWebhookAsync(
            input: CodeBuildModel.CreateWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.CreateWebhookOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.createWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateWebhookOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateWebhookInput object being passed to this operation.
     - Returns: The CreateWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceAlreadyExists, resourceNotFound.
     */
    public func createWebhookSync(
            input: CodeBuildModel.CreateWebhookInput) throws -> CodeBuildModel.CreateWebhookOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.createWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateWebhookOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBuildBatchInput object being passed to this operation.
         - completion: The DeleteBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteBuildBatchAsync(
            input: CodeBuildModel.DeleteBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteBuildBatchOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteBuildBatchOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBuildBatchInput object being passed to this operation.
     - Returns: The DeleteBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteBuildBatchSync(
            input: CodeBuildModel.DeleteBuildBatchInput) throws -> CodeBuildModel.DeleteBuildBatchOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteBuildBatchOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteProjectInput object being passed to this operation.
         - completion: The DeleteProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteProjectAsync(
            input: CodeBuildModel.DeleteProjectInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteProjectOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteProjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteProjectInput object being passed to this operation.
     - Returns: The DeleteProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteProjectSync(
            input: CodeBuildModel.DeleteProjectInput) throws -> CodeBuildModel.DeleteProjectOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteProjectOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteReport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteReportInput object being passed to this operation.
         - completion: The DeleteReportOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteReportOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteReportAsync(
            input: CodeBuildModel.DeleteReportInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteReportOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteReport.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteReport,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteReportOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteReportInput object being passed to this operation.
     - Returns: The DeleteReportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteReportSync(
            input: CodeBuildModel.DeleteReportInput) throws -> CodeBuildModel.DeleteReportOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteReport.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteReport,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteReportOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteReportGroupInput object being passed to this operation.
         - completion: The DeleteReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteReportGroupAsync(
            input: CodeBuildModel.DeleteReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteReportGroupOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteReportGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteReportGroupInput object being passed to this operation.
     - Returns: The DeleteReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteReportGroupSync(
            input: CodeBuildModel.DeleteReportGroupInput) throws -> CodeBuildModel.DeleteReportGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteReportGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteResourcePolicyInput object being passed to this operation.
         - completion: The DeleteResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteResourcePolicyAsync(
            input: CodeBuildModel.DeleteResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteResourcePolicyOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteResourcePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteResourcePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteResourcePolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteResourcePolicyInput object being passed to this operation.
     - Returns: The DeleteResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteResourcePolicySync(
            input: CodeBuildModel.DeleteResourcePolicyInput) throws -> CodeBuildModel.DeleteResourcePolicyOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteResourcePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteResourcePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteResourcePolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSourceCredentialsInput object being passed to this operation.
         - completion: The DeleteSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func deleteSourceCredentialsAsync(
            input: CodeBuildModel.DeleteSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteSourceCredentialsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteSourceCredentials.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteSourceCredentials,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteSourceCredentialsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSourceCredentialsInput object being passed to this operation.
     - Returns: The DeleteSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func deleteSourceCredentialsSync(
            input: CodeBuildModel.DeleteSourceCredentialsInput) throws -> CodeBuildModel.DeleteSourceCredentialsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteSourceCredentials.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteSourceCredentials,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteSourceCredentialsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
         - completion: The DeleteWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func deleteWebhookAsync(
            input: CodeBuildModel.DeleteWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteWebhookOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteWebhookOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func deleteWebhookSync(
            input: CodeBuildModel.DeleteWebhookInput) throws -> CodeBuildModel.DeleteWebhookOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.deleteWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteWebhookOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeCodeCoverages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCodeCoveragesInput object being passed to this operation.
         - completion: The DescribeCodeCoveragesOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeCodeCoveragesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func describeCodeCoveragesAsync(
            input: CodeBuildModel.DescribeCodeCoveragesInput, 
            completion: @escaping (Result<CodeBuildModel.DescribeCodeCoveragesOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.describeCodeCoverages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeCodeCoverages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeCodeCoveragesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeCodeCoverages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCodeCoveragesInput object being passed to this operation.
     - Returns: The DescribeCodeCoveragesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func describeCodeCoveragesSync(
            input: CodeBuildModel.DescribeCodeCoveragesInput) throws -> CodeBuildModel.DescribeCodeCoveragesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.describeCodeCoverages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeCodeCoverages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeCodeCoveragesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeTestCases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTestCasesInput object being passed to this operation.
         - completion: The DescribeTestCasesOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTestCasesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func describeTestCasesAsync(
            input: CodeBuildModel.DescribeTestCasesInput, 
            completion: @escaping (Result<CodeBuildModel.DescribeTestCasesOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.describeTestCases.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTestCases,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTestCasesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeTestCases operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTestCasesInput object being passed to this operation.
     - Returns: The DescribeTestCasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func describeTestCasesSync(
            input: CodeBuildModel.DescribeTestCasesInput) throws -> CodeBuildModel.DescribeTestCasesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.describeTestCases.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTestCases,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTestCasesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetReportGroupTrend operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReportGroupTrendInput object being passed to this operation.
         - completion: The GetReportGroupTrendOutput object or an error will be passed to this 
           callback when the operation is complete. The GetReportGroupTrendOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func getReportGroupTrendAsync(
            input: CodeBuildModel.GetReportGroupTrendInput, 
            completion: @escaping (Result<CodeBuildModel.GetReportGroupTrendOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.getReportGroupTrend.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getReportGroupTrend,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetReportGroupTrendOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetReportGroupTrend operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReportGroupTrendInput object being passed to this operation.
     - Returns: The GetReportGroupTrendOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func getReportGroupTrendSync(
            input: CodeBuildModel.GetReportGroupTrendInput) throws -> CodeBuildModel.GetReportGroupTrendOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.getReportGroupTrend.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getReportGroupTrend,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetReportGroupTrendOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetResourcePolicyInput object being passed to this operation.
         - completion: The GetResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func getResourcePolicyAsync(
            input: CodeBuildModel.GetResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.GetResourcePolicyOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.getResourcePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getResourcePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetResourcePolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetResourcePolicyInput object being passed to this operation.
     - Returns: The GetResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func getResourcePolicySync(
            input: CodeBuildModel.GetResourcePolicyInput) throws -> CodeBuildModel.GetResourcePolicyOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.getResourcePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getResourcePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetResourcePolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ImportSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSourceCredentialsInput object being passed to this operation.
         - completion: The ImportSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The ImportSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func importSourceCredentialsAsync(
            input: CodeBuildModel.ImportSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.ImportSourceCredentialsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.importSourceCredentials.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.importSourceCredentials,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ImportSourceCredentialsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ImportSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSourceCredentialsInput object being passed to this operation.
     - Returns: The ImportSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func importSourceCredentialsSync(
            input: CodeBuildModel.ImportSourceCredentialsInput) throws -> CodeBuildModel.ImportSourceCredentialsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.importSourceCredentials.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.importSourceCredentials,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ImportSourceCredentialsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the InvalidateProjectCache operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated InvalidateProjectCacheInput object being passed to this operation.
         - completion: The InvalidateProjectCacheOutput object or an error will be passed to this 
           callback when the operation is complete. The InvalidateProjectCacheOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func invalidateProjectCacheAsync(
            input: CodeBuildModel.InvalidateProjectCacheInput, 
            completion: @escaping (Result<CodeBuildModel.InvalidateProjectCacheOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.invalidateProjectCache.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.invalidateProjectCache,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = InvalidateProjectCacheOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the InvalidateProjectCache operation waiting for the response before returning.

     - Parameters:
         - input: The validated InvalidateProjectCacheInput object being passed to this operation.
     - Returns: The InvalidateProjectCacheOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func invalidateProjectCacheSync(
            input: CodeBuildModel.InvalidateProjectCacheInput) throws -> CodeBuildModel.InvalidateProjectCacheOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.invalidateProjectCache.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.invalidateProjectCache,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = InvalidateProjectCacheOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListBuildBatches operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildBatchesInput object being passed to this operation.
         - completion: The ListBuildBatchesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildBatchesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listBuildBatchesAsync(
            input: CodeBuildModel.ListBuildBatchesInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildBatchesOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuildBatches.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuildBatches,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildBatchesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuildBatches operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildBatchesInput object being passed to this operation.
     - Returns: The ListBuildBatchesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listBuildBatchesSync(
            input: CodeBuildModel.ListBuildBatchesInput) throws -> CodeBuildModel.ListBuildBatchesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuildBatches.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuildBatches,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildBatchesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListBuildBatchesForProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildBatchesForProjectInput object being passed to this operation.
         - completion: The ListBuildBatchesForProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildBatchesForProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func listBuildBatchesForProjectAsync(
            input: CodeBuildModel.ListBuildBatchesForProjectInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildBatchesForProjectOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuildBatchesForProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuildBatchesForProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildBatchesForProjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuildBatchesForProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildBatchesForProjectInput object being passed to this operation.
     - Returns: The ListBuildBatchesForProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func listBuildBatchesForProjectSync(
            input: CodeBuildModel.ListBuildBatchesForProjectInput) throws -> CodeBuildModel.ListBuildBatchesForProjectOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuildBatchesForProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuildBatchesForProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildBatchesForProjectOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildsInput object being passed to this operation.
         - completion: The ListBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listBuildsAsync(
            input: CodeBuildModel.ListBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuilds.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuilds,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildsInput object being passed to this operation.
     - Returns: The ListBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listBuildsSync(
            input: CodeBuildModel.ListBuildsInput) throws -> CodeBuildModel.ListBuildsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuilds.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuilds,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListBuildsForProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildsForProjectInput object being passed to this operation.
         - completion: The ListBuildsForProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildsForProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func listBuildsForProjectAsync(
            input: CodeBuildModel.ListBuildsForProjectInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildsForProjectOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuildsForProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuildsForProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildsForProjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListBuildsForProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildsForProjectInput object being passed to this operation.
     - Returns: The ListBuildsForProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func listBuildsForProjectSync(
            input: CodeBuildModel.ListBuildsForProjectInput) throws -> CodeBuildModel.ListBuildsForProjectOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listBuildsForProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listBuildsForProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListBuildsForProjectOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListCuratedEnvironmentImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCuratedEnvironmentImagesInput object being passed to this operation.
         - completion: The ListCuratedEnvironmentImagesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListCuratedEnvironmentImagesOutput
           object will be validated before being returned to caller.
     */
    public func listCuratedEnvironmentImagesAsync(
            input: CodeBuildModel.ListCuratedEnvironmentImagesInput, 
            completion: @escaping (Result<CodeBuildModel.ListCuratedEnvironmentImagesOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listCuratedEnvironmentImages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listCuratedEnvironmentImages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListCuratedEnvironmentImagesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListCuratedEnvironmentImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCuratedEnvironmentImagesInput object being passed to this operation.
     - Returns: The ListCuratedEnvironmentImagesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listCuratedEnvironmentImagesSync(
            input: CodeBuildModel.ListCuratedEnvironmentImagesInput) throws -> CodeBuildModel.ListCuratedEnvironmentImagesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listCuratedEnvironmentImages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listCuratedEnvironmentImages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListCuratedEnvironmentImagesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListProjectsInput object being passed to this operation.
         - completion: The ListProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listProjectsAsync(
            input: CodeBuildModel.ListProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.ListProjectsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listProjects.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listProjects,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListProjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListProjectsInput object being passed to this operation.
     - Returns: The ListProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listProjectsSync(
            input: CodeBuildModel.ListProjectsInput) throws -> CodeBuildModel.ListProjectsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listProjects.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listProjects,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListProjectsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportGroupsInput object being passed to this operation.
         - completion: The ListReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listReportGroupsAsync(
            input: CodeBuildModel.ListReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportGroupsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listReportGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listReportGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListReportGroupsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportGroupsInput object being passed to this operation.
     - Returns: The ListReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listReportGroupsSync(
            input: CodeBuildModel.ListReportGroupsInput) throws -> CodeBuildModel.ListReportGroupsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listReportGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listReportGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListReportGroupsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportsInput object being passed to this operation.
         - completion: The ListReportsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listReportsAsync(
            input: CodeBuildModel.ListReportsInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listReports.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listReports,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListReportsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportsInput object being passed to this operation.
     - Returns: The ListReportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listReportsSync(
            input: CodeBuildModel.ListReportsInput) throws -> CodeBuildModel.ListReportsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listReports.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listReports,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListReportsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListReportsForReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportsForReportGroupInput object being passed to this operation.
         - completion: The ListReportsForReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportsForReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func listReportsForReportGroupAsync(
            input: CodeBuildModel.ListReportsForReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportsForReportGroupOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listReportsForReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listReportsForReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListReportsForReportGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListReportsForReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportsForReportGroupInput object being passed to this operation.
     - Returns: The ListReportsForReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func listReportsForReportGroupSync(
            input: CodeBuildModel.ListReportsForReportGroupInput) throws -> CodeBuildModel.ListReportsForReportGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listReportsForReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listReportsForReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListReportsForReportGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListSharedProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSharedProjectsInput object being passed to this operation.
         - completion: The ListSharedProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSharedProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listSharedProjectsAsync(
            input: CodeBuildModel.ListSharedProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSharedProjectsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listSharedProjects.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSharedProjects,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSharedProjectsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSharedProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSharedProjectsInput object being passed to this operation.
     - Returns: The ListSharedProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listSharedProjectsSync(
            input: CodeBuildModel.ListSharedProjectsInput) throws -> CodeBuildModel.ListSharedProjectsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listSharedProjects.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSharedProjects,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSharedProjectsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListSharedReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSharedReportGroupsInput object being passed to this operation.
         - completion: The ListSharedReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSharedReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listSharedReportGroupsAsync(
            input: CodeBuildModel.ListSharedReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSharedReportGroupsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listSharedReportGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSharedReportGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSharedReportGroupsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSharedReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSharedReportGroupsInput object being passed to this operation.
     - Returns: The ListSharedReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listSharedReportGroupsSync(
            input: CodeBuildModel.ListSharedReportGroupsInput) throws -> CodeBuildModel.ListSharedReportGroupsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listSharedReportGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSharedReportGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSharedReportGroupsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSourceCredentialsInput object being passed to this operation.
         - completion: The ListSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listSourceCredentialsAsync(
            input: CodeBuildModel.ListSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSourceCredentialsOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listSourceCredentials.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSourceCredentials,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSourceCredentialsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSourceCredentialsInput object being passed to this operation.
     - Returns: The ListSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listSourceCredentialsSync(
            input: CodeBuildModel.ListSourceCredentialsInput) throws -> CodeBuildModel.ListSourceCredentialsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.listSourceCredentials.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSourceCredentials,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSourceCredentialsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutResourcePolicyInput object being passed to this operation.
         - completion: The PutResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The PutResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func putResourcePolicyAsync(
            input: CodeBuildModel.PutResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.PutResourcePolicyOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.putResourcePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putResourcePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutResourcePolicyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutResourcePolicyInput object being passed to this operation.
     - Returns: The PutResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func putResourcePolicySync(
            input: CodeBuildModel.PutResourcePolicyInput) throws -> CodeBuildModel.PutResourcePolicyOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.putResourcePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putResourcePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutResourcePolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RetryBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryBuildInput object being passed to this operation.
         - completion: The RetryBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func retryBuildAsync(
            input: CodeBuildModel.RetryBuildInput, 
            completion: @escaping (Result<CodeBuildModel.RetryBuildOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.retryBuild.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.retryBuild,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RetryBuildOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RetryBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryBuildInput object being passed to this operation.
     - Returns: The RetryBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func retryBuildSync(
            input: CodeBuildModel.RetryBuildInput) throws -> CodeBuildModel.RetryBuildOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.retryBuild.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.retryBuild,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RetryBuildOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RetryBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryBuildBatchInput object being passed to this operation.
         - completion: The RetryBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func retryBuildBatchAsync(
            input: CodeBuildModel.RetryBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.RetryBuildBatchOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.retryBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.retryBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RetryBuildBatchOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RetryBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryBuildBatchInput object being passed to this operation.
     - Returns: The RetryBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func retryBuildBatchSync(
            input: CodeBuildModel.RetryBuildBatchInput) throws -> CodeBuildModel.RetryBuildBatchOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.retryBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.retryBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RetryBuildBatchOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartBuildInput object being passed to this operation.
         - completion: The StartBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The StartBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func startBuildAsync(
            input: CodeBuildModel.StartBuildInput, 
            completion: @escaping (Result<CodeBuildModel.StartBuildOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.startBuild.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startBuild,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartBuildOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartBuildInput object being passed to this operation.
     - Returns: The StartBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func startBuildSync(
            input: CodeBuildModel.StartBuildInput) throws -> CodeBuildModel.StartBuildOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.startBuild.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startBuild,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartBuildOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartBuildBatchInput object being passed to this operation.
         - completion: The StartBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The StartBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func startBuildBatchAsync(
            input: CodeBuildModel.StartBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.StartBuildBatchOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.startBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartBuildBatchOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartBuildBatchInput object being passed to this operation.
     - Returns: The StartBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func startBuildBatchSync(
            input: CodeBuildModel.StartBuildBatchInput) throws -> CodeBuildModel.StartBuildBatchOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.startBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartBuildBatchOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopBuildInput object being passed to this operation.
         - completion: The StopBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The StopBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func stopBuildAsync(
            input: CodeBuildModel.StopBuildInput, 
            completion: @escaping (Result<CodeBuildModel.StopBuildOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.stopBuild.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopBuild,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopBuildOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopBuildInput object being passed to this operation.
     - Returns: The StopBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func stopBuildSync(
            input: CodeBuildModel.StopBuildInput) throws -> CodeBuildModel.StopBuildOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.stopBuild.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopBuild,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopBuildOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopBuildBatchInput object being passed to this operation.
         - completion: The StopBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The StopBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func stopBuildBatchAsync(
            input: CodeBuildModel.StopBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.StopBuildBatchOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.stopBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopBuildBatchOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopBuildBatchInput object being passed to this operation.
     - Returns: The StopBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func stopBuildBatchSync(
            input: CodeBuildModel.StopBuildBatchInput) throws -> CodeBuildModel.StopBuildBatchOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.stopBuildBatch.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopBuildBatch,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopBuildBatchOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateProjectInput object being passed to this operation.
         - completion: The UpdateProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func updateProjectAsync(
            input: CodeBuildModel.UpdateProjectInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateProjectOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.updateProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateProjectOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateProjectInput object being passed to this operation.
     - Returns: The UpdateProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func updateProjectSync(
            input: CodeBuildModel.UpdateProjectInput) throws -> CodeBuildModel.UpdateProjectOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.updateProject.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateProject,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateProjectOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateReportGroupInput object being passed to this operation.
         - completion: The UpdateReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func updateReportGroupAsync(
            input: CodeBuildModel.UpdateReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateReportGroupOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.updateReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateReportGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateReportGroupInput object being passed to this operation.
     - Returns: The UpdateReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func updateReportGroupSync(
            input: CodeBuildModel.UpdateReportGroupInput) throws -> CodeBuildModel.UpdateReportGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.updateReportGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateReportGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateReportGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateWebhookInput object being passed to this operation.
         - completion: The UpdateWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func updateWebhookAsync(
            input: CodeBuildModel.UpdateWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateWebhookOutput, CodeBuildError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.updateWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateWebhookOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateWebhookInput object being passed to this operation.
     - Returns: The UpdateWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func updateWebhookSync(
            input: CodeBuildModel.UpdateWebhookInput) throws -> CodeBuildModel.UpdateWebhookOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodeBuildModelOperations.updateWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateWebhookOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodeBuildError = error.asTypedError()
            throw typedError
        }
    }
}
