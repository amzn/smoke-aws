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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// MockCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CloudWatch service by default returns the `__default` property of its return type.
 */
public struct MockCloudWatchClient: CloudWatchClientProtocol {
    let deleteAlarmsAsyncOverride: DeleteAlarmsAsyncType?
    let deleteAlarmsSyncOverride: DeleteAlarmsSyncType?
    let deleteAnomalyDetectorAsyncOverride: DeleteAnomalyDetectorAsyncType?
    let deleteAnomalyDetectorSyncOverride: DeleteAnomalyDetectorSyncType?
    let deleteDashboardsAsyncOverride: DeleteDashboardsAsyncType?
    let deleteDashboardsSyncOverride: DeleteDashboardsSyncType?
    let deleteInsightRulesAsyncOverride: DeleteInsightRulesAsyncType?
    let deleteInsightRulesSyncOverride: DeleteInsightRulesSyncType?
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
    let getMetricWidgetImageAsyncOverride: GetMetricWidgetImageAsyncType?
    let getMetricWidgetImageSyncOverride: GetMetricWidgetImageSyncType?
    let listDashboardsAsyncOverride: ListDashboardsAsyncType?
    let listDashboardsSyncOverride: ListDashboardsSyncType?
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
    let setAlarmStateAsyncOverride: SetAlarmStateAsyncType?
    let setAlarmStateSyncOverride: SetAlarmStateSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            deleteAlarmsAsync: DeleteAlarmsAsyncType? = nil,
            deleteAlarmsSync: DeleteAlarmsSyncType? = nil,
            deleteAnomalyDetectorAsync: DeleteAnomalyDetectorAsyncType? = nil,
            deleteAnomalyDetectorSync: DeleteAnomalyDetectorSyncType? = nil,
            deleteDashboardsAsync: DeleteDashboardsAsyncType? = nil,
            deleteDashboardsSync: DeleteDashboardsSyncType? = nil,
            deleteInsightRulesAsync: DeleteInsightRulesAsyncType? = nil,
            deleteInsightRulesSync: DeleteInsightRulesSyncType? = nil,
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
            getMetricWidgetImageAsync: GetMetricWidgetImageAsyncType? = nil,
            getMetricWidgetImageSync: GetMetricWidgetImageSyncType? = nil,
            listDashboardsAsync: ListDashboardsAsyncType? = nil,
            listDashboardsSync: ListDashboardsSyncType? = nil,
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
            setAlarmStateAsync: SetAlarmStateAsyncType? = nil,
            setAlarmStateSync: SetAlarmStateSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil) {
        self.deleteAlarmsAsyncOverride = deleteAlarmsAsync
        self.deleteAlarmsSyncOverride = deleteAlarmsSync
        self.deleteAnomalyDetectorAsyncOverride = deleteAnomalyDetectorAsync
        self.deleteAnomalyDetectorSyncOverride = deleteAnomalyDetectorSync
        self.deleteDashboardsAsyncOverride = deleteDashboardsAsync
        self.deleteDashboardsSyncOverride = deleteDashboardsSync
        self.deleteInsightRulesAsyncOverride = deleteInsightRulesAsync
        self.deleteInsightRulesSyncOverride = deleteInsightRulesSync
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
        self.getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsync
        self.getMetricWidgetImageSyncOverride = getMetricWidgetImageSync
        self.listDashboardsAsyncOverride = listDashboardsAsync
        self.listDashboardsSyncOverride = listDashboardsSync
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
        self.setAlarmStateAsyncOverride = setAlarmStateAsync
        self.setAlarmStateSyncOverride = setAlarmStateSync
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

        completion(nil)
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

        let result = DeleteAnomalyDetectorOutputForDeleteAnomalyDetector.__default
        
        completion(.success(result))
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

        return DeleteAnomalyDetectorOutputForDeleteAnomalyDetector.__default
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

        let result = DeleteDashboardsOutputForDeleteDashboards.__default
        
        completion(.success(result))
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

        return DeleteDashboardsOutputForDeleteDashboards.__default
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

        let result = DeleteInsightRulesOutputForDeleteInsightRules.__default
        
        completion(.success(result))
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

        return DeleteInsightRulesOutputForDeleteInsightRules.__default
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

        let result = DescribeAlarmHistoryOutputForDescribeAlarmHistory.__default
        
        completion(.success(result))
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

        return DescribeAlarmHistoryOutputForDescribeAlarmHistory.__default
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

        let result = DescribeAlarmsOutputForDescribeAlarms.__default
        
        completion(.success(result))
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

        return DescribeAlarmsOutputForDescribeAlarms.__default
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

        let result = DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric.__default
        
        completion(.success(result))
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

        return DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric.__default
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

        let result = DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors.__default
        
        completion(.success(result))
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

        return DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors.__default
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

        let result = DescribeInsightRulesOutputForDescribeInsightRules.__default
        
        completion(.success(result))
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

        return DescribeInsightRulesOutputForDescribeInsightRules.__default
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

        completion(nil)
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

        let result = DisableInsightRulesOutputForDisableInsightRules.__default
        
        completion(.success(result))
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

        return DisableInsightRulesOutputForDisableInsightRules.__default
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

        completion(nil)
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

        let result = EnableInsightRulesOutputForEnableInsightRules.__default
        
        completion(.success(result))
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

        return EnableInsightRulesOutputForEnableInsightRules.__default
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

        let result = GetDashboardOutputForGetDashboard.__default
        
        completion(.success(result))
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

        return GetDashboardOutputForGetDashboard.__default
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

        let result = GetInsightRuleReportOutputForGetInsightRuleReport.__default
        
        completion(.success(result))
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

        return GetInsightRuleReportOutputForGetInsightRuleReport.__default
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

        let result = GetMetricDataOutputForGetMetricData.__default
        
        completion(.success(result))
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

        return GetMetricDataOutputForGetMetricData.__default
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

        let result = GetMetricStatisticsOutputForGetMetricStatistics.__default
        
        completion(.success(result))
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

        return GetMetricStatisticsOutputForGetMetricStatistics.__default
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

        let result = GetMetricWidgetImageOutputForGetMetricWidgetImage.__default
        
        completion(.success(result))
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

        return GetMetricWidgetImageOutputForGetMetricWidgetImage.__default
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

        let result = ListDashboardsOutputForListDashboards.__default
        
        completion(.success(result))
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

        return ListDashboardsOutputForListDashboards.__default
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

        let result = ListMetricsOutputForListMetrics.__default
        
        completion(.success(result))
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

        return ListMetricsOutputForListMetrics.__default
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

        let result = ListTagsForResourceOutputForListTagsForResource.__default
        
        completion(.success(result))
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

        return ListTagsForResourceOutputForListTagsForResource.__default
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

        let result = PutAnomalyDetectorOutputForPutAnomalyDetector.__default
        
        completion(.success(result))
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

        return PutAnomalyDetectorOutputForPutAnomalyDetector.__default
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

        completion(nil)
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

        let result = PutDashboardOutputForPutDashboard.__default
        
        completion(.success(result))
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

        return PutDashboardOutputForPutDashboard.__default
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

        let result = PutInsightRuleOutputForPutInsightRule.__default
        
        completion(.success(result))
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

        return PutInsightRuleOutputForPutInsightRule.__default
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

        completion(nil)
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

        completion(nil)
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

        completion(nil)
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

        let result = TagResourceOutputForTagResource.__default
        
        completion(.success(result))
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

        return TagResourceOutputForTagResource.__default
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

        let result = UntagResourceOutputForUntagResource.__default
        
        completion(.success(result))
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

        return UntagResourceOutputForUntagResource.__default
    }
}
