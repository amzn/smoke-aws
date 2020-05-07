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
    static let __default: CloudWatchModel.AlarmHistoryItem = {
        let defaultInstance = CloudWatchModel.AlarmHistoryItem(
            alarmName: nil,
            alarmType: nil,
            historyData: nil,
            historyItemType: nil,
            historySummary: nil,
            timestamp: nil)

        return defaultInstance
    }()
}

public extension AnomalyDetector {
    /**
     Default instance of the AnomalyDetector structure.
     */
    static let __default: CloudWatchModel.AnomalyDetector = {
        let defaultInstance = CloudWatchModel.AnomalyDetector(
            configuration: nil,
            dimensions: nil,
            metricName: nil,
            namespace: nil,
            stat: nil,
            stateValue: nil)

        return defaultInstance
    }()
}

public extension AnomalyDetectorConfiguration {
    /**
     Default instance of the AnomalyDetectorConfiguration structure.
     */
    static let __default: CloudWatchModel.AnomalyDetectorConfiguration = {
        let defaultInstance = CloudWatchModel.AnomalyDetectorConfiguration(
            excludedTimeRanges: nil,
            metricTimezone: nil)

        return defaultInstance
    }()
}

public extension CompositeAlarm {
    /**
     Default instance of the CompositeAlarm structure.
     */
    static let __default: CloudWatchModel.CompositeAlarm = {
        let defaultInstance = CloudWatchModel.CompositeAlarm(
            actionsEnabled: nil,
            alarmActions: nil,
            alarmArn: nil,
            alarmConfigurationUpdatedTimestamp: nil,
            alarmDescription: nil,
            alarmName: nil,
            alarmRule: nil,
            insufficientDataActions: nil,
            oKActions: nil,
            stateReason: nil,
            stateReasonData: nil,
            stateUpdatedTimestamp: nil,
            stateValue: nil)

        return defaultInstance
    }()
}

public extension ConcurrentModificationException {
    /**
     Default instance of the ConcurrentModificationException structure.
     */
    static let __default: CloudWatchModel.ConcurrentModificationException = {
        let defaultInstance = CloudWatchModel.ConcurrentModificationException()

        return defaultInstance
    }()
}

public extension DashboardEntry {
    /**
     Default instance of the DashboardEntry structure.
     */
    static let __default: CloudWatchModel.DashboardEntry = {
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
    static let __default: CloudWatchModel.DashboardInvalidInputError = {
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
    static let __default: CloudWatchModel.DashboardNotFoundError = {
        let defaultInstance = CloudWatchModel.DashboardNotFoundError(
            message: nil)

        return defaultInstance
    }()
}

public extension DashboardValidationMessage {
    /**
     Default instance of the DashboardValidationMessage structure.
     */
    static let __default: CloudWatchModel.DashboardValidationMessage = {
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
    static let __default: CloudWatchModel.Datapoint = {
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
    static let __default: CloudWatchModel.DeleteAlarmsInput = {
        let defaultInstance = CloudWatchModel.DeleteAlarmsInput(
            alarmNames: [])

        return defaultInstance
    }()
}

public extension DeleteAnomalyDetectorInput {
    /**
     Default instance of the DeleteAnomalyDetectorInput structure.
     */
    static let __default: CloudWatchModel.DeleteAnomalyDetectorInput = {
        let defaultInstance = CloudWatchModel.DeleteAnomalyDetectorInput(
            dimensions: nil,
            metricName: "0",
            namespace: "0",
            stat: "")

        return defaultInstance
    }()
}

public extension DeleteAnomalyDetectorOutput {
    /**
     Default instance of the DeleteAnomalyDetectorOutput structure.
     */
    static let __default: CloudWatchModel.DeleteAnomalyDetectorOutput = {
        let defaultInstance = CloudWatchModel.DeleteAnomalyDetectorOutput()

        return defaultInstance
    }()
}

public extension DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
    /**
     Default instance of the DeleteAnomalyDetectorOutputForDeleteAnomalyDetector structure.
     */
    static let __default: CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector = {
        let defaultInstance = CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector(
            deleteAnomalyDetectorResult: DeleteAnomalyDetectorOutput.__default)

        return defaultInstance
    }()
}

public extension DeleteDashboardsInput {
    /**
     Default instance of the DeleteDashboardsInput structure.
     */
    static let __default: CloudWatchModel.DeleteDashboardsInput = {
        let defaultInstance = CloudWatchModel.DeleteDashboardsInput(
            dashboardNames: [])

        return defaultInstance
    }()
}

public extension DeleteDashboardsOutput {
    /**
     Default instance of the DeleteDashboardsOutput structure.
     */
    static let __default: CloudWatchModel.DeleteDashboardsOutput = {
        let defaultInstance = CloudWatchModel.DeleteDashboardsOutput()

        return defaultInstance
    }()
}

public extension DeleteDashboardsOutputForDeleteDashboards {
    /**
     Default instance of the DeleteDashboardsOutputForDeleteDashboards structure.
     */
    static let __default: CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards = {
        let defaultInstance = CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards(
            deleteDashboardsResult: DeleteDashboardsOutput.__default)

        return defaultInstance
    }()
}

public extension DeleteInsightRulesInput {
    /**
     Default instance of the DeleteInsightRulesInput structure.
     */
    static let __default: CloudWatchModel.DeleteInsightRulesInput = {
        let defaultInstance = CloudWatchModel.DeleteInsightRulesInput(
            ruleNames: [])

        return defaultInstance
    }()
}

public extension DeleteInsightRulesOutput {
    /**
     Default instance of the DeleteInsightRulesOutput structure.
     */
    static let __default: CloudWatchModel.DeleteInsightRulesOutput = {
        let defaultInstance = CloudWatchModel.DeleteInsightRulesOutput(
            failures: nil)

        return defaultInstance
    }()
}

public extension DeleteInsightRulesOutputForDeleteInsightRules {
    /**
     Default instance of the DeleteInsightRulesOutputForDeleteInsightRules structure.
     */
    static let __default: CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules = {
        let defaultInstance = CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules(
            deleteInsightRulesResult: DeleteInsightRulesOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAlarmHistoryInput {
    /**
     Default instance of the DescribeAlarmHistoryInput structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmHistoryInput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmHistoryInput(
            alarmName: nil,
            alarmTypes: nil,
            endDate: nil,
            historyItemType: nil,
            maxRecords: nil,
            nextToken: nil,
            scanBy: nil,
            startDate: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmHistoryOutput {
    /**
     Default instance of the DescribeAlarmHistoryOutput structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmHistoryOutput = {
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
    static let __default: CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory = {
        let defaultInstance = CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory(
            describeAlarmHistoryResult: DescribeAlarmHistoryOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAlarmsForMetricInput {
    /**
     Default instance of the DescribeAlarmsForMetricInput structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmsForMetricInput = {
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
    static let __default: CloudWatchModel.DescribeAlarmsForMetricOutput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsForMetricOutput(
            metricAlarms: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
    /**
     Default instance of the DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric(
            describeAlarmsForMetricResult: DescribeAlarmsForMetricOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAlarmsInput {
    /**
     Default instance of the DescribeAlarmsInput structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmsInput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsInput(
            actionPrefix: nil,
            alarmNamePrefix: nil,
            alarmNames: nil,
            alarmTypes: nil,
            childrenOfAlarmName: nil,
            maxRecords: nil,
            nextToken: nil,
            parentsOfAlarmName: nil,
            stateValue: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsOutput {
    /**
     Default instance of the DescribeAlarmsOutput structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmsOutput = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsOutput(
            compositeAlarms: nil,
            metricAlarms: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAlarmsOutputForDescribeAlarms {
    /**
     Default instance of the DescribeAlarmsOutputForDescribeAlarms structure.
     */
    static let __default: CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms = {
        let defaultInstance = CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms(
            describeAlarmsResult: DescribeAlarmsOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeAnomalyDetectorsInput {
    /**
     Default instance of the DescribeAnomalyDetectorsInput structure.
     */
    static let __default: CloudWatchModel.DescribeAnomalyDetectorsInput = {
        let defaultInstance = CloudWatchModel.DescribeAnomalyDetectorsInput(
            dimensions: nil,
            maxResults: nil,
            metricName: nil,
            namespace: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAnomalyDetectorsOutput {
    /**
     Default instance of the DescribeAnomalyDetectorsOutput structure.
     */
    static let __default: CloudWatchModel.DescribeAnomalyDetectorsOutput = {
        let defaultInstance = CloudWatchModel.DescribeAnomalyDetectorsOutput(
            anomalyDetectors: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
    /**
     Default instance of the DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors structure.
     */
    static let __default: CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors = {
        let defaultInstance = CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors(
            describeAnomalyDetectorsResult: DescribeAnomalyDetectorsOutput.__default)

        return defaultInstance
    }()
}

public extension DescribeInsightRulesInput {
    /**
     Default instance of the DescribeInsightRulesInput structure.
     */
    static let __default: CloudWatchModel.DescribeInsightRulesInput = {
        let defaultInstance = CloudWatchModel.DescribeInsightRulesInput(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInsightRulesOutput {
    /**
     Default instance of the DescribeInsightRulesOutput structure.
     */
    static let __default: CloudWatchModel.DescribeInsightRulesOutput = {
        let defaultInstance = CloudWatchModel.DescribeInsightRulesOutput(
            insightRules: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeInsightRulesOutputForDescribeInsightRules {
    /**
     Default instance of the DescribeInsightRulesOutputForDescribeInsightRules structure.
     */
    static let __default: CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules = {
        let defaultInstance = CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules(
            describeInsightRulesResult: DescribeInsightRulesOutput.__default)

        return defaultInstance
    }()
}

public extension Dimension {
    /**
     Default instance of the Dimension structure.
     */
    static let __default: CloudWatchModel.Dimension = {
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
    static let __default: CloudWatchModel.DimensionFilter = {
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
    static let __default: CloudWatchModel.DisableAlarmActionsInput = {
        let defaultInstance = CloudWatchModel.DisableAlarmActionsInput(
            alarmNames: [])

        return defaultInstance
    }()
}

public extension DisableInsightRulesInput {
    /**
     Default instance of the DisableInsightRulesInput structure.
     */
    static let __default: CloudWatchModel.DisableInsightRulesInput = {
        let defaultInstance = CloudWatchModel.DisableInsightRulesInput(
            ruleNames: [])

        return defaultInstance
    }()
}

public extension DisableInsightRulesOutput {
    /**
     Default instance of the DisableInsightRulesOutput structure.
     */
    static let __default: CloudWatchModel.DisableInsightRulesOutput = {
        let defaultInstance = CloudWatchModel.DisableInsightRulesOutput(
            failures: nil)

        return defaultInstance
    }()
}

public extension DisableInsightRulesOutputForDisableInsightRules {
    /**
     Default instance of the DisableInsightRulesOutputForDisableInsightRules structure.
     */
    static let __default: CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules = {
        let defaultInstance = CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules(
            disableInsightRulesResult: DisableInsightRulesOutput.__default)

        return defaultInstance
    }()
}

public extension EnableAlarmActionsInput {
    /**
     Default instance of the EnableAlarmActionsInput structure.
     */
    static let __default: CloudWatchModel.EnableAlarmActionsInput = {
        let defaultInstance = CloudWatchModel.EnableAlarmActionsInput(
            alarmNames: [])

        return defaultInstance
    }()
}

public extension EnableInsightRulesInput {
    /**
     Default instance of the EnableInsightRulesInput structure.
     */
    static let __default: CloudWatchModel.EnableInsightRulesInput = {
        let defaultInstance = CloudWatchModel.EnableInsightRulesInput(
            ruleNames: [])

        return defaultInstance
    }()
}

public extension EnableInsightRulesOutput {
    /**
     Default instance of the EnableInsightRulesOutput structure.
     */
    static let __default: CloudWatchModel.EnableInsightRulesOutput = {
        let defaultInstance = CloudWatchModel.EnableInsightRulesOutput(
            failures: nil)

        return defaultInstance
    }()
}

public extension EnableInsightRulesOutputForEnableInsightRules {
    /**
     Default instance of the EnableInsightRulesOutputForEnableInsightRules structure.
     */
    static let __default: CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules = {
        let defaultInstance = CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules(
            enableInsightRulesResult: EnableInsightRulesOutput.__default)

        return defaultInstance
    }()
}

public extension GetDashboardInput {
    /**
     Default instance of the GetDashboardInput structure.
     */
    static let __default: CloudWatchModel.GetDashboardInput = {
        let defaultInstance = CloudWatchModel.GetDashboardInput(
            dashboardName: "value")

        return defaultInstance
    }()
}

public extension GetDashboardOutput {
    /**
     Default instance of the GetDashboardOutput structure.
     */
    static let __default: CloudWatchModel.GetDashboardOutput = {
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
    static let __default: CloudWatchModel.GetDashboardOutputForGetDashboard = {
        let defaultInstance = CloudWatchModel.GetDashboardOutputForGetDashboard(
            getDashboardResult: GetDashboardOutput.__default)

        return defaultInstance
    }()
}

public extension GetInsightRuleReportInput {
    /**
     Default instance of the GetInsightRuleReportInput structure.
     */
    static let __default: CloudWatchModel.GetInsightRuleReportInput = {
        let defaultInstance = CloudWatchModel.GetInsightRuleReportInput(
            endTime: "2013-02-18T17:00:00Z",
            maxContributorCount: nil,
            metrics: nil,
            orderBy: nil,
            period: 0,
            ruleName: "0",
            startTime: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension GetInsightRuleReportOutput {
    /**
     Default instance of the GetInsightRuleReportOutput structure.
     */
    static let __default: CloudWatchModel.GetInsightRuleReportOutput = {
        let defaultInstance = CloudWatchModel.GetInsightRuleReportOutput(
            aggregateValue: nil,
            aggregationStatistic: nil,
            approximateUniqueCount: nil,
            contributors: nil,
            keyLabels: nil,
            metricDatapoints: nil)

        return defaultInstance
    }()
}

public extension GetInsightRuleReportOutputForGetInsightRuleReport {
    /**
     Default instance of the GetInsightRuleReportOutputForGetInsightRuleReport structure.
     */
    static let __default: CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport = {
        let defaultInstance = CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport(
            getInsightRuleReportResult: GetInsightRuleReportOutput.__default)

        return defaultInstance
    }()
}

public extension GetMetricDataInput {
    /**
     Default instance of the GetMetricDataInput structure.
     */
    static let __default: CloudWatchModel.GetMetricDataInput = {
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
    static let __default: CloudWatchModel.GetMetricDataOutput = {
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
    static let __default: CloudWatchModel.GetMetricDataOutputForGetMetricData = {
        let defaultInstance = CloudWatchModel.GetMetricDataOutputForGetMetricData(
            getMetricDataResult: GetMetricDataOutput.__default)

        return defaultInstance
    }()
}

public extension GetMetricStatisticsInput {
    /**
     Default instance of the GetMetricStatisticsInput structure.
     */
    static let __default: CloudWatchModel.GetMetricStatisticsInput = {
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
    static let __default: CloudWatchModel.GetMetricStatisticsOutput = {
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
    static let __default: CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics = {
        let defaultInstance = CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics(
            getMetricStatisticsResult: GetMetricStatisticsOutput.__default)

        return defaultInstance
    }()
}

public extension GetMetricWidgetImageInput {
    /**
     Default instance of the GetMetricWidgetImageInput structure.
     */
    static let __default: CloudWatchModel.GetMetricWidgetImageInput = {
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
    static let __default: CloudWatchModel.GetMetricWidgetImageOutput = {
        let defaultInstance = CloudWatchModel.GetMetricWidgetImageOutput(
            metricWidgetImage: nil)

        return defaultInstance
    }()
}

public extension GetMetricWidgetImageOutputForGetMetricWidgetImage {
    /**
     Default instance of the GetMetricWidgetImageOutputForGetMetricWidgetImage structure.
     */
    static let __default: CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage = {
        let defaultInstance = CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage(
            getMetricWidgetImageResult: GetMetricWidgetImageOutput.__default)

        return defaultInstance
    }()
}

public extension InsightRule {
    /**
     Default instance of the InsightRule structure.
     */
    static let __default: CloudWatchModel.InsightRule = {
        let defaultInstance = CloudWatchModel.InsightRule(
            definition: "0",
            name: "0",
            schema: "value",
            state: "0")

        return defaultInstance
    }()
}

public extension InsightRuleContributor {
    /**
     Default instance of the InsightRuleContributor structure.
     */
    static let __default: CloudWatchModel.InsightRuleContributor = {
        let defaultInstance = CloudWatchModel.InsightRuleContributor(
            approximateAggregateValue: 0.0,
            datapoints: [],
            keys: [])

        return defaultInstance
    }()
}

public extension InsightRuleContributorDatapoint {
    /**
     Default instance of the InsightRuleContributorDatapoint structure.
     */
    static let __default: CloudWatchModel.InsightRuleContributorDatapoint = {
        let defaultInstance = CloudWatchModel.InsightRuleContributorDatapoint(
            approximateValue: 0.0,
            timestamp: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension InsightRuleMetricDatapoint {
    /**
     Default instance of the InsightRuleMetricDatapoint structure.
     */
    static let __default: CloudWatchModel.InsightRuleMetricDatapoint = {
        let defaultInstance = CloudWatchModel.InsightRuleMetricDatapoint(
            average: nil,
            maxContributorValue: nil,
            maximum: nil,
            minimum: nil,
            sampleCount: nil,
            sum: nil,
            timestamp: "2013-02-18T17:00:00Z",
            uniqueContributors: nil)

        return defaultInstance
    }()
}

public extension InternalServiceFault {
    /**
     Default instance of the InternalServiceFault structure.
     */
    static let __default: CloudWatchModel.InternalServiceFault = {
        let defaultInstance = CloudWatchModel.InternalServiceFault(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidFormatFault {
    /**
     Default instance of the InvalidFormatFault structure.
     */
    static let __default: CloudWatchModel.InvalidFormatFault = {
        let defaultInstance = CloudWatchModel.InvalidFormatFault(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidNextToken {
    /**
     Default instance of the InvalidNextToken structure.
     */
    static let __default: CloudWatchModel.InvalidNextToken = {
        let defaultInstance = CloudWatchModel.InvalidNextToken(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterCombinationException {
    /**
     Default instance of the InvalidParameterCombinationException structure.
     */
    static let __default: CloudWatchModel.InvalidParameterCombinationException = {
        let defaultInstance = CloudWatchModel.InvalidParameterCombinationException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterValueException {
    /**
     Default instance of the InvalidParameterValueException structure.
     */
    static let __default: CloudWatchModel.InvalidParameterValueException = {
        let defaultInstance = CloudWatchModel.InvalidParameterValueException(
            message: nil)

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    static let __default: CloudWatchModel.LimitExceededException = {
        let defaultInstance = CloudWatchModel.LimitExceededException()

        return defaultInstance
    }()
}

public extension LimitExceededFault {
    /**
     Default instance of the LimitExceededFault structure.
     */
    static let __default: CloudWatchModel.LimitExceededFault = {
        let defaultInstance = CloudWatchModel.LimitExceededFault(
            message: nil)

        return defaultInstance
    }()
}

public extension ListDashboardsInput {
    /**
     Default instance of the ListDashboardsInput structure.
     */
    static let __default: CloudWatchModel.ListDashboardsInput = {
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
    static let __default: CloudWatchModel.ListDashboardsOutput = {
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
    static let __default: CloudWatchModel.ListDashboardsOutputForListDashboards = {
        let defaultInstance = CloudWatchModel.ListDashboardsOutputForListDashboards(
            listDashboardsResult: ListDashboardsOutput.__default)

        return defaultInstance
    }()
}

public extension ListMetricsInput {
    /**
     Default instance of the ListMetricsInput structure.
     */
    static let __default: CloudWatchModel.ListMetricsInput = {
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
    static let __default: CloudWatchModel.ListMetricsOutput = {
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
    static let __default: CloudWatchModel.ListMetricsOutputForListMetrics = {
        let defaultInstance = CloudWatchModel.ListMetricsOutputForListMetrics(
            listMetricsResult: ListMetricsOutput.__default)

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    static let __default: CloudWatchModel.ListTagsForResourceInput = {
        let defaultInstance = CloudWatchModel.ListTagsForResourceInput(
            resourceARN: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    static let __default: CloudWatchModel.ListTagsForResourceOutput = {
        let defaultInstance = CloudWatchModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutputForListTagsForResource {
    /**
     Default instance of the ListTagsForResourceOutputForListTagsForResource structure.
     */
    static let __default: CloudWatchModel.ListTagsForResourceOutputForListTagsForResource = {
        let defaultInstance = CloudWatchModel.ListTagsForResourceOutputForListTagsForResource(
            listTagsForResourceResult: ListTagsForResourceOutput.__default)

        return defaultInstance
    }()
}

public extension MessageData {
    /**
     Default instance of the MessageData structure.
     */
    static let __default: CloudWatchModel.MessageData = {
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
    static let __default: CloudWatchModel.Metric = {
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
    static let __default: CloudWatchModel.MetricAlarm = {
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
            thresholdMetricId: nil,
            treatMissingData: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension MetricDataQuery {
    /**
     Default instance of the MetricDataQuery structure.
     */
    static let __default: CloudWatchModel.MetricDataQuery = {
        let defaultInstance = CloudWatchModel.MetricDataQuery(
            expression: nil,
            id: "0",
            label: nil,
            metricStat: nil,
            period: nil,
            returnData: nil)

        return defaultInstance
    }()
}

public extension MetricDataResult {
    /**
     Default instance of the MetricDataResult structure.
     */
    static let __default: CloudWatchModel.MetricDataResult = {
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
    static let __default: CloudWatchModel.MetricDatum = {
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
    static let __default: CloudWatchModel.MetricStat = {
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
    static let __default: CloudWatchModel.MissingRequiredParameterException = {
        let defaultInstance = CloudWatchModel.MissingRequiredParameterException(
            message: nil)

        return defaultInstance
    }()
}

public extension PartialFailure {
    /**
     Default instance of the PartialFailure structure.
     */
    static let __default: CloudWatchModel.PartialFailure = {
        let defaultInstance = CloudWatchModel.PartialFailure(
            exceptionType: nil,
            failureCode: nil,
            failureDescription: nil,
            failureResource: nil)

        return defaultInstance
    }()
}

public extension PutAnomalyDetectorInput {
    /**
     Default instance of the PutAnomalyDetectorInput structure.
     */
    static let __default: CloudWatchModel.PutAnomalyDetectorInput = {
        let defaultInstance = CloudWatchModel.PutAnomalyDetectorInput(
            configuration: nil,
            dimensions: nil,
            metricName: "0",
            namespace: "0",
            stat: "")

        return defaultInstance
    }()
}

public extension PutAnomalyDetectorOutput {
    /**
     Default instance of the PutAnomalyDetectorOutput structure.
     */
    static let __default: CloudWatchModel.PutAnomalyDetectorOutput = {
        let defaultInstance = CloudWatchModel.PutAnomalyDetectorOutput()

        return defaultInstance
    }()
}

public extension PutAnomalyDetectorOutputForPutAnomalyDetector {
    /**
     Default instance of the PutAnomalyDetectorOutputForPutAnomalyDetector structure.
     */
    static let __default: CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector = {
        let defaultInstance = CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector(
            putAnomalyDetectorResult: PutAnomalyDetectorOutput.__default)

        return defaultInstance
    }()
}

public extension PutCompositeAlarmInput {
    /**
     Default instance of the PutCompositeAlarmInput structure.
     */
    static let __default: CloudWatchModel.PutCompositeAlarmInput = {
        let defaultInstance = CloudWatchModel.PutCompositeAlarmInput(
            actionsEnabled: nil,
            alarmActions: nil,
            alarmDescription: nil,
            alarmName: "0",
            alarmRule: "0",
            insufficientDataActions: nil,
            oKActions: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension PutDashboardInput {
    /**
     Default instance of the PutDashboardInput structure.
     */
    static let __default: CloudWatchModel.PutDashboardInput = {
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
    static let __default: CloudWatchModel.PutDashboardOutput = {
        let defaultInstance = CloudWatchModel.PutDashboardOutput(
            dashboardValidationMessages: nil)

        return defaultInstance
    }()
}

public extension PutDashboardOutputForPutDashboard {
    /**
     Default instance of the PutDashboardOutputForPutDashboard structure.
     */
    static let __default: CloudWatchModel.PutDashboardOutputForPutDashboard = {
        let defaultInstance = CloudWatchModel.PutDashboardOutputForPutDashboard(
            putDashboardResult: PutDashboardOutput.__default)

        return defaultInstance
    }()
}

public extension PutInsightRuleInput {
    /**
     Default instance of the PutInsightRuleInput structure.
     */
    static let __default: CloudWatchModel.PutInsightRuleInput = {
        let defaultInstance = CloudWatchModel.PutInsightRuleInput(
            ruleDefinition: "0",
            ruleName: "0",
            ruleState: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension PutInsightRuleOutput {
    /**
     Default instance of the PutInsightRuleOutput structure.
     */
    static let __default: CloudWatchModel.PutInsightRuleOutput = {
        let defaultInstance = CloudWatchModel.PutInsightRuleOutput()

        return defaultInstance
    }()
}

public extension PutInsightRuleOutputForPutInsightRule {
    /**
     Default instance of the PutInsightRuleOutputForPutInsightRule structure.
     */
    static let __default: CloudWatchModel.PutInsightRuleOutputForPutInsightRule = {
        let defaultInstance = CloudWatchModel.PutInsightRuleOutputForPutInsightRule(
            putInsightRuleResult: PutInsightRuleOutput.__default)

        return defaultInstance
    }()
}

public extension PutMetricAlarmInput {
    /**
     Default instance of the PutMetricAlarmInput structure.
     */
    static let __default: CloudWatchModel.PutMetricAlarmInput = {
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
            threshold: nil,
            thresholdMetricId: nil,
            treatMissingData: nil,
            unit: nil)

        return defaultInstance
    }()
}

public extension PutMetricDataInput {
    /**
     Default instance of the PutMetricDataInput structure.
     */
    static let __default: CloudWatchModel.PutMetricDataInput = {
        let defaultInstance = CloudWatchModel.PutMetricDataInput(
            metricData: [],
            namespace: "0")

        return defaultInstance
    }()
}

public extension Range {
    /**
     Default instance of the Range structure.
     */
    static let __default: CloudWatchModel.Range = {
        let defaultInstance = CloudWatchModel.Range(
            endTime: "2013-02-18T17:00:00Z",
            startTime: "2013-02-18T17:00:00Z")

        return defaultInstance
    }()
}

public extension ResourceNotFound {
    /**
     Default instance of the ResourceNotFound structure.
     */
    static let __default: CloudWatchModel.ResourceNotFound = {
        let defaultInstance = CloudWatchModel.ResourceNotFound(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: CloudWatchModel.ResourceNotFoundException = {
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
    static let __default: CloudWatchModel.SetAlarmStateInput = {
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
    static let __default: CloudWatchModel.StatisticSet = {
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
    static let __default: CloudWatchModel.Tag = {
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
    static let __default: CloudWatchModel.TagResourceInput = {
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
    static let __default: CloudWatchModel.TagResourceOutput = {
        let defaultInstance = CloudWatchModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension TagResourceOutputForTagResource {
    /**
     Default instance of the TagResourceOutputForTagResource structure.
     */
    static let __default: CloudWatchModel.TagResourceOutputForTagResource = {
        let defaultInstance = CloudWatchModel.TagResourceOutputForTagResource(
            tagResourceResult: TagResourceOutput.__default)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    static let __default: CloudWatchModel.UntagResourceInput = {
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
    static let __default: CloudWatchModel.UntagResourceOutput = {
        let defaultInstance = CloudWatchModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UntagResourceOutputForUntagResource {
    /**
     Default instance of the UntagResourceOutputForUntagResource structure.
     */
    static let __default: CloudWatchModel.UntagResourceOutputForUntagResource = {
        let defaultInstance = CloudWatchModel.UntagResourceOutputForUntagResource(
            untagResourceResult: UntagResourceOutput.__default)

        return defaultInstance
    }()
}
