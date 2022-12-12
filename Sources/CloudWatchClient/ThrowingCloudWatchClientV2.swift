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
// ThrowingCloudWatchClientV2.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CloudWatch service that by default always throws from its methods.
 */
public struct ThrowingCloudWatchClientV2: CloudWatchClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: CloudWatchError
    let deleteAlarmsOverride: DeleteAlarmsFunctionType?
    let deleteAnomalyDetectorOverride: DeleteAnomalyDetectorFunctionType?
    let deleteDashboardsOverride: DeleteDashboardsFunctionType?
    let deleteInsightRulesOverride: DeleteInsightRulesFunctionType?
    let deleteMetricStreamOverride: DeleteMetricStreamFunctionType?
    let describeAlarmHistoryOverride: DescribeAlarmHistoryFunctionType?
    let describeAlarmsOverride: DescribeAlarmsFunctionType?
    let describeAlarmsForMetricOverride: DescribeAlarmsForMetricFunctionType?
    let describeAnomalyDetectorsOverride: DescribeAnomalyDetectorsFunctionType?
    let describeInsightRulesOverride: DescribeInsightRulesFunctionType?
    let disableAlarmActionsOverride: DisableAlarmActionsFunctionType?
    let disableInsightRulesOverride: DisableInsightRulesFunctionType?
    let enableAlarmActionsOverride: EnableAlarmActionsFunctionType?
    let enableInsightRulesOverride: EnableInsightRulesFunctionType?
    let getDashboardOverride: GetDashboardFunctionType?
    let getInsightRuleReportOverride: GetInsightRuleReportFunctionType?
    let getMetricDataOverride: GetMetricDataFunctionType?
    let getMetricStatisticsOverride: GetMetricStatisticsFunctionType?
    let getMetricStreamOverride: GetMetricStreamFunctionType?
    let getMetricWidgetImageOverride: GetMetricWidgetImageFunctionType?
    let listDashboardsOverride: ListDashboardsFunctionType?
    let listManagedInsightRulesOverride: ListManagedInsightRulesFunctionType?
    let listMetricStreamsOverride: ListMetricStreamsFunctionType?
    let listMetricsOverride: ListMetricsFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let putAnomalyDetectorOverride: PutAnomalyDetectorFunctionType?
    let putCompositeAlarmOverride: PutCompositeAlarmFunctionType?
    let putDashboardOverride: PutDashboardFunctionType?
    let putInsightRuleOverride: PutInsightRuleFunctionType?
    let putManagedInsightRulesOverride: PutManagedInsightRulesFunctionType?
    let putMetricAlarmOverride: PutMetricAlarmFunctionType?
    let putMetricDataOverride: PutMetricDataFunctionType?
    let putMetricStreamOverride: PutMetricStreamFunctionType?
    let setAlarmStateOverride: SetAlarmStateFunctionType?
    let startMetricStreamsOverride: StartMetricStreamsFunctionType?
    let stopMetricStreamsOverride: StopMetricStreamsFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: CloudWatchError,
            deleteAlarms: DeleteAlarmsFunctionType? = nil,
            deleteAnomalyDetector: DeleteAnomalyDetectorFunctionType? = nil,
            deleteDashboards: DeleteDashboardsFunctionType? = nil,
            deleteInsightRules: DeleteInsightRulesFunctionType? = nil,
            deleteMetricStream: DeleteMetricStreamFunctionType? = nil,
            describeAlarmHistory: DescribeAlarmHistoryFunctionType? = nil,
            describeAlarms: DescribeAlarmsFunctionType? = nil,
            describeAlarmsForMetric: DescribeAlarmsForMetricFunctionType? = nil,
            describeAnomalyDetectors: DescribeAnomalyDetectorsFunctionType? = nil,
            describeInsightRules: DescribeInsightRulesFunctionType? = nil,
            disableAlarmActions: DisableAlarmActionsFunctionType? = nil,
            disableInsightRules: DisableInsightRulesFunctionType? = nil,
            enableAlarmActions: EnableAlarmActionsFunctionType? = nil,
            enableInsightRules: EnableInsightRulesFunctionType? = nil,
            getDashboard: GetDashboardFunctionType? = nil,
            getInsightRuleReport: GetInsightRuleReportFunctionType? = nil,
            getMetricData: GetMetricDataFunctionType? = nil,
            getMetricStatistics: GetMetricStatisticsFunctionType? = nil,
            getMetricStream: GetMetricStreamFunctionType? = nil,
            getMetricWidgetImage: GetMetricWidgetImageFunctionType? = nil,
            listDashboards: ListDashboardsFunctionType? = nil,
            listManagedInsightRules: ListManagedInsightRulesFunctionType? = nil,
            listMetricStreams: ListMetricStreamsFunctionType? = nil,
            listMetrics: ListMetricsFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            putAnomalyDetector: PutAnomalyDetectorFunctionType? = nil,
            putCompositeAlarm: PutCompositeAlarmFunctionType? = nil,
            putDashboard: PutDashboardFunctionType? = nil,
            putInsightRule: PutInsightRuleFunctionType? = nil,
            putManagedInsightRules: PutManagedInsightRulesFunctionType? = nil,
            putMetricAlarm: PutMetricAlarmFunctionType? = nil,
            putMetricData: PutMetricDataFunctionType? = nil,
            putMetricStream: PutMetricStreamFunctionType? = nil,
            setAlarmState: SetAlarmStateFunctionType? = nil,
            startMetricStreams: StartMetricStreamsFunctionType? = nil,
            stopMetricStreams: StopMetricStreamsFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil) {
        self.error = error
        self.deleteAlarmsOverride = deleteAlarms
        self.deleteAnomalyDetectorOverride = deleteAnomalyDetector
        self.deleteDashboardsOverride = deleteDashboards
        self.deleteInsightRulesOverride = deleteInsightRules
        self.deleteMetricStreamOverride = deleteMetricStream
        self.describeAlarmHistoryOverride = describeAlarmHistory
        self.describeAlarmsOverride = describeAlarms
        self.describeAlarmsForMetricOverride = describeAlarmsForMetric
        self.describeAnomalyDetectorsOverride = describeAnomalyDetectors
        self.describeInsightRulesOverride = describeInsightRules
        self.disableAlarmActionsOverride = disableAlarmActions
        self.disableInsightRulesOverride = disableInsightRules
        self.enableAlarmActionsOverride = enableAlarmActions
        self.enableInsightRulesOverride = enableInsightRules
        self.getDashboardOverride = getDashboard
        self.getInsightRuleReportOverride = getInsightRuleReport
        self.getMetricDataOverride = getMetricData
        self.getMetricStatisticsOverride = getMetricStatistics
        self.getMetricStreamOverride = getMetricStream
        self.getMetricWidgetImageOverride = getMetricWidgetImage
        self.listDashboardsOverride = listDashboards
        self.listManagedInsightRulesOverride = listManagedInsightRules
        self.listMetricStreamsOverride = listMetricStreams
        self.listMetricsOverride = listMetrics
        self.listTagsForResourceOverride = listTagsForResource
        self.putAnomalyDetectorOverride = putAnomalyDetector
        self.putCompositeAlarmOverride = putCompositeAlarm
        self.putDashboardOverride = putDashboard
        self.putInsightRuleOverride = putInsightRule
        self.putManagedInsightRulesOverride = putManagedInsightRules
        self.putMetricAlarmOverride = putMetricAlarm
        self.putMetricDataOverride = putMetricData
        self.putMetricStreamOverride = putMetricStream
        self.setAlarmStateOverride = setAlarmState
        self.startMetricStreamsOverride = startMetricStreams
        self.stopMetricStreamsOverride = stopMetricStreams
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
    }

    /**
     Invokes the DeleteAlarms operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    public func deleteAlarms(
            input: CloudWatchModel.DeleteAlarmsInput) async throws {
        if let deleteAlarmsOverride = deleteAlarmsOverride {
            return try await deleteAlarmsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteAnomalyDetector operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetector(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) async throws -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        if let deleteAnomalyDetectorOverride = deleteAnomalyDetectorOverride {
            return try await deleteAnomalyDetectorOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDashboards operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboards(
            input: CloudWatchModel.DeleteDashboardsInput) async throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        if let deleteDashboardsOverride = deleteDashboardsOverride {
            return try await deleteDashboardsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func deleteInsightRules(
            input: CloudWatchModel.DeleteInsightRulesInput) async throws -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules {
        if let deleteInsightRulesOverride = deleteInsightRulesOverride {
            return try await deleteInsightRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteMetricStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMetricStreamInput object being passed to this operation.
     - Returns: The DeleteMetricStreamOutputForDeleteMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func deleteMetricStream(
            input: CloudWatchModel.DeleteMetricStreamInput) async throws -> CloudWatchModel.DeleteMetricStreamOutputForDeleteMetricStream {
        if let deleteMetricStreamOverride = deleteMetricStreamOverride {
            return try await deleteMetricStreamOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAlarmHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmHistory(
            input: CloudWatchModel.DescribeAlarmHistoryInput) async throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        if let describeAlarmHistoryOverride = describeAlarmHistoryOverride {
            return try await describeAlarmHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAlarms operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarms(
            input: CloudWatchModel.DescribeAlarmsInput) async throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        if let describeAlarmsOverride = describeAlarmsOverride {
            return try await describeAlarmsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAlarmsForMetric operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAlarmsForMetric(
            input: CloudWatchModel.DescribeAlarmsForMetricInput) async throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        if let describeAlarmsForMetricOverride = describeAlarmsForMetricOverride {
            return try await describeAlarmsForMetricOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAnomalyDetectors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterCombination, invalidParameterValue.
     */
    public func describeAnomalyDetectors(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) async throws -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        if let describeAnomalyDetectorsOverride = describeAnomalyDetectorsOverride {
            return try await describeAnomalyDetectorsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeInsightRules(
            input: CloudWatchModel.DescribeInsightRulesInput) async throws -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules {
        if let describeInsightRulesOverride = describeInsightRulesOverride {
            return try await describeInsightRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableAlarmActions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActions(
            input: CloudWatchModel.DisableAlarmActionsInput) async throws {
        if let disableAlarmActionsOverride = disableAlarmActionsOverride {
            return try await disableAlarmActionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func disableInsightRules(
            input: CloudWatchModel.DisableInsightRulesInput) async throws -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules {
        if let disableInsightRulesOverride = disableInsightRulesOverride {
            return try await disableInsightRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableAlarmActions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActions(
            input: CloudWatchModel.EnableAlarmActionsInput) async throws {
        if let enableAlarmActionsOverride = enableAlarmActionsOverride {
            return try await enableAlarmActionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func enableInsightRules(
            input: CloudWatchModel.EnableInsightRulesInput) async throws -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules {
        if let enableInsightRulesOverride = enableInsightRulesOverride {
            return try await enableInsightRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDashboard operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboard(
            input: CloudWatchModel.GetDashboardInput) async throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        if let getDashboardOverride = getDashboardOverride {
            return try await getDashboardOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetInsightRuleReport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getInsightRuleReport(
            input: CloudWatchModel.GetInsightRuleReportInput) async throws -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport {
        if let getInsightRuleReportOverride = getInsightRuleReportOverride {
            return try await getInsightRuleReportOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetMetricData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func getMetricData(
            input: CloudWatchModel.GetMetricDataInput) async throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        if let getMetricDataOverride = getMetricDataOverride {
            return try await getMetricDataOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetMetricStatistics operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatistics(
            input: CloudWatchModel.GetMetricStatisticsInput) async throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        if let getMetricStatisticsOverride = getMetricStatisticsOverride {
            return try await getMetricStatisticsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetMetricStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricStreamInput object being passed to this operation.
     - Returns: The GetMetricStreamOutputForGetMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getMetricStream(
            input: CloudWatchModel.GetMetricStreamInput) async throws -> CloudWatchModel.GetMetricStreamOutputForGetMetricStream {
        if let getMetricStreamOverride = getMetricStreamOverride {
            return try await getMetricStreamOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetMetricWidgetImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getMetricWidgetImage(
            input: CloudWatchModel.GetMetricWidgetImageInput) async throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        if let getMetricWidgetImageOverride = getMetricWidgetImageOverride {
            return try await getMetricWidgetImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListDashboards operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listDashboards(
            input: CloudWatchModel.ListDashboardsInput) async throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        if let listDashboardsOverride = listDashboardsOverride {
            return try await listDashboardsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListManagedInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListManagedInsightRulesInput object being passed to this operation.
     - Returns: The ListManagedInsightRulesOutputForListManagedInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    public func listManagedInsightRules(
            input: CloudWatchModel.ListManagedInsightRulesInput) async throws -> CloudWatchModel.ListManagedInsightRulesOutputForListManagedInsightRules {
        if let listManagedInsightRulesOverride = listManagedInsightRulesOverride {
            return try await listManagedInsightRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListMetricStreams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMetricStreamsInput object being passed to this operation.
     - Returns: The ListMetricStreamsOutputForListMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    public func listMetricStreams(
            input: CloudWatchModel.ListMetricStreamsInput) async throws -> CloudWatchModel.ListMetricStreamsOutputForListMetricStreams {
        if let listMetricStreamsOverride = listMetricStreamsOverride {
            return try await listMetricStreamsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListMetrics operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listMetrics(
            input: CloudWatchModel.ListMetricsInput) async throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
        if let listMetricsOverride = listMetricsOverride {
            return try await listMetricsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResource(
            input: CloudWatchModel.ListTagsForResourceInput) async throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutAnomalyDetector operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetector(
            input: CloudWatchModel.PutAnomalyDetectorInput) async throws -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
        if let putAnomalyDetectorOverride = putAnomalyDetectorOverride {
            return try await putAnomalyDetectorOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutCompositeAlarm operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putCompositeAlarm(
            input: CloudWatchModel.PutCompositeAlarmInput) async throws {
        if let putCompositeAlarmOverride = putCompositeAlarmOverride {
            return try await putCompositeAlarmOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutDashboard operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    public func putDashboard(
            input: CloudWatchModel.PutDashboardInput) async throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        if let putDashboardOverride = putDashboardOverride {
            return try await putDashboardOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutInsightRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putInsightRule(
            input: CloudWatchModel.PutInsightRuleInput) async throws -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule {
        if let putInsightRuleOverride = putInsightRuleOverride {
            return try await putInsightRuleOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutManagedInsightRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutManagedInsightRulesInput object being passed to this operation.
     - Returns: The PutManagedInsightRulesOutputForPutManagedInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    public func putManagedInsightRules(
            input: CloudWatchModel.PutManagedInsightRulesInput) async throws -> CloudWatchModel.PutManagedInsightRulesOutputForPutManagedInsightRules {
        if let putManagedInsightRulesOverride = putManagedInsightRulesOverride {
            return try await putManagedInsightRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutMetricAlarm operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putMetricAlarm(
            input: CloudWatchModel.PutMetricAlarmInput) async throws {
        if let putMetricAlarmOverride = putMetricAlarmOverride {
            return try await putMetricAlarmOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutMetricData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricData(
            input: CloudWatchModel.PutMetricDataInput) async throws {
        if let putMetricDataOverride = putMetricDataOverride {
            return try await putMetricDataOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutMetricStream operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutMetricStreamInput object being passed to this operation.
     - Returns: The PutMetricStreamOutputForPutMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricStream(
            input: CloudWatchModel.PutMetricStreamInput) async throws -> CloudWatchModel.PutMetricStreamOutputForPutMetricStream {
        if let putMetricStreamOverride = putMetricStreamOverride {
            return try await putMetricStreamOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetAlarmState operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    public func setAlarmState(
            input: CloudWatchModel.SetAlarmStateInput) async throws {
        if let setAlarmStateOverride = setAlarmStateOverride {
            return try await setAlarmStateOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartMetricStreams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartMetricStreamsInput object being passed to this operation.
     - Returns: The StartMetricStreamsOutputForStartMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func startMetricStreams(
            input: CloudWatchModel.StartMetricStreamsInput) async throws -> CloudWatchModel.StartMetricStreamsOutputForStartMetricStreams {
        if let startMetricStreamsOverride = startMetricStreamsOverride {
            return try await startMetricStreamsOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopMetricStreams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopMetricStreamsInput object being passed to this operation.
     - Returns: The StopMetricStreamsOutputForStopMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    public func stopMetricStreams(
            input: CloudWatchModel.StopMetricStreamsInput) async throws -> CloudWatchModel.StopMetricStreamsOutputForStopMetricStreams {
        if let stopMetricStreamsOverride = stopMetricStreamsOverride {
            return try await stopMetricStreamsOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResource(
            input: CloudWatchModel.TagResourceInput) async throws -> CloudWatchModel.TagResourceOutputForTagResource {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResource(
            input: CloudWatchModel.UntagResourceInput) async throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        throw error
    }
#endif
}
