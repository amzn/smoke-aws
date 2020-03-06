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
    typealias DeleteAlarmsSyncType = (
            _ input: CloudWatchModel.DeleteAlarmsInput) throws -> ()
    typealias DeleteAlarmsAsyncType = (
            _ input: CloudWatchModel.DeleteAlarmsInput, 
            _ completion: @escaping (CloudWatchError?) -> ()) throws -> ()
    typealias DeleteAnomalyDetectorSyncType = (
            _ input: CloudWatchModel.DeleteAnomalyDetectorInput) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
    typealias DeleteAnomalyDetectorAsyncType = (
            _ input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            _ completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, CloudWatchError>) -> ()) throws -> ()
    typealias DeleteDashboardsSyncType = (
            _ input: CloudWatchModel.DeleteDashboardsInput) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards
    typealias DeleteDashboardsAsyncType = (
            _ input: CloudWatchModel.DeleteDashboardsInput, 
            _ completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, CloudWatchError>) -> ()) throws -> ()
    typealias DeleteInsightRulesSyncType = (
            _ input: CloudWatchModel.DeleteInsightRulesInput) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules
    typealias DeleteInsightRulesAsyncType = (
            _ input: CloudWatchModel.DeleteInsightRulesInput, 
            _ completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, CloudWatchError>) -> ()) throws -> ()
    typealias DescribeAlarmHistorySyncType = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory
    typealias DescribeAlarmHistoryAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput, 
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, CloudWatchError>) -> ()) throws -> ()
    typealias DescribeAlarmsSyncType = (
            _ input: CloudWatchModel.DescribeAlarmsInput) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms
    typealias DescribeAlarmsAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmsInput, 
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, CloudWatchError>) -> ()) throws -> ()
    typealias DescribeAlarmsForMetricSyncType = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
    typealias DescribeAlarmsForMetricAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, CloudWatchError>) -> ()) throws -> ()
    typealias DescribeAnomalyDetectorsSyncType = (
            _ input: CloudWatchModel.DescribeAnomalyDetectorsInput) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
    typealias DescribeAnomalyDetectorsAsyncType = (
            _ input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            _ completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, CloudWatchError>) -> ()) throws -> ()
    typealias DescribeInsightRulesSyncType = (
            _ input: CloudWatchModel.DescribeInsightRulesInput) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules
    typealias DescribeInsightRulesAsyncType = (
            _ input: CloudWatchModel.DescribeInsightRulesInput, 
            _ completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, CloudWatchError>) -> ()) throws -> ()
    typealias DisableAlarmActionsSyncType = (
            _ input: CloudWatchModel.DisableAlarmActionsInput) throws -> ()
    typealias DisableAlarmActionsAsyncType = (
            _ input: CloudWatchModel.DisableAlarmActionsInput, 
            _ completion: @escaping (CloudWatchError?) -> ()) throws -> ()
    typealias DisableInsightRulesSyncType = (
            _ input: CloudWatchModel.DisableInsightRulesInput) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules
    typealias DisableInsightRulesAsyncType = (
            _ input: CloudWatchModel.DisableInsightRulesInput, 
            _ completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, CloudWatchError>) -> ()) throws -> ()
    typealias EnableAlarmActionsSyncType = (
            _ input: CloudWatchModel.EnableAlarmActionsInput) throws -> ()
    typealias EnableAlarmActionsAsyncType = (
            _ input: CloudWatchModel.EnableAlarmActionsInput, 
            _ completion: @escaping (CloudWatchError?) -> ()) throws -> ()
    typealias EnableInsightRulesSyncType = (
            _ input: CloudWatchModel.EnableInsightRulesInput) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules
    typealias EnableInsightRulesAsyncType = (
            _ input: CloudWatchModel.EnableInsightRulesInput, 
            _ completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, CloudWatchError>) -> ()) throws -> ()
    typealias GetDashboardSyncType = (
            _ input: CloudWatchModel.GetDashboardInput) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard
    typealias GetDashboardAsyncType = (
            _ input: CloudWatchModel.GetDashboardInput, 
            _ completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, CloudWatchError>) -> ()) throws -> ()
    typealias GetInsightRuleReportSyncType = (
            _ input: CloudWatchModel.GetInsightRuleReportInput) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport
    typealias GetInsightRuleReportAsyncType = (
            _ input: CloudWatchModel.GetInsightRuleReportInput, 
            _ completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, CloudWatchError>) -> ()) throws -> ()
    typealias GetMetricDataSyncType = (
            _ input: CloudWatchModel.GetMetricDataInput) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData
    typealias GetMetricDataAsyncType = (
            _ input: CloudWatchModel.GetMetricDataInput, 
            _ completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, CloudWatchError>) -> ()) throws -> ()
    typealias GetMetricStatisticsSyncType = (
            _ input: CloudWatchModel.GetMetricStatisticsInput) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics
    typealias GetMetricStatisticsAsyncType = (
            _ input: CloudWatchModel.GetMetricStatisticsInput, 
            _ completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, CloudWatchError>) -> ()) throws -> ()
    typealias GetMetricWidgetImageSyncType = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage
    typealias GetMetricWidgetImageAsyncType = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput, 
            _ completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, CloudWatchError>) -> ()) throws -> ()
    typealias ListDashboardsSyncType = (
            _ input: CloudWatchModel.ListDashboardsInput) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards
    typealias ListDashboardsAsyncType = (
            _ input: CloudWatchModel.ListDashboardsInput, 
            _ completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, CloudWatchError>) -> ()) throws -> ()
    typealias ListMetricsSyncType = (
            _ input: CloudWatchModel.ListMetricsInput) throws -> CloudWatchModel.ListMetricsOutputForListMetrics
    typealias ListMetricsAsyncType = (
            _ input: CloudWatchModel.ListMetricsInput, 
            _ completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, CloudWatchError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: CloudWatchModel.ListTagsForResourceInput) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource
    typealias ListTagsForResourceAsyncType = (
            _ input: CloudWatchModel.ListTagsForResourceInput, 
            _ completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, CloudWatchError>) -> ()) throws -> ()
    typealias PutAnomalyDetectorSyncType = (
            _ input: CloudWatchModel.PutAnomalyDetectorInput) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector
    typealias PutAnomalyDetectorAsyncType = (
            _ input: CloudWatchModel.PutAnomalyDetectorInput, 
            _ completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, CloudWatchError>) -> ()) throws -> ()
    typealias PutDashboardSyncType = (
            _ input: CloudWatchModel.PutDashboardInput) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard
    typealias PutDashboardAsyncType = (
            _ input: CloudWatchModel.PutDashboardInput, 
            _ completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, CloudWatchError>) -> ()) throws -> ()
    typealias PutInsightRuleSyncType = (
            _ input: CloudWatchModel.PutInsightRuleInput) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule
    typealias PutInsightRuleAsyncType = (
            _ input: CloudWatchModel.PutInsightRuleInput, 
            _ completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, CloudWatchError>) -> ()) throws -> ()
    typealias PutMetricAlarmSyncType = (
            _ input: CloudWatchModel.PutMetricAlarmInput) throws -> ()
    typealias PutMetricAlarmAsyncType = (
            _ input: CloudWatchModel.PutMetricAlarmInput, 
            _ completion: @escaping (CloudWatchError?) -> ()) throws -> ()
    typealias PutMetricDataSyncType = (
            _ input: CloudWatchModel.PutMetricDataInput) throws -> ()
    typealias PutMetricDataAsyncType = (
            _ input: CloudWatchModel.PutMetricDataInput, 
            _ completion: @escaping (CloudWatchError?) -> ()) throws -> ()
    typealias SetAlarmStateSyncType = (
            _ input: CloudWatchModel.SetAlarmStateInput) throws -> ()
    typealias SetAlarmStateAsyncType = (
            _ input: CloudWatchModel.SetAlarmStateInput, 
            _ completion: @escaping (CloudWatchError?) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: CloudWatchModel.TagResourceInput) throws -> CloudWatchModel.TagResourceOutputForTagResource
    typealias TagResourceAsyncType = (
            _ input: CloudWatchModel.TagResourceInput, 
            _ completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, CloudWatchError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: CloudWatchModel.UntagResourceInput) throws -> CloudWatchModel.UntagResourceOutputForUntagResource
    typealias UntagResourceAsyncType = (
            _ input: CloudWatchModel.UntagResourceInput, 
            _ completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, CloudWatchError>) -> ()) throws -> ()

    /**
     Invokes the DeleteAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: resourceNotFound.
     */
    func deleteAlarmsAsync(
            input: CloudWatchModel.DeleteAlarmsInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    func deleteAlarmsSync(
            input: CloudWatchModel.DeleteAlarmsInput) throws

    /**
     Invokes the DeleteAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
         - completion: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetectorAsync(
            input: CloudWatchModel.DeleteAnomalyDetectorInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector, CloudWatchError>) -> ()) throws

    /**
     Invokes the DeleteAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetectorSync(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector

    /**
     Invokes the DeleteDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
         - completion: The DeleteDashboardsOutputForDeleteDashboards object or an error will be passed to this 
           callback when the operation is complete. The DeleteDashboardsOutputForDeleteDashboards
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboardsAsync(
            input: CloudWatchModel.DeleteDashboardsInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, CloudWatchError>) -> ()) throws

    /**
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboardsSync(
            input: CloudWatchModel.DeleteDashboardsInput) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards

    /**
     Invokes the DeleteInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
         - completion: The DeleteInsightRulesOutputForDeleteInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DeleteInsightRulesOutputForDeleteInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRulesAsync(
            input: CloudWatchModel.DeleteInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules, CloudWatchError>) -> ()) throws

    /**
     Invokes the DeleteInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRulesSync(
            input: CloudWatchModel.DeleteInsightRulesInput) throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules

    /**
     Invokes the DescribeAlarmHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
         - completion: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmHistoryOutputForDescribeAlarmHistory
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmHistoryAsync(
            input: CloudWatchModel.DescribeAlarmHistoryInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, CloudWatchError>) -> ()) throws

    /**
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmHistorySync(
            input: CloudWatchModel.DescribeAlarmHistoryInput) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory

    /**
     Invokes the DescribeAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
         - completion: The DescribeAlarmsOutputForDescribeAlarms object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsOutputForDescribeAlarms
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmsAsync(
            input: CloudWatchModel.DescribeAlarmsInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, CloudWatchError>) -> ()) throws

    /**
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmsSync(
            input: CloudWatchModel.DescribeAlarmsInput) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
         - completion: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
           object will be validated before being returned to caller.
     */
    func describeAlarmsForMetricAsync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, CloudWatchError>) -> ()) throws

    /**
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAlarmsForMetricSync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric

    /**
     Invokes the DescribeAnomalyDetectors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
         - completion: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object or an error will be passed to this 
           callback when the operation is complete. The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterValue.
     */
    func describeAnomalyDetectorsAsync(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors, CloudWatchError>) -> ()) throws

    /**
     Invokes the DescribeAnomalyDetectors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue.
     */
    func describeAnomalyDetectorsSync(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors

    /**
     Invokes the DescribeInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
         - completion: The DescribeInsightRulesOutputForDescribeInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DescribeInsightRulesOutputForDescribeInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeInsightRulesAsync(
            input: CloudWatchModel.DescribeInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules, CloudWatchError>) -> ()) throws

    /**
     Invokes the DescribeInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeInsightRulesSync(
            input: CloudWatchModel.DescribeInsightRulesInput) throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules

    /**
     Invokes the DisableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disableAlarmActionsAsync(
            input: CloudWatchModel.DisableAlarmActionsInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    func disableAlarmActionsSync(
            input: CloudWatchModel.DisableAlarmActionsInput) throws

    /**
     Invokes the DisableInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
         - completion: The DisableInsightRulesOutputForDisableInsightRules object or an error will be passed to this 
           callback when the operation is complete. The DisableInsightRulesOutputForDisableInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRulesAsync(
            input: CloudWatchModel.DisableInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules, CloudWatchError>) -> ()) throws

    /**
     Invokes the DisableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRulesSync(
            input: CloudWatchModel.DisableInsightRulesInput) throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules

    /**
     Invokes the EnableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableAlarmActionsAsync(
            input: CloudWatchModel.EnableAlarmActionsInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    func enableAlarmActionsSync(
            input: CloudWatchModel.EnableAlarmActionsInput) throws

    /**
     Invokes the EnableInsightRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
         - completion: The EnableInsightRulesOutputForEnableInsightRules object or an error will be passed to this 
           callback when the operation is complete. The EnableInsightRulesOutputForEnableInsightRules
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRulesAsync(
            input: CloudWatchModel.EnableInsightRulesInput, 
            completion: @escaping (Result<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules, CloudWatchError>) -> ()) throws

    /**
     Invokes the EnableInsightRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRulesSync(
            input: CloudWatchModel.EnableInsightRulesInput) throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules

    /**
     Invokes the GetDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
         - completion: The GetDashboardOutputForGetDashboard object or an error will be passed to this 
           callback when the operation is complete. The GetDashboardOutputForGetDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboardAsync(
            input: CloudWatchModel.GetDashboardInput, 
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, CloudWatchError>) -> ()) throws

    /**
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboardSync(
            input: CloudWatchModel.GetDashboardInput) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard

    /**
     Invokes the GetInsightRuleReport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
         - completion: The GetInsightRuleReportOutputForGetInsightRuleReport object or an error will be passed to this 
           callback when the operation is complete. The GetInsightRuleReportOutputForGetInsightRuleReport
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReportAsync(
            input: CloudWatchModel.GetInsightRuleReportInput, 
            completion: @escaping (Result<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport, CloudWatchError>) -> ()) throws

    /**
     Invokes the GetInsightRuleReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReportSync(
            input: CloudWatchModel.GetInsightRuleReportInput) throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport

    /**
     Invokes the GetMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
         - completion: The GetMetricDataOutputForGetMetricData object or an error will be passed to this 
           callback when the operation is complete. The GetMetricDataOutputForGetMetricData
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func getMetricDataAsync(
            input: CloudWatchModel.GetMetricDataInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, CloudWatchError>) -> ()) throws

    /**
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func getMetricDataSync(
            input: CloudWatchModel.GetMetricDataInput) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData

    /**
     Invokes the GetMetricStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
         - completion: The GetMetricStatisticsOutputForGetMetricStatistics object or an error will be passed to this 
           callback when the operation is complete. The GetMetricStatisticsOutputForGetMetricStatistics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatisticsAsync(
            input: CloudWatchModel.GetMetricStatisticsInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, CloudWatchError>) -> ()) throws

    /**
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatisticsSync(
            input: CloudWatchModel.GetMetricStatisticsInput) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics

    /**
     Invokes the GetMetricWidgetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
         - completion: The GetMetricWidgetImageOutputForGetMetricWidgetImage object or an error will be passed to this 
           callback when the operation is complete. The GetMetricWidgetImageOutputForGetMetricWidgetImage
           object will be validated before being returned to caller.
     */
    func getMetricWidgetImageAsync(
            input: CloudWatchModel.GetMetricWidgetImageInput, 
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, CloudWatchError>) -> ()) throws

    /**
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getMetricWidgetImageSync(
            input: CloudWatchModel.GetMetricWidgetImageInput) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage

    /**
     Invokes the ListDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
         - completion: The ListDashboardsOutputForListDashboards object or an error will be passed to this 
           callback when the operation is complete. The ListDashboardsOutputForListDashboards
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listDashboardsAsync(
            input: CloudWatchModel.ListDashboardsInput, 
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, CloudWatchError>) -> ()) throws

    /**
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listDashboardsSync(
            input: CloudWatchModel.ListDashboardsInput) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards

    /**
     Invokes the ListMetrics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
         - completion: The ListMetricsOutputForListMetrics object or an error will be passed to this 
           callback when the operation is complete. The ListMetricsOutputForListMetrics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listMetricsAsync(
            input: CloudWatchModel.ListMetricsInput, 
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, CloudWatchError>) -> ()) throws

    /**
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listMetricsSync(
            input: CloudWatchModel.ListMetricsInput) throws -> CloudWatchModel.ListMetricsOutputForListMetrics

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutputForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutputForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResourceAsync(
            input: CloudWatchModel.ListTagsForResourceInput, 
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, CloudWatchError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResourceSync(
            input: CloudWatchModel.ListTagsForResourceInput) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource

    /**
     Invokes the PutAnomalyDetector operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
         - completion: The PutAnomalyDetectorOutputForPutAnomalyDetector object or an error will be passed to this 
           callback when the operation is complete. The PutAnomalyDetectorOutputForPutAnomalyDetector
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetectorAsync(
            input: CloudWatchModel.PutAnomalyDetectorInput, 
            completion: @escaping (Result<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector, CloudWatchError>) -> ()) throws

    /**
     Invokes the PutAnomalyDetector operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetectorSync(
            input: CloudWatchModel.PutAnomalyDetectorInput) throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector

    /**
     Invokes the PutDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
         - completion: The PutDashboardOutputForPutDashboard object or an error will be passed to this 
           callback when the operation is complete. The PutDashboardOutputForPutDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    func putDashboardAsync(
            input: CloudWatchModel.PutDashboardInput, 
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, CloudWatchError>) -> ()) throws

    /**
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    func putDashboardSync(
            input: CloudWatchModel.PutDashboardInput) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard

    /**
     Invokes the PutInsightRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
         - completion: The PutInsightRuleOutputForPutInsightRule object or an error will be passed to this 
           callback when the operation is complete. The PutInsightRuleOutputForPutInsightRule
           object will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRuleAsync(
            input: CloudWatchModel.PutInsightRuleInput, 
            completion: @escaping (Result<CloudWatchModel.PutInsightRuleOutputForPutInsightRule, CloudWatchError>) -> ()) throws

    /**
     Invokes the PutInsightRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRuleSync(
            input: CloudWatchModel.PutInsightRuleInput) throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule

    /**
     Invokes the PutMetricAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    func putMetricAlarmAsync(
            input: CloudWatchModel.PutMetricAlarmInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putMetricAlarmSync(
            input: CloudWatchModel.PutMetricAlarmInput) throws

    /**
     Invokes the PutMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricDataAsync(
            input: CloudWatchModel.PutMetricDataInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricDataSync(
            input: CloudWatchModel.PutMetricDataInput) throws

    /**
     Invokes the SetAlarmState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    func setAlarmStateAsync(
            input: CloudWatchModel.SetAlarmStateInput, 
            completion: @escaping (CloudWatchError?) -> ()) throws

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    func setAlarmStateSync(
            input: CloudWatchModel.SetAlarmStateInput) throws

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutputForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutputForTagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResourceAsync(
            input: CloudWatchModel.TagResourceInput, 
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, CloudWatchError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResourceSync(
            input: CloudWatchModel.TagResourceInput) throws -> CloudWatchModel.TagResourceOutputForTagResource

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutputForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutputForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResourceAsync(
            input: CloudWatchModel.UntagResourceInput, 
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, CloudWatchError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResourceSync(
            input: CloudWatchModel.UntagResourceInput) throws -> CloudWatchModel.UntagResourceOutputForUntagResource
}
