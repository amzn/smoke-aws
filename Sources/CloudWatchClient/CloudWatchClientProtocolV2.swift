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
// CloudWatchClientProtocolV2.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the CloudWatch service.
 */
public protocol CloudWatchClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias DeleteAlarmsFunctionType = (
            _ input: CloudWatchModel.DeleteAlarmsInput) async throws -> ()
    typealias DeleteAnomalyDetectorFunctionType = (
            _ input: CloudWatchModel.DeleteAnomalyDetectorInput) async throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
    typealias DeleteDashboardsFunctionType = (
            _ input: CloudWatchModel.DeleteDashboardsInput) async throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards
    typealias DeleteInsightRulesFunctionType = (
            _ input: CloudWatchModel.DeleteInsightRulesInput) async throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules
    typealias DeleteMetricStreamFunctionType = (
            _ input: CloudWatchModel.DeleteMetricStreamInput) async throws -> CloudWatchModel.DeleteMetricStreamOutputForDeleteMetricStream
    typealias DescribeAlarmHistoryFunctionType = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput) async throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory
    typealias DescribeAlarmsFunctionType = (
            _ input: CloudWatchModel.DescribeAlarmsInput) async throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms
    typealias DescribeAlarmsForMetricFunctionType = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput) async throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
    typealias DescribeAnomalyDetectorsFunctionType = (
            _ input: CloudWatchModel.DescribeAnomalyDetectorsInput) async throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
    typealias DescribeInsightRulesFunctionType = (
            _ input: CloudWatchModel.DescribeInsightRulesInput) async throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules
    typealias DisableAlarmActionsFunctionType = (
            _ input: CloudWatchModel.DisableAlarmActionsInput) async throws -> ()
    typealias DisableInsightRulesFunctionType = (
            _ input: CloudWatchModel.DisableInsightRulesInput) async throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules
    typealias EnableAlarmActionsFunctionType = (
            _ input: CloudWatchModel.EnableAlarmActionsInput) async throws -> ()
    typealias EnableInsightRulesFunctionType = (
            _ input: CloudWatchModel.EnableInsightRulesInput) async throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules
    typealias GetDashboardFunctionType = (
            _ input: CloudWatchModel.GetDashboardInput) async throws -> CloudWatchModel.GetDashboardOutputForGetDashboard
    typealias GetInsightRuleReportFunctionType = (
            _ input: CloudWatchModel.GetInsightRuleReportInput) async throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport
    typealias GetMetricDataFunctionType = (
            _ input: CloudWatchModel.GetMetricDataInput) async throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData
    typealias GetMetricStatisticsFunctionType = (
            _ input: CloudWatchModel.GetMetricStatisticsInput) async throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics
    typealias GetMetricStreamFunctionType = (
            _ input: CloudWatchModel.GetMetricStreamInput) async throws -> CloudWatchModel.GetMetricStreamOutputForGetMetricStream
    typealias GetMetricWidgetImageFunctionType = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput) async throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage
    typealias ListDashboardsFunctionType = (
            _ input: CloudWatchModel.ListDashboardsInput) async throws -> CloudWatchModel.ListDashboardsOutputForListDashboards
    typealias ListManagedInsightRulesFunctionType = (
            _ input: CloudWatchModel.ListManagedInsightRulesInput) async throws -> CloudWatchModel.ListManagedInsightRulesOutputForListManagedInsightRules
    typealias ListMetricStreamsFunctionType = (
            _ input: CloudWatchModel.ListMetricStreamsInput) async throws -> CloudWatchModel.ListMetricStreamsOutputForListMetricStreams
    typealias ListMetricsFunctionType = (
            _ input: CloudWatchModel.ListMetricsInput) async throws -> CloudWatchModel.ListMetricsOutputForListMetrics
    typealias ListTagsForResourceFunctionType = (
            _ input: CloudWatchModel.ListTagsForResourceInput) async throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource
    typealias PutAnomalyDetectorFunctionType = (
            _ input: CloudWatchModel.PutAnomalyDetectorInput) async throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector
    typealias PutCompositeAlarmFunctionType = (
            _ input: CloudWatchModel.PutCompositeAlarmInput) async throws -> ()
    typealias PutDashboardFunctionType = (
            _ input: CloudWatchModel.PutDashboardInput) async throws -> CloudWatchModel.PutDashboardOutputForPutDashboard
    typealias PutInsightRuleFunctionType = (
            _ input: CloudWatchModel.PutInsightRuleInput) async throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule
    typealias PutManagedInsightRulesFunctionType = (
            _ input: CloudWatchModel.PutManagedInsightRulesInput) async throws -> CloudWatchModel.PutManagedInsightRulesOutputForPutManagedInsightRules
    typealias PutMetricAlarmFunctionType = (
            _ input: CloudWatchModel.PutMetricAlarmInput) async throws -> ()
    typealias PutMetricDataFunctionType = (
            _ input: CloudWatchModel.PutMetricDataInput) async throws -> ()
    typealias PutMetricStreamFunctionType = (
            _ input: CloudWatchModel.PutMetricStreamInput) async throws -> CloudWatchModel.PutMetricStreamOutputForPutMetricStream
    typealias SetAlarmStateFunctionType = (
            _ input: CloudWatchModel.SetAlarmStateInput) async throws -> ()
    typealias StartMetricStreamsFunctionType = (
            _ input: CloudWatchModel.StartMetricStreamsInput) async throws -> CloudWatchModel.StartMetricStreamsOutputForStartMetricStreams
    typealias StopMetricStreamsFunctionType = (
            _ input: CloudWatchModel.StopMetricStreamsInput) async throws -> CloudWatchModel.StopMetricStreamsOutputForStopMetricStreams
    typealias TagResourceFunctionType = (
            _ input: CloudWatchModel.TagResourceInput) async throws -> CloudWatchModel.TagResourceOutputForTagResource
    typealias UntagResourceFunctionType = (
            _ input: CloudWatchModel.UntagResourceInput) async throws -> CloudWatchModel.UntagResourceOutputForUntagResource

    /**
     Invokes the DeleteAlarms operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    func deleteAlarms(
            input: CloudWatchModel.DeleteAlarmsInput) async throws

    /**
     Invokes the DeleteAnomalyDetector operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetector(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) async throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector

    /**
     Invokes the DeleteDashboards operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboards(
            input: CloudWatchModel.DeleteDashboardsInput) async throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards

    /**
     Invokes the DeleteInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRules(
            input: CloudWatchModel.DeleteInsightRulesInput) async throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules

    /**
     Invokes the DeleteMetricStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMetricStreamInput object being passed to this operation.
     - Returns: The DeleteMetricStreamOutputForDeleteMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    func deleteMetricStream(
            input: CloudWatchModel.DeleteMetricStreamInput) async throws -> CloudWatchModel.DeleteMetricStreamOutputForDeleteMetricStream

    /**
     Invokes the DescribeAlarmHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmHistory(
            input: CloudWatchModel.DescribeAlarmHistoryInput) async throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory

    /**
     Invokes the DescribeAlarms operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarms(
            input: CloudWatchModel.DescribeAlarmsInput) async throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms

    /**
     Invokes the DescribeAlarmsForMetric operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAlarmsForMetric(
            input: CloudWatchModel.DescribeAlarmsForMetricInput) async throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric

    /**
     Invokes the DescribeAnomalyDetectors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterCombination, invalidParameterValue.
     */
    func describeAnomalyDetectors(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) async throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors

    /**
     Invokes the DescribeInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeInsightRules(
            input: CloudWatchModel.DescribeInsightRulesInput) async throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules

    /**
     Invokes the DisableAlarmActions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    func disableAlarmActions(
            input: CloudWatchModel.DisableAlarmActionsInput) async throws

    /**
     Invokes the DisableInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRules(
            input: CloudWatchModel.DisableInsightRulesInput) async throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules

    /**
     Invokes the EnableAlarmActions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    func enableAlarmActions(
            input: CloudWatchModel.EnableAlarmActionsInput) async throws

    /**
     Invokes the EnableInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRules(
            input: CloudWatchModel.EnableInsightRulesInput) async throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules

    /**
     Invokes the GetDashboard operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboard(
            input: CloudWatchModel.GetDashboardInput) async throws -> CloudWatchModel.GetDashboardOutputForGetDashboard

    /**
     Invokes the GetInsightRuleReport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReport(
            input: CloudWatchModel.GetInsightRuleReportInput) async throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport

    /**
     Invokes the GetMetricData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func getMetricData(
            input: CloudWatchModel.GetMetricDataInput) async throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData

    /**
     Invokes the GetMetricStatistics operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatistics(
            input: CloudWatchModel.GetMetricStatisticsInput) async throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics

    /**
     Invokes the GetMetricStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricStreamInput object being passed to this operation.
     - Returns: The GetMetricStreamOutputForGetMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getMetricStream(
            input: CloudWatchModel.GetMetricStreamInput) async throws -> CloudWatchModel.GetMetricStreamOutputForGetMetricStream

    /**
     Invokes the GetMetricWidgetImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getMetricWidgetImage(
            input: CloudWatchModel.GetMetricWidgetImageInput) async throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage

    /**
     Invokes the ListDashboards operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listDashboards(
            input: CloudWatchModel.ListDashboardsInput) async throws -> CloudWatchModel.ListDashboardsOutputForListDashboards

    /**
     Invokes the ListManagedInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListManagedInsightRulesInput object being passed to this operation.
     - Returns: The ListManagedInsightRulesOutputForListManagedInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    func listManagedInsightRules(
            input: CloudWatchModel.ListManagedInsightRulesInput) async throws -> CloudWatchModel.ListManagedInsightRulesOutputForListManagedInsightRules

    /**
     Invokes the ListMetricStreams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMetricStreamsInput object being passed to this operation.
     - Returns: The ListMetricStreamsOutputForListMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    func listMetricStreams(
            input: CloudWatchModel.ListMetricStreamsInput) async throws -> CloudWatchModel.ListMetricStreamsOutputForListMetricStreams

    /**
     Invokes the ListMetrics operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listMetrics(
            input: CloudWatchModel.ListMetricsInput) async throws -> CloudWatchModel.ListMetricsOutputForListMetrics

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResource(
            input: CloudWatchModel.ListTagsForResourceInput) async throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource

    /**
     Invokes the PutAnomalyDetector operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetector(
            input: CloudWatchModel.PutAnomalyDetectorInput) async throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector

    /**
     Invokes the PutCompositeAlarm operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putCompositeAlarm(
            input: CloudWatchModel.PutCompositeAlarmInput) async throws

    /**
     Invokes the PutDashboard operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    func putDashboard(
            input: CloudWatchModel.PutDashboardInput) async throws -> CloudWatchModel.PutDashboardOutputForPutDashboard

    /**
     Invokes the PutInsightRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRule(
            input: CloudWatchModel.PutInsightRuleInput) async throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule

    /**
     Invokes the PutManagedInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutManagedInsightRulesInput object being passed to this operation.
     - Returns: The PutManagedInsightRulesOutputForPutManagedInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func putManagedInsightRules(
            input: CloudWatchModel.PutManagedInsightRulesInput) async throws -> CloudWatchModel.PutManagedInsightRulesOutputForPutManagedInsightRules

    /**
     Invokes the PutMetricAlarm operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putMetricAlarm(
            input: CloudWatchModel.PutMetricAlarmInput) async throws

    /**
     Invokes the PutMetricData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricData(
            input: CloudWatchModel.PutMetricDataInput) async throws

    /**
     Invokes the PutMetricStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutMetricStreamInput object being passed to this operation.
     - Returns: The PutMetricStreamOutputForPutMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricStream(
            input: CloudWatchModel.PutMetricStreamInput) async throws -> CloudWatchModel.PutMetricStreamOutputForPutMetricStream

    /**
     Invokes the SetAlarmState operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    func setAlarmState(
            input: CloudWatchModel.SetAlarmStateInput) async throws

    /**
     Invokes the StartMetricStreams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartMetricStreamsInput object being passed to this operation.
     - Returns: The StartMetricStreamsOutputForStartMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    func startMetricStreams(
            input: CloudWatchModel.StartMetricStreamsInput) async throws -> CloudWatchModel.StartMetricStreamsOutputForStartMetricStreams

    /**
     Invokes the StopMetricStreams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopMetricStreamsInput object being passed to this operation.
     - Returns: The StopMetricStreamsOutputForStopMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    func stopMetricStreams(
            input: CloudWatchModel.StopMetricStreamsInput) async throws -> CloudWatchModel.StopMetricStreamsOutputForStopMetricStreams

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResource(
            input: CloudWatchModel.TagResourceInput) async throws -> CloudWatchModel.TagResourceOutputForTagResource

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResource(
            input: CloudWatchModel.UntagResourceInput) async throws -> CloudWatchModel.UntagResourceOutputForUntagResource
#endif
}
