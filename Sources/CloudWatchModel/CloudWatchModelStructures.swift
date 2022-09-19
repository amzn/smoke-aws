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
// CloudWatchModelStructures.swift
// CloudWatchModel
//

import Foundation

public struct AlarmHistoryItem: Codable, Equatable {
    public var alarmName: AlarmName?
    public var alarmType: AlarmType?
    public var historyData: HistoryData?
    public var historyItemType: HistoryItemType?
    public var historySummary: HistorySummary?
    public var timestamp: Timestamp?

    public init(alarmName: AlarmName? = nil,
                alarmType: AlarmType? = nil,
                historyData: HistoryData? = nil,
                historyItemType: HistoryItemType? = nil,
                historySummary: HistorySummary? = nil,
                timestamp: Timestamp? = nil) {
        self.alarmName = alarmName
        self.alarmType = alarmType
        self.historyData = historyData
        self.historyItemType = historyItemType
        self.historySummary = historySummary
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case alarmName = "AlarmName"
        case alarmType = "AlarmType"
        case historyData = "HistoryData"
        case historyItemType = "HistoryItemType"
        case historySummary = "HistorySummary"
        case timestamp = "Timestamp"
    }

    public func validate() throws {
        try alarmName?.validateAsAlarmName()
        try historyData?.validateAsHistoryData()
        try historySummary?.validateAsHistorySummary()
    }
}

public struct AnomalyDetector: Codable, Equatable {
    public var configuration: AnomalyDetectorConfiguration?
    public var metricMathAnomalyDetector: MetricMathAnomalyDetector?
    public var singleMetricAnomalyDetector: SingleMetricAnomalyDetector?
    public var stateValue: AnomalyDetectorStateValue?

    public init(configuration: AnomalyDetectorConfiguration? = nil,
                metricMathAnomalyDetector: MetricMathAnomalyDetector? = nil,
                singleMetricAnomalyDetector: SingleMetricAnomalyDetector? = nil,
                stateValue: AnomalyDetectorStateValue? = nil) {
        self.configuration = configuration
        self.metricMathAnomalyDetector = metricMathAnomalyDetector
        self.singleMetricAnomalyDetector = singleMetricAnomalyDetector
        self.stateValue = stateValue
    }

    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case metricMathAnomalyDetector = "MetricMathAnomalyDetector"
        case singleMetricAnomalyDetector = "SingleMetricAnomalyDetector"
        case stateValue = "StateValue"
    }

    public func validate() throws {
        try configuration?.validate()
        try metricMathAnomalyDetector?.validate()
        try singleMetricAnomalyDetector?.validate()
    }
}

public struct AnomalyDetectorConfiguration: Codable, Equatable {
    public var excludedTimeRanges: AnomalyDetectorExcludedTimeRanges?
    public var metricTimezone: AnomalyDetectorMetricTimezone?

    public init(excludedTimeRanges: AnomalyDetectorExcludedTimeRanges? = nil,
                metricTimezone: AnomalyDetectorMetricTimezone? = nil) {
        self.excludedTimeRanges = excludedTimeRanges
        self.metricTimezone = metricTimezone
    }

    enum CodingKeys: String, CodingKey {
        case excludedTimeRanges = "ExcludedTimeRanges"
        case metricTimezone = "MetricTimezone"
    }

    public func validate() throws {
        try metricTimezone?.validateAsAnomalyDetectorMetricTimezone()
    }
}

public struct CompositeAlarm: Codable, Equatable {
    public var actionsEnabled: ActionsEnabled?
    public var alarmActions: ResourceList?
    public var alarmArn: AlarmArn?
    public var alarmConfigurationUpdatedTimestamp: Timestamp?
    public var alarmDescription: AlarmDescription?
    public var alarmName: AlarmName?
    public var alarmRule: AlarmRule?
    public var insufficientDataActions: ResourceList?
    public var oKActions: ResourceList?
    public var stateReason: StateReason?
    public var stateReasonData: StateReasonData?
    public var stateUpdatedTimestamp: Timestamp?
    public var stateValue: StateValue?

    public init(actionsEnabled: ActionsEnabled? = nil,
                alarmActions: ResourceList? = nil,
                alarmArn: AlarmArn? = nil,
                alarmConfigurationUpdatedTimestamp: Timestamp? = nil,
                alarmDescription: AlarmDescription? = nil,
                alarmName: AlarmName? = nil,
                alarmRule: AlarmRule? = nil,
                insufficientDataActions: ResourceList? = nil,
                oKActions: ResourceList? = nil,
                stateReason: StateReason? = nil,
                stateReasonData: StateReasonData? = nil,
                stateUpdatedTimestamp: Timestamp? = nil,
                stateValue: StateValue? = nil) {
        self.actionsEnabled = actionsEnabled
        self.alarmActions = alarmActions
        self.alarmArn = alarmArn
        self.alarmConfigurationUpdatedTimestamp = alarmConfigurationUpdatedTimestamp
        self.alarmDescription = alarmDescription
        self.alarmName = alarmName
        self.alarmRule = alarmRule
        self.insufficientDataActions = insufficientDataActions
        self.oKActions = oKActions
        self.stateReason = stateReason
        self.stateReasonData = stateReasonData
        self.stateUpdatedTimestamp = stateUpdatedTimestamp
        self.stateValue = stateValue
    }

    enum CodingKeys: String, CodingKey {
        case actionsEnabled = "ActionsEnabled"
        case alarmActions = "AlarmActions"
        case alarmArn = "AlarmArn"
        case alarmConfigurationUpdatedTimestamp = "AlarmConfigurationUpdatedTimestamp"
        case alarmDescription = "AlarmDescription"
        case alarmName = "AlarmName"
        case alarmRule = "AlarmRule"
        case insufficientDataActions = "InsufficientDataActions"
        case oKActions = "OKActions"
        case stateReason = "StateReason"
        case stateReasonData = "StateReasonData"
        case stateUpdatedTimestamp = "StateUpdatedTimestamp"
        case stateValue = "StateValue"
    }

    public func validate() throws {
        try alarmActions?.validateAsResourceList()
        try alarmArn?.validateAsAlarmArn()
        try alarmDescription?.validateAsAlarmDescription()
        try alarmName?.validateAsAlarmName()
        try alarmRule?.validateAsAlarmRule()
        try insufficientDataActions?.validateAsResourceList()
        try oKActions?.validateAsResourceList()
        try stateReason?.validateAsStateReason()
        try stateReasonData?.validateAsStateReasonData()
    }
}

public struct ConcurrentModificationException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DashboardEntry: Codable, Equatable {
    public var dashboardArn: DashboardArn?
    public var dashboardName: DashboardName?
    public var lastModified: LastModified?
    public var size: Size?

    public init(dashboardArn: DashboardArn? = nil,
                dashboardName: DashboardName? = nil,
                lastModified: LastModified? = nil,
                size: Size? = nil) {
        self.dashboardArn = dashboardArn
        self.dashboardName = dashboardName
        self.lastModified = lastModified
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case dashboardArn = "DashboardArn"
        case dashboardName = "DashboardName"
        case lastModified = "LastModified"
        case size = "Size"
    }

    public func validate() throws {
    }
}

public struct DashboardInvalidInputError: Codable, Equatable {
    public var dashboardValidationMessages: DashboardValidationMessages?
    public var message: DashboardErrorMessage?

    public init(dashboardValidationMessages: DashboardValidationMessages? = nil,
                message: DashboardErrorMessage? = nil) {
        self.dashboardValidationMessages = dashboardValidationMessages
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case dashboardValidationMessages
        case message
    }

    public func validate() throws {
    }
}

public struct DashboardNotFoundError: Codable, Equatable {
    public var message: DashboardErrorMessage?

    public init(message: DashboardErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct DashboardValidationMessage: Codable, Equatable {
    public var dataPath: DataPath?
    public var message: Message?

    public init(dataPath: DataPath? = nil,
                message: Message? = nil) {
        self.dataPath = dataPath
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case dataPath = "DataPath"
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct Datapoint: Codable, Equatable {
    public var average: DatapointValue?
    public var extendedStatistics: DatapointValueMap?
    public var maximum: DatapointValue?
    public var minimum: DatapointValue?
    public var sampleCount: DatapointValue?
    public var sum: DatapointValue?
    public var timestamp: Timestamp?
    public var unit: StandardUnit?

    public init(average: DatapointValue? = nil,
                extendedStatistics: DatapointValueMap? = nil,
                maximum: DatapointValue? = nil,
                minimum: DatapointValue? = nil,
                sampleCount: DatapointValue? = nil,
                sum: DatapointValue? = nil,
                timestamp: Timestamp? = nil,
                unit: StandardUnit? = nil) {
        self.average = average
        self.extendedStatistics = extendedStatistics
        self.maximum = maximum
        self.minimum = minimum
        self.sampleCount = sampleCount
        self.sum = sum
        self.timestamp = timestamp
        self.unit = unit
    }

    enum CodingKeys: String, CodingKey {
        case average = "Average"
        case extendedStatistics = "ExtendedStatistics"
        case maximum = "Maximum"
        case minimum = "Minimum"
        case sampleCount = "SampleCount"
        case sum = "Sum"
        case timestamp = "Timestamp"
        case unit = "Unit"
    }

    public func validate() throws {
    }
}

public struct DeleteAlarmsInput: Codable, Equatable {
    public var alarmNames: AlarmNames

    public init(alarmNames: AlarmNames) {
        self.alarmNames = alarmNames
    }

    enum CodingKeys: String, CodingKey {
        case alarmNames = "AlarmNames"
    }

    public func validate() throws {
        try alarmNames.validateAsAlarmNames()
    }
}

public struct DeleteAnomalyDetectorInput: Codable, Equatable {
    public var metricMathAnomalyDetector: MetricMathAnomalyDetector?
    public var singleMetricAnomalyDetector: SingleMetricAnomalyDetector?

    public init(metricMathAnomalyDetector: MetricMathAnomalyDetector? = nil,
                singleMetricAnomalyDetector: SingleMetricAnomalyDetector? = nil) {
        self.metricMathAnomalyDetector = metricMathAnomalyDetector
        self.singleMetricAnomalyDetector = singleMetricAnomalyDetector
    }

    enum CodingKeys: String, CodingKey {
        case metricMathAnomalyDetector = "MetricMathAnomalyDetector"
        case singleMetricAnomalyDetector = "SingleMetricAnomalyDetector"
    }

    public func validate() throws {
        try metricMathAnomalyDetector?.validate()
        try singleMetricAnomalyDetector?.validate()
    }
}

public struct DeleteAnomalyDetectorOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteAnomalyDetectorOutputForDeleteAnomalyDetector: Codable, Equatable {
    public var deleteAnomalyDetectorResult: DeleteAnomalyDetectorOutput

    public init(deleteAnomalyDetectorResult: DeleteAnomalyDetectorOutput) {
        self.deleteAnomalyDetectorResult = deleteAnomalyDetectorResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteAnomalyDetectorResult = "DeleteAnomalyDetectorResult"
    }

    public func validate() throws {
        try deleteAnomalyDetectorResult.validate()
    }
}

public struct DeleteDashboardsInput: Codable, Equatable {
    public var dashboardNames: DashboardNames

    public init(dashboardNames: DashboardNames) {
        self.dashboardNames = dashboardNames
    }

    enum CodingKeys: String, CodingKey {
        case dashboardNames = "DashboardNames"
    }

    public func validate() throws {
    }
}

public struct DeleteDashboardsOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteDashboardsOutputForDeleteDashboards: Codable, Equatable {
    public var deleteDashboardsResult: DeleteDashboardsOutput

    public init(deleteDashboardsResult: DeleteDashboardsOutput) {
        self.deleteDashboardsResult = deleteDashboardsResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteDashboardsResult = "DeleteDashboardsResult"
    }

    public func validate() throws {
        try deleteDashboardsResult.validate()
    }
}

public struct DeleteInsightRulesInput: Codable, Equatable {
    public var ruleNames: InsightRuleNames

    public init(ruleNames: InsightRuleNames) {
        self.ruleNames = ruleNames
    }

    enum CodingKeys: String, CodingKey {
        case ruleNames = "RuleNames"
    }

    public func validate() throws {
    }
}

public struct DeleteInsightRulesOutput: Codable, Equatable {
    public var failures: BatchFailures?

    public init(failures: BatchFailures? = nil) {
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case failures = "Failures"
    }

    public func validate() throws {
    }
}

public struct DeleteInsightRulesOutputForDeleteInsightRules: Codable, Equatable {
    public var deleteInsightRulesResult: DeleteInsightRulesOutput

    public init(deleteInsightRulesResult: DeleteInsightRulesOutput) {
        self.deleteInsightRulesResult = deleteInsightRulesResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteInsightRulesResult = "DeleteInsightRulesResult"
    }

    public func validate() throws {
        try deleteInsightRulesResult.validate()
    }
}

public struct DeleteMetricStreamInput: Codable, Equatable {
    public var name: MetricStreamName

    public init(name: MetricStreamName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsMetricStreamName()
    }
}

public struct DeleteMetricStreamOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteMetricStreamOutputForDeleteMetricStream: Codable, Equatable {
    public var deleteMetricStreamResult: DeleteMetricStreamOutput

    public init(deleteMetricStreamResult: DeleteMetricStreamOutput) {
        self.deleteMetricStreamResult = deleteMetricStreamResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteMetricStreamResult = "DeleteMetricStreamResult"
    }

    public func validate() throws {
        try deleteMetricStreamResult.validate()
    }
}

public struct DescribeAlarmHistoryInput: Codable, Equatable {
    public var alarmName: AlarmName?
    public var alarmTypes: AlarmTypes?
    public var endDate: Timestamp?
    public var historyItemType: HistoryItemType?
    public var maxRecords: MaxRecords?
    public var nextToken: NextToken?
    public var scanBy: ScanBy?
    public var startDate: Timestamp?

    public init(alarmName: AlarmName? = nil,
                alarmTypes: AlarmTypes? = nil,
                endDate: Timestamp? = nil,
                historyItemType: HistoryItemType? = nil,
                maxRecords: MaxRecords? = nil,
                nextToken: NextToken? = nil,
                scanBy: ScanBy? = nil,
                startDate: Timestamp? = nil) {
        self.alarmName = alarmName
        self.alarmTypes = alarmTypes
        self.endDate = endDate
        self.historyItemType = historyItemType
        self.maxRecords = maxRecords
        self.nextToken = nextToken
        self.scanBy = scanBy
        self.startDate = startDate
    }

    enum CodingKeys: String, CodingKey {
        case alarmName = "AlarmName"
        case alarmTypes = "AlarmTypes"
        case endDate = "EndDate"
        case historyItemType = "HistoryItemType"
        case maxRecords = "MaxRecords"
        case nextToken = "NextToken"
        case scanBy = "ScanBy"
        case startDate = "StartDate"
    }

    public func validate() throws {
        try alarmName?.validateAsAlarmName()
        try maxRecords?.validateAsMaxRecords()
    }
}

public struct DescribeAlarmHistoryOutput: Codable, Equatable {
    public var alarmHistoryItems: AlarmHistoryItems?
    public var nextToken: NextToken?

    public init(alarmHistoryItems: AlarmHistoryItems? = nil,
                nextToken: NextToken? = nil) {
        self.alarmHistoryItems = alarmHistoryItems
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case alarmHistoryItems = "AlarmHistoryItems"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeAlarmHistoryOutputForDescribeAlarmHistory: Codable, Equatable {
    public var describeAlarmHistoryResult: DescribeAlarmHistoryOutput

    public init(describeAlarmHistoryResult: DescribeAlarmHistoryOutput) {
        self.describeAlarmHistoryResult = describeAlarmHistoryResult
    }

    enum CodingKeys: String, CodingKey {
        case describeAlarmHistoryResult = "DescribeAlarmHistoryResult"
    }

    public func validate() throws {
        try describeAlarmHistoryResult.validate()
    }
}

public struct DescribeAlarmsForMetricInput: Codable, Equatable {
    public var dimensions: Dimensions?
    public var extendedStatistic: ExtendedStatistic?
    public var metricName: MetricName
    public var namespace: Namespace
    public var period: Period?
    public var statistic: Statistic?
    public var unit: StandardUnit?

    public init(dimensions: Dimensions? = nil,
                extendedStatistic: ExtendedStatistic? = nil,
                metricName: MetricName,
                namespace: Namespace,
                period: Period? = nil,
                statistic: Statistic? = nil,
                unit: StandardUnit? = nil) {
        self.dimensions = dimensions
        self.extendedStatistic = extendedStatistic
        self.metricName = metricName
        self.namespace = namespace
        self.period = period
        self.statistic = statistic
        self.unit = unit
    }

    enum CodingKeys: String, CodingKey {
        case dimensions = "Dimensions"
        case extendedStatistic = "ExtendedStatistic"
        case metricName = "MetricName"
        case namespace = "Namespace"
        case period = "Period"
        case statistic = "Statistic"
        case unit = "Unit"
    }

    public func validate() throws {
        try dimensions?.validateAsDimensions()
        try extendedStatistic?.validateAsExtendedStatistic()
        try metricName.validateAsMetricName()
        try namespace.validateAsNamespace()
        try period?.validateAsPeriod()
    }
}

public struct DescribeAlarmsForMetricOutput: Codable, Equatable {
    public var metricAlarms: MetricAlarms?

    public init(metricAlarms: MetricAlarms? = nil) {
        self.metricAlarms = metricAlarms
    }

    enum CodingKeys: String, CodingKey {
        case metricAlarms = "MetricAlarms"
    }

    public func validate() throws {
    }
}

public struct DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric: Codable, Equatable {
    public var describeAlarmsForMetricResult: DescribeAlarmsForMetricOutput

    public init(describeAlarmsForMetricResult: DescribeAlarmsForMetricOutput) {
        self.describeAlarmsForMetricResult = describeAlarmsForMetricResult
    }

    enum CodingKeys: String, CodingKey {
        case describeAlarmsForMetricResult = "DescribeAlarmsForMetricResult"
    }

    public func validate() throws {
        try describeAlarmsForMetricResult.validate()
    }
}

public struct DescribeAlarmsInput: Codable, Equatable {
    public var actionPrefix: ActionPrefix?
    public var alarmNamePrefix: AlarmNamePrefix?
    public var alarmNames: AlarmNames?
    public var alarmTypes: AlarmTypes?
    public var childrenOfAlarmName: AlarmName?
    public var maxRecords: MaxRecords?
    public var nextToken: NextToken?
    public var parentsOfAlarmName: AlarmName?
    public var stateValue: StateValue?

    public init(actionPrefix: ActionPrefix? = nil,
                alarmNamePrefix: AlarmNamePrefix? = nil,
                alarmNames: AlarmNames? = nil,
                alarmTypes: AlarmTypes? = nil,
                childrenOfAlarmName: AlarmName? = nil,
                maxRecords: MaxRecords? = nil,
                nextToken: NextToken? = nil,
                parentsOfAlarmName: AlarmName? = nil,
                stateValue: StateValue? = nil) {
        self.actionPrefix = actionPrefix
        self.alarmNamePrefix = alarmNamePrefix
        self.alarmNames = alarmNames
        self.alarmTypes = alarmTypes
        self.childrenOfAlarmName = childrenOfAlarmName
        self.maxRecords = maxRecords
        self.nextToken = nextToken
        self.parentsOfAlarmName = parentsOfAlarmName
        self.stateValue = stateValue
    }

    enum CodingKeys: String, CodingKey {
        case actionPrefix = "ActionPrefix"
        case alarmNamePrefix = "AlarmNamePrefix"
        case alarmNames = "AlarmNames"
        case alarmTypes = "AlarmTypes"
        case childrenOfAlarmName = "ChildrenOfAlarmName"
        case maxRecords = "MaxRecords"
        case nextToken = "NextToken"
        case parentsOfAlarmName = "ParentsOfAlarmName"
        case stateValue = "StateValue"
    }

    public func validate() throws {
        try actionPrefix?.validateAsActionPrefix()
        try alarmNamePrefix?.validateAsAlarmNamePrefix()
        try alarmNames?.validateAsAlarmNames()
        try childrenOfAlarmName?.validateAsAlarmName()
        try maxRecords?.validateAsMaxRecords()
        try parentsOfAlarmName?.validateAsAlarmName()
    }
}

public struct DescribeAlarmsOutput: Codable, Equatable {
    public var compositeAlarms: CompositeAlarms?
    public var metricAlarms: MetricAlarms?
    public var nextToken: NextToken?

    public init(compositeAlarms: CompositeAlarms? = nil,
                metricAlarms: MetricAlarms? = nil,
                nextToken: NextToken? = nil) {
        self.compositeAlarms = compositeAlarms
        self.metricAlarms = metricAlarms
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case compositeAlarms = "CompositeAlarms"
        case metricAlarms = "MetricAlarms"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeAlarmsOutputForDescribeAlarms: Codable, Equatable {
    public var describeAlarmsResult: DescribeAlarmsOutput

    public init(describeAlarmsResult: DescribeAlarmsOutput) {
        self.describeAlarmsResult = describeAlarmsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeAlarmsResult = "DescribeAlarmsResult"
    }

    public func validate() throws {
        try describeAlarmsResult.validate()
    }
}

public struct DescribeAnomalyDetectorsInput: Codable, Equatable {
    public var anomalyDetectorTypes: AnomalyDetectorTypes?
    public var dimensions: Dimensions?
    public var maxResults: MaxReturnedResultsCount?
    public var metricName: MetricName?
    public var namespace: Namespace?
    public var nextToken: NextToken?

    public init(anomalyDetectorTypes: AnomalyDetectorTypes? = nil,
                dimensions: Dimensions? = nil,
                maxResults: MaxReturnedResultsCount? = nil,
                metricName: MetricName? = nil,
                namespace: Namespace? = nil,
                nextToken: NextToken? = nil) {
        self.anomalyDetectorTypes = anomalyDetectorTypes
        self.dimensions = dimensions
        self.maxResults = maxResults
        self.metricName = metricName
        self.namespace = namespace
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case anomalyDetectorTypes = "AnomalyDetectorTypes"
        case dimensions = "Dimensions"
        case maxResults = "MaxResults"
        case metricName = "MetricName"
        case namespace = "Namespace"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try anomalyDetectorTypes?.validateAsAnomalyDetectorTypes()
        try dimensions?.validateAsDimensions()
        try maxResults?.validateAsMaxReturnedResultsCount()
        try metricName?.validateAsMetricName()
        try namespace?.validateAsNamespace()
    }
}

public struct DescribeAnomalyDetectorsOutput: Codable, Equatable {
    public var anomalyDetectors: AnomalyDetectors?
    public var nextToken: NextToken?

    public init(anomalyDetectors: AnomalyDetectors? = nil,
                nextToken: NextToken? = nil) {
        self.anomalyDetectors = anomalyDetectors
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case anomalyDetectors = "AnomalyDetectors"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors: Codable, Equatable {
    public var describeAnomalyDetectorsResult: DescribeAnomalyDetectorsOutput

    public init(describeAnomalyDetectorsResult: DescribeAnomalyDetectorsOutput) {
        self.describeAnomalyDetectorsResult = describeAnomalyDetectorsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeAnomalyDetectorsResult = "DescribeAnomalyDetectorsResult"
    }

    public func validate() throws {
        try describeAnomalyDetectorsResult.validate()
    }
}

public struct DescribeInsightRulesInput: Codable, Equatable {
    public var maxResults: InsightRuleMaxResults?
    public var nextToken: NextToken?

    public init(maxResults: InsightRuleMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsInsightRuleMaxResults()
    }
}

public struct DescribeInsightRulesOutput: Codable, Equatable {
    public var insightRules: InsightRules?
    public var nextToken: NextToken?

    public init(insightRules: InsightRules? = nil,
                nextToken: NextToken? = nil) {
        self.insightRules = insightRules
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case insightRules = "InsightRules"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct DescribeInsightRulesOutputForDescribeInsightRules: Codable, Equatable {
    public var describeInsightRulesResult: DescribeInsightRulesOutput

    public init(describeInsightRulesResult: DescribeInsightRulesOutput) {
        self.describeInsightRulesResult = describeInsightRulesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeInsightRulesResult = "DescribeInsightRulesResult"
    }

    public func validate() throws {
        try describeInsightRulesResult.validate()
    }
}

public struct Dimension: Codable, Equatable {
    public var name: DimensionName
    public var value: DimensionValue

    public init(name: DimensionName,
                value: DimensionValue) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
        try name.validateAsDimensionName()
        try value.validateAsDimensionValue()
    }
}

public struct DimensionFilter: Codable, Equatable {
    public var name: DimensionName
    public var value: DimensionValue?

    public init(name: DimensionName,
                value: DimensionValue? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
        try name.validateAsDimensionName()
        try value?.validateAsDimensionValue()
    }
}

public struct DisableAlarmActionsInput: Codable, Equatable {
    public var alarmNames: AlarmNames

    public init(alarmNames: AlarmNames) {
        self.alarmNames = alarmNames
    }

    enum CodingKeys: String, CodingKey {
        case alarmNames = "AlarmNames"
    }

    public func validate() throws {
        try alarmNames.validateAsAlarmNames()
    }
}

public struct DisableInsightRulesInput: Codable, Equatable {
    public var ruleNames: InsightRuleNames

    public init(ruleNames: InsightRuleNames) {
        self.ruleNames = ruleNames
    }

    enum CodingKeys: String, CodingKey {
        case ruleNames = "RuleNames"
    }

    public func validate() throws {
    }
}

public struct DisableInsightRulesOutput: Codable, Equatable {
    public var failures: BatchFailures?

    public init(failures: BatchFailures? = nil) {
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case failures = "Failures"
    }

    public func validate() throws {
    }
}

public struct DisableInsightRulesOutputForDisableInsightRules: Codable, Equatable {
    public var disableInsightRulesResult: DisableInsightRulesOutput

    public init(disableInsightRulesResult: DisableInsightRulesOutput) {
        self.disableInsightRulesResult = disableInsightRulesResult
    }

    enum CodingKeys: String, CodingKey {
        case disableInsightRulesResult = "DisableInsightRulesResult"
    }

    public func validate() throws {
        try disableInsightRulesResult.validate()
    }
}

public struct EnableAlarmActionsInput: Codable, Equatable {
    public var alarmNames: AlarmNames

    public init(alarmNames: AlarmNames) {
        self.alarmNames = alarmNames
    }

    enum CodingKeys: String, CodingKey {
        case alarmNames = "AlarmNames"
    }

    public func validate() throws {
        try alarmNames.validateAsAlarmNames()
    }
}

public struct EnableInsightRulesInput: Codable, Equatable {
    public var ruleNames: InsightRuleNames

    public init(ruleNames: InsightRuleNames) {
        self.ruleNames = ruleNames
    }

    enum CodingKeys: String, CodingKey {
        case ruleNames = "RuleNames"
    }

    public func validate() throws {
    }
}

public struct EnableInsightRulesOutput: Codable, Equatable {
    public var failures: BatchFailures?

    public init(failures: BatchFailures? = nil) {
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case failures = "Failures"
    }

    public func validate() throws {
    }
}

public struct EnableInsightRulesOutputForEnableInsightRules: Codable, Equatable {
    public var enableInsightRulesResult: EnableInsightRulesOutput

    public init(enableInsightRulesResult: EnableInsightRulesOutput) {
        self.enableInsightRulesResult = enableInsightRulesResult
    }

    enum CodingKeys: String, CodingKey {
        case enableInsightRulesResult = "EnableInsightRulesResult"
    }

    public func validate() throws {
        try enableInsightRulesResult.validate()
    }
}

public struct GetDashboardInput: Codable, Equatable {
    public var dashboardName: DashboardName

    public init(dashboardName: DashboardName) {
        self.dashboardName = dashboardName
    }

    enum CodingKeys: String, CodingKey {
        case dashboardName = "DashboardName"
    }

    public func validate() throws {
    }
}

public struct GetDashboardOutput: Codable, Equatable {
    public var dashboardArn: DashboardArn?
    public var dashboardBody: DashboardBody?
    public var dashboardName: DashboardName?

    public init(dashboardArn: DashboardArn? = nil,
                dashboardBody: DashboardBody? = nil,
                dashboardName: DashboardName? = nil) {
        self.dashboardArn = dashboardArn
        self.dashboardBody = dashboardBody
        self.dashboardName = dashboardName
    }

    enum CodingKeys: String, CodingKey {
        case dashboardArn = "DashboardArn"
        case dashboardBody = "DashboardBody"
        case dashboardName = "DashboardName"
    }

    public func validate() throws {
    }
}

public struct GetDashboardOutputForGetDashboard: Codable, Equatable {
    public var getDashboardResult: GetDashboardOutput

    public init(getDashboardResult: GetDashboardOutput) {
        self.getDashboardResult = getDashboardResult
    }

    enum CodingKeys: String, CodingKey {
        case getDashboardResult = "GetDashboardResult"
    }

    public func validate() throws {
        try getDashboardResult.validate()
    }
}

public struct GetInsightRuleReportInput: Codable, Equatable {
    public var endTime: Timestamp
    public var maxContributorCount: InsightRuleUnboundInteger?
    public var metrics: InsightRuleMetricList?
    public var orderBy: InsightRuleOrderBy?
    public var period: Period
    public var ruleName: InsightRuleName
    public var startTime: Timestamp

    public init(endTime: Timestamp,
                maxContributorCount: InsightRuleUnboundInteger? = nil,
                metrics: InsightRuleMetricList? = nil,
                orderBy: InsightRuleOrderBy? = nil,
                period: Period,
                ruleName: InsightRuleName,
                startTime: Timestamp) {
        self.endTime = endTime
        self.maxContributorCount = maxContributorCount
        self.metrics = metrics
        self.orderBy = orderBy
        self.period = period
        self.ruleName = ruleName
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case maxContributorCount = "MaxContributorCount"
        case metrics = "Metrics"
        case orderBy = "OrderBy"
        case period = "Period"
        case ruleName = "RuleName"
        case startTime = "StartTime"
    }

    public func validate() throws {
        try orderBy?.validateAsInsightRuleOrderBy()
        try period.validateAsPeriod()
        try ruleName.validateAsInsightRuleName()
    }
}

public struct GetInsightRuleReportOutput: Codable, Equatable {
    public var aggregateValue: InsightRuleUnboundDouble?
    public var aggregationStatistic: InsightRuleAggregationStatistic?
    public var approximateUniqueCount: InsightRuleUnboundLong?
    public var contributors: InsightRuleContributors?
    public var keyLabels: InsightRuleContributorKeyLabels?
    public var metricDatapoints: InsightRuleMetricDatapoints?

    public init(aggregateValue: InsightRuleUnboundDouble? = nil,
                aggregationStatistic: InsightRuleAggregationStatistic? = nil,
                approximateUniqueCount: InsightRuleUnboundLong? = nil,
                contributors: InsightRuleContributors? = nil,
                keyLabels: InsightRuleContributorKeyLabels? = nil,
                metricDatapoints: InsightRuleMetricDatapoints? = nil) {
        self.aggregateValue = aggregateValue
        self.aggregationStatistic = aggregationStatistic
        self.approximateUniqueCount = approximateUniqueCount
        self.contributors = contributors
        self.keyLabels = keyLabels
        self.metricDatapoints = metricDatapoints
    }

    enum CodingKeys: String, CodingKey {
        case aggregateValue = "AggregateValue"
        case aggregationStatistic = "AggregationStatistic"
        case approximateUniqueCount = "ApproximateUniqueCount"
        case contributors = "Contributors"
        case keyLabels = "KeyLabels"
        case metricDatapoints = "MetricDatapoints"
    }

    public func validate() throws {
    }
}

public struct GetInsightRuleReportOutputForGetInsightRuleReport: Codable, Equatable {
    public var getInsightRuleReportResult: GetInsightRuleReportOutput

    public init(getInsightRuleReportResult: GetInsightRuleReportOutput) {
        self.getInsightRuleReportResult = getInsightRuleReportResult
    }

    enum CodingKeys: String, CodingKey {
        case getInsightRuleReportResult = "GetInsightRuleReportResult"
    }

    public func validate() throws {
        try getInsightRuleReportResult.validate()
    }
}

public struct GetMetricDataInput: Codable, Equatable {
    public var endTime: Timestamp
    public var labelOptions: LabelOptions?
    public var maxDatapoints: GetMetricDataMaxDatapoints?
    public var metricDataQueries: MetricDataQueries
    public var nextToken: NextToken?
    public var scanBy: ScanBy?
    public var startTime: Timestamp

    public init(endTime: Timestamp,
                labelOptions: LabelOptions? = nil,
                maxDatapoints: GetMetricDataMaxDatapoints? = nil,
                metricDataQueries: MetricDataQueries,
                nextToken: NextToken? = nil,
                scanBy: ScanBy? = nil,
                startTime: Timestamp) {
        self.endTime = endTime
        self.labelOptions = labelOptions
        self.maxDatapoints = maxDatapoints
        self.metricDataQueries = metricDataQueries
        self.nextToken = nextToken
        self.scanBy = scanBy
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case labelOptions = "LabelOptions"
        case maxDatapoints = "MaxDatapoints"
        case metricDataQueries = "MetricDataQueries"
        case nextToken = "NextToken"
        case scanBy = "ScanBy"
        case startTime = "StartTime"
    }

    public func validate() throws {
        try labelOptions?.validate()
    }
}

public struct GetMetricDataOutput: Codable, Equatable {
    public var messages: MetricDataResultMessages?
    public var metricDataResults: MetricDataResults?
    public var nextToken: NextToken?

    public init(messages: MetricDataResultMessages? = nil,
                metricDataResults: MetricDataResults? = nil,
                nextToken: NextToken? = nil) {
        self.messages = messages
        self.metricDataResults = metricDataResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case messages = "Messages"
        case metricDataResults = "MetricDataResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct GetMetricDataOutputForGetMetricData: Codable, Equatable {
    public var getMetricDataResult: GetMetricDataOutput

    public init(getMetricDataResult: GetMetricDataOutput) {
        self.getMetricDataResult = getMetricDataResult
    }

    enum CodingKeys: String, CodingKey {
        case getMetricDataResult = "GetMetricDataResult"
    }

    public func validate() throws {
        try getMetricDataResult.validate()
    }
}

public struct GetMetricStatisticsInput: Codable, Equatable {
    public var dimensions: Dimensions?
    public var endTime: Timestamp
    public var extendedStatistics: ExtendedStatistics?
    public var metricName: MetricName
    public var namespace: Namespace
    public var period: Period
    public var startTime: Timestamp
    public var statistics: Statistics?
    public var unit: StandardUnit?

    public init(dimensions: Dimensions? = nil,
                endTime: Timestamp,
                extendedStatistics: ExtendedStatistics? = nil,
                metricName: MetricName,
                namespace: Namespace,
                period: Period,
                startTime: Timestamp,
                statistics: Statistics? = nil,
                unit: StandardUnit? = nil) {
        self.dimensions = dimensions
        self.endTime = endTime
        self.extendedStatistics = extendedStatistics
        self.metricName = metricName
        self.namespace = namespace
        self.period = period
        self.startTime = startTime
        self.statistics = statistics
        self.unit = unit
    }

    enum CodingKeys: String, CodingKey {
        case dimensions = "Dimensions"
        case endTime = "EndTime"
        case extendedStatistics = "ExtendedStatistics"
        case metricName = "MetricName"
        case namespace = "Namespace"
        case period = "Period"
        case startTime = "StartTime"
        case statistics = "Statistics"
        case unit = "Unit"
    }

    public func validate() throws {
        try dimensions?.validateAsDimensions()
        try extendedStatistics?.validateAsExtendedStatistics()
        try metricName.validateAsMetricName()
        try namespace.validateAsNamespace()
        try period.validateAsPeriod()
        try statistics?.validateAsStatistics()
    }
}

public struct GetMetricStatisticsOutput: Codable, Equatable {
    public var datapoints: Datapoints?
    public var label: MetricLabel?

    public init(datapoints: Datapoints? = nil,
                label: MetricLabel? = nil) {
        self.datapoints = datapoints
        self.label = label
    }

    enum CodingKeys: String, CodingKey {
        case datapoints = "Datapoints"
        case label = "Label"
    }

    public func validate() throws {
    }
}

public struct GetMetricStatisticsOutputForGetMetricStatistics: Codable, Equatable {
    public var getMetricStatisticsResult: GetMetricStatisticsOutput

    public init(getMetricStatisticsResult: GetMetricStatisticsOutput) {
        self.getMetricStatisticsResult = getMetricStatisticsResult
    }

    enum CodingKeys: String, CodingKey {
        case getMetricStatisticsResult = "GetMetricStatisticsResult"
    }

    public func validate() throws {
        try getMetricStatisticsResult.validate()
    }
}

public struct GetMetricStreamInput: Codable, Equatable {
    public var name: MetricStreamName

    public init(name: MetricStreamName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsMetricStreamName()
    }
}

public struct GetMetricStreamOutput: Codable, Equatable {
    public var arn: AmazonResourceName?
    public var creationDate: Timestamp?
    public var excludeFilters: MetricStreamFilters?
    public var firehoseArn: AmazonResourceName?
    public var includeFilters: MetricStreamFilters?
    public var lastUpdateDate: Timestamp?
    public var name: MetricStreamName?
    public var outputFormat: MetricStreamOutputFormat?
    public var roleArn: AmazonResourceName?
    public var state: MetricStreamState?
    public var statisticsConfigurations: MetricStreamStatisticsConfigurations?

    public init(arn: AmazonResourceName? = nil,
                creationDate: Timestamp? = nil,
                excludeFilters: MetricStreamFilters? = nil,
                firehoseArn: AmazonResourceName? = nil,
                includeFilters: MetricStreamFilters? = nil,
                lastUpdateDate: Timestamp? = nil,
                name: MetricStreamName? = nil,
                outputFormat: MetricStreamOutputFormat? = nil,
                roleArn: AmazonResourceName? = nil,
                state: MetricStreamState? = nil,
                statisticsConfigurations: MetricStreamStatisticsConfigurations? = nil) {
        self.arn = arn
        self.creationDate = creationDate
        self.excludeFilters = excludeFilters
        self.firehoseArn = firehoseArn
        self.includeFilters = includeFilters
        self.lastUpdateDate = lastUpdateDate
        self.name = name
        self.outputFormat = outputFormat
        self.roleArn = roleArn
        self.state = state
        self.statisticsConfigurations = statisticsConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationDate = "CreationDate"
        case excludeFilters = "ExcludeFilters"
        case firehoseArn = "FirehoseArn"
        case includeFilters = "IncludeFilters"
        case lastUpdateDate = "LastUpdateDate"
        case name = "Name"
        case outputFormat = "OutputFormat"
        case roleArn = "RoleArn"
        case state = "State"
        case statisticsConfigurations = "StatisticsConfigurations"
    }

    public func validate() throws {
        try arn?.validateAsAmazonResourceName()
        try firehoseArn?.validateAsAmazonResourceName()
        try name?.validateAsMetricStreamName()
        try roleArn?.validateAsAmazonResourceName()
    }
}

public struct GetMetricStreamOutputForGetMetricStream: Codable, Equatable {
    public var getMetricStreamResult: GetMetricStreamOutput

    public init(getMetricStreamResult: GetMetricStreamOutput) {
        self.getMetricStreamResult = getMetricStreamResult
    }

    enum CodingKeys: String, CodingKey {
        case getMetricStreamResult = "GetMetricStreamResult"
    }

    public func validate() throws {
        try getMetricStreamResult.validate()
    }
}

public struct GetMetricWidgetImageInput: Codable, Equatable {
    public var metricWidget: MetricWidget
    public var outputFormat: OutputFormat?

    public init(metricWidget: MetricWidget,
                outputFormat: OutputFormat? = nil) {
        self.metricWidget = metricWidget
        self.outputFormat = outputFormat
    }

    enum CodingKeys: String, CodingKey {
        case metricWidget = "MetricWidget"
        case outputFormat = "OutputFormat"
    }

    public func validate() throws {
    }
}

public struct GetMetricWidgetImageOutput: Codable, Equatable {
    public var metricWidgetImage: MetricWidgetImage?

    public init(metricWidgetImage: MetricWidgetImage? = nil) {
        self.metricWidgetImage = metricWidgetImage
    }

    enum CodingKeys: String, CodingKey {
        case metricWidgetImage = "MetricWidgetImage"
    }

    public func validate() throws {
    }
}

public struct GetMetricWidgetImageOutputForGetMetricWidgetImage: Codable, Equatable {
    public var getMetricWidgetImageResult: GetMetricWidgetImageOutput

    public init(getMetricWidgetImageResult: GetMetricWidgetImageOutput) {
        self.getMetricWidgetImageResult = getMetricWidgetImageResult
    }

    enum CodingKeys: String, CodingKey {
        case getMetricWidgetImageResult = "GetMetricWidgetImageResult"
    }

    public func validate() throws {
        try getMetricWidgetImageResult.validate()
    }
}

public struct InsightRule: Codable, Equatable {
    public var definition: InsightRuleDefinition
    public var name: InsightRuleName
    public var schema: InsightRuleSchema
    public var state: InsightRuleState

    public init(definition: InsightRuleDefinition,
                name: InsightRuleName,
                schema: InsightRuleSchema,
                state: InsightRuleState) {
        self.definition = definition
        self.name = name
        self.schema = schema
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case definition = "Definition"
        case name = "Name"
        case schema = "Schema"
        case state = "State"
    }

    public func validate() throws {
        try definition.validateAsInsightRuleDefinition()
        try name.validateAsInsightRuleName()
        try state.validateAsInsightRuleState()
    }
}

public struct InsightRuleContributor: Codable, Equatable {
    public var approximateAggregateValue: InsightRuleUnboundDouble
    public var datapoints: InsightRuleContributorDatapoints
    public var keys: InsightRuleContributorKeys

    public init(approximateAggregateValue: InsightRuleUnboundDouble,
                datapoints: InsightRuleContributorDatapoints,
                keys: InsightRuleContributorKeys) {
        self.approximateAggregateValue = approximateAggregateValue
        self.datapoints = datapoints
        self.keys = keys
    }

    enum CodingKeys: String, CodingKey {
        case approximateAggregateValue = "ApproximateAggregateValue"
        case datapoints = "Datapoints"
        case keys = "Keys"
    }

    public func validate() throws {
    }
}

public struct InsightRuleContributorDatapoint: Codable, Equatable {
    public var approximateValue: InsightRuleUnboundDouble
    public var timestamp: Timestamp

    public init(approximateValue: InsightRuleUnboundDouble,
                timestamp: Timestamp) {
        self.approximateValue = approximateValue
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case approximateValue = "ApproximateValue"
        case timestamp = "Timestamp"
    }

    public func validate() throws {
    }
}

public struct InsightRuleMetricDatapoint: Codable, Equatable {
    public var average: InsightRuleUnboundDouble?
    public var maxContributorValue: InsightRuleUnboundDouble?
    public var maximum: InsightRuleUnboundDouble?
    public var minimum: InsightRuleUnboundDouble?
    public var sampleCount: InsightRuleUnboundDouble?
    public var sum: InsightRuleUnboundDouble?
    public var timestamp: Timestamp
    public var uniqueContributors: InsightRuleUnboundDouble?

    public init(average: InsightRuleUnboundDouble? = nil,
                maxContributorValue: InsightRuleUnboundDouble? = nil,
                maximum: InsightRuleUnboundDouble? = nil,
                minimum: InsightRuleUnboundDouble? = nil,
                sampleCount: InsightRuleUnboundDouble? = nil,
                sum: InsightRuleUnboundDouble? = nil,
                timestamp: Timestamp,
                uniqueContributors: InsightRuleUnboundDouble? = nil) {
        self.average = average
        self.maxContributorValue = maxContributorValue
        self.maximum = maximum
        self.minimum = minimum
        self.sampleCount = sampleCount
        self.sum = sum
        self.timestamp = timestamp
        self.uniqueContributors = uniqueContributors
    }

    enum CodingKeys: String, CodingKey {
        case average = "Average"
        case maxContributorValue = "MaxContributorValue"
        case maximum = "Maximum"
        case minimum = "Minimum"
        case sampleCount = "SampleCount"
        case sum = "Sum"
        case timestamp = "Timestamp"
        case uniqueContributors = "UniqueContributors"
    }

    public func validate() throws {
    }
}

public struct InternalServiceFault: Codable, Equatable {
    public var message: FaultDescription?

    public init(message: FaultDescription? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct InvalidFormatFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsErrorMessage()
    }
}

public struct InvalidNextToken: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsErrorMessage()
    }
}

public struct InvalidParameterCombinationException: Codable, Equatable {
    public var message: AwsQueryErrorMessage?

    public init(message: AwsQueryErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct InvalidParameterValueException: Codable, Equatable {
    public var message: AwsQueryErrorMessage?

    public init(message: AwsQueryErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct LabelOptions: Codable, Equatable {
    public var timezone: GetMetricDataLabelTimezone?

    public init(timezone: GetMetricDataLabelTimezone? = nil) {
        self.timezone = timezone
    }

    enum CodingKeys: String, CodingKey {
        case timezone = "Timezone"
    }

    public func validate() throws {
    }
}

public struct LimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct LimitExceededFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsErrorMessage()
    }
}

public struct ListDashboardsInput: Codable, Equatable {
    public var dashboardNamePrefix: DashboardNamePrefix?
    public var nextToken: NextToken?

    public init(dashboardNamePrefix: DashboardNamePrefix? = nil,
                nextToken: NextToken? = nil) {
        self.dashboardNamePrefix = dashboardNamePrefix
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dashboardNamePrefix = "DashboardNamePrefix"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListDashboardsOutput: Codable, Equatable {
    public var dashboardEntries: DashboardEntries?
    public var nextToken: NextToken?

    public init(dashboardEntries: DashboardEntries? = nil,
                nextToken: NextToken? = nil) {
        self.dashboardEntries = dashboardEntries
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case dashboardEntries = "DashboardEntries"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListDashboardsOutputForListDashboards: Codable, Equatable {
    public var listDashboardsResult: ListDashboardsOutput

    public init(listDashboardsResult: ListDashboardsOutput) {
        self.listDashboardsResult = listDashboardsResult
    }

    enum CodingKeys: String, CodingKey {
        case listDashboardsResult = "ListDashboardsResult"
    }

    public func validate() throws {
        try listDashboardsResult.validate()
    }
}

public struct ListMetricStreamsInput: Codable, Equatable {
    public var maxResults: ListMetricStreamsMaxResults?
    public var nextToken: NextToken?

    public init(maxResults: ListMetricStreamsMaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsListMetricStreamsMaxResults()
    }
}

public struct ListMetricStreamsOutput: Codable, Equatable {
    public var entries: MetricStreamEntries?
    public var nextToken: NextToken?

    public init(entries: MetricStreamEntries? = nil,
                nextToken: NextToken? = nil) {
        self.entries = entries
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case entries = "Entries"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListMetricStreamsOutputForListMetricStreams: Codable, Equatable {
    public var listMetricStreamsResult: ListMetricStreamsOutput

    public init(listMetricStreamsResult: ListMetricStreamsOutput) {
        self.listMetricStreamsResult = listMetricStreamsResult
    }

    enum CodingKeys: String, CodingKey {
        case listMetricStreamsResult = "ListMetricStreamsResult"
    }

    public func validate() throws {
        try listMetricStreamsResult.validate()
    }
}

public struct ListMetricsInput: Codable, Equatable {
    public var dimensions: DimensionFilters?
    public var metricName: MetricName?
    public var namespace: Namespace?
    public var nextToken: NextToken?
    public var recentlyActive: RecentlyActive?

    public init(dimensions: DimensionFilters? = nil,
                metricName: MetricName? = nil,
                namespace: Namespace? = nil,
                nextToken: NextToken? = nil,
                recentlyActive: RecentlyActive? = nil) {
        self.dimensions = dimensions
        self.metricName = metricName
        self.namespace = namespace
        self.nextToken = nextToken
        self.recentlyActive = recentlyActive
    }

    enum CodingKeys: String, CodingKey {
        case dimensions = "Dimensions"
        case metricName = "MetricName"
        case namespace = "Namespace"
        case nextToken = "NextToken"
        case recentlyActive = "RecentlyActive"
    }

    public func validate() throws {
        try dimensions?.validateAsDimensionFilters()
        try metricName?.validateAsMetricName()
        try namespace?.validateAsNamespace()
    }
}

public struct ListMetricsOutput: Codable, Equatable {
    public var metrics: Metrics?
    public var nextToken: NextToken?

    public init(metrics: Metrics? = nil,
                nextToken: NextToken? = nil) {
        self.metrics = metrics
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case metrics = "Metrics"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListMetricsOutputForListMetrics: Codable, Equatable {
    public var listMetricsResult: ListMetricsOutput

    public init(listMetricsResult: ListMetricsOutput) {
        self.listMetricsResult = listMetricsResult
    }

    enum CodingKeys: String, CodingKey {
        case listMetricsResult = "ListMetricsResult"
    }

    public func validate() throws {
        try listMetricsResult.validate()
    }
}

public struct ListTagsForResourceInput: Codable, Equatable {
    public var resourceARN: AmazonResourceName

    public init(resourceARN: AmazonResourceName) {
        self.resourceARN = resourceARN
    }

    enum CodingKeys: String, CodingKey {
        case resourceARN = "ResourceARN"
    }

    public func validate() throws {
        try resourceARN.validateAsAmazonResourceName()
    }
}

public struct ListTagsForResourceOutput: Codable, Equatable {
    public var tags: TagList?

    public init(tags: TagList? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceOutputForListTagsForResource: Codable, Equatable {
    public var listTagsForResourceResult: ListTagsForResourceOutput

    public init(listTagsForResourceResult: ListTagsForResourceOutput) {
        self.listTagsForResourceResult = listTagsForResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case listTagsForResourceResult = "ListTagsForResourceResult"
    }

    public func validate() throws {
        try listTagsForResourceResult.validate()
    }
}

public struct MessageData: Codable, Equatable {
    public var code: MessageDataCode?
    public var value: MessageDataValue?

    public init(code: MessageDataCode? = nil,
                value: MessageDataValue? = nil) {
        self.code = code
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct Metric: Codable, Equatable {
    public var dimensions: Dimensions?
    public var metricName: MetricName?
    public var namespace: Namespace?

    public init(dimensions: Dimensions? = nil,
                metricName: MetricName? = nil,
                namespace: Namespace? = nil) {
        self.dimensions = dimensions
        self.metricName = metricName
        self.namespace = namespace
    }

    enum CodingKeys: String, CodingKey {
        case dimensions = "Dimensions"
        case metricName = "MetricName"
        case namespace = "Namespace"
    }

    public func validate() throws {
        try dimensions?.validateAsDimensions()
        try metricName?.validateAsMetricName()
        try namespace?.validateAsNamespace()
    }
}

public struct MetricAlarm: Codable, Equatable {
    public var actionsEnabled: ActionsEnabled?
    public var alarmActions: ResourceList?
    public var alarmArn: AlarmArn?
    public var alarmConfigurationUpdatedTimestamp: Timestamp?
    public var alarmDescription: AlarmDescription?
    public var alarmName: AlarmName?
    public var comparisonOperator: ComparisonOperator?
    public var datapointsToAlarm: DatapointsToAlarm?
    public var dimensions: Dimensions?
    public var evaluateLowSampleCountPercentile: EvaluateLowSampleCountPercentile?
    public var evaluationPeriods: EvaluationPeriods?
    public var extendedStatistic: ExtendedStatistic?
    public var insufficientDataActions: ResourceList?
    public var metricName: MetricName?
    public var metrics: MetricDataQueries?
    public var namespace: Namespace?
    public var oKActions: ResourceList?
    public var period: Period?
    public var stateReason: StateReason?
    public var stateReasonData: StateReasonData?
    public var stateUpdatedTimestamp: Timestamp?
    public var stateValue: StateValue?
    public var statistic: Statistic?
    public var threshold: Threshold?
    public var thresholdMetricId: MetricId?
    public var treatMissingData: TreatMissingData?
    public var unit: StandardUnit?

    public init(actionsEnabled: ActionsEnabled? = nil,
                alarmActions: ResourceList? = nil,
                alarmArn: AlarmArn? = nil,
                alarmConfigurationUpdatedTimestamp: Timestamp? = nil,
                alarmDescription: AlarmDescription? = nil,
                alarmName: AlarmName? = nil,
                comparisonOperator: ComparisonOperator? = nil,
                datapointsToAlarm: DatapointsToAlarm? = nil,
                dimensions: Dimensions? = nil,
                evaluateLowSampleCountPercentile: EvaluateLowSampleCountPercentile? = nil,
                evaluationPeriods: EvaluationPeriods? = nil,
                extendedStatistic: ExtendedStatistic? = nil,
                insufficientDataActions: ResourceList? = nil,
                metricName: MetricName? = nil,
                metrics: MetricDataQueries? = nil,
                namespace: Namespace? = nil,
                oKActions: ResourceList? = nil,
                period: Period? = nil,
                stateReason: StateReason? = nil,
                stateReasonData: StateReasonData? = nil,
                stateUpdatedTimestamp: Timestamp? = nil,
                stateValue: StateValue? = nil,
                statistic: Statistic? = nil,
                threshold: Threshold? = nil,
                thresholdMetricId: MetricId? = nil,
                treatMissingData: TreatMissingData? = nil,
                unit: StandardUnit? = nil) {
        self.actionsEnabled = actionsEnabled
        self.alarmActions = alarmActions
        self.alarmArn = alarmArn
        self.alarmConfigurationUpdatedTimestamp = alarmConfigurationUpdatedTimestamp
        self.alarmDescription = alarmDescription
        self.alarmName = alarmName
        self.comparisonOperator = comparisonOperator
        self.datapointsToAlarm = datapointsToAlarm
        self.dimensions = dimensions
        self.evaluateLowSampleCountPercentile = evaluateLowSampleCountPercentile
        self.evaluationPeriods = evaluationPeriods
        self.extendedStatistic = extendedStatistic
        self.insufficientDataActions = insufficientDataActions
        self.metricName = metricName
        self.metrics = metrics
        self.namespace = namespace
        self.oKActions = oKActions
        self.period = period
        self.stateReason = stateReason
        self.stateReasonData = stateReasonData
        self.stateUpdatedTimestamp = stateUpdatedTimestamp
        self.stateValue = stateValue
        self.statistic = statistic
        self.threshold = threshold
        self.thresholdMetricId = thresholdMetricId
        self.treatMissingData = treatMissingData
        self.unit = unit
    }

    enum CodingKeys: String, CodingKey {
        case actionsEnabled = "ActionsEnabled"
        case alarmActions = "AlarmActions"
        case alarmArn = "AlarmArn"
        case alarmConfigurationUpdatedTimestamp = "AlarmConfigurationUpdatedTimestamp"
        case alarmDescription = "AlarmDescription"
        case alarmName = "AlarmName"
        case comparisonOperator = "ComparisonOperator"
        case datapointsToAlarm = "DatapointsToAlarm"
        case dimensions = "Dimensions"
        case evaluateLowSampleCountPercentile = "EvaluateLowSampleCountPercentile"
        case evaluationPeriods = "EvaluationPeriods"
        case extendedStatistic = "ExtendedStatistic"
        case insufficientDataActions = "InsufficientDataActions"
        case metricName = "MetricName"
        case metrics = "Metrics"
        case namespace = "Namespace"
        case oKActions = "OKActions"
        case period = "Period"
        case stateReason = "StateReason"
        case stateReasonData = "StateReasonData"
        case stateUpdatedTimestamp = "StateUpdatedTimestamp"
        case stateValue = "StateValue"
        case statistic = "Statistic"
        case threshold = "Threshold"
        case thresholdMetricId = "ThresholdMetricId"
        case treatMissingData = "TreatMissingData"
        case unit = "Unit"
    }

    public func validate() throws {
        try alarmActions?.validateAsResourceList()
        try alarmArn?.validateAsAlarmArn()
        try alarmDescription?.validateAsAlarmDescription()
        try alarmName?.validateAsAlarmName()
        try datapointsToAlarm?.validateAsDatapointsToAlarm()
        try dimensions?.validateAsDimensions()
        try evaluateLowSampleCountPercentile?.validateAsEvaluateLowSampleCountPercentile()
        try evaluationPeriods?.validateAsEvaluationPeriods()
        try extendedStatistic?.validateAsExtendedStatistic()
        try insufficientDataActions?.validateAsResourceList()
        try metricName?.validateAsMetricName()
        try namespace?.validateAsNamespace()
        try oKActions?.validateAsResourceList()
        try period?.validateAsPeriod()
        try stateReason?.validateAsStateReason()
        try stateReasonData?.validateAsStateReasonData()
        try thresholdMetricId?.validateAsMetricId()
        try treatMissingData?.validateAsTreatMissingData()
    }
}

public struct MetricDataQuery: Codable, Equatable {
    public var accountId: AccountId?
    public var expression: MetricExpression?
    public var id: MetricId
    public var label: MetricLabel?
    public var metricStat: MetricStat?
    public var period: Period?
    public var returnData: ReturnData?

    public init(accountId: AccountId? = nil,
                expression: MetricExpression? = nil,
                id: MetricId,
                label: MetricLabel? = nil,
                metricStat: MetricStat? = nil,
                period: Period? = nil,
                returnData: ReturnData? = nil) {
        self.accountId = accountId
        self.expression = expression
        self.id = id
        self.label = label
        self.metricStat = metricStat
        self.period = period
        self.returnData = returnData
    }

    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case expression = "Expression"
        case id = "Id"
        case label = "Label"
        case metricStat = "MetricStat"
        case period = "Period"
        case returnData = "ReturnData"
    }

    public func validate() throws {
        try accountId?.validateAsAccountId()
        try expression?.validateAsMetricExpression()
        try id.validateAsMetricId()
        try metricStat?.validate()
        try period?.validateAsPeriod()
    }
}

public struct MetricDataResult: Codable, Equatable {
    public var id: MetricId?
    public var label: MetricLabel?
    public var messages: MetricDataResultMessages?
    public var statusCode: StatusCode?
    public var timestamps: Timestamps?
    public var values: DatapointValues?

    public init(id: MetricId? = nil,
                label: MetricLabel? = nil,
                messages: MetricDataResultMessages? = nil,
                statusCode: StatusCode? = nil,
                timestamps: Timestamps? = nil,
                values: DatapointValues? = nil) {
        self.id = id
        self.label = label
        self.messages = messages
        self.statusCode = statusCode
        self.timestamps = timestamps
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case label = "Label"
        case messages = "Messages"
        case statusCode = "StatusCode"
        case timestamps = "Timestamps"
        case values = "Values"
    }

    public func validate() throws {
        try id?.validateAsMetricId()
    }
}

public struct MetricDatum: Codable, Equatable {
    public var counts: Counts?
    public var dimensions: Dimensions?
    public var metricName: MetricName
    public var statisticValues: StatisticSet?
    public var storageResolution: StorageResolution?
    public var timestamp: Timestamp?
    public var unit: StandardUnit?
    public var value: DatapointValue?
    public var values: Values?

    public init(counts: Counts? = nil,
                dimensions: Dimensions? = nil,
                metricName: MetricName,
                statisticValues: StatisticSet? = nil,
                storageResolution: StorageResolution? = nil,
                timestamp: Timestamp? = nil,
                unit: StandardUnit? = nil,
                value: DatapointValue? = nil,
                values: Values? = nil) {
        self.counts = counts
        self.dimensions = dimensions
        self.metricName = metricName
        self.statisticValues = statisticValues
        self.storageResolution = storageResolution
        self.timestamp = timestamp
        self.unit = unit
        self.value = value
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case counts = "Counts"
        case dimensions = "Dimensions"
        case metricName = "MetricName"
        case statisticValues = "StatisticValues"
        case storageResolution = "StorageResolution"
        case timestamp = "Timestamp"
        case unit = "Unit"
        case value = "Value"
        case values = "Values"
    }

    public func validate() throws {
        try dimensions?.validateAsDimensions()
        try metricName.validateAsMetricName()
        try statisticValues?.validate()
        try storageResolution?.validateAsStorageResolution()
    }
}

public struct MetricMathAnomalyDetector: Codable, Equatable {
    public var metricDataQueries: MetricDataQueries?

    public init(metricDataQueries: MetricDataQueries? = nil) {
        self.metricDataQueries = metricDataQueries
    }

    enum CodingKeys: String, CodingKey {
        case metricDataQueries = "MetricDataQueries"
    }

    public func validate() throws {
    }
}

public struct MetricStat: Codable, Equatable {
    public var metric: Metric
    public var period: Period
    public var stat: Stat
    public var unit: StandardUnit?

    public init(metric: Metric,
                period: Period,
                stat: Stat,
                unit: StandardUnit? = nil) {
        self.metric = metric
        self.period = period
        self.stat = stat
        self.unit = unit
    }

    enum CodingKeys: String, CodingKey {
        case metric = "Metric"
        case period = "Period"
        case stat = "Stat"
        case unit = "Unit"
    }

    public func validate() throws {
        try metric.validate()
        try period.validateAsPeriod()
    }
}

public struct MetricStreamEntry: Codable, Equatable {
    public var arn: AmazonResourceName?
    public var creationDate: Timestamp?
    public var firehoseArn: AmazonResourceName?
    public var lastUpdateDate: Timestamp?
    public var name: MetricStreamName?
    public var outputFormat: MetricStreamOutputFormat?
    public var state: MetricStreamState?

    public init(arn: AmazonResourceName? = nil,
                creationDate: Timestamp? = nil,
                firehoseArn: AmazonResourceName? = nil,
                lastUpdateDate: Timestamp? = nil,
                name: MetricStreamName? = nil,
                outputFormat: MetricStreamOutputFormat? = nil,
                state: MetricStreamState? = nil) {
        self.arn = arn
        self.creationDate = creationDate
        self.firehoseArn = firehoseArn
        self.lastUpdateDate = lastUpdateDate
        self.name = name
        self.outputFormat = outputFormat
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationDate = "CreationDate"
        case firehoseArn = "FirehoseArn"
        case lastUpdateDate = "LastUpdateDate"
        case name = "Name"
        case outputFormat = "OutputFormat"
        case state = "State"
    }

    public func validate() throws {
        try arn?.validateAsAmazonResourceName()
        try firehoseArn?.validateAsAmazonResourceName()
        try name?.validateAsMetricStreamName()
    }
}

public struct MetricStreamFilter: Codable, Equatable {
    public var namespace: Namespace?

    public init(namespace: Namespace? = nil) {
        self.namespace = namespace
    }

    enum CodingKeys: String, CodingKey {
        case namespace = "Namespace"
    }

    public func validate() throws {
        try namespace?.validateAsNamespace()
    }
}

public struct MetricStreamStatisticsConfiguration: Codable, Equatable {
    public var additionalStatistics: MetricStreamStatisticsAdditionalStatistics
    public var includeMetrics: MetricStreamStatisticsIncludeMetrics

    public init(additionalStatistics: MetricStreamStatisticsAdditionalStatistics,
                includeMetrics: MetricStreamStatisticsIncludeMetrics) {
        self.additionalStatistics = additionalStatistics
        self.includeMetrics = includeMetrics
    }

    enum CodingKeys: String, CodingKey {
        case additionalStatistics = "AdditionalStatistics"
        case includeMetrics = "IncludeMetrics"
    }

    public func validate() throws {
    }
}

public struct MetricStreamStatisticsMetric: Codable, Equatable {
    public var metricName: MetricName
    public var namespace: Namespace

    public init(metricName: MetricName,
                namespace: Namespace) {
        self.metricName = metricName
        self.namespace = namespace
    }

    enum CodingKeys: String, CodingKey {
        case metricName = "MetricName"
        case namespace = "Namespace"
    }

    public func validate() throws {
        try metricName.validateAsMetricName()
        try namespace.validateAsNamespace()
    }
}

public struct MissingRequiredParameterException: Codable, Equatable {
    public var message: AwsQueryErrorMessage?

    public init(message: AwsQueryErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct PartialFailure: Codable, Equatable {
    public var exceptionType: ExceptionType?
    public var failureCode: FailureCode?
    public var failureDescription: FailureDescription?
    public var failureResource: FailureResource?

    public init(exceptionType: ExceptionType? = nil,
                failureCode: FailureCode? = nil,
                failureDescription: FailureDescription? = nil,
                failureResource: FailureResource? = nil) {
        self.exceptionType = exceptionType
        self.failureCode = failureCode
        self.failureDescription = failureDescription
        self.failureResource = failureResource
    }

    enum CodingKeys: String, CodingKey {
        case exceptionType = "ExceptionType"
        case failureCode = "FailureCode"
        case failureDescription = "FailureDescription"
        case failureResource = "FailureResource"
    }

    public func validate() throws {
    }
}

public struct PutAnomalyDetectorInput: Codable, Equatable {
    public var configuration: AnomalyDetectorConfiguration?
    public var metricMathAnomalyDetector: MetricMathAnomalyDetector?
    public var singleMetricAnomalyDetector: SingleMetricAnomalyDetector?

    public init(configuration: AnomalyDetectorConfiguration? = nil,
                metricMathAnomalyDetector: MetricMathAnomalyDetector? = nil,
                singleMetricAnomalyDetector: SingleMetricAnomalyDetector? = nil) {
        self.configuration = configuration
        self.metricMathAnomalyDetector = metricMathAnomalyDetector
        self.singleMetricAnomalyDetector = singleMetricAnomalyDetector
    }

    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case metricMathAnomalyDetector = "MetricMathAnomalyDetector"
        case singleMetricAnomalyDetector = "SingleMetricAnomalyDetector"
    }

    public func validate() throws {
        try configuration?.validate()
        try metricMathAnomalyDetector?.validate()
        try singleMetricAnomalyDetector?.validate()
    }
}

public struct PutAnomalyDetectorOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PutAnomalyDetectorOutputForPutAnomalyDetector: Codable, Equatable {
    public var putAnomalyDetectorResult: PutAnomalyDetectorOutput

    public init(putAnomalyDetectorResult: PutAnomalyDetectorOutput) {
        self.putAnomalyDetectorResult = putAnomalyDetectorResult
    }

    enum CodingKeys: String, CodingKey {
        case putAnomalyDetectorResult = "PutAnomalyDetectorResult"
    }

    public func validate() throws {
        try putAnomalyDetectorResult.validate()
    }
}

public struct PutCompositeAlarmInput: Codable, Equatable {
    public var actionsEnabled: ActionsEnabled?
    public var alarmActions: ResourceList?
    public var alarmDescription: AlarmDescription?
    public var alarmName: AlarmName
    public var alarmRule: AlarmRule
    public var insufficientDataActions: ResourceList?
    public var oKActions: ResourceList?
    public var tags: TagList?

    public init(actionsEnabled: ActionsEnabled? = nil,
                alarmActions: ResourceList? = nil,
                alarmDescription: AlarmDescription? = nil,
                alarmName: AlarmName,
                alarmRule: AlarmRule,
                insufficientDataActions: ResourceList? = nil,
                oKActions: ResourceList? = nil,
                tags: TagList? = nil) {
        self.actionsEnabled = actionsEnabled
        self.alarmActions = alarmActions
        self.alarmDescription = alarmDescription
        self.alarmName = alarmName
        self.alarmRule = alarmRule
        self.insufficientDataActions = insufficientDataActions
        self.oKActions = oKActions
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case actionsEnabled = "ActionsEnabled"
        case alarmActions = "AlarmActions"
        case alarmDescription = "AlarmDescription"
        case alarmName = "AlarmName"
        case alarmRule = "AlarmRule"
        case insufficientDataActions = "InsufficientDataActions"
        case oKActions = "OKActions"
        case tags = "Tags"
    }

    public func validate() throws {
        try alarmActions?.validateAsResourceList()
        try alarmDescription?.validateAsAlarmDescription()
        try alarmName.validateAsAlarmName()
        try alarmRule.validateAsAlarmRule()
        try insufficientDataActions?.validateAsResourceList()
        try oKActions?.validateAsResourceList()
    }
}

public struct PutDashboardInput: Codable, Equatable {
    public var dashboardBody: DashboardBody
    public var dashboardName: DashboardName

    public init(dashboardBody: DashboardBody,
                dashboardName: DashboardName) {
        self.dashboardBody = dashboardBody
        self.dashboardName = dashboardName
    }

    enum CodingKeys: String, CodingKey {
        case dashboardBody = "DashboardBody"
        case dashboardName = "DashboardName"
    }

    public func validate() throws {
    }
}

public struct PutDashboardOutput: Codable, Equatable {
    public var dashboardValidationMessages: DashboardValidationMessages?

    public init(dashboardValidationMessages: DashboardValidationMessages? = nil) {
        self.dashboardValidationMessages = dashboardValidationMessages
    }

    enum CodingKeys: String, CodingKey {
        case dashboardValidationMessages = "DashboardValidationMessages"
    }

    public func validate() throws {
    }
}

public struct PutDashboardOutputForPutDashboard: Codable, Equatable {
    public var putDashboardResult: PutDashboardOutput

    public init(putDashboardResult: PutDashboardOutput) {
        self.putDashboardResult = putDashboardResult
    }

    enum CodingKeys: String, CodingKey {
        case putDashboardResult = "PutDashboardResult"
    }

    public func validate() throws {
        try putDashboardResult.validate()
    }
}

public struct PutInsightRuleInput: Codable, Equatable {
    public var ruleDefinition: InsightRuleDefinition
    public var ruleName: InsightRuleName
    public var ruleState: InsightRuleState?
    public var tags: TagList?

    public init(ruleDefinition: InsightRuleDefinition,
                ruleName: InsightRuleName,
                ruleState: InsightRuleState? = nil,
                tags: TagList? = nil) {
        self.ruleDefinition = ruleDefinition
        self.ruleName = ruleName
        self.ruleState = ruleState
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case ruleDefinition = "RuleDefinition"
        case ruleName = "RuleName"
        case ruleState = "RuleState"
        case tags = "Tags"
    }

    public func validate() throws {
        try ruleDefinition.validateAsInsightRuleDefinition()
        try ruleName.validateAsInsightRuleName()
        try ruleState?.validateAsInsightRuleState()
    }
}

public struct PutInsightRuleOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PutInsightRuleOutputForPutInsightRule: Codable, Equatable {
    public var putInsightRuleResult: PutInsightRuleOutput

    public init(putInsightRuleResult: PutInsightRuleOutput) {
        self.putInsightRuleResult = putInsightRuleResult
    }

    enum CodingKeys: String, CodingKey {
        case putInsightRuleResult = "PutInsightRuleResult"
    }

    public func validate() throws {
        try putInsightRuleResult.validate()
    }
}

public struct PutMetricAlarmInput: Codable, Equatable {
    public var actionsEnabled: ActionsEnabled?
    public var alarmActions: ResourceList?
    public var alarmDescription: AlarmDescription?
    public var alarmName: AlarmName
    public var comparisonOperator: ComparisonOperator
    public var datapointsToAlarm: DatapointsToAlarm?
    public var dimensions: Dimensions?
    public var evaluateLowSampleCountPercentile: EvaluateLowSampleCountPercentile?
    public var evaluationPeriods: EvaluationPeriods
    public var extendedStatistic: ExtendedStatistic?
    public var insufficientDataActions: ResourceList?
    public var metricName: MetricName?
    public var metrics: MetricDataQueries?
    public var namespace: Namespace?
    public var oKActions: ResourceList?
    public var period: Period?
    public var statistic: Statistic?
    public var tags: TagList?
    public var threshold: Threshold?
    public var thresholdMetricId: MetricId?
    public var treatMissingData: TreatMissingData?
    public var unit: StandardUnit?

    public init(actionsEnabled: ActionsEnabled? = nil,
                alarmActions: ResourceList? = nil,
                alarmDescription: AlarmDescription? = nil,
                alarmName: AlarmName,
                comparisonOperator: ComparisonOperator,
                datapointsToAlarm: DatapointsToAlarm? = nil,
                dimensions: Dimensions? = nil,
                evaluateLowSampleCountPercentile: EvaluateLowSampleCountPercentile? = nil,
                evaluationPeriods: EvaluationPeriods,
                extendedStatistic: ExtendedStatistic? = nil,
                insufficientDataActions: ResourceList? = nil,
                metricName: MetricName? = nil,
                metrics: MetricDataQueries? = nil,
                namespace: Namespace? = nil,
                oKActions: ResourceList? = nil,
                period: Period? = nil,
                statistic: Statistic? = nil,
                tags: TagList? = nil,
                threshold: Threshold? = nil,
                thresholdMetricId: MetricId? = nil,
                treatMissingData: TreatMissingData? = nil,
                unit: StandardUnit? = nil) {
        self.actionsEnabled = actionsEnabled
        self.alarmActions = alarmActions
        self.alarmDescription = alarmDescription
        self.alarmName = alarmName
        self.comparisonOperator = comparisonOperator
        self.datapointsToAlarm = datapointsToAlarm
        self.dimensions = dimensions
        self.evaluateLowSampleCountPercentile = evaluateLowSampleCountPercentile
        self.evaluationPeriods = evaluationPeriods
        self.extendedStatistic = extendedStatistic
        self.insufficientDataActions = insufficientDataActions
        self.metricName = metricName
        self.metrics = metrics
        self.namespace = namespace
        self.oKActions = oKActions
        self.period = period
        self.statistic = statistic
        self.tags = tags
        self.threshold = threshold
        self.thresholdMetricId = thresholdMetricId
        self.treatMissingData = treatMissingData
        self.unit = unit
    }

    enum CodingKeys: String, CodingKey {
        case actionsEnabled = "ActionsEnabled"
        case alarmActions = "AlarmActions"
        case alarmDescription = "AlarmDescription"
        case alarmName = "AlarmName"
        case comparisonOperator = "ComparisonOperator"
        case datapointsToAlarm = "DatapointsToAlarm"
        case dimensions = "Dimensions"
        case evaluateLowSampleCountPercentile = "EvaluateLowSampleCountPercentile"
        case evaluationPeriods = "EvaluationPeriods"
        case extendedStatistic = "ExtendedStatistic"
        case insufficientDataActions = "InsufficientDataActions"
        case metricName = "MetricName"
        case metrics = "Metrics"
        case namespace = "Namespace"
        case oKActions = "OKActions"
        case period = "Period"
        case statistic = "Statistic"
        case tags = "Tags"
        case threshold = "Threshold"
        case thresholdMetricId = "ThresholdMetricId"
        case treatMissingData = "TreatMissingData"
        case unit = "Unit"
    }

    public func validate() throws {
        try alarmActions?.validateAsResourceList()
        try alarmDescription?.validateAsAlarmDescription()
        try alarmName.validateAsAlarmName()
        try datapointsToAlarm?.validateAsDatapointsToAlarm()
        try dimensions?.validateAsDimensions()
        try evaluateLowSampleCountPercentile?.validateAsEvaluateLowSampleCountPercentile()
        try evaluationPeriods.validateAsEvaluationPeriods()
        try extendedStatistic?.validateAsExtendedStatistic()
        try insufficientDataActions?.validateAsResourceList()
        try metricName?.validateAsMetricName()
        try namespace?.validateAsNamespace()
        try oKActions?.validateAsResourceList()
        try period?.validateAsPeriod()
        try thresholdMetricId?.validateAsMetricId()
        try treatMissingData?.validateAsTreatMissingData()
    }
}

public struct PutMetricDataInput: Codable, Equatable {
    public var metricData: MetricData
    public var namespace: Namespace

    public init(metricData: MetricData,
                namespace: Namespace) {
        self.metricData = metricData
        self.namespace = namespace
    }

    enum CodingKeys: String, CodingKey {
        case metricData = "MetricData"
        case namespace = "Namespace"
    }

    public func validate() throws {
        try namespace.validateAsNamespace()
    }
}

public struct PutMetricStreamInput: Codable, Equatable {
    public var excludeFilters: MetricStreamFilters?
    public var firehoseArn: AmazonResourceName
    public var includeFilters: MetricStreamFilters?
    public var name: MetricStreamName
    public var outputFormat: MetricStreamOutputFormat
    public var roleArn: AmazonResourceName
    public var statisticsConfigurations: MetricStreamStatisticsConfigurations?
    public var tags: TagList?

    public init(excludeFilters: MetricStreamFilters? = nil,
                firehoseArn: AmazonResourceName,
                includeFilters: MetricStreamFilters? = nil,
                name: MetricStreamName,
                outputFormat: MetricStreamOutputFormat,
                roleArn: AmazonResourceName,
                statisticsConfigurations: MetricStreamStatisticsConfigurations? = nil,
                tags: TagList? = nil) {
        self.excludeFilters = excludeFilters
        self.firehoseArn = firehoseArn
        self.includeFilters = includeFilters
        self.name = name
        self.outputFormat = outputFormat
        self.roleArn = roleArn
        self.statisticsConfigurations = statisticsConfigurations
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case excludeFilters = "ExcludeFilters"
        case firehoseArn = "FirehoseArn"
        case includeFilters = "IncludeFilters"
        case name = "Name"
        case outputFormat = "OutputFormat"
        case roleArn = "RoleArn"
        case statisticsConfigurations = "StatisticsConfigurations"
        case tags = "Tags"
    }

    public func validate() throws {
        try firehoseArn.validateAsAmazonResourceName()
        try name.validateAsMetricStreamName()
        try roleArn.validateAsAmazonResourceName()
    }
}

public struct PutMetricStreamOutput: Codable, Equatable {
    public var arn: AmazonResourceName?

    public init(arn: AmazonResourceName? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
    }

    public func validate() throws {
        try arn?.validateAsAmazonResourceName()
    }
}

public struct PutMetricStreamOutputForPutMetricStream: Codable, Equatable {
    public var putMetricStreamResult: PutMetricStreamOutput

    public init(putMetricStreamResult: PutMetricStreamOutput) {
        self.putMetricStreamResult = putMetricStreamResult
    }

    enum CodingKeys: String, CodingKey {
        case putMetricStreamResult = "PutMetricStreamResult"
    }

    public func validate() throws {
        try putMetricStreamResult.validate()
    }
}

public struct Range: Codable, Equatable {
    public var endTime: Timestamp
    public var startTime: Timestamp

    public init(endTime: Timestamp,
                startTime: Timestamp) {
        self.endTime = endTime
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case endTime = "EndTime"
        case startTime = "StartTime"
    }

    public func validate() throws {
    }
}

public struct ResourceNotFound: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsErrorMessage()
    }
}

public struct ResourceNotFoundException: Codable, Equatable {
    public var resourceId: ResourceId?
    public var resourceType: ResourceType?

    public init(resourceId: ResourceId? = nil,
                resourceType: ResourceType? = nil) {
        self.resourceId = resourceId
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case resourceId = "ResourceId"
        case resourceType = "ResourceType"
    }

    public func validate() throws {
    }
}

public struct SetAlarmStateInput: Codable, Equatable {
    public var alarmName: AlarmName
    public var stateReason: StateReason
    public var stateReasonData: StateReasonData?
    public var stateValue: StateValue

    public init(alarmName: AlarmName,
                stateReason: StateReason,
                stateReasonData: StateReasonData? = nil,
                stateValue: StateValue) {
        self.alarmName = alarmName
        self.stateReason = stateReason
        self.stateReasonData = stateReasonData
        self.stateValue = stateValue
    }

    enum CodingKeys: String, CodingKey {
        case alarmName = "AlarmName"
        case stateReason = "StateReason"
        case stateReasonData = "StateReasonData"
        case stateValue = "StateValue"
    }

    public func validate() throws {
        try alarmName.validateAsAlarmName()
        try stateReason.validateAsStateReason()
        try stateReasonData?.validateAsStateReasonData()
    }
}

public struct SingleMetricAnomalyDetector: Codable, Equatable {
    public var dimensions: Dimensions?
    public var metricName: MetricName?
    public var namespace: Namespace?
    public var stat: AnomalyDetectorMetricStat?

    public init(dimensions: Dimensions? = nil,
                metricName: MetricName? = nil,
                namespace: Namespace? = nil,
                stat: AnomalyDetectorMetricStat? = nil) {
        self.dimensions = dimensions
        self.metricName = metricName
        self.namespace = namespace
        self.stat = stat
    }

    enum CodingKeys: String, CodingKey {
        case dimensions = "Dimensions"
        case metricName = "MetricName"
        case namespace = "Namespace"
        case stat = "Stat"
    }

    public func validate() throws {
        try dimensions?.validateAsDimensions()
        try metricName?.validateAsMetricName()
        try namespace?.validateAsNamespace()
        try stat?.validateAsAnomalyDetectorMetricStat()
    }
}

public struct StartMetricStreamsInput: Codable, Equatable {
    public var names: MetricStreamNames

    public init(names: MetricStreamNames) {
        self.names = names
    }

    enum CodingKeys: String, CodingKey {
        case names = "Names"
    }

    public func validate() throws {
    }
}

public struct StartMetricStreamsOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StartMetricStreamsOutputForStartMetricStreams: Codable, Equatable {
    public var startMetricStreamsResult: StartMetricStreamsOutput

    public init(startMetricStreamsResult: StartMetricStreamsOutput) {
        self.startMetricStreamsResult = startMetricStreamsResult
    }

    enum CodingKeys: String, CodingKey {
        case startMetricStreamsResult = "StartMetricStreamsResult"
    }

    public func validate() throws {
        try startMetricStreamsResult.validate()
    }
}

public struct StatisticSet: Codable, Equatable {
    public var maximum: DatapointValue
    public var minimum: DatapointValue
    public var sampleCount: DatapointValue
    public var sum: DatapointValue

    public init(maximum: DatapointValue,
                minimum: DatapointValue,
                sampleCount: DatapointValue,
                sum: DatapointValue) {
        self.maximum = maximum
        self.minimum = minimum
        self.sampleCount = sampleCount
        self.sum = sum
    }

    enum CodingKeys: String, CodingKey {
        case maximum = "Maximum"
        case minimum = "Minimum"
        case sampleCount = "SampleCount"
        case sum = "Sum"
    }

    public func validate() throws {
    }
}

public struct StopMetricStreamsInput: Codable, Equatable {
    public var names: MetricStreamNames

    public init(names: MetricStreamNames) {
        self.names = names
    }

    enum CodingKeys: String, CodingKey {
        case names = "Names"
    }

    public func validate() throws {
    }
}

public struct StopMetricStreamsOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StopMetricStreamsOutputForStopMetricStreams: Codable, Equatable {
    public var stopMetricStreamsResult: StopMetricStreamsOutput

    public init(stopMetricStreamsResult: StopMetricStreamsOutput) {
        self.stopMetricStreamsResult = stopMetricStreamsResult
    }

    enum CodingKeys: String, CodingKey {
        case stopMetricStreamsResult = "StopMetricStreamsResult"
    }

    public func validate() throws {
        try stopMetricStreamsResult.validate()
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKey
    public var value: TagValue

    public init(key: TagKey,
                value: TagValue) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
        try key.validateAsTagKey()
        try value.validateAsTagValue()
    }
}

public struct TagResourceInput: Codable, Equatable {
    public var resourceARN: AmazonResourceName
    public var tags: TagList

    public init(resourceARN: AmazonResourceName,
                tags: TagList) {
        self.resourceARN = resourceARN
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceARN = "ResourceARN"
        case tags = "Tags"
    }

    public func validate() throws {
        try resourceARN.validateAsAmazonResourceName()
    }
}

public struct TagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TagResourceOutputForTagResource: Codable, Equatable {
    public var tagResourceResult: TagResourceOutput

    public init(tagResourceResult: TagResourceOutput) {
        self.tagResourceResult = tagResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case tagResourceResult = "TagResourceResult"
    }

    public func validate() throws {
        try tagResourceResult.validate()
    }
}

public struct UntagResourceInput: Codable, Equatable {
    public var resourceARN: AmazonResourceName
    public var tagKeys: TagKeyList

    public init(resourceARN: AmazonResourceName,
                tagKeys: TagKeyList) {
        self.resourceARN = resourceARN
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceARN = "ResourceARN"
        case tagKeys = "TagKeys"
    }

    public func validate() throws {
        try resourceARN.validateAsAmazonResourceName()
    }
}

public struct UntagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UntagResourceOutputForUntagResource: Codable, Equatable {
    public var untagResourceResult: UntagResourceOutput

    public init(untagResourceResult: UntagResourceOutput) {
        self.untagResourceResult = untagResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case untagResourceResult = "UntagResourceResult"
    }

    public func validate() throws {
        try untagResourceResult.validate()
    }
}
