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
// AWSEventBridgeSchedulerClient.swift
// EventBridgeSchedulerClient
//

import Foundation
import EventBridgeSchedulerModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum EventBridgeSchedulerClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension EventBridgeSchedulerError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> EventBridgeSchedulerError {
        return error.asUnrecognizedEventBridgeSchedulerError()
    }
}

/**
 AWS Client for the EventBridgeScheduler service.
 */
public struct AWSEventBridgeSchedulerClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: EventBridgeSchedulerClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: EventBridgeSchedulerOperationsReporting
    let invocationsReporting: EventBridgeSchedulerInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "scheduler",
                contentType: String = "application/x-amz-rest-json-1.1",
                target: String? = nil,
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<EventBridgeSchedulerModelOperations>
                    = SmokeAWSClientReportingConfiguration<EventBridgeSchedulerModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<EventBridgeSchedulerError>(requiresTLS: useTLS,
            errorTypeHTTPHeader: "x-amzn-ErrorType")

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = EventBridgeSchedulerOperationsReporting(clientName: "AWSEventBridgeSchedulerClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = EventBridgeSchedulerInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: EventBridgeSchedulerOperationsReporting) {
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
        self.invocationsReporting = EventBridgeSchedulerInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func syncShutdown() throws {
        if self.ownsHttpClients {
            try self.httpClient.syncShutdown()
        }
    }

    // renamed `syncShutdown` to make it clearer this version of shutdown will block.
    @available(*, deprecated, renamed: "syncShutdown")
    public func close() throws {
        if self.ownsHttpClients {
            try self.httpClient.close()
        }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will return when shutdown is complete.
     */
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    public func shutdown() async throws {
        if self.ownsHttpClients {
            try await self.httpClient.shutdown()
        }
    }
    #endif

    /**
     Invokes the CreateSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
         - completion: The CreateScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleAsync(
            input: EventBridgeSchedulerModel.CreateScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.createSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateScheduleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedules/{Name}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleSync(
            input: EventBridgeSchedulerModel.CreateScheduleInput) throws -> EventBridgeSchedulerModel.CreateScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.createSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
         - completion: The CreateScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleGroupAsync(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.CreateScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.createScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateScheduleGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedule-groups/{Name}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleGroupSync(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput) throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.createScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateScheduleGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedule-groups/{Name}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
         - completion: The DeleteScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleAsync(
            input: EventBridgeSchedulerModel.DeleteScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.deleteSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteScheduleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedules/{Name}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleSync(
            input: EventBridgeSchedulerModel.DeleteScheduleInput) throws -> EventBridgeSchedulerModel.DeleteScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.deleteSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
         - completion: The DeleteScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleGroupAsync(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.DeleteScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.deleteScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteScheduleGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedule-groups/{Name}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleGroupSync(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.deleteScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteScheduleGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedule-groups/{Name}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
         - completion: The GetScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleAsync(
            input: EventBridgeSchedulerModel.GetScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.getSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetScheduleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedules/{Name}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleSync(
            input: EventBridgeSchedulerModel.GetScheduleInput) throws -> EventBridgeSchedulerModel.GetScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.getSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetScheduleGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
         - completion: The GetScheduleGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The GetScheduleGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleGroupAsync(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.GetScheduleGroupOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.getScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetScheduleGroupOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedule-groups/{Name}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetScheduleGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleGroupSync(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput) throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.getScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetScheduleGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedule-groups/{Name}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListScheduleGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
         - completion: The ListScheduleGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListScheduleGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, throttling, validation.
     */
    public func listScheduleGroupsAsync(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListScheduleGroupsOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listScheduleGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listScheduleGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListScheduleGroupsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedule-groups",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListScheduleGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    public func listScheduleGroupsSync(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput) throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listScheduleGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listScheduleGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListScheduleGroupsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedule-groups",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListSchedules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
         - completion: The ListSchedulesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSchedulesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func listSchedulesAsync(
            input: EventBridgeSchedulerModel.ListSchedulesInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListSchedulesOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listSchedules.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSchedules,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSchedulesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedules",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListSchedules operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listSchedulesSync(
            input: EventBridgeSchedulerModel.ListSchedulesInput) throws -> EventBridgeSchedulerModel.ListSchedulesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listSchedules.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSchedules,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSchedulesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedules",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResourceAsync(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.ListTagsForResourceOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/tags/{ResourceArn}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
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
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResourceSync(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput) throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResourceAsync(
            input: EventBridgeSchedulerModel.TagResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.TagResourceOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/tags/{ResourceArn}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResourceSync(
            input: EventBridgeSchedulerModel.TagResourceInput) throws -> EventBridgeSchedulerModel.TagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResourceAsync(
            input: EventBridgeSchedulerModel.UntagResourceInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.UntagResourceOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/tags/{ResourceArn}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResourceSync(
            input: EventBridgeSchedulerModel.UntagResourceInput) throws -> EventBridgeSchedulerModel.UntagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateSchedule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
         - completion: The UpdateScheduleOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateScheduleOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func updateScheduleAsync(
            input: EventBridgeSchedulerModel.UpdateScheduleInput, 
            completion: @escaping (Result<EventBridgeSchedulerModel.UpdateScheduleOutput, EventBridgeSchedulerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.updateSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateScheduleOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/schedules/{Name}",
            httpMethod: .PUT,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateSchedule operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func updateScheduleSync(
            input: EventBridgeSchedulerModel.UpdateScheduleInput) throws -> EventBridgeSchedulerModel.UpdateScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.updateSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .PUT,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }
    
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

    /**
     Invokes the CreateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleInput object being passed to this operation.
     - Returns: The CreateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, serviceQuotaExceeded, throttling, validation.
     */
    public func createSchedule(
            input: EventBridgeSchedulerModel.CreateScheduleInput) async throws -> EventBridgeSchedulerModel.CreateScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.createSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateScheduleGroupInput object being passed to this operation.
     - Returns: The CreateScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, serviceQuotaExceeded, throttling, validation.
     */
    public func createScheduleGroup(
            input: EventBridgeSchedulerModel.CreateScheduleGroupInput) async throws -> EventBridgeSchedulerModel.CreateScheduleGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.createScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateScheduleGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedule-groups/{Name}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleInput object being passed to this operation.
     - Returns: The DeleteScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteSchedule(
            input: EventBridgeSchedulerModel.DeleteScheduleInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.deleteSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteScheduleGroupInput object being passed to this operation.
     - Returns: The DeleteScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func deleteScheduleGroup(
            input: EventBridgeSchedulerModel.DeleteScheduleGroupInput) async throws -> EventBridgeSchedulerModel.DeleteScheduleGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.deleteScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteScheduleGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedule-groups/{Name}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleInput object being passed to this operation.
     - Returns: The GetScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getSchedule(
            input: EventBridgeSchedulerModel.GetScheduleInput) async throws -> EventBridgeSchedulerModel.GetScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.getSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetScheduleGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetScheduleGroupInput object being passed to this operation.
     - Returns: The GetScheduleGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func getScheduleGroup(
            input: EventBridgeSchedulerModel.GetScheduleGroupInput) async throws -> EventBridgeSchedulerModel.GetScheduleGroupOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.getScheduleGroup.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getScheduleGroup,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetScheduleGroupOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedule-groups/{Name}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListScheduleGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListScheduleGroupsInput object being passed to this operation.
     - Returns: The ListScheduleGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, throttling, validation.
     */
    public func listScheduleGroups(
            input: EventBridgeSchedulerModel.ListScheduleGroupsInput) async throws -> EventBridgeSchedulerModel.ListScheduleGroupsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listScheduleGroups.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listScheduleGroups,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListScheduleGroupsOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedule-groups",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListSchedules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSchedulesInput object being passed to this operation.
     - Returns: The ListSchedulesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listSchedules(
            input: EventBridgeSchedulerModel.ListSchedulesInput) async throws -> EventBridgeSchedulerModel.ListSchedulesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listSchedules.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listSchedules,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListSchedulesOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedules",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound, throttling, validation.
     */
    public func listTagsForResource(
            input: EventBridgeSchedulerModel.ListTagsForResourceInput) async throws -> EventBridgeSchedulerModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func tagResource(
            input: EventBridgeSchedulerModel.TagResourceInput) async throws -> EventBridgeSchedulerModel.TagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func untagResource(
            input: EventBridgeSchedulerModel.UntagResourceInput) async throws -> EventBridgeSchedulerModel.UntagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateSchedule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateScheduleInput object being passed to this operation.
     - Returns: The UpdateScheduleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, internalServer, resourceNotFound, throttling, validation.
     */
    public func updateSchedule(
            input: EventBridgeSchedulerModel.UpdateScheduleInput) async throws -> EventBridgeSchedulerModel.UpdateScheduleOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: EventBridgeSchedulerModelOperations.updateSchedule.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateSchedule,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateScheduleOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/schedules/{Name}",
                httpMethod: .PUT,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: EventBridgeSchedulerError = error.asTypedError()
            throw typedError
        }
    }
    #endif
}
