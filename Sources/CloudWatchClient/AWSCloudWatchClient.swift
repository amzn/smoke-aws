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
// AWSCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum CloudWatchClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension CloudWatchError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> CloudWatchError {
        return error.asUnrecognizedCloudWatchError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .limitExceededException, .limitExceededFault:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? CloudWatchError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the CloudWatch service.
 */
public struct AWSCloudWatchClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: CloudWatchClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: CloudWatchOperationsReporting
    let invocationsReporting: CloudWatchInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "monitoring",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-08-01",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>
                    = SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<CloudWatchError>(requiresTLS: useTLS,
            outputListDecodingStrategy: .collapseListUsingItemTag("member"), 
            inputQueryListEncodingStrategy: .expandListWithIndexAndItemTag(itemTag: "member"))

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
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = CloudWatchOperationsReporting(clientName: "AWSCloudWatchClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = CloudWatchInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: CloudWatchOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = CloudWatchInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the DeleteAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: resourceNotFound.
     */
    public func deleteAlarmsAsync(
            input: CloudWatchModel.DeleteAlarmsInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAlarms,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteAlarmsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteAlarms.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    public func deleteAlarmsSync(
            input: CloudWatchModel.DeleteAlarmsInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAlarms,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteAlarmsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteAlarms.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
         - completion: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetectorAsync(
            input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAnomalyDetector,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteAnomalyDetectorOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteAnomalyDetector.rawValue,
            version: apiVersion)

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
     Invokes the DeleteAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetectorSync(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAnomalyDetector,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteAnomalyDetectorOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteAnomalyDetector.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
         - completion: The DeleteDashboardsOutputForDeleteDashboards object or an error will be passed to this 
           callback when the operation is complete. The DeleteDashboardsOutputForDeleteDashboards
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboardsAsync(
            input: CloudWatchModel.DeleteDashboardsInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteDashboards,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteDashboardsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteDashboards.rawValue,
            version: apiVersion)

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
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboardsSync(
            input: CloudWatchModel.DeleteDashboardsInput) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteDashboards,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteDashboardsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteDashboards.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
         - completion: The DeleteInsightRulesOutputForDeleteInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DeleteInsightRulesOutputForDeleteInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    public func deleteInsightRulesAsync(
            input: CloudWatchModel.DeleteInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteInsightRules.rawValue,
            version: apiVersion)

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
     Invokes the DeleteInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func deleteInsightRulesSync(
            input: CloudWatchModel.DeleteInsightRulesInput) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteInsightRules.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteMetricStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMetricStreamInput object being passed to this operation.
         - completion: The DeleteMetricStreamOutputForDeleteMetricStream object or an error will be passed to this 
           callback when the operation is complete. The DeleteMetricStreamOutputForDeleteMetricStream
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func deleteMetricStreamAsync(
            input: CloudWatchModel.DeleteMetricStreamInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteMetricStreamOutputForDeleteMetricStream, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMetricStream,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMetricStreamOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteMetricStream.rawValue,
            version: apiVersion)

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
     Invokes the DeleteMetricStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMetricStreamInput object being passed to this operation.
     - Returns: The DeleteMetricStreamOutputForDeleteMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func deleteMetricStreamSync(
            input: CloudWatchModel.DeleteMetricStreamInput) throws -> CloudWatchModel.DeleteMetricStreamOutputForDeleteMetricStream {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMetricStream,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMetricStreamOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.deleteMetricStream.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeAlarmHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
         - completion: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmHistoryOutputForDescribeAlarmHistory
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeAlarmHistoryAsync(
            input: CloudWatchModel.DescribeAlarmHistoryInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAlarmHistory,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAlarmHistoryOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAlarmHistory.rawValue,
            version: apiVersion)

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
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmHistorySync(
            input: CloudWatchModel.DescribeAlarmHistoryInput) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAlarmHistory,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAlarmHistoryOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAlarmHistory.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
         - completion: The DescribeAlarmsOutputForDescribeAlarms object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsOutputForDescribeAlarms
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeAlarmsAsync(
            input: CloudWatchModel.DescribeAlarmsInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAlarms,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAlarmsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAlarms.rawValue,
            version: apiVersion)

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
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmsSync(
            input: CloudWatchModel.DescribeAlarmsInput) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAlarms,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAlarmsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAlarms.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
         - completion: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
           object will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricAsync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAlarmsForMetric,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAlarmsForMetricOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAlarmsForMetric.rawValue,
            version: apiVersion)

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
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricSync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAlarmsForMetric,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAlarmsForMetricOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAlarmsForMetric.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeAnomalyDetectors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
         - completion: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object or an error will be passed to this 
           callback when the operation is complete. The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterCombination, invalidParameterValue.
     */
    public func describeAnomalyDetectorsAsync(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAnomalyDetectors,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAnomalyDetectorsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAnomalyDetectors.rawValue,
            version: apiVersion)

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
     Invokes the DescribeAnomalyDetectors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterCombination, invalidParameterValue.
     */
    public func describeAnomalyDetectorsSync(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAnomalyDetectors,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAnomalyDetectorsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeAnomalyDetectors.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
         - completion: The DescribeInsightRulesOutputForDescribeInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DescribeInsightRulesOutputForDescribeInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeInsightRulesAsync(
            input: CloudWatchModel.DescribeInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeInsightRules.rawValue,
            version: apiVersion)

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
     Invokes the DescribeInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeInsightRulesSync(
            input: CloudWatchModel.DescribeInsightRulesInput) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.describeInsightRules.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DisableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disableAlarmActionsAsync(
            input: CloudWatchModel.DisableAlarmActionsInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.disableAlarmActions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DisableAlarmActionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.disableAlarmActions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActionsSync(
            input: CloudWatchModel.DisableAlarmActionsInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.disableAlarmActions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DisableAlarmActionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.disableAlarmActions.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DisableInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
         - completion: The DisableInsightRulesOutputForDisableInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DisableInsightRulesOutputForDisableInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    public func disableInsightRulesAsync(
            input: CloudWatchModel.DisableInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.disableInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DisableInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.disableInsightRules.rawValue,
            version: apiVersion)

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
     Invokes the DisableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func disableInsightRulesSync(
            input: CloudWatchModel.DisableInsightRulesInput) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.disableInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DisableInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.disableInsightRules.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the EnableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableAlarmActionsAsync(
            input: CloudWatchModel.EnableAlarmActionsInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.enableAlarmActions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EnableAlarmActionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.enableAlarmActions.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActionsSync(
            input: CloudWatchModel.EnableAlarmActionsInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.enableAlarmActions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EnableAlarmActionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.enableAlarmActions.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the EnableInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
         - completion: The EnableInsightRulesOutputForEnableInsightRules object or an error will be passed to this 
           callback when the operation is complete. The EnableInsightRulesOutputForEnableInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func enableInsightRulesAsync(
            input: CloudWatchModel.EnableInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.enableInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EnableInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.enableInsightRules.rawValue,
            version: apiVersion)

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
     Invokes the EnableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func enableInsightRulesSync(
            input: CloudWatchModel.EnableInsightRulesInput) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.enableInsightRules,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EnableInsightRulesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.enableInsightRules.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
         - completion: The GetDashboardOutputForGetDashboard object or an error will be passed to this 
           callback when the operation is complete. The GetDashboardOutputForGetDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboardAsync(
            input: CloudWatchModel.GetDashboardInput, 
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDashboard,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetDashboardOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getDashboard.rawValue,
            version: apiVersion)

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
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboardSync(
            input: CloudWatchModel.GetDashboardInput) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDashboard,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetDashboardOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getDashboard.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetInsightRuleReport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
         - completion: The GetInsightRuleReportOutputForGetInsightRuleReport object or an error will be passed to this 
           callback when the operation is complete. The GetInsightRuleReportOutputForGetInsightRuleReport
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getInsightRuleReportAsync(
            input: CloudWatchModel.GetInsightRuleReportInput, 
            completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getInsightRuleReport,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetInsightRuleReportOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getInsightRuleReport.rawValue,
            version: apiVersion)

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
     Invokes the GetInsightRuleReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getInsightRuleReportSync(
            input: CloudWatchModel.GetInsightRuleReportInput) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getInsightRuleReport,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetInsightRuleReportOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getInsightRuleReport.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
         - completion: The GetMetricDataOutputForGetMetricData object or an error will be passed to this 
           callback when the operation is complete. The GetMetricDataOutputForGetMetricData
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func getMetricDataAsync(
            input: CloudWatchModel.GetMetricDataInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricData,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricDataOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricData.rawValue,
            version: apiVersion)

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
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func getMetricDataSync(
            input: CloudWatchModel.GetMetricDataInput) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricData,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricDataOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricData.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetMetricStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
         - completion: The GetMetricStatisticsOutputForGetMetricStatistics object or an error will be passed to this 
           callback when the operation is complete. The GetMetricStatisticsOutputForGetMetricStatistics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatisticsAsync(
            input: CloudWatchModel.GetMetricStatisticsInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricStatistics,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricStatisticsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricStatistics.rawValue,
            version: apiVersion)

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
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatisticsSync(
            input: CloudWatchModel.GetMetricStatisticsInput) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricStatistics,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricStatisticsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricStatistics.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetMetricStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricStreamInput object being passed to this operation.
         - completion: The GetMetricStreamOutputForGetMetricStream object or an error will be passed to this 
           callback when the operation is complete. The GetMetricStreamOutputForGetMetricStream
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getMetricStreamAsync(
            input: CloudWatchModel.GetMetricStreamInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricStreamOutputForGetMetricStream, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricStream,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricStreamOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricStream.rawValue,
            version: apiVersion)

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
     Invokes the GetMetricStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStreamInput object being passed to this operation.
     - Returns: The GetMetricStreamOutputForGetMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getMetricStreamSync(
            input: CloudWatchModel.GetMetricStreamInput) throws -> CloudWatchModel.GetMetricStreamOutputForGetMetricStream {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricStream,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricStreamOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricStream.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetMetricWidgetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
         - completion: The GetMetricWidgetImageOutputForGetMetricWidgetImage object or an error will be passed to this 
           callback when the operation is complete. The GetMetricWidgetImageOutputForGetMetricWidgetImage
           object will be validated before being returned to caller.
     */
    public func getMetricWidgetImageAsync(
            input: CloudWatchModel.GetMetricWidgetImageInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricWidgetImage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricWidgetImageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricWidgetImage.rawValue,
            version: apiVersion)

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
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getMetricWidgetImageSync(
            input: CloudWatchModel.GetMetricWidgetImageInput) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getMetricWidgetImage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetMetricWidgetImageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.getMetricWidgetImage.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
         - completion: The ListDashboardsOutputForListDashboards object or an error will be passed to this 
           callback when the operation is complete. The ListDashboardsOutputForListDashboards
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    public func listDashboardsAsync(
            input: CloudWatchModel.ListDashboardsInput, 
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDashboards,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListDashboardsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listDashboards.rawValue,
            version: apiVersion)

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
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listDashboardsSync(
            input: CloudWatchModel.ListDashboardsInput) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDashboards,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListDashboardsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listDashboards.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListMetricStreams operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMetricStreamsInput object being passed to this operation.
         - completion: The ListMetricStreamsOutputForListMetricStreams object or an error will be passed to this 
           callback when the operation is complete. The ListMetricStreamsOutputForListMetricStreams
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    public func listMetricStreamsAsync(
            input: CloudWatchModel.ListMetricStreamsInput, 
            completion: @escaping (Result<CloudWatchModel.ListMetricStreamsOutputForListMetricStreams, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMetricStreams,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMetricStreamsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listMetricStreams.rawValue,
            version: apiVersion)

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
     Invokes the ListMetricStreams operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricStreamsInput object being passed to this operation.
     - Returns: The ListMetricStreamsOutputForListMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    public func listMetricStreamsSync(
            input: CloudWatchModel.ListMetricStreamsInput) throws -> CloudWatchModel.ListMetricStreamsOutputForListMetricStreams {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMetricStreams,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMetricStreamsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listMetricStreams.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListMetrics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
         - completion: The ListMetricsOutputForListMetrics object or an error will be passed to this 
           callback when the operation is complete. The ListMetricsOutputForListMetrics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    public func listMetricsAsync(
            input: CloudWatchModel.ListMetricsInput, 
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMetrics,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMetricsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listMetrics.rawValue,
            version: apiVersion)

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
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listMetricsSync(
            input: CloudWatchModel.ListMetricsInput) throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMetrics,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMetricsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listMetrics.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutputForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutputForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResourceAsync(
            input: CloudWatchModel.ListTagsForResourceInput, 
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listTagsForResource.rawValue,
            version: apiVersion)

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
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResourceSync(
            input: CloudWatchModel.ListTagsForResourceInput) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.listTagsForResource.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
         - completion: The PutAnomalyDetectorOutputForPutAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The PutAnomalyDetectorOutputForPutAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetectorAsync(
            input: CloudWatchModel.PutAnomalyDetectorInput, 
            completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAnomalyDetector,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutAnomalyDetectorOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putAnomalyDetector.rawValue,
            version: apiVersion)

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
     Invokes the PutAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetectorSync(
            input: CloudWatchModel.PutAnomalyDetectorInput) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAnomalyDetector,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutAnomalyDetectorOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putAnomalyDetector.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutCompositeAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    public func putCompositeAlarmAsync(
            input: CloudWatchModel.PutCompositeAlarmInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putCompositeAlarm,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutCompositeAlarmOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putCompositeAlarm.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutCompositeAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putCompositeAlarmSync(
            input: CloudWatchModel.PutCompositeAlarmInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putCompositeAlarm,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutCompositeAlarmOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putCompositeAlarm.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
         - completion: The PutDashboardOutputForPutDashboard object or an error will be passed to this 
           callback when the operation is complete. The PutDashboardOutputForPutDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    public func putDashboardAsync(
            input: CloudWatchModel.PutDashboardInput, 
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putDashboard,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutDashboardOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putDashboard.rawValue,
            version: apiVersion)

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
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    public func putDashboardSync(
            input: CloudWatchModel.PutDashboardInput) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putDashboard,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutDashboardOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putDashboard.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutInsightRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
         - completion: The PutInsightRuleOutputForPutInsightRule object or an error will be passed to this 
           callback when the operation is complete. The PutInsightRuleOutputForPutInsightRule
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putInsightRuleAsync(
            input: CloudWatchModel.PutInsightRuleInput, 
            completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putInsightRule,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutInsightRuleOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putInsightRule.rawValue,
            version: apiVersion)

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
     Invokes the PutInsightRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putInsightRuleSync(
            input: CloudWatchModel.PutInsightRuleInput) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putInsightRule,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutInsightRuleOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putInsightRule.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutMetricAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    public func putMetricAlarmAsync(
            input: CloudWatchModel.PutMetricAlarmInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putMetricAlarm,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutMetricAlarmOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putMetricAlarm.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putMetricAlarmSync(
            input: CloudWatchModel.PutMetricAlarmInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putMetricAlarm,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutMetricAlarmOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putMetricAlarm.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataAsync(
            input: CloudWatchModel.PutMetricDataInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putMetricData,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutMetricDataOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putMetricData.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataSync(
            input: CloudWatchModel.PutMetricDataInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putMetricData,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutMetricDataOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putMetricData.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutMetricStream operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricStreamInput object being passed to this operation.
         - completion: The PutMetricStreamOutputForPutMetricStream object or an error will be passed to this 
           callback when the operation is complete. The PutMetricStreamOutputForPutMetricStream
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricStreamAsync(
            input: CloudWatchModel.PutMetricStreamInput, 
            completion: @escaping (Result<CloudWatchModel.PutMetricStreamOutputForPutMetricStream, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putMetricStream,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutMetricStreamOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putMetricStream.rawValue,
            version: apiVersion)

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
     Invokes the PutMetricStream operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricStreamInput object being passed to this operation.
     - Returns: The PutMetricStreamOutputForPutMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricStreamSync(
            input: CloudWatchModel.PutMetricStreamInput) throws -> CloudWatchModel.PutMetricStreamOutputForPutMetricStream {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putMetricStream,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PutMetricStreamOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.putMetricStream.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetAlarmState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateAsync(
            input: CloudWatchModel.SetAlarmStateInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setAlarmState,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetAlarmStateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.setAlarmState.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateSync(
            input: CloudWatchModel.SetAlarmStateInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setAlarmState,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetAlarmStateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.setAlarmState.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartMetricStreams operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartMetricStreamsInput object being passed to this operation.
         - completion: The StartMetricStreamsOutputForStartMetricStreams object or an error will be passed to this 
           callback when the operation is complete. The StartMetricStreamsOutputForStartMetricStreams
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func startMetricStreamsAsync(
            input: CloudWatchModel.StartMetricStreamsInput, 
            completion: @escaping (Result<CloudWatchModel.StartMetricStreamsOutputForStartMetricStreams, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startMetricStreams,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StartMetricStreamsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.startMetricStreams.rawValue,
            version: apiVersion)

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
     Invokes the StartMetricStreams operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartMetricStreamsInput object being passed to this operation.
     - Returns: The StartMetricStreamsOutputForStartMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func startMetricStreamsSync(
            input: CloudWatchModel.StartMetricStreamsInput) throws -> CloudWatchModel.StartMetricStreamsOutputForStartMetricStreams {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startMetricStreams,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StartMetricStreamsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.startMetricStreams.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopMetricStreams operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopMetricStreamsInput object being passed to this operation.
         - completion: The StopMetricStreamsOutputForStopMetricStreams object or an error will be passed to this 
           callback when the operation is complete. The StopMetricStreamsOutputForStopMetricStreams
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func stopMetricStreamsAsync(
            input: CloudWatchModel.StopMetricStreamsInput, 
            completion: @escaping (Result<CloudWatchModel.StopMetricStreamsOutputForStopMetricStreams, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopMetricStreams,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StopMetricStreamsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.stopMetricStreams.rawValue,
            version: apiVersion)

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
     Invokes the StopMetricStreams operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopMetricStreamsInput object being passed to this operation.
     - Returns: The StopMetricStreamsOutputForStopMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func stopMetricStreamsSync(
            input: CloudWatchModel.StopMetricStreamsInput) throws -> CloudWatchModel.StopMetricStreamsOutputForStopMetricStreams {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopMetricStreams,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StopMetricStreamsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.stopMetricStreams.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutputForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutputForTagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResourceAsync(
            input: CloudWatchModel.TagResourceInput, 
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.tagResource.rawValue,
            version: apiVersion)

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
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResourceSync(
            input: CloudWatchModel.TagResourceInput) throws -> CloudWatchModel.TagResourceOutputForTagResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.tagResource.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutputForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutputForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResourceAsync(
            input: CloudWatchModel.UntagResourceInput, 
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, CloudWatchError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.untagResource.rawValue,
            version: apiVersion)

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
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResourceSync(
            input: CloudWatchModel.UntagResourceInput) throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudWatchModelOperations.untagResource.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudWatchError = error.asTypedError()
            throw typedError
        }
    }
}
