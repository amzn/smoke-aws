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
// MockCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeHTTPClient

/**
 Mock Client for the CloudWatch service by default returns the `__default` property of its return type.
 */
public struct MockCloudWatchClient: CloudWatchClientProtocol {
    let deleteAlarmsAsyncOverride: CloudWatchClientProtocol.DeleteAlarmsAsyncType?
    let deleteAlarmsSyncOverride: CloudWatchClientProtocol.DeleteAlarmsSyncType?
    let deleteAnomalyDetectorAsyncOverride: CloudWatchClientProtocol.DeleteAnomalyDetectorAsyncType?
    let deleteAnomalyDetectorSyncOverride: CloudWatchClientProtocol.DeleteAnomalyDetectorSyncType?
    let deleteDashboardsAsyncOverride: CloudWatchClientProtocol.DeleteDashboardsAsyncType?
    let deleteDashboardsSyncOverride: CloudWatchClientProtocol.DeleteDashboardsSyncType?
    let deleteInsightRulesAsyncOverride: CloudWatchClientProtocol.DeleteInsightRulesAsyncType?
    let deleteInsightRulesSyncOverride: CloudWatchClientProtocol.DeleteInsightRulesSyncType?
    let describeAlarmHistoryAsyncOverride: CloudWatchClientProtocol.DescribeAlarmHistoryAsyncType?
    let describeAlarmHistorySyncOverride: CloudWatchClientProtocol.DescribeAlarmHistorySyncType?
    let describeAlarmsAsyncOverride: CloudWatchClientProtocol.DescribeAlarmsAsyncType?
    let describeAlarmsSyncOverride: CloudWatchClientProtocol.DescribeAlarmsSyncType?
    let describeAlarmsForMetricAsyncOverride: CloudWatchClientProtocol.DescribeAlarmsForMetricAsyncType?
    let describeAlarmsForMetricSyncOverride: CloudWatchClientProtocol.DescribeAlarmsForMetricSyncType?
    let describeAnomalyDetectorsAsyncOverride: CloudWatchClientProtocol.DescribeAnomalyDetectorsAsyncType?
    let describeAnomalyDetectorsSyncOverride: CloudWatchClientProtocol.DescribeAnomalyDetectorsSyncType?
    let describeInsightRulesAsyncOverride: CloudWatchClientProtocol.DescribeInsightRulesAsyncType?
    let describeInsightRulesSyncOverride: CloudWatchClientProtocol.DescribeInsightRulesSyncType?
    let disableAlarmActionsAsyncOverride: CloudWatchClientProtocol.DisableAlarmActionsAsyncType?
    let disableAlarmActionsSyncOverride: CloudWatchClientProtocol.DisableAlarmActionsSyncType?
    let disableInsightRulesAsyncOverride: CloudWatchClientProtocol.DisableInsightRulesAsyncType?
    let disableInsightRulesSyncOverride: CloudWatchClientProtocol.DisableInsightRulesSyncType?
    let enableAlarmActionsAsyncOverride: CloudWatchClientProtocol.EnableAlarmActionsAsyncType?
    let enableAlarmActionsSyncOverride: CloudWatchClientProtocol.EnableAlarmActionsSyncType?
    let enableInsightRulesAsyncOverride: CloudWatchClientProtocol.EnableInsightRulesAsyncType?
    let enableInsightRulesSyncOverride: CloudWatchClientProtocol.EnableInsightRulesSyncType?
    let getDashboardAsyncOverride: CloudWatchClientProtocol.GetDashboardAsyncType?
    let getDashboardSyncOverride: CloudWatchClientProtocol.GetDashboardSyncType?
    let getInsightRuleReportAsyncOverride: CloudWatchClientProtocol.GetInsightRuleReportAsyncType?
    let getInsightRuleReportSyncOverride: CloudWatchClientProtocol.GetInsightRuleReportSyncType?
    let getMetricDataAsyncOverride: CloudWatchClientProtocol.GetMetricDataAsyncType?
    let getMetricDataSyncOverride: CloudWatchClientProtocol.GetMetricDataSyncType?
    let getMetricStatisticsAsyncOverride: CloudWatchClientProtocol.GetMetricStatisticsAsyncType?
    let getMetricStatisticsSyncOverride: CloudWatchClientProtocol.GetMetricStatisticsSyncType?
    let getMetricWidgetImageAsyncOverride: CloudWatchClientProtocol.GetMetricWidgetImageAsyncType?
    let getMetricWidgetImageSyncOverride: CloudWatchClientProtocol.GetMetricWidgetImageSyncType?
    let listDashboardsAsyncOverride: CloudWatchClientProtocol.ListDashboardsAsyncType?
    let listDashboardsSyncOverride: CloudWatchClientProtocol.ListDashboardsSyncType?
    let listMetricsAsyncOverride: CloudWatchClientProtocol.ListMetricsAsyncType?
    let listMetricsSyncOverride: CloudWatchClientProtocol.ListMetricsSyncType?
    let listTagsForResourceAsyncOverride: CloudWatchClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: CloudWatchClientProtocol.ListTagsForResourceSyncType?
    let putAnomalyDetectorAsyncOverride: CloudWatchClientProtocol.PutAnomalyDetectorAsyncType?
    let putAnomalyDetectorSyncOverride: CloudWatchClientProtocol.PutAnomalyDetectorSyncType?
    let putCompositeAlarmAsyncOverride: CloudWatchClientProtocol.PutCompositeAlarmAsyncType?
    let putCompositeAlarmSyncOverride: CloudWatchClientProtocol.PutCompositeAlarmSyncType?
    let putDashboardAsyncOverride: CloudWatchClientProtocol.PutDashboardAsyncType?
    let putDashboardSyncOverride: CloudWatchClientProtocol.PutDashboardSyncType?
    let putInsightRuleAsyncOverride: CloudWatchClientProtocol.PutInsightRuleAsyncType?
    let putInsightRuleSyncOverride: CloudWatchClientProtocol.PutInsightRuleSyncType?
    let putMetricAlarmAsyncOverride: CloudWatchClientProtocol.PutMetricAlarmAsyncType?
    let putMetricAlarmSyncOverride: CloudWatchClientProtocol.PutMetricAlarmSyncType?
    let putMetricDataAsyncOverride: CloudWatchClientProtocol.PutMetricDataAsyncType?
    let putMetricDataSyncOverride: CloudWatchClientProtocol.PutMetricDataSyncType?
    let setAlarmStateAsyncOverride: CloudWatchClientProtocol.SetAlarmStateAsyncType?
    let setAlarmStateSyncOverride: CloudWatchClientProtocol.SetAlarmStateSyncType?
    let tagResourceAsyncOverride: CloudWatchClientProtocol.TagResourceAsyncType?
    let tagResourceSyncOverride: CloudWatchClientProtocol.TagResourceSyncType?
    let untagResourceAsyncOverride: CloudWatchClientProtocol.UntagResourceAsyncType?
    let untagResourceSyncOverride: CloudWatchClientProtocol.UntagResourceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            deleteAlarmsAsync: CloudWatchClientProtocol.DeleteAlarmsAsyncType? = nil,
            deleteAlarmsSync: CloudWatchClientProtocol.DeleteAlarmsSyncType? = nil,
            deleteAnomalyDetectorAsync: CloudWatchClientProtocol.DeleteAnomalyDetectorAsyncType? = nil,
            deleteAnomalyDetectorSync: CloudWatchClientProtocol.DeleteAnomalyDetectorSyncType? = nil,
            deleteDashboardsAsync: CloudWatchClientProtocol.DeleteDashboardsAsyncType? = nil,
            deleteDashboardsSync: CloudWatchClientProtocol.DeleteDashboardsSyncType? = nil,
            deleteInsightRulesAsync: CloudWatchClientProtocol.DeleteInsightRulesAsyncType? = nil,
            deleteInsightRulesSync: CloudWatchClientProtocol.DeleteInsightRulesSyncType? = nil,
            describeAlarmHistoryAsync: CloudWatchClientProtocol.DescribeAlarmHistoryAsyncType? = nil,
            describeAlarmHistorySync: CloudWatchClientProtocol.DescribeAlarmHistorySyncType? = nil,
            describeAlarmsAsync: CloudWatchClientProtocol.DescribeAlarmsAsyncType? = nil,
            describeAlarmsSync: CloudWatchClientProtocol.DescribeAlarmsSyncType? = nil,
            describeAlarmsForMetricAsync: CloudWatchClientProtocol.DescribeAlarmsForMetricAsyncType? = nil,
            describeAlarmsForMetricSync: CloudWatchClientProtocol.DescribeAlarmsForMetricSyncType? = nil,
            describeAnomalyDetectorsAsync: CloudWatchClientProtocol.DescribeAnomalyDetectorsAsyncType? = nil,
            describeAnomalyDetectorsSync: CloudWatchClientProtocol.DescribeAnomalyDetectorsSyncType? = nil,
            describeInsightRulesAsync: CloudWatchClientProtocol.DescribeInsightRulesAsyncType? = nil,
            describeInsightRulesSync: CloudWatchClientProtocol.DescribeInsightRulesSyncType? = nil,
            disableAlarmActionsAsync: CloudWatchClientProtocol.DisableAlarmActionsAsyncType? = nil,
            disableAlarmActionsSync: CloudWatchClientProtocol.DisableAlarmActionsSyncType? = nil,
            disableInsightRulesAsync: CloudWatchClientProtocol.DisableInsightRulesAsyncType? = nil,
            disableInsightRulesSync: CloudWatchClientProtocol.DisableInsightRulesSyncType? = nil,
            enableAlarmActionsAsync: CloudWatchClientProtocol.EnableAlarmActionsAsyncType? = nil,
            enableAlarmActionsSync: CloudWatchClientProtocol.EnableAlarmActionsSyncType? = nil,
            enableInsightRulesAsync: CloudWatchClientProtocol.EnableInsightRulesAsyncType? = nil,
            enableInsightRulesSync: CloudWatchClientProtocol.EnableInsightRulesSyncType? = nil,
            getDashboardAsync: CloudWatchClientProtocol.GetDashboardAsyncType? = nil,
            getDashboardSync: CloudWatchClientProtocol.GetDashboardSyncType? = nil,
            getInsightRuleReportAsync: CloudWatchClientProtocol.GetInsightRuleReportAsyncType? = nil,
            getInsightRuleReportSync: CloudWatchClientProtocol.GetInsightRuleReportSyncType? = nil,
            getMetricDataAsync: CloudWatchClientProtocol.GetMetricDataAsyncType? = nil,
            getMetricDataSync: CloudWatchClientProtocol.GetMetricDataSyncType? = nil,
            getMetricStatisticsAsync: CloudWatchClientProtocol.GetMetricStatisticsAsyncType? = nil,
            getMetricStatisticsSync: CloudWatchClientProtocol.GetMetricStatisticsSyncType? = nil,
            getMetricWidgetImageAsync: CloudWatchClientProtocol.GetMetricWidgetImageAsyncType? = nil,
            getMetricWidgetImageSync: CloudWatchClientProtocol.GetMetricWidgetImageSyncType? = nil,
            listDashboardsAsync: CloudWatchClientProtocol.ListDashboardsAsyncType? = nil,
            listDashboardsSync: CloudWatchClientProtocol.ListDashboardsSyncType? = nil,
            listMetricsAsync: CloudWatchClientProtocol.ListMetricsAsyncType? = nil,
            listMetricsSync: CloudWatchClientProtocol.ListMetricsSyncType? = nil,
            listTagsForResourceAsync: CloudWatchClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: CloudWatchClientProtocol.ListTagsForResourceSyncType? = nil,
            putAnomalyDetectorAsync: CloudWatchClientProtocol.PutAnomalyDetectorAsyncType? = nil,
            putAnomalyDetectorSync: CloudWatchClientProtocol.PutAnomalyDetectorSyncType? = nil,
            putCompositeAlarmAsync: CloudWatchClientProtocol.PutCompositeAlarmAsyncType? = nil,
            putCompositeAlarmSync: CloudWatchClientProtocol.PutCompositeAlarmSyncType? = nil,
            putDashboardAsync: CloudWatchClientProtocol.PutDashboardAsyncType? = nil,
            putDashboardSync: CloudWatchClientProtocol.PutDashboardSyncType? = nil,
            putInsightRuleAsync: CloudWatchClientProtocol.PutInsightRuleAsyncType? = nil,
            putInsightRuleSync: CloudWatchClientProtocol.PutInsightRuleSyncType? = nil,
            putMetricAlarmAsync: CloudWatchClientProtocol.PutMetricAlarmAsyncType? = nil,
            putMetricAlarmSync: CloudWatchClientProtocol.PutMetricAlarmSyncType? = nil,
            putMetricDataAsync: CloudWatchClientProtocol.PutMetricDataAsyncType? = nil,
            putMetricDataSync: CloudWatchClientProtocol.PutMetricDataSyncType? = nil,
            setAlarmStateAsync: CloudWatchClientProtocol.SetAlarmStateAsyncType? = nil,
            setAlarmStateSync: CloudWatchClientProtocol.SetAlarmStateSyncType? = nil,
            tagResourceAsync: CloudWatchClientProtocol.TagResourceAsyncType? = nil,
            tagResourceSync: CloudWatchClientProtocol.TagResourceSyncType? = nil,
            untagResourceAsync: CloudWatchClientProtocol.UntagResourceAsyncType? = nil,
            untagResourceSync: CloudWatchClientProtocol.UntagResourceSyncType? = nil) {
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
    public func deleteAlarmsAsync(input: CloudWatchModel.DeleteAlarmsInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func deleteAlarmsSync(input: CloudWatchModel.DeleteAlarmsInput) throws {
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
    public func deleteAnomalyDetectorAsync(input: CloudWatchModel.DeleteAnomalyDetectorInput, completion: @escaping (HTTPResult<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector>) -> ()) throws {
        if let deleteAnomalyDetectorAsyncOverride = deleteAnomalyDetectorAsyncOverride {
            return try deleteAnomalyDetectorAsyncOverride(input, completion)
        }

        let result = DeleteAnomalyDetectorOutputForDeleteAnomalyDetector.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetectorSync(input: CloudWatchModel.DeleteAnomalyDetectorInput) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
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
    public func deleteDashboardsAsync(input: CloudWatchModel.DeleteDashboardsInput, completion: @escaping (HTTPResult<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards>) -> ()) throws {
        if let deleteDashboardsAsyncOverride = deleteDashboardsAsyncOverride {
            return try deleteDashboardsAsyncOverride(input, completion)
        }

        let result = DeleteDashboardsOutputForDeleteDashboards.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboardsSync(input: CloudWatchModel.DeleteDashboardsInput) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
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
    public func deleteInsightRulesAsync(input: CloudWatchModel.DeleteInsightRulesInput, completion: @escaping (HTTPResult<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules>) -> ()) throws {
        if let deleteInsightRulesAsyncOverride = deleteInsightRulesAsyncOverride {
            return try deleteInsightRulesAsyncOverride(input, completion)
        }

        let result = DeleteInsightRulesOutputForDeleteInsightRules.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func deleteInsightRulesSync(input: CloudWatchModel.DeleteInsightRulesInput) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules {
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
    public func describeAlarmHistoryAsync(input: CloudWatchModel.DescribeAlarmHistoryInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory>) -> ()) throws {
        if let describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsyncOverride {
            return try describeAlarmHistoryAsyncOverride(input, completion)
        }

        let result = DescribeAlarmHistoryOutputForDescribeAlarmHistory.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmHistorySync(input: CloudWatchModel.DescribeAlarmHistoryInput) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
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
    public func describeAlarmsAsync(input: CloudWatchModel.DescribeAlarmsInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms>) -> ()) throws {
        if let describeAlarmsAsyncOverride = describeAlarmsAsyncOverride {
            return try describeAlarmsAsyncOverride(input, completion)
        }

        let result = DescribeAlarmsOutputForDescribeAlarms.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmsSync(input: CloudWatchModel.DescribeAlarmsInput) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
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
    public func describeAlarmsForMetricAsync(input: CloudWatchModel.DescribeAlarmsForMetricInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric>) -> ()) throws {
        if let describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsyncOverride {
            return try describeAlarmsForMetricAsyncOverride(input, completion)
        }

        let result = DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricSync(input: CloudWatchModel.DescribeAlarmsForMetricInput) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
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
    public func describeAnomalyDetectorsAsync(input: CloudWatchModel.DescribeAnomalyDetectorsInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors>) -> ()) throws {
        if let describeAnomalyDetectorsAsyncOverride = describeAnomalyDetectorsAsyncOverride {
            return try describeAnomalyDetectorsAsyncOverride(input, completion)
        }

        let result = DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeAnomalyDetectors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue.
     */
    public func describeAnomalyDetectorsSync(input: CloudWatchModel.DescribeAnomalyDetectorsInput) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
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
    public func describeInsightRulesAsync(input: CloudWatchModel.DescribeInsightRulesInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules>) -> ()) throws {
        if let describeInsightRulesAsyncOverride = describeInsightRulesAsyncOverride {
            return try describeInsightRulesAsyncOverride(input, completion)
        }

        let result = DescribeInsightRulesOutputForDescribeInsightRules.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeInsightRulesSync(input: CloudWatchModel.DescribeInsightRulesInput) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules {
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
    public func disableAlarmActionsAsync(input: CloudWatchModel.DisableAlarmActionsInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func disableAlarmActionsSync(input: CloudWatchModel.DisableAlarmActionsInput) throws {
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
    public func disableInsightRulesAsync(input: CloudWatchModel.DisableInsightRulesInput, completion: @escaping (HTTPResult<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules>) -> ()) throws {
        if let disableInsightRulesAsyncOverride = disableInsightRulesAsyncOverride {
            return try disableInsightRulesAsyncOverride(input, completion)
        }

        let result = DisableInsightRulesOutputForDisableInsightRules.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DisableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func disableInsightRulesSync(input: CloudWatchModel.DisableInsightRulesInput) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules {
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
    public func enableAlarmActionsAsync(input: CloudWatchModel.EnableAlarmActionsInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func enableAlarmActionsSync(input: CloudWatchModel.EnableAlarmActionsInput) throws {
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
    public func enableInsightRulesAsync(input: CloudWatchModel.EnableInsightRulesInput, completion: @escaping (HTTPResult<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules>) -> ()) throws {
        if let enableInsightRulesAsyncOverride = enableInsightRulesAsyncOverride {
            return try enableInsightRulesAsyncOverride(input, completion)
        }

        let result = EnableInsightRulesOutputForEnableInsightRules.__default
        
        completion(.response(result))
    }

    /**
     Invokes the EnableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func enableInsightRulesSync(input: CloudWatchModel.EnableInsightRulesInput) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules {
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
    public func getDashboardAsync(input: CloudWatchModel.GetDashboardInput, completion: @escaping (HTTPResult<CloudWatchModel.GetDashboardOutputForGetDashboard>) -> ()) throws {
        if let getDashboardAsyncOverride = getDashboardAsyncOverride {
            return try getDashboardAsyncOverride(input, completion)
        }

        let result = GetDashboardOutputForGetDashboard.__default
        
        completion(.response(result))
    }

    /**
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboardSync(input: CloudWatchModel.GetDashboardInput) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
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
    public func getInsightRuleReportAsync(input: CloudWatchModel.GetInsightRuleReportInput, completion: @escaping (HTTPResult<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport>) -> ()) throws {
        if let getInsightRuleReportAsyncOverride = getInsightRuleReportAsyncOverride {
            return try getInsightRuleReportAsyncOverride(input, completion)
        }

        let result = GetInsightRuleReportOutputForGetInsightRuleReport.__default
        
        completion(.response(result))
    }

    /**
     Invokes the GetInsightRuleReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getInsightRuleReportSync(input: CloudWatchModel.GetInsightRuleReportInput) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport {
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
    public func getMetricDataAsync(input: CloudWatchModel.GetMetricDataInput, completion: @escaping (HTTPResult<CloudWatchModel.GetMetricDataOutputForGetMetricData>) -> ()) throws {
        if let getMetricDataAsyncOverride = getMetricDataAsyncOverride {
            return try getMetricDataAsyncOverride(input, completion)
        }

        let result = GetMetricDataOutputForGetMetricData.__default
        
        completion(.response(result))
    }

    /**
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func getMetricDataSync(input: CloudWatchModel.GetMetricDataInput) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
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
    public func getMetricStatisticsAsync(input: CloudWatchModel.GetMetricStatisticsInput, completion: @escaping (HTTPResult<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics>) -> ()) throws {
        if let getMetricStatisticsAsyncOverride = getMetricStatisticsAsyncOverride {
            return try getMetricStatisticsAsyncOverride(input, completion)
        }

        let result = GetMetricStatisticsOutputForGetMetricStatistics.__default
        
        completion(.response(result))
    }

    /**
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatisticsSync(input: CloudWatchModel.GetMetricStatisticsInput) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
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
    public func getMetricWidgetImageAsync(input: CloudWatchModel.GetMetricWidgetImageInput, completion: @escaping (HTTPResult<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage>) -> ()) throws {
        if let getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsyncOverride {
            return try getMetricWidgetImageAsyncOverride(input, completion)
        }

        let result = GetMetricWidgetImageOutputForGetMetricWidgetImage.__default
        
        completion(.response(result))
    }

    /**
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getMetricWidgetImageSync(input: CloudWatchModel.GetMetricWidgetImageInput) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
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
    public func listDashboardsAsync(input: CloudWatchModel.ListDashboardsInput, completion: @escaping (HTTPResult<CloudWatchModel.ListDashboardsOutputForListDashboards>) -> ()) throws {
        if let listDashboardsAsyncOverride = listDashboardsAsyncOverride {
            return try listDashboardsAsyncOverride(input, completion)
        }

        let result = ListDashboardsOutputForListDashboards.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listDashboardsSync(input: CloudWatchModel.ListDashboardsInput) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
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
    public func listMetricsAsync(input: CloudWatchModel.ListMetricsInput, completion: @escaping (HTTPResult<CloudWatchModel.ListMetricsOutputForListMetrics>) -> ()) throws {
        if let listMetricsAsyncOverride = listMetricsAsyncOverride {
            return try listMetricsAsyncOverride(input, completion)
        }

        let result = ListMetricsOutputForListMetrics.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listMetricsSync(input: CloudWatchModel.ListMetricsInput) throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
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
    public func listTagsForResourceAsync(input: CloudWatchModel.ListTagsForResourceInput, completion: @escaping (HTTPResult<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        let result = ListTagsForResourceOutputForListTagsForResource.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResourceSync(input: CloudWatchModel.ListTagsForResourceInput) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
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
    public func putAnomalyDetectorAsync(input: CloudWatchModel.PutAnomalyDetectorInput, completion: @escaping (HTTPResult<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector>) -> ()) throws {
        if let putAnomalyDetectorAsyncOverride = putAnomalyDetectorAsyncOverride {
            return try putAnomalyDetectorAsyncOverride(input, completion)
        }

        let result = PutAnomalyDetectorOutputForPutAnomalyDetector.__default
        
        completion(.response(result))
    }

    /**
     Invokes the PutAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetectorSync(input: CloudWatchModel.PutAnomalyDetectorInput) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
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
    public func putCompositeAlarmAsync(input: CloudWatchModel.PutCompositeAlarmInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func putCompositeAlarmSync(input: CloudWatchModel.PutCompositeAlarmInput) throws {
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
    public func putDashboardAsync(input: CloudWatchModel.PutDashboardInput, completion: @escaping (HTTPResult<CloudWatchModel.PutDashboardOutputForPutDashboard>) -> ()) throws {
        if let putDashboardAsyncOverride = putDashboardAsyncOverride {
            return try putDashboardAsyncOverride(input, completion)
        }

        let result = PutDashboardOutputForPutDashboard.__default
        
        completion(.response(result))
    }

    /**
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    public func putDashboardSync(input: CloudWatchModel.PutDashboardInput) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
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
    public func putInsightRuleAsync(input: CloudWatchModel.PutInsightRuleInput, completion: @escaping (HTTPResult<CloudWatchModel.PutInsightRuleOutputForPutInsightRule>) -> ()) throws {
        if let putInsightRuleAsyncOverride = putInsightRuleAsyncOverride {
            return try putInsightRuleAsyncOverride(input, completion)
        }

        let result = PutInsightRuleOutputForPutInsightRule.__default
        
        completion(.response(result))
    }

    /**
     Invokes the PutInsightRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putInsightRuleSync(input: CloudWatchModel.PutInsightRuleInput) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule {
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
    public func putMetricAlarmAsync(input: CloudWatchModel.PutMetricAlarmInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func putMetricAlarmSync(input: CloudWatchModel.PutMetricAlarmInput) throws {
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
    public func putMetricDataAsync(input: CloudWatchModel.PutMetricDataInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func putMetricDataSync(input: CloudWatchModel.PutMetricDataInput) throws {
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
    public func setAlarmStateAsync(input: CloudWatchModel.SetAlarmStateInput, completion: @escaping (Swift.Error?) -> ()) throws {
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
    public func setAlarmStateSync(input: CloudWatchModel.SetAlarmStateInput) throws {
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
    public func tagResourceAsync(input: CloudWatchModel.TagResourceInput, completion: @escaping (HTTPResult<CloudWatchModel.TagResourceOutputForTagResource>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        let result = TagResourceOutputForTagResource.__default
        
        completion(.response(result))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResourceSync(input: CloudWatchModel.TagResourceInput) throws -> CloudWatchModel.TagResourceOutputForTagResource {
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
    public func untagResourceAsync(input: CloudWatchModel.UntagResourceInput, completion: @escaping (HTTPResult<CloudWatchModel.UntagResourceOutputForUntagResource>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        let result = UntagResourceOutputForUntagResource.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResourceSync(input: CloudWatchModel.UntagResourceInput) throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        return UntagResourceOutputForUntagResource.__default
    }
}
