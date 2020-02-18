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
public struct ThrowingCloudWatchClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: CloudWatchClientProtocol {
    let error: HTTPClientError
    let deleteAlarmsAsyncOverride: DeleteAlarmsAsyncType<ClientInvocationReportingType>?
    let deleteAlarmsSyncOverride: DeleteAlarmsSyncType<ClientInvocationReportingType>?
    let deleteAnomalyDetectorAsyncOverride: DeleteAnomalyDetectorAsyncType<ClientInvocationReportingType>?
    let deleteAnomalyDetectorSyncOverride: DeleteAnomalyDetectorSyncType<ClientInvocationReportingType>?
    let deleteDashboardsAsyncOverride: DeleteDashboardsAsyncType<ClientInvocationReportingType>?
    let deleteDashboardsSyncOverride: DeleteDashboardsSyncType<ClientInvocationReportingType>?
    let deleteInsightRulesAsyncOverride: DeleteInsightRulesAsyncType<ClientInvocationReportingType>?
    let deleteInsightRulesSyncOverride: DeleteInsightRulesSyncType<ClientInvocationReportingType>?
    let describeAlarmHistoryAsyncOverride: DescribeAlarmHistoryAsyncType<ClientInvocationReportingType>?
    let describeAlarmHistorySyncOverride: DescribeAlarmHistorySyncType<ClientInvocationReportingType>?
    let describeAlarmsAsyncOverride: DescribeAlarmsAsyncType<ClientInvocationReportingType>?
    let describeAlarmsSyncOverride: DescribeAlarmsSyncType<ClientInvocationReportingType>?
    let describeAlarmsForMetricAsyncOverride: DescribeAlarmsForMetricAsyncType<ClientInvocationReportingType>?
    let describeAlarmsForMetricSyncOverride: DescribeAlarmsForMetricSyncType<ClientInvocationReportingType>?
    let describeAnomalyDetectorsAsyncOverride: DescribeAnomalyDetectorsAsyncType<ClientInvocationReportingType>?
    let describeAnomalyDetectorsSyncOverride: DescribeAnomalyDetectorsSyncType<ClientInvocationReportingType>?
    let describeInsightRulesAsyncOverride: DescribeInsightRulesAsyncType<ClientInvocationReportingType>?
    let describeInsightRulesSyncOverride: DescribeInsightRulesSyncType<ClientInvocationReportingType>?
    let disableAlarmActionsAsyncOverride: DisableAlarmActionsAsyncType<ClientInvocationReportingType>?
    let disableAlarmActionsSyncOverride: DisableAlarmActionsSyncType<ClientInvocationReportingType>?
    let disableInsightRulesAsyncOverride: DisableInsightRulesAsyncType<ClientInvocationReportingType>?
    let disableInsightRulesSyncOverride: DisableInsightRulesSyncType<ClientInvocationReportingType>?
    let enableAlarmActionsAsyncOverride: EnableAlarmActionsAsyncType<ClientInvocationReportingType>?
    let enableAlarmActionsSyncOverride: EnableAlarmActionsSyncType<ClientInvocationReportingType>?
    let enableInsightRulesAsyncOverride: EnableInsightRulesAsyncType<ClientInvocationReportingType>?
    let enableInsightRulesSyncOverride: EnableInsightRulesSyncType<ClientInvocationReportingType>?
    let getDashboardAsyncOverride: GetDashboardAsyncType<ClientInvocationReportingType>?
    let getDashboardSyncOverride: GetDashboardSyncType<ClientInvocationReportingType>?
    let getInsightRuleReportAsyncOverride: GetInsightRuleReportAsyncType<ClientInvocationReportingType>?
    let getInsightRuleReportSyncOverride: GetInsightRuleReportSyncType<ClientInvocationReportingType>?
    let getMetricDataAsyncOverride: GetMetricDataAsyncType<ClientInvocationReportingType>?
    let getMetricDataSyncOverride: GetMetricDataSyncType<ClientInvocationReportingType>?
    let getMetricStatisticsAsyncOverride: GetMetricStatisticsAsyncType<ClientInvocationReportingType>?
    let getMetricStatisticsSyncOverride: GetMetricStatisticsSyncType<ClientInvocationReportingType>?
    let getMetricWidgetImageAsyncOverride: GetMetricWidgetImageAsyncType<ClientInvocationReportingType>?
    let getMetricWidgetImageSyncOverride: GetMetricWidgetImageSyncType<ClientInvocationReportingType>?
    let listDashboardsAsyncOverride: ListDashboardsAsyncType<ClientInvocationReportingType>?
    let listDashboardsSyncOverride: ListDashboardsSyncType<ClientInvocationReportingType>?
    let listMetricsAsyncOverride: ListMetricsAsyncType<ClientInvocationReportingType>?
    let listMetricsSyncOverride: ListMetricsSyncType<ClientInvocationReportingType>?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType<ClientInvocationReportingType>?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType<ClientInvocationReportingType>?
    let putAnomalyDetectorAsyncOverride: PutAnomalyDetectorAsyncType<ClientInvocationReportingType>?
    let putAnomalyDetectorSyncOverride: PutAnomalyDetectorSyncType<ClientInvocationReportingType>?
    let putDashboardAsyncOverride: PutDashboardAsyncType<ClientInvocationReportingType>?
    let putDashboardSyncOverride: PutDashboardSyncType<ClientInvocationReportingType>?
    let putInsightRuleAsyncOverride: PutInsightRuleAsyncType<ClientInvocationReportingType>?
    let putInsightRuleSyncOverride: PutInsightRuleSyncType<ClientInvocationReportingType>?
    let putMetricAlarmAsyncOverride: PutMetricAlarmAsyncType<ClientInvocationReportingType>?
    let putMetricAlarmSyncOverride: PutMetricAlarmSyncType<ClientInvocationReportingType>?
    let putMetricDataAsyncOverride: PutMetricDataAsyncType<ClientInvocationReportingType>?
    let putMetricDataSyncOverride: PutMetricDataSyncType<ClientInvocationReportingType>?
    let setAlarmStateAsyncOverride: SetAlarmStateAsyncType<ClientInvocationReportingType>?
    let setAlarmStateSyncOverride: SetAlarmStateSyncType<ClientInvocationReportingType>?
    let tagResourceAsyncOverride: TagResourceAsyncType<ClientInvocationReportingType>?
    let tagResourceSyncOverride: TagResourceSyncType<ClientInvocationReportingType>?
    let untagResourceAsyncOverride: UntagResourceAsyncType<ClientInvocationReportingType>?
    let untagResourceSyncOverride: UntagResourceSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            deleteAlarmsAsync: DeleteAlarmsAsyncType<ClientInvocationReportingType>? = nil,
            deleteAlarmsSync: DeleteAlarmsSyncType<ClientInvocationReportingType>? = nil,
            deleteAnomalyDetectorAsync: DeleteAnomalyDetectorAsyncType<ClientInvocationReportingType>? = nil,
            deleteAnomalyDetectorSync: DeleteAnomalyDetectorSyncType<ClientInvocationReportingType>? = nil,
            deleteDashboardsAsync: DeleteDashboardsAsyncType<ClientInvocationReportingType>? = nil,
            deleteDashboardsSync: DeleteDashboardsSyncType<ClientInvocationReportingType>? = nil,
            deleteInsightRulesAsync: DeleteInsightRulesAsyncType<ClientInvocationReportingType>? = nil,
            deleteInsightRulesSync: DeleteInsightRulesSyncType<ClientInvocationReportingType>? = nil,
            describeAlarmHistoryAsync: DescribeAlarmHistoryAsyncType<ClientInvocationReportingType>? = nil,
            describeAlarmHistorySync: DescribeAlarmHistorySyncType<ClientInvocationReportingType>? = nil,
            describeAlarmsAsync: DescribeAlarmsAsyncType<ClientInvocationReportingType>? = nil,
            describeAlarmsSync: DescribeAlarmsSyncType<ClientInvocationReportingType>? = nil,
            describeAlarmsForMetricAsync: DescribeAlarmsForMetricAsyncType<ClientInvocationReportingType>? = nil,
            describeAlarmsForMetricSync: DescribeAlarmsForMetricSyncType<ClientInvocationReportingType>? = nil,
            describeAnomalyDetectorsAsync: DescribeAnomalyDetectorsAsyncType<ClientInvocationReportingType>? = nil,
            describeAnomalyDetectorsSync: DescribeAnomalyDetectorsSyncType<ClientInvocationReportingType>? = nil,
            describeInsightRulesAsync: DescribeInsightRulesAsyncType<ClientInvocationReportingType>? = nil,
            describeInsightRulesSync: DescribeInsightRulesSyncType<ClientInvocationReportingType>? = nil,
            disableAlarmActionsAsync: DisableAlarmActionsAsyncType<ClientInvocationReportingType>? = nil,
            disableAlarmActionsSync: DisableAlarmActionsSyncType<ClientInvocationReportingType>? = nil,
            disableInsightRulesAsync: DisableInsightRulesAsyncType<ClientInvocationReportingType>? = nil,
            disableInsightRulesSync: DisableInsightRulesSyncType<ClientInvocationReportingType>? = nil,
            enableAlarmActionsAsync: EnableAlarmActionsAsyncType<ClientInvocationReportingType>? = nil,
            enableAlarmActionsSync: EnableAlarmActionsSyncType<ClientInvocationReportingType>? = nil,
            enableInsightRulesAsync: EnableInsightRulesAsyncType<ClientInvocationReportingType>? = nil,
            enableInsightRulesSync: EnableInsightRulesSyncType<ClientInvocationReportingType>? = nil,
            getDashboardAsync: GetDashboardAsyncType<ClientInvocationReportingType>? = nil,
            getDashboardSync: GetDashboardSyncType<ClientInvocationReportingType>? = nil,
            getInsightRuleReportAsync: GetInsightRuleReportAsyncType<ClientInvocationReportingType>? = nil,
            getInsightRuleReportSync: GetInsightRuleReportSyncType<ClientInvocationReportingType>? = nil,
            getMetricDataAsync: GetMetricDataAsyncType<ClientInvocationReportingType>? = nil,
            getMetricDataSync: GetMetricDataSyncType<ClientInvocationReportingType>? = nil,
            getMetricStatisticsAsync: GetMetricStatisticsAsyncType<ClientInvocationReportingType>? = nil,
            getMetricStatisticsSync: GetMetricStatisticsSyncType<ClientInvocationReportingType>? = nil,
            getMetricWidgetImageAsync: GetMetricWidgetImageAsyncType<ClientInvocationReportingType>? = nil,
            getMetricWidgetImageSync: GetMetricWidgetImageSyncType<ClientInvocationReportingType>? = nil,
            listDashboardsAsync: ListDashboardsAsyncType<ClientInvocationReportingType>? = nil,
            listDashboardsSync: ListDashboardsSyncType<ClientInvocationReportingType>? = nil,
            listMetricsAsync: ListMetricsAsyncType<ClientInvocationReportingType>? = nil,
            listMetricsSync: ListMetricsSyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType<ClientInvocationReportingType>? = nil,
            putAnomalyDetectorAsync: PutAnomalyDetectorAsyncType<ClientInvocationReportingType>? = nil,
            putAnomalyDetectorSync: PutAnomalyDetectorSyncType<ClientInvocationReportingType>? = nil,
            putDashboardAsync: PutDashboardAsyncType<ClientInvocationReportingType>? = nil,
            putDashboardSync: PutDashboardSyncType<ClientInvocationReportingType>? = nil,
            putInsightRuleAsync: PutInsightRuleAsyncType<ClientInvocationReportingType>? = nil,
            putInsightRuleSync: PutInsightRuleSyncType<ClientInvocationReportingType>? = nil,
            putMetricAlarmAsync: PutMetricAlarmAsyncType<ClientInvocationReportingType>? = nil,
            putMetricAlarmSync: PutMetricAlarmSyncType<ClientInvocationReportingType>? = nil,
            putMetricDataAsync: PutMetricDataAsyncType<ClientInvocationReportingType>? = nil,
            putMetricDataSync: PutMetricDataSyncType<ClientInvocationReportingType>? = nil,
            setAlarmStateAsync: SetAlarmStateAsyncType<ClientInvocationReportingType>? = nil,
            setAlarmStateSync: SetAlarmStateSyncType<ClientInvocationReportingType>? = nil,
            tagResourceAsync: TagResourceAsyncType<ClientInvocationReportingType>? = nil,
            tagResourceSync: TagResourceSyncType<ClientInvocationReportingType>? = nil,
            untagResourceAsync: UntagResourceAsyncType<ClientInvocationReportingType>? = nil,
            untagResourceSync: UntagResourceSyncType<ClientInvocationReportingType>? = nil) {
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
    public func deleteAlarmsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAlarmsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteAlarmsAsyncOverrideNonOptional = deleteAlarmsAsyncOverride {
            if let deleteAlarmsAsyncOverrideTyped = deleteAlarmsAsyncOverrideNonOptional
                    as? DeleteAlarmsAsyncType<InvocationReportingType> {
                return try deleteAlarmsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    public func deleteAlarmsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAlarmsInput,
            reporting: InvocationReportingType) throws {
        if let deleteAlarmsSyncOverrideNonOptional = deleteAlarmsSyncOverride {
            if let deleteAlarmsSyncOverrideTyped = deleteAlarmsSyncOverrideNonOptional
                    as? DeleteAlarmsSyncType<InvocationReportingType> {
                return try deleteAlarmsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteAnomalyDetectorAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, HTTPClientError>) -> ()) throws {
        if let deleteAnomalyDetectorAsyncOverrideNonOptional = deleteAnomalyDetectorAsyncOverride {
            if let deleteAnomalyDetectorAsyncOverrideTyped = deleteAnomalyDetectorAsyncOverrideNonOptional
                    as? DeleteAnomalyDetectorAsyncType<InvocationReportingType> {
                return try deleteAnomalyDetectorAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteAnomalyDetectorSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAnomalyDetectorInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        if let deleteAnomalyDetectorSyncOverrideNonOptional = deleteAnomalyDetectorSyncOverride {
            if let deleteAnomalyDetectorSyncOverrideTyped = deleteAnomalyDetectorSyncOverrideNonOptional
                    as? DeleteAnomalyDetectorSyncType<InvocationReportingType> {
                return try deleteAnomalyDetectorSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteDashboardsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteDashboardsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws {
        if let deleteDashboardsAsyncOverrideNonOptional = deleteDashboardsAsyncOverride {
            if let deleteDashboardsAsyncOverrideTyped = deleteDashboardsAsyncOverrideNonOptional
                    as? DeleteDashboardsAsyncType<InvocationReportingType> {
                return try deleteDashboardsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteDashboardsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteDashboardsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        if let deleteDashboardsSyncOverrideNonOptional = deleteDashboardsSyncOverride {
            if let deleteDashboardsSyncOverrideTyped = deleteDashboardsSyncOverrideNonOptional
                    as? DeleteDashboardsSyncType<InvocationReportingType> {
                return try deleteDashboardsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, HTTPClientError>) -> ()) throws {
        if let deleteInsightRulesAsyncOverrideNonOptional = deleteInsightRulesAsyncOverride {
            if let deleteInsightRulesAsyncOverrideTyped = deleteInsightRulesAsyncOverrideNonOptional
                    as? DeleteInsightRulesAsyncType<InvocationReportingType> {
                return try deleteInsightRulesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules {
        if let deleteInsightRulesSyncOverrideNonOptional = deleteInsightRulesSyncOverride {
            if let deleteInsightRulesSyncOverrideTyped = deleteInsightRulesSyncOverrideNonOptional
                    as? DeleteInsightRulesSyncType<InvocationReportingType> {
                return try deleteInsightRulesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAlarmHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmHistoryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws {
        if let describeAlarmHistoryAsyncOverrideNonOptional = describeAlarmHistoryAsyncOverride {
            if let describeAlarmHistoryAsyncOverrideTyped = describeAlarmHistoryAsyncOverrideNonOptional
                    as? DescribeAlarmHistoryAsyncType<InvocationReportingType> {
                return try describeAlarmHistoryAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAlarmHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmHistoryInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        if let describeAlarmHistorySyncOverrideNonOptional = describeAlarmHistorySyncOverride {
            if let describeAlarmHistorySyncOverrideTyped = describeAlarmHistorySyncOverrideNonOptional
                    as? DescribeAlarmHistorySyncType<InvocationReportingType> {
                return try describeAlarmHistorySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAlarmsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws {
        if let describeAlarmsAsyncOverrideNonOptional = describeAlarmsAsyncOverride {
            if let describeAlarmsAsyncOverrideTyped = describeAlarmsAsyncOverrideNonOptional
                    as? DescribeAlarmsAsyncType<InvocationReportingType> {
                return try describeAlarmsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAlarmsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        if let describeAlarmsSyncOverrideNonOptional = describeAlarmsSyncOverride {
            if let describeAlarmsSyncOverrideTyped = describeAlarmsSyncOverrideNonOptional
                    as? DescribeAlarmsSyncType<InvocationReportingType> {
                return try describeAlarmsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAlarmsForMetricAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws {
        if let describeAlarmsForMetricAsyncOverrideNonOptional = describeAlarmsForMetricAsyncOverride {
            if let describeAlarmsForMetricAsyncOverrideTyped = describeAlarmsForMetricAsyncOverrideNonOptional
                    as? DescribeAlarmsForMetricAsyncType<InvocationReportingType> {
                return try describeAlarmsForMetricAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAlarmsForMetricSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsForMetricInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        if let describeAlarmsForMetricSyncOverrideNonOptional = describeAlarmsForMetricSyncOverride {
            if let describeAlarmsForMetricSyncOverrideTyped = describeAlarmsForMetricSyncOverrideNonOptional
                    as? DescribeAlarmsForMetricSyncType<InvocationReportingType> {
                return try describeAlarmsForMetricSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAnomalyDetectorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, HTTPClientError>) -> ()) throws {
        if let describeAnomalyDetectorsAsyncOverrideNonOptional = describeAnomalyDetectorsAsyncOverride {
            if let describeAnomalyDetectorsAsyncOverrideTyped = describeAnomalyDetectorsAsyncOverrideNonOptional
                    as? DescribeAnomalyDetectorsAsyncType<InvocationReportingType> {
                return try describeAnomalyDetectorsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeAnomalyDetectorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        if let describeAnomalyDetectorsSyncOverrideNonOptional = describeAnomalyDetectorsSyncOverride {
            if let describeAnomalyDetectorsSyncOverrideTyped = describeAnomalyDetectorsSyncOverrideNonOptional
                    as? DescribeAnomalyDetectorsSyncType<InvocationReportingType> {
                return try describeAnomalyDetectorsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, HTTPClientError>) -> ()) throws {
        if let describeInsightRulesAsyncOverrideNonOptional = describeInsightRulesAsyncOverride {
            if let describeInsightRulesAsyncOverrideTyped = describeInsightRulesAsyncOverrideNonOptional
                    as? DescribeInsightRulesAsyncType<InvocationReportingType> {
                return try describeInsightRulesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules {
        if let describeInsightRulesSyncOverrideNonOptional = describeInsightRulesSyncOverride {
            if let describeInsightRulesSyncOverrideTyped = describeInsightRulesSyncOverrideNonOptional
                    as? DescribeInsightRulesSyncType<InvocationReportingType> {
                return try describeInsightRulesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func disableAlarmActionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableAlarmActionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let disableAlarmActionsAsyncOverrideNonOptional = disableAlarmActionsAsyncOverride {
            if let disableAlarmActionsAsyncOverrideTyped = disableAlarmActionsAsyncOverrideNonOptional
                    as? DisableAlarmActionsAsyncType<InvocationReportingType> {
                return try disableAlarmActionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableAlarmActionsInput,
            reporting: InvocationReportingType) throws {
        if let disableAlarmActionsSyncOverrideNonOptional = disableAlarmActionsSyncOverride {
            if let disableAlarmActionsSyncOverrideTyped = disableAlarmActionsSyncOverrideNonOptional
                    as? DisableAlarmActionsSyncType<InvocationReportingType> {
                return try disableAlarmActionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func disableInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, HTTPClientError>) -> ()) throws {
        if let disableInsightRulesAsyncOverrideNonOptional = disableInsightRulesAsyncOverride {
            if let disableInsightRulesAsyncOverrideTyped = disableInsightRulesAsyncOverrideNonOptional
                    as? DisableInsightRulesAsyncType<InvocationReportingType> {
                return try disableInsightRulesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func disableInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules {
        if let disableInsightRulesSyncOverrideNonOptional = disableInsightRulesSyncOverride {
            if let disableInsightRulesSyncOverrideTyped = disableInsightRulesSyncOverrideNonOptional
                    as? DisableInsightRulesSyncType<InvocationReportingType> {
                return try disableInsightRulesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func enableAlarmActionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableAlarmActionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let enableAlarmActionsAsyncOverrideNonOptional = enableAlarmActionsAsyncOverride {
            if let enableAlarmActionsAsyncOverrideTyped = enableAlarmActionsAsyncOverrideNonOptional
                    as? EnableAlarmActionsAsyncType<InvocationReportingType> {
                return try enableAlarmActionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableAlarmActionsInput,
            reporting: InvocationReportingType) throws {
        if let enableAlarmActionsSyncOverrideNonOptional = enableAlarmActionsSyncOverride {
            if let enableAlarmActionsSyncOverrideTyped = enableAlarmActionsSyncOverrideNonOptional
                    as? EnableAlarmActionsSyncType<InvocationReportingType> {
                return try enableAlarmActionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func enableInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, HTTPClientError>) -> ()) throws {
        if let enableInsightRulesAsyncOverrideNonOptional = enableInsightRulesAsyncOverride {
            if let enableInsightRulesAsyncOverrideTyped = enableInsightRulesAsyncOverrideNonOptional
                    as? EnableInsightRulesAsyncType<InvocationReportingType> {
                return try enableInsightRulesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func enableInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules {
        if let enableInsightRulesSyncOverrideNonOptional = enableInsightRulesSyncOverride {
            if let enableInsightRulesSyncOverrideTyped = enableInsightRulesSyncOverrideNonOptional
                    as? EnableInsightRulesSyncType<InvocationReportingType> {
                return try enableInsightRulesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getDashboardAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetDashboardInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws {
        if let getDashboardAsyncOverrideNonOptional = getDashboardAsyncOverride {
            if let getDashboardAsyncOverrideTyped = getDashboardAsyncOverrideNonOptional
                    as? GetDashboardAsyncType<InvocationReportingType> {
                return try getDashboardAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getDashboardSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetDashboardInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        if let getDashboardSyncOverrideNonOptional = getDashboardSyncOverride {
            if let getDashboardSyncOverrideTyped = getDashboardSyncOverrideNonOptional
                    as? GetDashboardSyncType<InvocationReportingType> {
                return try getDashboardSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getInsightRuleReportAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetInsightRuleReportInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, HTTPClientError>) -> ()) throws {
        if let getInsightRuleReportAsyncOverrideNonOptional = getInsightRuleReportAsyncOverride {
            if let getInsightRuleReportAsyncOverrideTyped = getInsightRuleReportAsyncOverrideNonOptional
                    as? GetInsightRuleReportAsyncType<InvocationReportingType> {
                return try getInsightRuleReportAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getInsightRuleReportSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetInsightRuleReportInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport {
        if let getInsightRuleReportSyncOverrideNonOptional = getInsightRuleReportSyncOverride {
            if let getInsightRuleReportSyncOverrideTyped = getInsightRuleReportSyncOverrideNonOptional
                    as? GetInsightRuleReportSyncType<InvocationReportingType> {
                return try getInsightRuleReportSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getMetricDataAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricDataInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws {
        if let getMetricDataAsyncOverrideNonOptional = getMetricDataAsyncOverride {
            if let getMetricDataAsyncOverrideTyped = getMetricDataAsyncOverrideNonOptional
                    as? GetMetricDataAsyncType<InvocationReportingType> {
                return try getMetricDataAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getMetricDataSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricDataInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        if let getMetricDataSyncOverrideNonOptional = getMetricDataSyncOverride {
            if let getMetricDataSyncOverrideTyped = getMetricDataSyncOverrideNonOptional
                    as? GetMetricDataSyncType<InvocationReportingType> {
                return try getMetricDataSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getMetricStatisticsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricStatisticsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws {
        if let getMetricStatisticsAsyncOverrideNonOptional = getMetricStatisticsAsyncOverride {
            if let getMetricStatisticsAsyncOverrideTyped = getMetricStatisticsAsyncOverrideNonOptional
                    as? GetMetricStatisticsAsyncType<InvocationReportingType> {
                return try getMetricStatisticsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getMetricStatisticsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricStatisticsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        if let getMetricStatisticsSyncOverrideNonOptional = getMetricStatisticsSyncOverride {
            if let getMetricStatisticsSyncOverrideTyped = getMetricStatisticsSyncOverrideNonOptional
                    as? GetMetricStatisticsSyncType<InvocationReportingType> {
                return try getMetricStatisticsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getMetricWidgetImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricWidgetImageInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws {
        if let getMetricWidgetImageAsyncOverrideNonOptional = getMetricWidgetImageAsyncOverride {
            if let getMetricWidgetImageAsyncOverrideTyped = getMetricWidgetImageAsyncOverrideNonOptional
                    as? GetMetricWidgetImageAsyncType<InvocationReportingType> {
                return try getMetricWidgetImageAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getMetricWidgetImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricWidgetImageInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        if let getMetricWidgetImageSyncOverrideNonOptional = getMetricWidgetImageSyncOverride {
            if let getMetricWidgetImageSyncOverrideTyped = getMetricWidgetImageSyncOverrideNonOptional
                    as? GetMetricWidgetImageSyncType<InvocationReportingType> {
                return try getMetricWidgetImageSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listDashboardsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListDashboardsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws {
        if let listDashboardsAsyncOverrideNonOptional = listDashboardsAsyncOverride {
            if let listDashboardsAsyncOverrideTyped = listDashboardsAsyncOverrideNonOptional
                    as? ListDashboardsAsyncType<InvocationReportingType> {
                return try listDashboardsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listDashboardsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListDashboardsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        if let listDashboardsSyncOverrideNonOptional = listDashboardsSyncOverride {
            if let listDashboardsSyncOverrideTyped = listDashboardsSyncOverrideNonOptional
                    as? ListDashboardsSyncType<InvocationReportingType> {
                return try listDashboardsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listMetricsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListMetricsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws {
        if let listMetricsAsyncOverrideNonOptional = listMetricsAsyncOverride {
            if let listMetricsAsyncOverrideTyped = listMetricsAsyncOverrideNonOptional
                    as? ListMetricsAsyncType<InvocationReportingType> {
                return try listMetricsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listMetricsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListMetricsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
        if let listMetricsSyncOverrideNonOptional = listMetricsSyncOverride {
            if let listMetricsSyncOverrideTyped = listMetricsSyncOverrideNonOptional
                    as? ListMetricsSyncType<InvocationReportingType> {
                return try listMetricsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListTagsForResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverrideNonOptional = listTagsForResourceAsyncOverride {
            if let listTagsForResourceAsyncOverrideTyped = listTagsForResourceAsyncOverrideNonOptional
                    as? ListTagsForResourceAsyncType<InvocationReportingType> {
                return try listTagsForResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListTagsForResourceInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        if let listTagsForResourceSyncOverrideNonOptional = listTagsForResourceSyncOverride {
            if let listTagsForResourceSyncOverrideTyped = listTagsForResourceSyncOverrideNonOptional
                    as? ListTagsForResourceSyncType<InvocationReportingType> {
                return try listTagsForResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putAnomalyDetectorAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutAnomalyDetectorInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, HTTPClientError>) -> ()) throws {
        if let putAnomalyDetectorAsyncOverrideNonOptional = putAnomalyDetectorAsyncOverride {
            if let putAnomalyDetectorAsyncOverrideTyped = putAnomalyDetectorAsyncOverrideNonOptional
                    as? PutAnomalyDetectorAsyncType<InvocationReportingType> {
                return try putAnomalyDetectorAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putAnomalyDetectorSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutAnomalyDetectorInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
        if let putAnomalyDetectorSyncOverrideNonOptional = putAnomalyDetectorSyncOverride {
            if let putAnomalyDetectorSyncOverrideTyped = putAnomalyDetectorSyncOverrideNonOptional
                    as? PutAnomalyDetectorSyncType<InvocationReportingType> {
                return try putAnomalyDetectorSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putDashboardAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutDashboardInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws {
        if let putDashboardAsyncOverrideNonOptional = putDashboardAsyncOverride {
            if let putDashboardAsyncOverrideTyped = putDashboardAsyncOverrideNonOptional
                    as? PutDashboardAsyncType<InvocationReportingType> {
                return try putDashboardAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putDashboardSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutDashboardInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        if let putDashboardSyncOverrideNonOptional = putDashboardSyncOverride {
            if let putDashboardSyncOverrideTyped = putDashboardSyncOverrideNonOptional
                    as? PutDashboardSyncType<InvocationReportingType> {
                return try putDashboardSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putInsightRuleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutInsightRuleInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, HTTPClientError>) -> ()) throws {
        if let putInsightRuleAsyncOverrideNonOptional = putInsightRuleAsyncOverride {
            if let putInsightRuleAsyncOverrideTyped = putInsightRuleAsyncOverrideNonOptional
                    as? PutInsightRuleAsyncType<InvocationReportingType> {
                return try putInsightRuleAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putInsightRuleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutInsightRuleInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule {
        if let putInsightRuleSyncOverrideNonOptional = putInsightRuleSyncOverride {
            if let putInsightRuleSyncOverrideTyped = putInsightRuleSyncOverrideNonOptional
                    as? PutInsightRuleSyncType<InvocationReportingType> {
                return try putInsightRuleSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putMetricAlarmAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricAlarmInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricAlarmAsyncOverrideNonOptional = putMetricAlarmAsyncOverride {
            if let putMetricAlarmAsyncOverrideTyped = putMetricAlarmAsyncOverrideNonOptional
                    as? PutMetricAlarmAsyncType<InvocationReportingType> {
                return try putMetricAlarmAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putMetricAlarmSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricAlarmInput,
            reporting: InvocationReportingType) throws {
        if let putMetricAlarmSyncOverrideNonOptional = putMetricAlarmSyncOverride {
            if let putMetricAlarmSyncOverrideTyped = putMetricAlarmSyncOverrideNonOptional
                    as? PutMetricAlarmSyncType<InvocationReportingType> {
                return try putMetricAlarmSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putMetricDataAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricDataInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricDataAsyncOverrideNonOptional = putMetricDataAsyncOverride {
            if let putMetricDataAsyncOverrideTyped = putMetricDataAsyncOverrideNonOptional
                    as? PutMetricDataAsyncType<InvocationReportingType> {
                return try putMetricDataAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricDataInput,
            reporting: InvocationReportingType) throws {
        if let putMetricDataSyncOverrideNonOptional = putMetricDataSyncOverride {
            if let putMetricDataSyncOverrideTyped = putMetricDataSyncOverrideNonOptional
                    as? PutMetricDataSyncType<InvocationReportingType> {
                return try putMetricDataSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func setAlarmStateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.SetAlarmStateInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setAlarmStateAsyncOverrideNonOptional = setAlarmStateAsyncOverride {
            if let setAlarmStateAsyncOverrideTyped = setAlarmStateAsyncOverrideNonOptional
                    as? SetAlarmStateAsyncType<InvocationReportingType> {
                return try setAlarmStateAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.SetAlarmStateInput,
            reporting: InvocationReportingType) throws {
        if let setAlarmStateSyncOverrideNonOptional = setAlarmStateSyncOverride {
            if let setAlarmStateSyncOverrideTyped = setAlarmStateSyncOverrideNonOptional
                    as? SetAlarmStateSyncType<InvocationReportingType> {
                return try setAlarmStateSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws {
        if let tagResourceAsyncOverrideNonOptional = tagResourceAsyncOverride {
            if let tagResourceAsyncOverrideTyped = tagResourceAsyncOverrideNonOptional
                    as? TagResourceAsyncType<InvocationReportingType> {
                return try tagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.TagResourceInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.TagResourceOutputForTagResource {
        if let tagResourceSyncOverrideNonOptional = tagResourceSyncOverride {
            if let tagResourceSyncOverrideTyped = tagResourceSyncOverrideNonOptional
                    as? TagResourceSyncType<InvocationReportingType> {
                return try tagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws {
        if let untagResourceAsyncOverrideNonOptional = untagResourceAsyncOverride {
            if let untagResourceAsyncOverrideTyped = untagResourceAsyncOverrideNonOptional
                    as? UntagResourceAsyncType<InvocationReportingType> {
                return try untagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.UntagResourceInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        if let untagResourceSyncOverrideNonOptional = untagResourceSyncOverride {
            if let untagResourceSyncOverrideTyped = untagResourceSyncOverrideNonOptional
                    as? UntagResourceSyncType<InvocationReportingType> {
                return try untagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
