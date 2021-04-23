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
// ThrowingCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CloudWatch service that by default always throws from its methods.
 */
public struct ThrowingCloudWatchClient: CloudWatchClientProtocol {
    let error: CloudWatchError
    let deleteAlarmsAsyncOverride: DeleteAlarmsAsyncType?
    let deleteAlarmsSyncOverride: DeleteAlarmsSyncType?
    let deleteAnomalyDetectorAsyncOverride: DeleteAnomalyDetectorAsyncType?
    let deleteAnomalyDetectorSyncOverride: DeleteAnomalyDetectorSyncType?
    let deleteDashboardsAsyncOverride: DeleteDashboardsAsyncType?
    let deleteDashboardsSyncOverride: DeleteDashboardsSyncType?
    let deleteInsightRulesAsyncOverride: DeleteInsightRulesAsyncType?
    let deleteInsightRulesSyncOverride: DeleteInsightRulesSyncType?
    let deleteMetricStreamAsyncOverride: DeleteMetricStreamAsyncType?
    let deleteMetricStreamSyncOverride: DeleteMetricStreamSyncType?
    let describeAlarmHistoryAsyncOverride: DescribeAlarmHistoryAsyncType?
    let describeAlarmHistorySyncOverride: DescribeAlarmHistorySyncType?
    let describeAlarmsAsyncOverride: DescribeAlarmsAsyncType?
    let describeAlarmsSyncOverride: DescribeAlarmsSyncType?
    let describeAlarmsForMetricAsyncOverride: DescribeAlarmsForMetricAsyncType?
    let describeAlarmsForMetricSyncOverride: DescribeAlarmsForMetricSyncType?
    let describeAnomalyDetectorsAsyncOverride: DescribeAnomalyDetectorsAsyncType?
    let describeAnomalyDetectorsSyncOverride: DescribeAnomalyDetectorsSyncType?
    let describeInsightRulesAsyncOverride: DescribeInsightRulesAsyncType?
    let describeInsightRulesSyncOverride: DescribeInsightRulesSyncType?
    let disableAlarmActionsAsyncOverride: DisableAlarmActionsAsyncType?
    let disableAlarmActionsSyncOverride: DisableAlarmActionsSyncType?
    let disableInsightRulesAsyncOverride: DisableInsightRulesAsyncType?
    let disableInsightRulesSyncOverride: DisableInsightRulesSyncType?
    let enableAlarmActionsAsyncOverride: EnableAlarmActionsAsyncType?
    let enableAlarmActionsSyncOverride: EnableAlarmActionsSyncType?
    let enableInsightRulesAsyncOverride: EnableInsightRulesAsyncType?
    let enableInsightRulesSyncOverride: EnableInsightRulesSyncType?
    let getDashboardAsyncOverride: GetDashboardAsyncType?
    let getDashboardSyncOverride: GetDashboardSyncType?
    let getInsightRuleReportAsyncOverride: GetInsightRuleReportAsyncType?
    let getInsightRuleReportSyncOverride: GetInsightRuleReportSyncType?
    let getMetricDataAsyncOverride: GetMetricDataAsyncType?
    let getMetricDataSyncOverride: GetMetricDataSyncType?
    let getMetricStatisticsAsyncOverride: GetMetricStatisticsAsyncType?
    let getMetricStatisticsSyncOverride: GetMetricStatisticsSyncType?
    let getMetricStreamAsyncOverride: GetMetricStreamAsyncType?
    let getMetricStreamSyncOverride: GetMetricStreamSyncType?
    let getMetricWidgetImageAsyncOverride: GetMetricWidgetImageAsyncType?
    let getMetricWidgetImageSyncOverride: GetMetricWidgetImageSyncType?
    let listDashboardsAsyncOverride: ListDashboardsAsyncType?
    let listDashboardsSyncOverride: ListDashboardsSyncType?
    let listMetricStreamsAsyncOverride: ListMetricStreamsAsyncType?
    let listMetricStreamsSyncOverride: ListMetricStreamsSyncType?
    let listMetricsAsyncOverride: ListMetricsAsyncType?
    let listMetricsSyncOverride: ListMetricsSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let putAnomalyDetectorAsyncOverride: PutAnomalyDetectorAsyncType?
    let putAnomalyDetectorSyncOverride: PutAnomalyDetectorSyncType?
    let putCompositeAlarmAsyncOverride: PutCompositeAlarmAsyncType?
    let putCompositeAlarmSyncOverride: PutCompositeAlarmSyncType?
    let putDashboardAsyncOverride: PutDashboardAsyncType?
    let putDashboardSyncOverride: PutDashboardSyncType?
    let putInsightRuleAsyncOverride: PutInsightRuleAsyncType?
    let putInsightRuleSyncOverride: PutInsightRuleSyncType?
    let putMetricAlarmAsyncOverride: PutMetricAlarmAsyncType?
    let putMetricAlarmSyncOverride: PutMetricAlarmSyncType?
    let putMetricDataAsyncOverride: PutMetricDataAsyncType?
    let putMetricDataSyncOverride: PutMetricDataSyncType?
    let putMetricStreamAsyncOverride: PutMetricStreamAsyncType?
    let putMetricStreamSyncOverride: PutMetricStreamSyncType?
    let setAlarmStateAsyncOverride: SetAlarmStateAsyncType?
    let setAlarmStateSyncOverride: SetAlarmStateSyncType?
    let startMetricStreamsAsyncOverride: StartMetricStreamsAsyncType?
    let startMetricStreamsSyncOverride: StartMetricStreamsSyncType?
    let stopMetricStreamsAsyncOverride: StopMetricStreamsAsyncType?
    let stopMetricStreamsSyncOverride: StopMetricStreamsSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: CloudWatchError,
            deleteAlarmsAsync: DeleteAlarmsAsyncType? = nil,
            deleteAlarmsSync: DeleteAlarmsSyncType? = nil,
            deleteAnomalyDetectorAsync: DeleteAnomalyDetectorAsyncType? = nil,
            deleteAnomalyDetectorSync: DeleteAnomalyDetectorSyncType? = nil,
            deleteDashboardsAsync: DeleteDashboardsAsyncType? = nil,
            deleteDashboardsSync: DeleteDashboardsSyncType? = nil,
            deleteInsightRulesAsync: DeleteInsightRulesAsyncType? = nil,
            deleteInsightRulesSync: DeleteInsightRulesSyncType? = nil,
            deleteMetricStreamAsync: DeleteMetricStreamAsyncType? = nil,
            deleteMetricStreamSync: DeleteMetricStreamSyncType? = nil,
            describeAlarmHistoryAsync: DescribeAlarmHistoryAsyncType? = nil,
            describeAlarmHistorySync: DescribeAlarmHistorySyncType? = nil,
            describeAlarmsAsync: DescribeAlarmsAsyncType? = nil,
            describeAlarmsSync: DescribeAlarmsSyncType? = nil,
            describeAlarmsForMetricAsync: DescribeAlarmsForMetricAsyncType? = nil,
            describeAlarmsForMetricSync: DescribeAlarmsForMetricSyncType? = nil,
            describeAnomalyDetectorsAsync: DescribeAnomalyDetectorsAsyncType? = nil,
            describeAnomalyDetectorsSync: DescribeAnomalyDetectorsSyncType? = nil,
            describeInsightRulesAsync: DescribeInsightRulesAsyncType? = nil,
            describeInsightRulesSync: DescribeInsightRulesSyncType? = nil,
            disableAlarmActionsAsync: DisableAlarmActionsAsyncType? = nil,
            disableAlarmActionsSync: DisableAlarmActionsSyncType? = nil,
            disableInsightRulesAsync: DisableInsightRulesAsyncType? = nil,
            disableInsightRulesSync: DisableInsightRulesSyncType? = nil,
            enableAlarmActionsAsync: EnableAlarmActionsAsyncType? = nil,
            enableAlarmActionsSync: EnableAlarmActionsSyncType? = nil,
            enableInsightRulesAsync: EnableInsightRulesAsyncType? = nil,
            enableInsightRulesSync: EnableInsightRulesSyncType? = nil,
            getDashboardAsync: GetDashboardAsyncType? = nil,
            getDashboardSync: GetDashboardSyncType? = nil,
            getInsightRuleReportAsync: GetInsightRuleReportAsyncType? = nil,
            getInsightRuleReportSync: GetInsightRuleReportSyncType? = nil,
            getMetricDataAsync: GetMetricDataAsyncType? = nil,
            getMetricDataSync: GetMetricDataSyncType? = nil,
            getMetricStatisticsAsync: GetMetricStatisticsAsyncType? = nil,
            getMetricStatisticsSync: GetMetricStatisticsSyncType? = nil,
            getMetricStreamAsync: GetMetricStreamAsyncType? = nil,
            getMetricStreamSync: GetMetricStreamSyncType? = nil,
            getMetricWidgetImageAsync: GetMetricWidgetImageAsyncType? = nil,
            getMetricWidgetImageSync: GetMetricWidgetImageSyncType? = nil,
            listDashboardsAsync: ListDashboardsAsyncType? = nil,
            listDashboardsSync: ListDashboardsSyncType? = nil,
            listMetricStreamsAsync: ListMetricStreamsAsyncType? = nil,
            listMetricStreamsSync: ListMetricStreamsSyncType? = nil,
            listMetricsAsync: ListMetricsAsyncType? = nil,
            listMetricsSync: ListMetricsSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            putAnomalyDetectorAsync: PutAnomalyDetectorAsyncType? = nil,
            putAnomalyDetectorSync: PutAnomalyDetectorSyncType? = nil,
            putCompositeAlarmAsync: PutCompositeAlarmAsyncType? = nil,
            putCompositeAlarmSync: PutCompositeAlarmSyncType? = nil,
            putDashboardAsync: PutDashboardAsyncType? = nil,
            putDashboardSync: PutDashboardSyncType? = nil,
            putInsightRuleAsync: PutInsightRuleAsyncType? = nil,
            putInsightRuleSync: PutInsightRuleSyncType? = nil,
            putMetricAlarmAsync: PutMetricAlarmAsyncType? = nil,
            putMetricAlarmSync: PutMetricAlarmSyncType? = nil,
            putMetricDataAsync: PutMetricDataAsyncType? = nil,
            putMetricDataSync: PutMetricDataSyncType? = nil,
            putMetricStreamAsync: PutMetricStreamAsyncType? = nil,
            putMetricStreamSync: PutMetricStreamSyncType? = nil,
            setAlarmStateAsync: SetAlarmStateAsyncType? = nil,
            setAlarmStateSync: SetAlarmStateSyncType? = nil,
            startMetricStreamsAsync: StartMetricStreamsAsyncType? = nil,
            startMetricStreamsSync: StartMetricStreamsSyncType? = nil,
            stopMetricStreamsAsync: StopMetricStreamsAsyncType? = nil,
            stopMetricStreamsSync: StopMetricStreamsSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil) {
        self.error = error
        self.deleteAlarmsAsyncOverride = deleteAlarmsAsync
        self.deleteAlarmsSyncOverride = deleteAlarmsSync
        self.deleteAnomalyDetectorAsyncOverride = deleteAnomalyDetectorAsync
        self.deleteAnomalyDetectorSyncOverride = deleteAnomalyDetectorSync
        self.deleteDashboardsAsyncOverride = deleteDashboardsAsync
        self.deleteDashboardsSyncOverride = deleteDashboardsSync
        self.deleteInsightRulesAsyncOverride = deleteInsightRulesAsync
        self.deleteInsightRulesSyncOverride = deleteInsightRulesSync
        self.deleteMetricStreamAsyncOverride = deleteMetricStreamAsync
        self.deleteMetricStreamSyncOverride = deleteMetricStreamSync
        self.describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsync
        self.describeAlarmHistorySyncOverride = describeAlarmHistorySync
        self.describeAlarmsAsyncOverride = describeAlarmsAsync
        self.describeAlarmsSyncOverride = describeAlarmsSync
        self.describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsync
        self.describeAlarmsForMetricSyncOverride = describeAlarmsForMetricSync
        self.describeAnomalyDetectorsAsyncOverride = describeAnomalyDetectorsAsync
        self.describeAnomalyDetectorsSyncOverride = describeAnomalyDetectorsSync
        self.describeInsightRulesAsyncOverride = describeInsightRulesAsync
        self.describeInsightRulesSyncOverride = describeInsightRulesSync
        self.disableAlarmActionsAsyncOverride = disableAlarmActionsAsync
        self.disableAlarmActionsSyncOverride = disableAlarmActionsSync
        self.disableInsightRulesAsyncOverride = disableInsightRulesAsync
        self.disableInsightRulesSyncOverride = disableInsightRulesSync
        self.enableAlarmActionsAsyncOverride = enableAlarmActionsAsync
        self.enableAlarmActionsSyncOverride = enableAlarmActionsSync
        self.enableInsightRulesAsyncOverride = enableInsightRulesAsync
        self.enableInsightRulesSyncOverride = enableInsightRulesSync
        self.getDashboardAsyncOverride = getDashboardAsync
        self.getDashboardSyncOverride = getDashboardSync
        self.getInsightRuleReportAsyncOverride = getInsightRuleReportAsync
        self.getInsightRuleReportSyncOverride = getInsightRuleReportSync
        self.getMetricDataAsyncOverride = getMetricDataAsync
        self.getMetricDataSyncOverride = getMetricDataSync
        self.getMetricStatisticsAsyncOverride = getMetricStatisticsAsync
        self.getMetricStatisticsSyncOverride = getMetricStatisticsSync
        self.getMetricStreamAsyncOverride = getMetricStreamAsync
        self.getMetricStreamSyncOverride = getMetricStreamSync
        self.getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsync
        self.getMetricWidgetImageSyncOverride = getMetricWidgetImageSync
        self.listDashboardsAsyncOverride = listDashboardsAsync
        self.listDashboardsSyncOverride = listDashboardsSync
        self.listMetricStreamsAsyncOverride = listMetricStreamsAsync
        self.listMetricStreamsSyncOverride = listMetricStreamsSync
        self.listMetricsAsyncOverride = listMetricsAsync
        self.listMetricsSyncOverride = listMetricsSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.putAnomalyDetectorAsyncOverride = putAnomalyDetectorAsync
        self.putAnomalyDetectorSyncOverride = putAnomalyDetectorSync
        self.putCompositeAlarmAsyncOverride = putCompositeAlarmAsync
        self.putCompositeAlarmSyncOverride = putCompositeAlarmSync
        self.putDashboardAsyncOverride = putDashboardAsync
        self.putDashboardSyncOverride = putDashboardSync
        self.putInsightRuleAsyncOverride = putInsightRuleAsync
        self.putInsightRuleSyncOverride = putInsightRuleSync
        self.putMetricAlarmAsyncOverride = putMetricAlarmAsync
        self.putMetricAlarmSyncOverride = putMetricAlarmSync
        self.putMetricDataAsyncOverride = putMetricDataAsync
        self.putMetricDataSyncOverride = putMetricDataSync
        self.putMetricStreamAsyncOverride = putMetricStreamAsync
        self.putMetricStreamSyncOverride = putMetricStreamSync
        self.setAlarmStateAsyncOverride = setAlarmStateAsync
        self.setAlarmStateSyncOverride = setAlarmStateSync
        self.startMetricStreamsAsyncOverride = startMetricStreamsAsync
        self.startMetricStreamsSyncOverride = startMetricStreamsSync
        self.stopMetricStreamsAsyncOverride = stopMetricStreamsAsync
        self.stopMetricStreamsSyncOverride = stopMetricStreamsSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
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
        if let deleteAlarmsAsyncOverride = deleteAlarmsAsyncOverride {
            return try deleteAlarmsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    public func deleteAlarmsSync(
            input: CloudWatchModel.DeleteAlarmsInput) throws {
        if let deleteAlarmsSyncOverride = deleteAlarmsSyncOverride {
            return try deleteAlarmsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
         - completion: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetectorAsync(
            input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, CloudWatchError>) -> ()) throws {
        if let deleteAnomalyDetectorAsyncOverride = deleteAnomalyDetectorAsyncOverride {
            return try deleteAnomalyDetectorAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetectorSync(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        if let deleteAnomalyDetectorSyncOverride = deleteAnomalyDetectorSyncOverride {
            return try deleteAnomalyDetectorSyncOverride(input)
        }

        throw error
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
        if let deleteDashboardsAsyncOverride = deleteDashboardsAsyncOverride {
            return try deleteDashboardsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let deleteDashboardsSyncOverride = deleteDashboardsSyncOverride {
            return try deleteDashboardsSyncOverride(input)
        }

        throw error
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
        if let deleteInsightRulesAsyncOverride = deleteInsightRulesAsyncOverride {
            return try deleteInsightRulesAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let deleteInsightRulesSyncOverride = deleteInsightRulesSyncOverride {
            return try deleteInsightRulesSyncOverride(input)
        }

        throw error
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
        if let deleteMetricStreamAsyncOverride = deleteMetricStreamAsyncOverride {
            return try deleteMetricStreamAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let deleteMetricStreamSyncOverride = deleteMetricStreamSyncOverride {
            return try deleteMetricStreamSyncOverride(input)
        }

        throw error
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
        if let describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsyncOverride {
            return try describeAlarmHistoryAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let describeAlarmHistorySyncOverride = describeAlarmHistorySyncOverride {
            return try describeAlarmHistorySyncOverride(input)
        }

        throw error
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
        if let describeAlarmsAsyncOverride = describeAlarmsAsyncOverride {
            return try describeAlarmsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let describeAlarmsSyncOverride = describeAlarmsSyncOverride {
            return try describeAlarmsSyncOverride(input)
        }

        throw error
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
        if let describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsyncOverride {
            return try describeAlarmsForMetricAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let describeAlarmsForMetricSyncOverride = describeAlarmsForMetricSyncOverride {
            return try describeAlarmsForMetricSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAnomalyDetectors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
         - completion: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object or an error will be passed to this 
           callback when the operation is complete. The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterValue.
     */
    public func describeAnomalyDetectorsAsync(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, CloudWatchError>) -> ()) throws {
        if let describeAnomalyDetectorsAsyncOverride = describeAnomalyDetectorsAsyncOverride {
            return try describeAnomalyDetectorsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAnomalyDetectors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue.
     */
    public func describeAnomalyDetectorsSync(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        if let describeAnomalyDetectorsSyncOverride = describeAnomalyDetectorsSyncOverride {
            return try describeAnomalyDetectorsSyncOverride(input)
        }

        throw error
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
        if let describeInsightRulesAsyncOverride = describeInsightRulesAsyncOverride {
            return try describeInsightRulesAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let describeInsightRulesSyncOverride = describeInsightRulesSyncOverride {
            return try describeInsightRulesSyncOverride(input)
        }

        throw error
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
        if let disableAlarmActionsAsyncOverride = disableAlarmActionsAsyncOverride {
            return try disableAlarmActionsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActionsSync(
            input: CloudWatchModel.DisableAlarmActionsInput) throws {
        if let disableAlarmActionsSyncOverride = disableAlarmActionsSyncOverride {
            return try disableAlarmActionsSyncOverride(input)
        }

        throw error
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
        if let disableInsightRulesAsyncOverride = disableInsightRulesAsyncOverride {
            return try disableInsightRulesAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let disableInsightRulesSyncOverride = disableInsightRulesSyncOverride {
            return try disableInsightRulesSyncOverride(input)
        }

        throw error
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
        if let enableAlarmActionsAsyncOverride = enableAlarmActionsAsyncOverride {
            return try enableAlarmActionsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActionsSync(
            input: CloudWatchModel.EnableAlarmActionsInput) throws {
        if let enableAlarmActionsSyncOverride = enableAlarmActionsSyncOverride {
            return try enableAlarmActionsSyncOverride(input)
        }

        throw error
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
        if let enableInsightRulesAsyncOverride = enableInsightRulesAsyncOverride {
            return try enableInsightRulesAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let enableInsightRulesSyncOverride = enableInsightRulesSyncOverride {
            return try enableInsightRulesSyncOverride(input)
        }

        throw error
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
        if let getDashboardAsyncOverride = getDashboardAsyncOverride {
            return try getDashboardAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let getDashboardSyncOverride = getDashboardSyncOverride {
            return try getDashboardSyncOverride(input)
        }

        throw error
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
        if let getInsightRuleReportAsyncOverride = getInsightRuleReportAsyncOverride {
            return try getInsightRuleReportAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let getInsightRuleReportSyncOverride = getInsightRuleReportSyncOverride {
            return try getInsightRuleReportSyncOverride(input)
        }

        throw error
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
        if let getMetricDataAsyncOverride = getMetricDataAsyncOverride {
            return try getMetricDataAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let getMetricDataSyncOverride = getMetricDataSyncOverride {
            return try getMetricDataSyncOverride(input)
        }

        throw error
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
        if let getMetricStatisticsAsyncOverride = getMetricStatisticsAsyncOverride {
            return try getMetricStatisticsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let getMetricStatisticsSyncOverride = getMetricStatisticsSyncOverride {
            return try getMetricStatisticsSyncOverride(input)
        }

        throw error
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
        if let getMetricStreamAsyncOverride = getMetricStreamAsyncOverride {
            return try getMetricStreamAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let getMetricStreamSyncOverride = getMetricStreamSyncOverride {
            return try getMetricStreamSyncOverride(input)
        }

        throw error
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
        if let getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsyncOverride {
            return try getMetricWidgetImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let getMetricWidgetImageSyncOverride = getMetricWidgetImageSyncOverride {
            return try getMetricWidgetImageSyncOverride(input)
        }

        throw error
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
        if let listDashboardsAsyncOverride = listDashboardsAsyncOverride {
            return try listDashboardsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let listDashboardsSyncOverride = listDashboardsSyncOverride {
            return try listDashboardsSyncOverride(input)
        }

        throw error
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
        if let listMetricStreamsAsyncOverride = listMetricStreamsAsyncOverride {
            return try listMetricStreamsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let listMetricStreamsSyncOverride = listMetricStreamsSyncOverride {
            return try listMetricStreamsSyncOverride(input)
        }

        throw error
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
        if let listMetricsAsyncOverride = listMetricsAsyncOverride {
            return try listMetricsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let listMetricsSyncOverride = listMetricsSyncOverride {
            return try listMetricsSyncOverride(input)
        }

        throw error
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
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
         - completion: The PutAnomalyDetectorOutputForPutAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The PutAnomalyDetectorOutputForPutAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetectorAsync(
            input: CloudWatchModel.PutAnomalyDetectorInput, 
            completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, CloudWatchError>) -> ()) throws {
        if let putAnomalyDetectorAsyncOverride = putAnomalyDetectorAsyncOverride {
            return try putAnomalyDetectorAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetectorSync(
            input: CloudWatchModel.PutAnomalyDetectorInput) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
        if let putAnomalyDetectorSyncOverride = putAnomalyDetectorSyncOverride {
            return try putAnomalyDetectorSyncOverride(input)
        }

        throw error
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
        if let putCompositeAlarmAsyncOverride = putCompositeAlarmAsyncOverride {
            return try putCompositeAlarmAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutCompositeAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putCompositeAlarmSync(
            input: CloudWatchModel.PutCompositeAlarmInput) throws {
        if let putCompositeAlarmSyncOverride = putCompositeAlarmSyncOverride {
            return try putCompositeAlarmSyncOverride(input)
        }

        throw error
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
        if let putDashboardAsyncOverride = putDashboardAsyncOverride {
            return try putDashboardAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let putDashboardSyncOverride = putDashboardSyncOverride {
            return try putDashboardSyncOverride(input)
        }

        throw error
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
        if let putInsightRuleAsyncOverride = putInsightRuleAsyncOverride {
            return try putInsightRuleAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let putInsightRuleSyncOverride = putInsightRuleSyncOverride {
            return try putInsightRuleSyncOverride(input)
        }

        throw error
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
        if let putMetricAlarmAsyncOverride = putMetricAlarmAsyncOverride {
            return try putMetricAlarmAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putMetricAlarmSync(
            input: CloudWatchModel.PutMetricAlarmInput) throws {
        if let putMetricAlarmSyncOverride = putMetricAlarmSyncOverride {
            return try putMetricAlarmSyncOverride(input)
        }

        throw error
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
        if let putMetricDataAsyncOverride = putMetricDataAsyncOverride {
            return try putMetricDataAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataSync(
            input: CloudWatchModel.PutMetricDataInput) throws {
        if let putMetricDataSyncOverride = putMetricDataSyncOverride {
            return try putMetricDataSyncOverride(input)
        }

        throw error
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
        if let putMetricStreamAsyncOverride = putMetricStreamAsyncOverride {
            return try putMetricStreamAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let putMetricStreamSyncOverride = putMetricStreamSyncOverride {
            return try putMetricStreamSyncOverride(input)
        }

        throw error
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
        if let setAlarmStateAsyncOverride = setAlarmStateAsyncOverride {
            return try setAlarmStateAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateSync(
            input: CloudWatchModel.SetAlarmStateInput) throws {
        if let setAlarmStateSyncOverride = setAlarmStateSyncOverride {
            return try setAlarmStateSyncOverride(input)
        }

        throw error
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
        if let startMetricStreamsAsyncOverride = startMetricStreamsAsyncOverride {
            return try startMetricStreamsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let startMetricStreamsSyncOverride = startMetricStreamsSyncOverride {
            return try startMetricStreamsSyncOverride(input)
        }

        throw error
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
        if let stopMetricStreamsAsyncOverride = stopMetricStreamsAsyncOverride {
            return try stopMetricStreamsAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let stopMetricStreamsSyncOverride = stopMetricStreamsSyncOverride {
            return try stopMetricStreamsSyncOverride(input)
        }

        throw error
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
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
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
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
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
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }
}
