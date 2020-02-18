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
// CloudWatchClientProtocol.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the CloudWatch service.
 */
public protocol CloudWatchClientProtocol {
    typealias DeleteAlarmsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteAlarmsInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteAlarmsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteAlarmsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteAnomalyDetectorSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteAnomalyDetectorInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
    typealias DeleteAnomalyDetectorAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteDashboardsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteDashboardsInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards
    typealias DeleteDashboardsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteDashboardsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteInsightRulesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteInsightRulesInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules
    typealias DeleteInsightRulesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DeleteInsightRulesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAlarmHistorySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory
    typealias DescribeAlarmHistoryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAlarmsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAlarmsInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms
    typealias DescribeAlarmsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAlarmsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAlarmsForMetricSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
    typealias DescribeAlarmsForMetricAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAnomalyDetectorsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAnomalyDetectorsInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
    typealias DescribeAnomalyDetectorsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeInsightRulesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeInsightRulesInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules
    typealias DescribeInsightRulesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DescribeInsightRulesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, HTTPClientError>) -> ()) throws -> ()
    typealias DisableAlarmActionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DisableAlarmActionsInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DisableAlarmActionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DisableAlarmActionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisableInsightRulesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DisableInsightRulesInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules
    typealias DisableInsightRulesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.DisableInsightRulesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, HTTPClientError>) -> ()) throws -> ()
    typealias EnableAlarmActionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.EnableAlarmActionsInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias EnableAlarmActionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.EnableAlarmActionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableInsightRulesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.EnableInsightRulesInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules
    typealias EnableInsightRulesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.EnableInsightRulesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, HTTPClientError>) -> ()) throws -> ()
    typealias GetDashboardSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetDashboardInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard
    typealias GetDashboardAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetDashboardInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws -> ()
    typealias GetInsightRuleReportSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetInsightRuleReportInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport
    typealias GetInsightRuleReportAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetInsightRuleReportInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, HTTPClientError>) -> ()) throws -> ()
    typealias GetMetricDataSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetMetricDataInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData
    typealias GetMetricDataAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetMetricDataInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws -> ()
    typealias GetMetricStatisticsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetMetricStatisticsInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics
    typealias GetMetricStatisticsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetMetricStatisticsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws -> ()
    typealias GetMetricWidgetImageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage
    typealias GetMetricWidgetImageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws -> ()
    typealias ListDashboardsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.ListDashboardsInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards
    typealias ListDashboardsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.ListDashboardsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws -> ()
    typealias ListMetricsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.ListMetricsInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.ListMetricsOutputForListMetrics
    typealias ListMetricsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.ListMetricsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.ListTagsForResourceInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource
    typealias ListTagsForResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.ListTagsForResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws -> ()
    typealias PutAnomalyDetectorSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutAnomalyDetectorInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector
    typealias PutAnomalyDetectorAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutAnomalyDetectorInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, HTTPClientError>) -> ()) throws -> ()
    typealias PutDashboardSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutDashboardInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard
    typealias PutDashboardAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutDashboardInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws -> ()
    typealias PutInsightRuleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutInsightRuleInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule
    typealias PutInsightRuleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutInsightRuleInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, HTTPClientError>) -> ()) throws -> ()
    typealias PutMetricAlarmSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutMetricAlarmInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutMetricAlarmAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutMetricAlarmInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutMetricDataSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutMetricDataInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutMetricDataAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.PutMetricDataInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetAlarmStateSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.SetAlarmStateInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SetAlarmStateAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.SetAlarmStateInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias TagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.TagResourceInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.TagResourceOutputForTagResource
    typealias TagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.TagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws -> ()
    typealias UntagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.UntagResourceInput,
            _ reporting: InvocationReportingType) throws -> CloudWatchModel.UntagResourceOutputForUntagResource
    typealias UntagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: CloudWatchModel.UntagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the DeleteAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: resourceNotFound.
     */
    func deleteAlarmsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAlarmsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    func deleteAlarmsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAlarmsInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
         - completion: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetectorAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetectorSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteAnomalyDetectorInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector

    /**
     Invokes the DeleteDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
         - completion: The DeleteDashboardsOutputForDeleteDashboards object or an error will be passed to this 
           callback when the operation is complete. The DeleteDashboardsOutputForDeleteDashboards
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboardsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteDashboardsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboardsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteDashboardsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards

    /**
     Invokes the DeleteInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
         - completion: The DeleteInsightRulesOutputForDeleteInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DeleteInsightRulesOutputForDeleteInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DeleteInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules

    /**
     Invokes the DescribeAlarmHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
         - completion: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmHistoryOutputForDescribeAlarmHistory
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmHistoryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmHistoryInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory

    /**
     Invokes the DescribeAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
         - completion: The DescribeAlarmsOutputForDescribeAlarms object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsOutputForDescribeAlarms
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
         - completion: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
           object will be validated before being returned to caller.
     */
    func describeAlarmsForMetricAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAlarmsForMetricSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAlarmsForMetricInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric

    /**
     Invokes the DescribeAnomalyDetectors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
         - completion: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object or an error will be passed to this 
           callback when the operation is complete. The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterValue.
     */
    func describeAnomalyDetectorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAnomalyDetectors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue.
     */
    func describeAnomalyDetectorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors

    /**
     Invokes the DescribeInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
         - completion: The DescribeInsightRulesOutputForDescribeInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DescribeInsightRulesOutputForDescribeInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DescribeInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules

    /**
     Invokes the DisableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disableAlarmActionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableAlarmActionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    func disableAlarmActionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableAlarmActionsInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DisableInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
         - completion: The DisableInsightRulesOutputForDisableInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DisableInsightRulesOutputForDisableInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, HTTPClientError>) -> ()) throws

    /**
     Invokes the DisableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.DisableInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules

    /**
     Invokes the EnableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableAlarmActionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableAlarmActionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    func enableAlarmActionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableAlarmActionsInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the EnableInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
         - completion: The EnableInsightRulesOutputForEnableInsightRules object or an error will be passed to this 
           callback when the operation is complete. The EnableInsightRulesOutputForEnableInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRulesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableInsightRulesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, HTTPClientError>) -> ()) throws

    /**
     Invokes the EnableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRulesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.EnableInsightRulesInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules

    /**
     Invokes the GetDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
         - completion: The GetDashboardOutputForGetDashboard object or an error will be passed to this 
           callback when the operation is complete. The GetDashboardOutputForGetDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboardAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetDashboardInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboardSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetDashboardInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard

    /**
     Invokes the GetInsightRuleReport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
         - completion: The GetInsightRuleReportOutputForGetInsightRuleReport object or an error will be passed to this 
           callback when the operation is complete. The GetInsightRuleReportOutputForGetInsightRuleReport
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReportAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetInsightRuleReportInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetInsightRuleReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReportSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetInsightRuleReportInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport

    /**
     Invokes the GetMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
         - completion: The GetMetricDataOutputForGetMetricData object or an error will be passed to this 
           callback when the operation is complete. The GetMetricDataOutputForGetMetricData
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func getMetricDataAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricDataInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func getMetricDataSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricDataInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData

    /**
     Invokes the GetMetricStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
         - completion: The GetMetricStatisticsOutputForGetMetricStatistics object or an error will be passed to this 
           callback when the operation is complete. The GetMetricStatisticsOutputForGetMetricStatistics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatisticsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricStatisticsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatisticsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricStatisticsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics

    /**
     Invokes the GetMetricWidgetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
         - completion: The GetMetricWidgetImageOutputForGetMetricWidgetImage object or an error will be passed to this 
           callback when the operation is complete. The GetMetricWidgetImageOutputForGetMetricWidgetImage
           object will be validated before being returned to caller.
     */
    func getMetricWidgetImageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricWidgetImageInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getMetricWidgetImageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.GetMetricWidgetImageInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage

    /**
     Invokes the ListDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
         - completion: The ListDashboardsOutputForListDashboards object or an error will be passed to this 
           callback when the operation is complete. The ListDashboardsOutputForListDashboards
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listDashboardsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListDashboardsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listDashboardsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListDashboardsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards

    /**
     Invokes the ListMetrics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
         - completion: The ListMetricsOutputForListMetrics object or an error will be passed to this 
           callback when the operation is complete. The ListMetricsOutputForListMetrics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listMetricsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListMetricsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listMetricsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListMetricsInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.ListMetricsOutputForListMetrics

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutputForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutputForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListTagsForResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.ListTagsForResourceInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource

    /**
     Invokes the PutAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
         - completion: The PutAnomalyDetectorOutputForPutAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The PutAnomalyDetectorOutputForPutAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetectorAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutAnomalyDetectorInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetectorSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutAnomalyDetectorInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector

    /**
     Invokes the PutDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
         - completion: The PutDashboardOutputForPutDashboard object or an error will be passed to this 
           callback when the operation is complete. The PutDashboardOutputForPutDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    func putDashboardAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutDashboardInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    func putDashboardSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutDashboardInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard

    /**
     Invokes the PutInsightRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
         - completion: The PutInsightRuleOutputForPutInsightRule object or an error will be passed to this 
           callback when the operation is complete. The PutInsightRuleOutputForPutInsightRule
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRuleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutInsightRuleInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutInsightRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRuleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutInsightRuleInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule

    /**
     Invokes the PutMetricAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    func putMetricAlarmAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricAlarmInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putMetricAlarmSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricAlarmInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricDataAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricDataInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricDataSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.PutMetricDataInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SetAlarmState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    func setAlarmStateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.SetAlarmStateInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    func setAlarmStateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.SetAlarmStateInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutputForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutputForTagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.TagResourceInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.TagResourceOutputForTagResource

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutputForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutputForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: CloudWatchModel.UntagResourceInput,
            reporting: InvocationReportingType) throws -> CloudWatchModel.UntagResourceOutputForUntagResource
}
