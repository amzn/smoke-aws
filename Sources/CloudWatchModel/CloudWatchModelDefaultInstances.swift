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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// CloudWatchModelDefaultInstances.swift
// CloudWatchModel
//

import Foundation

public extension AlarmHistoryItem {
    /**
     Default instance of the AlarmHistoryItem structure.
     */
    public static let __default: CloudWatchModel.AlarmHistoryItem = {
        let defaultInstance = CloudWatchModel.AlarmHistoryItem(
            alarmName: nil,
            historyData: nil,
            historyItemType: nil,
            historySummary: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension ConcurrentModificationException {
    /**
     Default instance of the ConcurrentModificationException structure.
     */
    public static let __default: CloudWatchModel.ConcurrentModificationException = {
        let defaultInstance = CloudWatchModel.ConcurrentModificationException()

        return defaultInstance
    }()
}

public extension DashboardEntry {
    /**
     Default instance of the DashboardEntry structure.
     */
    public static let __default: CloudWatchModel.DashboardEntry = {
        let defaultInstance = CloudWatchModel.DashboardEntry(
            dashboardArn: nil,
            dashboardName: nil,
            lastModified: nil,
            size: nil)

        return defaultInstance
    }()
}

public extension DashboardInvalidInputError {
    /**
     Default instance of the DashboardInvalidInputError structure.
     */
    public static let __default: CloudWatchModel.DashboardInvalidInputError = {
        let defaultInstance = CloudWatchModel.DashboardInvalidInputError(
            dashboardValidationMessages: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension DashboardNotFoundError {
    /**
     Default instance of the DashboardNotFoundError structure.
     */
    public static let __default: CloudWatchModel.DashboardNotFoundError = {
        let defaultInstance = CloudWatchModel.DashboardNotFoundError(
            message: nil)

        return defaultInstance
    }()
}

public extension DashboardValidationMessage {
    /**
     Default instance of the DashboardValidationMessage structure.
     */
    public static let __default: CloudWatchModel.DashboardValidationMessage = {
        let defaultInstance = CloudWatchModel.DashboardValidationMessage(
            dataPath: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension Datapoint {
    /**
     Default instance of the Datapoint structure.
     */
    public static let __default: CloudWatchModel.Datapoint = {
        let defaultInstance = CloudWatchModel.Datapoint(
            average: nil,
            extendedStatistics: nil,
            maximum: nil,
            minimum: nil,
            sampleCount: nil,
            sum: nil,
            timestamp: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension DeleteAlarmsInput {
    /**
     Default instance of the DeleteAlarmsInput structure.
     */
    public static let __default: CloudWatchModel.DeleteAlarmsInput = {
        let defaultInstance = CloudWatchModel.DeleteAlarmsInput(
            alarmNames: [])

        return defaultInstance
    }()
}

public extension DeleteDashboardsInput {
    /**
     Default instance of the DeleteDashboardsInput structure.
     */
    public static let __default: CloudWatchModel.DeleteDashboardsInput = {
        let defaultInstance = CloudWatchModel.DeleteDashboardsInput(
            dashboardNames: [])

        return defaultInstance
    }()
}

public extension DeleteDashboardsOutput {
    /**
     Default instance of the DeleteDashboardsOutput structure.
     */
    public static let __default: CloudWatchModel.DeleteDashboardsOutput = {
        let defaultInstance = CloudWatchModel.DeleteDashboardsOutput()

        return defaultInstance
    }()
}

public extension DeleteDashboardsOutputForDeleteDashboards {
    /**
     Default instance of the DeleteDashboardsOutputForDeleteDashboards structure.
     */
    public static let __default: CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards = {
        let defaultInstance = CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards(
            deleteDashboardsResult: DeleteDashboardsOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAlarmHistoryInput {
    /**
     Default instance of the DescribeAlarmHistoryInput structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmHistoryInput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmHistoryInput(
            alarmName: nil,
            endDate: nil,
            historyItemType: nil,
            maxRecords: nil,
            nextToken: nil,
            startDate: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmHistoryOutput {
    /**
     Default instance of the DescribeAlarmHistoryOutput structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmHistoryOutput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmHistoryOutput(
            alarmHistoryItems: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmHistoryOutputForDescribeAlarmHistory {
    /**
     Default instance of the DescribeAlarmHistoryOutputForDescribeAlarmHistory structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory = {
        let defaultInstance = CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory(
            describeAlarmHistoryResult: DescribeAlarmHistoryOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAlarmsForMetricInput {
    /**
     Default instance of the DescribeAlarmsForMetricInput structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmsForMetricInput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsForMetricInput(
            dimensions: nil,
            extendedStatistic: nil,
            metricName: "0",
            namespace: "0",
            period: nil,
            statistic: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsForMetricOutput {
    /**
     Default instance of the DescribeAlarmsForMetricOutput structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmsForMetricOutput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsForMetricOutput(
            metricAlarms: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
    /**
     Default instance of the DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric(
            describeAlarmsForMetricResult: DescribeAlarmsForMetricOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAlarmsInput {
    /**
     Default instance of the DescribeAlarmsInput structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmsInput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsInput(
            actionPrefix: nil,
            alarmNamePrefix: nil,
            alarmNames: nil,
            maxRecords: nil,
            nextToken: nil,
            stateValue: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsOutput {
    /**
     Default instance of the DescribeAlarmsOutput structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmsOutput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsOutput(
            metricAlarms: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsOutputForDescribeAlarms {
    /**
     Default instance of the DescribeAlarmsOutputForDescribeAlarms structure.
     */
    public static let __default: CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms(
            describeAlarmsResult: DescribeAlarmsOutput.__default)

        return defaultInstance
    }()
}

public extension Dimension {
    /**
     Default instance of the Dimension structure.
     */
    public static let __default: CloudWatchModel.Dimension = {
        let defaultInstance = CloudWatchModel.Dimension(
            name: "0",
            value: "0")

        return defaultInstance
    }()
}

public extension DimensionFilter {
    /**
     Default instance of the DimensionFilter structure.
     */
    public static let __default: CloudWatchModel.DimensionFilter = {
        let defaultInstance = CloudWatchModel.DimensionFilter(
            name: "0",
            value: nil)

        return defaultInstance
    }()
}

public extension DisableAlarmActionsInput {
    /**
     Default instance of the DisableAlarmActionsInput structure.
     */
    public static let __default: CloudWatchModel.DisableAlarmActionsInput = {
        let defaultInstance = CloudWatchModel.DisableAlarmActionsInput(
            alarmNames: [])

        return defaultInstance
    }()
}

public extension EnableAlarmActionsInput {
    /**
     Default instance of the EnableAlarmActionsInput structure.
     */
    public static let __default: CloudWatchModel.EnableAlarmActionsInput = {
        let defaultInstance = CloudWatchModel.EnableAlarmActionsInput(
            alarmNames: [])

        return defaultInstance
    }()
}

public extension GetDashboardInput {
    /**
     Default instance of the GetDashboardInput structure.
     */
    public static let __default: CloudWatchModel.GetDashboardInput = {
        let defaultInstance = CloudWatchModel.GetDashboardInput(
            dashboardName: "value")

        return defaultInstance
    }()
}

public extension GetDashboardOutput {
    /**
     Default instance of the GetDashboardOutput structure.
     */
    public static let __default: CloudWatchModel.GetDashboardOutput = {
        let defaultInstance = CloudWatchModel.GetDashboardOutput(
            dashboardArn: nil,
            dashboardBody: nil,
            dashboardName: nil)

        return defaultInstance
    }()
}

public extension GetDashboardOutputForGetDashboard {
    /**
     Default instance of the GetDashboardOutputForGetDashboard structure.
     */
    public static let __default: CloudWatchModel.GetDashboardOutputForGetDashboard = {
        let defaultInstance = CloudWatchModel.GetDashboardOutputForGetDashboard(
            getDashboardResult: GetDashboardOutput.__default)

        return defaultInstance
    }()
}

public extension GetMetricDataInput {
    /**
     Default instance of the GetMetricDataInput structure.
     */
    public static let __default: CloudWatchModel.GetMetricDataInput = {
        let defaultInstance = CloudWatchModel.GetMetricDataInput(
            endTime: "2013-02-18T17:00:00Z",
            maxDatapoints: nil,
            metricDataQueries: [],
            nextToken: nil,
            scanBy: nil,
            startTime: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension GetMetricDataOutput {
    /**
     Default instance of the GetMetricDataOutput structure.
     */
    public static let __default: CloudWatchModel.GetMetricDataOutput = {
        let defaultInstance = CloudWatchModel.GetMetricDataOutput(
            messages: nil,
            metricDataResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension GetMetricDataOutputForGetMetricData {
    /**
     Default instance of the GetMetricDataOutputForGetMetricData structure.
     */
    public static let __default: CloudWatchModel.GetMetricDataOutputForGetMetricData = {
        let defaultInstance = CloudWatchModel.GetMetricDataOutputForGetMetricData(
            getMetricDataResult: GetMetricDataOutput.__default)

        return defaultInstance
    }()
}

public extension GetMetricStatisticsInput {
    /**
     Default instance of the GetMetricStatisticsInput structure.
     */
    public static let __default: CloudWatchModel.GetMetricStatisticsInput = {
        let defaultInstance = CloudWatchModel.GetMetricStatisticsInput(
            dimensions: nil,
            endTime: "2013-02-18T17:00:00Z",
            extendedStatistics: nil,
            metricName: "0",
            namespace: "0",
            period: 0,
            startTime: "2013-02-18T17:00:00Z",
            statistics: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension GetMetricStatisticsOutput {
    /**
     Default instance of the GetMetricStatisticsOutput structure.
     */
    public static let __default: CloudWatchModel.GetMetricStatisticsOutput = {
        let defaultInstance = CloudWatchModel.GetMetricStatisticsOutput(
            datapoints: nil,
            label: nil)

        return defaultInstance
    }()
}

public extension GetMetricStatisticsOutputForGetMetricStatistics {
    /**
     Default instance of the GetMetricStatisticsOutputForGetMetricStatistics structure.
     */
    public static let __default: CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics = {
        let defaultInstance = CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics(
            getMetricStatisticsResult: GetMetricStatisticsOutput.__default)

        return defaultInstance
    }()
}

public extension GetMetricWidgetImageInput {
    /**
     Default instance of the GetMetricWidgetImageInput structure.
     */
    public static let __default: CloudWatchModel.GetMetricWidgetImageInput = {
        let defaultInstance = CloudWatchModel.GetMetricWidgetImageInput(
            metricWidget: "value",
            outputFormat: nil)

        return defaultInstance
    }()
}

public extension GetMetricWidgetImageOutput {
    /**
     Default instance of the GetMetricWidgetImageOutput structure.
     */
    public static let __default: CloudWatchModel.GetMetricWidgetImageOutput = {
        let defaultInstance = CloudWatchModel.GetMetricWidgetImageOutput(
            metricWidgetImage: nil)

        return defaultInstance
    }()
}

public extension GetMetricWidgetImageOutputForGetMetricWidgetImage {
    /**
     Default instance of the GetMetricWidgetImageOutputForGetMetricWidgetImage structure.
     */
    public static let __default: CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage = {
        let defaultInstance = CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage(
            getMetricWidgetImageResult: GetMetricWidgetImageOutput.__default)

        return defaultInstance
    }()
}

public extension InternalServiceFault {
    /**
     Default instance of the InternalServiceFault structure.
     */
    public static let __default: CloudWatchModel.InternalServiceFault = {
        let defaultInstance = CloudWatchModel.InternalServiceFault(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidFormatFault {
    /**
     Default instance of the InvalidFormatFault structure.
     */
    public static let __default: CloudWatchModel.InvalidFormatFault = {
        let defaultInstance = CloudWatchModel.InvalidFormatFault(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidNextToken {
    /**
     Default instance of the InvalidNextToken structure.
     */
    public static let __default: CloudWatchModel.InvalidNextToken = {
        let defaultInstance = CloudWatchModel.InvalidNextToken(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterCombinationException {
    /**
     Default instance of the InvalidParameterCombinationException structure.
     */
    public static let __default: CloudWatchModel.InvalidParameterCombinationException = {
        let defaultInstance = CloudWatchModel.InvalidParameterCombinationException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterValueException {
    /**
     Default instance of the InvalidParameterValueException structure.
     */
    public static let __default: CloudWatchModel.InvalidParameterValueException = {
        let defaultInstance = CloudWatchModel.InvalidParameterValueException(
            message: nil)

        return defaultInstance
    }()
}

public extension LimitExceededFault {
    /**
     Default instance of the LimitExceededFault structure.
     */
    public static let __default: CloudWatchModel.LimitExceededFault = {
        let defaultInstance = CloudWatchModel.LimitExceededFault(
            message: nil)

        return defaultInstance
    }()
}

public extension ListDashboardsInput {
    /**
     Default instance of the ListDashboardsInput structure.
     */
    public static let __default: CloudWatchModel.ListDashboardsInput = {
        let defaultInstance = CloudWatchModel.ListDashboardsInput(
            dashboardNamePrefix: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListDashboardsOutput {
    /**
     Default instance of the ListDashboardsOutput structure.
     */
    public static let __default: CloudWatchModel.ListDashboardsOutput = {
        let defaultInstance = CloudWatchModel.ListDashboardsOutput(
            dashboardEntries: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListDashboardsOutputForListDashboards {
    /**
     Default instance of the ListDashboardsOutputForListDashboards structure.
     */
    public static let __default: CloudWatchModel.ListDashboardsOutputForListDashboards = {
        let defaultInstance = CloudWatchModel.ListDashboardsOutputForListDashboards(
            listDashboardsResult: ListDashboardsOutput.__default)

        return defaultInstance
    }()
}

public extension ListMetricsInput {
    /**
     Default instance of the ListMetricsInput structure.
     */
    public static let __default: CloudWatchModel.ListMetricsInput = {
        let defaultInstance = CloudWatchModel.ListMetricsInput(
            dimensions: nil,
            metricName: nil,
            namespace: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListMetricsOutput {
    /**
     Default instance of the ListMetricsOutput structure.
     */
    public static let __default: CloudWatchModel.ListMetricsOutput = {
        let defaultInstance = CloudWatchModel.ListMetricsOutput(
            metrics: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListMetricsOutputForListMetrics {
    /**
     Default instance of the ListMetricsOutputForListMetrics structure.
     */
    public static let __default: CloudWatchModel.ListMetricsOutputForListMetrics = {
        let defaultInstance = CloudWatchModel.ListMetricsOutputForListMetrics(
            listMetricsResult: ListMetricsOutput.__default)

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    public static let __default: CloudWatchModel.ListTagsForResourceInput = {
        let defaultInstance = CloudWatchModel.ListTagsForResourceInput(
            resourceARN: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    public static let __default: CloudWatchModel.ListTagsForResourceOutput = {
        let defaultInstance = CloudWatchModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutputForListTagsForResource {
    /**
     Default instance of the ListTagsForResourceOutputForListTagsForResource structure.
     */
    public static let __default: CloudWatchModel.ListTagsForResourceOutputForListTagsForResource = {
        let defaultInstance = CloudWatchModel.ListTagsForResourceOutputForListTagsForResource(
            listTagsForResourceResult: ListTagsForResourceOutput.__default)

        return defaultInstance
    }()
}

public extension MessageData {
    /**
     Default instance of the MessageData structure.
     */
    public static let __default: CloudWatchModel.MessageData = {
        let defaultInstance = CloudWatchModel.MessageData(
            code: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension Metric {
    /**
     Default instance of the Metric structure.
     */
    public static let __default: CloudWatchModel.Metric = {
        let defaultInstance = CloudWatchModel.Metric(
            dimensions: nil,
            metricName: nil,
            namespace: nil)

        return defaultInstance
    }()
}

public extension MetricAlarm {
    /**
     Default instance of the MetricAlarm structure.
     */
    public static let __default: CloudWatchModel.MetricAlarm = {
        let defaultInstance = CloudWatchModel.MetricAlarm(
            actionsEnabled: nil,
            alarmActions: nil,
            alarmArn: nil,
            alarmConfigurationUpdatedTimestamp: nil,
            alarmDescription: nil,
            alarmName: nil,
            comparisonOperator: nil,
            datapointsToAlarm: nil,
            dimensions: nil,
            evaluateLowSampleCountPercentile: nil,
            evaluationPeriods: nil,
            extendedStatistic: nil,
            insufficientDataActions: nil,
            metricName: nil,
            metrics: nil,
            namespace: nil,
            oKActions: nil,
            period: nil,
            stateReason: nil,
            stateReasonData: nil,
            stateUpdatedTimestamp: nil,
            stateValue: nil,
            statistic: nil,
            threshold: nil,
            treatMissingData: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension MetricDataQuery {
    /**
     Default instance of the MetricDataQuery structure.
     */
    public static let __default: CloudWatchModel.MetricDataQuery = {
        let defaultInstance = CloudWatchModel.MetricDataQuery(
            expression: nil,
            id: "0",
            label: nil,
            metricStat: nil,
            returnData: nil)

        return defaultInstance
    }()
}

public extension MetricDataResult {
    /**
     Default instance of the MetricDataResult structure.
     */
    public static let __default: CloudWatchModel.MetricDataResult = {
        let defaultInstance = CloudWatchModel.MetricDataResult(
            id: nil,
            label: nil,
            messages: nil,
            statusCode: nil,
            timestamps: nil,
            values: nil)

        return defaultInstance
    }()
}

public extension MetricDatum {
    /**
     Default instance of the MetricDatum structure.
     */
    public static let __default: CloudWatchModel.MetricDatum = {
        let defaultInstance = CloudWatchModel.MetricDatum(
            counts: nil,
            dimensions: nil,
            metricName: "0",
            statisticValues: nil,
            storageResolution: nil,
            timestamp: nil,
            unit: nil,
            value: nil,
            values: nil)

        return defaultInstance
    }()
}

public extension MetricStat {
    /**
     Default instance of the MetricStat structure.
     */
    public static let __default: CloudWatchModel.MetricStat = {
        let defaultInstance = CloudWatchModel.MetricStat(
            metric: Metric.__default,
            period: 0,
            stat: "value",
            unit: nil)

        return defaultInstance
    }()
}

public extension MissingRequiredParameterException {
    /**
     Default instance of the MissingRequiredParameterException structure.
     */
    public static let __default: CloudWatchModel.MissingRequiredParameterException = {
        let defaultInstance = CloudWatchModel.MissingRequiredParameterException(
            message: nil)

        return defaultInstance
    }()
}

public extension PutDashboardInput {
    /**
     Default instance of the PutDashboardInput structure.
     */
    public static let __default: CloudWatchModel.PutDashboardInput = {
        let defaultInstance = CloudWatchModel.PutDashboardInput(
            dashboardBody: "value",
            dashboardName: "value")

        return defaultInstance
    }()
}

public extension PutDashboardOutput {
    /**
     Default instance of the PutDashboardOutput structure.
     */
    public static let __default: CloudWatchModel.PutDashboardOutput = {
        let defaultInstance = CloudWatchModel.PutDashboardOutput(
            dashboardValidationMessages: nil)

        return defaultInstance
    }()
}

public extension PutDashboardOutputForPutDashboard {
    /**
     Default instance of the PutDashboardOutputForPutDashboard structure.
     */
    public static let __default: CloudWatchModel.PutDashboardOutputForPutDashboard = {
        let defaultInstance = CloudWatchModel.PutDashboardOutputForPutDashboard(
            putDashboardResult: PutDashboardOutput.__default)

        return defaultInstance
    }()
}

public extension PutMetricAlarmInput {
    /**
     Default instance of the PutMetricAlarmInput structure.
     */
    public static let __default: CloudWatchModel.PutMetricAlarmInput = {
        let defaultInstance = CloudWatchModel.PutMetricAlarmInput(
            actionsEnabled: nil,
            alarmActions: nil,
            alarmDescription: nil,
            alarmName: "0",
            comparisonOperator: .__default,
            datapointsToAlarm: nil,
            dimensions: nil,
            evaluateLowSampleCountPercentile: nil,
            evaluationPeriods: 0,
            extendedStatistic: nil,
            insufficientDataActions: nil,
            metricName: nil,
            metrics: nil,
            namespace: nil,
            oKActions: nil,
            period: nil,
            statistic: nil,
            tags: nil,
            threshold: 0.0,
            treatMissingData: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension PutMetricDataInput {
    /**
     Default instance of the PutMetricDataInput structure.
     */
    public static let __default: CloudWatchModel.PutMetricDataInput = {
        let defaultInstance = CloudWatchModel.PutMetricDataInput(
            metricData: [],
            namespace: "0")

        return defaultInstance
    }()
}

public extension ResourceNotFound {
    /**
     Default instance of the ResourceNotFound structure.
     */
    public static let __default: CloudWatchModel.ResourceNotFound = {
        let defaultInstance = CloudWatchModel.ResourceNotFound(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    public static let __default: CloudWatchModel.ResourceNotFoundException = {
        let defaultInstance = CloudWatchModel.ResourceNotFoundException(
            resourceId: nil,
            resourceType: nil)

        return defaultInstance
    }()
}

public extension SetAlarmStateInput {
    /**
     Default instance of the SetAlarmStateInput structure.
     */
    public static let __default: CloudWatchModel.SetAlarmStateInput = {
        let defaultInstance = CloudWatchModel.SetAlarmStateInput(
            alarmName: "0",
            stateReason: "",
            stateReasonData: nil,
            stateValue: .__default)

        return defaultInstance
    }()
}

public extension StatisticSet {
    /**
     Default instance of the StatisticSet structure.
     */
    public static let __default: CloudWatchModel.StatisticSet = {
        let defaultInstance = CloudWatchModel.StatisticSet(
            maximum: 0.0,
            minimum: 0.0,
            sampleCount: 0.0,
            sum: 0.0)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    public static let __default: CloudWatchModel.Tag = {
        let defaultInstance = CloudWatchModel.Tag(
            key: "0",
            value: "")

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    public static let __default: CloudWatchModel.TagResourceInput = {
        let defaultInstance = CloudWatchModel.TagResourceInput(
            resourceARN: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceOutput {
    /**
     Default instance of the TagResourceOutput structure.
     */
    public static let __default: CloudWatchModel.TagResourceOutput = {
        let defaultInstance = CloudWatchModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension TagResourceOutputForTagResource {
    /**
     Default instance of the TagResourceOutputForTagResource structure.
     */
    public static let __default: CloudWatchModel.TagResourceOutputForTagResource = {
        let defaultInstance = CloudWatchModel.TagResourceOutputForTagResource(
            tagResourceResult: TagResourceOutput.__default)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    public static let __default: CloudWatchModel.UntagResourceInput = {
        let defaultInstance = CloudWatchModel.UntagResourceInput(
            resourceARN: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceOutput {
    /**
     Default instance of the UntagResourceOutput structure.
     */
    public static let __default: CloudWatchModel.UntagResourceOutput = {
        let defaultInstance = CloudWatchModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UntagResourceOutputForUntagResource {
    /**
     Default instance of the UntagResourceOutputForUntagResource structure.
     */
    public static let __default: CloudWatchModel.UntagResourceOutputForUntagResource = {
        let defaultInstance = CloudWatchModel.UntagResourceOutputForUntagResource(
            untagResourceResult: UntagResourceOutput.__default)

        return defaultInstance
    }()
}
