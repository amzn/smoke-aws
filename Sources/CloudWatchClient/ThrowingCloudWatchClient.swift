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
    let error: HTTPClientError
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
    public init(error: HTTPClientError,
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
        self.error = error
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteAlarmsAsyncOverride = deleteAlarmsAsyncOverride {
            return try deleteAlarmsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DeleteAlarmsInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteAlarmsSyncOverride = deleteAlarmsSyncOverride {
            return try deleteAlarmsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, HTTPClientError>) -> ()) throws {
        if let deleteAnomalyDetectorAsyncOverride = deleteAnomalyDetectorAsyncOverride {
            return try deleteAnomalyDetectorAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DeleteAnomalyDetectorInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        if let deleteAnomalyDetectorSyncOverride = deleteAnomalyDetectorSyncOverride {
            return try deleteAnomalyDetectorSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws {
        if let deleteDashboardsAsyncOverride = deleteDashboardsAsyncOverride {
            return try deleteDashboardsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DeleteDashboardsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        if let deleteDashboardsSyncOverride = deleteDashboardsSyncOverride {
            return try deleteDashboardsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, HTTPClientError>) -> ()) throws {
        if let deleteInsightRulesAsyncOverride = deleteInsightRulesAsyncOverride {
            return try deleteInsightRulesAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DeleteInsightRulesInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules {
        if let deleteInsightRulesSyncOverride = deleteInsightRulesSyncOverride {
            return try deleteInsightRulesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws {
        if let describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsyncOverride {
            return try describeAlarmHistoryAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DescribeAlarmHistoryInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        if let describeAlarmHistorySyncOverride = describeAlarmHistorySyncOverride {
            return try describeAlarmHistorySyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws {
        if let describeAlarmsAsyncOverride = describeAlarmsAsyncOverride {
            return try describeAlarmsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DescribeAlarmsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        if let describeAlarmsSyncOverride = describeAlarmsSyncOverride {
            return try describeAlarmsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws {
        if let describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsyncOverride {
            return try describeAlarmsForMetricAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DescribeAlarmsForMetricInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        if let describeAlarmsForMetricSyncOverride = describeAlarmsForMetricSyncOverride {
            return try describeAlarmsForMetricSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, HTTPClientError>) -> ()) throws {
        if let describeAnomalyDetectorsAsyncOverride = describeAnomalyDetectorsAsyncOverride {
            return try describeAnomalyDetectorsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DescribeAnomalyDetectorsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        if let describeAnomalyDetectorsSyncOverride = describeAnomalyDetectorsSyncOverride {
            return try describeAnomalyDetectorsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, HTTPClientError>) -> ()) throws {
        if let describeInsightRulesAsyncOverride = describeInsightRulesAsyncOverride {
            return try describeInsightRulesAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DescribeInsightRulesInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules {
        if let describeInsightRulesSyncOverride = describeInsightRulesSyncOverride {
            return try describeInsightRulesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let disableAlarmActionsAsyncOverride = disableAlarmActionsAsyncOverride {
            return try disableAlarmActionsAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActionsSync(
            input: CloudWatchModel.DisableAlarmActionsInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let disableAlarmActionsSyncOverride = disableAlarmActionsSyncOverride {
            return try disableAlarmActionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, HTTPClientError>) -> ()) throws {
        if let disableInsightRulesAsyncOverride = disableInsightRulesAsyncOverride {
            return try disableInsightRulesAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.DisableInsightRulesInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules {
        if let disableInsightRulesSyncOverride = disableInsightRulesSyncOverride {
            return try disableInsightRulesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let enableAlarmActionsAsyncOverride = enableAlarmActionsAsyncOverride {
            return try enableAlarmActionsAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActionsSync(
            input: CloudWatchModel.EnableAlarmActionsInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let enableAlarmActionsSyncOverride = enableAlarmActionsSyncOverride {
            return try enableAlarmActionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, HTTPClientError>) -> ()) throws {
        if let enableInsightRulesAsyncOverride = enableInsightRulesAsyncOverride {
            return try enableInsightRulesAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.EnableInsightRulesInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules {
        if let enableInsightRulesSyncOverride = enableInsightRulesSyncOverride {
            return try enableInsightRulesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws {
        if let getDashboardAsyncOverride = getDashboardAsyncOverride {
            return try getDashboardAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.GetDashboardInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        if let getDashboardSyncOverride = getDashboardSyncOverride {
            return try getDashboardSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, HTTPClientError>) -> ()) throws {
        if let getInsightRuleReportAsyncOverride = getInsightRuleReportAsyncOverride {
            return try getInsightRuleReportAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.GetInsightRuleReportInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport {
        if let getInsightRuleReportSyncOverride = getInsightRuleReportSyncOverride {
            return try getInsightRuleReportSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws {
        if let getMetricDataAsyncOverride = getMetricDataAsyncOverride {
            return try getMetricDataAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.GetMetricDataInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        if let getMetricDataSyncOverride = getMetricDataSyncOverride {
            return try getMetricDataSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws {
        if let getMetricStatisticsAsyncOverride = getMetricStatisticsAsyncOverride {
            return try getMetricStatisticsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.GetMetricStatisticsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        if let getMetricStatisticsSyncOverride = getMetricStatisticsSyncOverride {
            return try getMetricStatisticsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws {
        if let getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsyncOverride {
            return try getMetricWidgetImageAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.GetMetricWidgetImageInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        if let getMetricWidgetImageSyncOverride = getMetricWidgetImageSyncOverride {
            return try getMetricWidgetImageSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws {
        if let listDashboardsAsyncOverride = listDashboardsAsyncOverride {
            return try listDashboardsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.ListDashboardsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        if let listDashboardsSyncOverride = listDashboardsSyncOverride {
            return try listDashboardsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws {
        if let listMetricsAsyncOverride = listMetricsAsyncOverride {
            return try listMetricsAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.ListMetricsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
        if let listMetricsSyncOverride = listMetricsSyncOverride {
            return try listMetricsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.ListTagsForResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, HTTPClientError>) -> ()) throws {
        if let putAnomalyDetectorAsyncOverride = putAnomalyDetectorAsyncOverride {
            return try putAnomalyDetectorAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.PutAnomalyDetectorInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
        if let putAnomalyDetectorSyncOverride = putAnomalyDetectorSyncOverride {
            return try putAnomalyDetectorSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws {
        if let putDashboardAsyncOverride = putDashboardAsyncOverride {
            return try putDashboardAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.PutDashboardInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        if let putDashboardSyncOverride = putDashboardSyncOverride {
            return try putDashboardSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, HTTPClientError>) -> ()) throws {
        if let putInsightRuleAsyncOverride = putInsightRuleAsyncOverride {
            return try putInsightRuleAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.PutInsightRuleInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule {
        if let putInsightRuleSyncOverride = putInsightRuleSyncOverride {
            return try putInsightRuleSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricAlarmAsyncOverride = putMetricAlarmAsyncOverride {
            return try putMetricAlarmAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.PutMetricAlarmInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putMetricAlarmSyncOverride = putMetricAlarmSyncOverride {
            return try putMetricAlarmSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricDataAsyncOverride = putMetricDataAsyncOverride {
            return try putMetricDataAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.PutMetricDataInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putMetricDataSyncOverride = putMetricDataSyncOverride {
            return try putMetricDataSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setAlarmStateAsyncOverride = setAlarmStateAsyncOverride {
            return try setAlarmStateAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.SetAlarmStateInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let setAlarmStateSyncOverride = setAlarmStateSyncOverride {
            return try setAlarmStateSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.TagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.TagResourceOutputForTagResource {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, reporting, completion)
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
            input: CloudWatchModel.UntagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input, reporting)
        }

        throw error
    }
}
