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
// CloudWatchModelTypes.swift
// CloudWatchModel
//

import Foundation

/**
 Type definition for the AccountId field.
 */
public typealias AccountId = String

/**
 Type definition for the ActionPrefix field.
 */
public typealias ActionPrefix = String

/**
 Type definition for the ActionsEnabled field.
 */
public typealias ActionsEnabled = Bool

/**
 Enumeration restricting the values of the ActionsSuppressedBy field.
 */
public enum ActionsSuppressedBy: String, Codable, CustomStringConvertible {
    case alarm = "Alarm"
    case extensionperiod = "ExtensionPeriod"
    case waitperiod = "WaitPeriod"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActionsSuppressedBy = .alarm
}

/**
 Type definition for the ActionsSuppressedReason field.
 */
public typealias ActionsSuppressedReason = String

/**
 Type definition for the AlarmArn field.
 */
public typealias AlarmArn = String

/**
 Type definition for the AlarmDescription field.
 */
public typealias AlarmDescription = String

/**
 Type definition for the AlarmHistoryItems field.
 */
public typealias AlarmHistoryItems = [AlarmHistoryItem]

/**
 Type definition for the AlarmName field.
 */
public typealias AlarmName = String

/**
 Type definition for the AlarmNamePrefix field.
 */
public typealias AlarmNamePrefix = String

/**
 Type definition for the AlarmNames field.
 */
public typealias AlarmNames = [AlarmName]

/**
 Type definition for the AlarmRule field.
 */
public typealias AlarmRule = String

/**
 Enumeration restricting the values of the AlarmType field.
 */
public enum AlarmType: String, Codable, CustomStringConvertible {
    case compositealarm = "CompositeAlarm"
    case metricalarm = "MetricAlarm"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AlarmType = .compositealarm
}

/**
 Type definition for the AlarmTypes field.
 */
public typealias AlarmTypes = [AlarmType]

/**
 Type definition for the AmazonResourceName field.
 */
public typealias AmazonResourceName = String

/**
 Type definition for the AnomalyDetectorExcludedTimeRanges field.
 */
public typealias AnomalyDetectorExcludedTimeRanges = [Range]

/**
 Type definition for the AnomalyDetectorMetricStat field.
 */
public typealias AnomalyDetectorMetricStat = String

/**
 Type definition for the AnomalyDetectorMetricTimezone field.
 */
public typealias AnomalyDetectorMetricTimezone = String

/**
 Enumeration restricting the values of the AnomalyDetectorStateValue field.
 */
public enum AnomalyDetectorStateValue: String, Codable, CustomStringConvertible {
    case pendingTraining = "PENDING_TRAINING"
    case trained = "TRAINED"
    case trainedInsufficientData = "TRAINED_INSUFFICIENT_DATA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AnomalyDetectorStateValue = .pendingTraining
}

/**
 Enumeration restricting the values of the AnomalyDetectorType field.
 */
public enum AnomalyDetectorType: String, Codable, CustomStringConvertible {
    case metricMath = "METRIC_MATH"
    case singleMetric = "SINGLE_METRIC"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AnomalyDetectorType = .metricMath
}

/**
 Type definition for the AnomalyDetectorTypes field.
 */
public typealias AnomalyDetectorTypes = [AnomalyDetectorType]

/**
 Type definition for the AnomalyDetectors field.
 */
public typealias AnomalyDetectors = [AnomalyDetector]

/**
 Type definition for the AwsQueryErrorMessage field.
 */
public typealias AwsQueryErrorMessage = String

/**
 Type definition for the BatchFailures field.
 */
public typealias BatchFailures = [PartialFailure]

/**
 Enumeration restricting the values of the ComparisonOperator field.
 */
public enum ComparisonOperator: String, Codable, CustomStringConvertible {
    case greaterthanorequaltothreshold = "GreaterThanOrEqualToThreshold"
    case greaterthanthreshold = "GreaterThanThreshold"
    case greaterthanupperthreshold = "GreaterThanUpperThreshold"
    case lessthanlowerorgreaterthanupperthreshold = "LessThanLowerOrGreaterThanUpperThreshold"
    case lessthanlowerthreshold = "LessThanLowerThreshold"
    case lessthanorequaltothreshold = "LessThanOrEqualToThreshold"
    case lessthanthreshold = "LessThanThreshold"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ComparisonOperator = .greaterthanorequaltothreshold
}

/**
 Type definition for the CompositeAlarms field.
 */
public typealias CompositeAlarms = [CompositeAlarm]

/**
 Type definition for the Counts field.
 */
public typealias Counts = [DatapointValue]

/**
 Type definition for the DashboardArn field.
 */
public typealias DashboardArn = String

/**
 Type definition for the DashboardBody field.
 */
public typealias DashboardBody = String

/**
 Type definition for the DashboardEntries field.
 */
public typealias DashboardEntries = [DashboardEntry]

/**
 Type definition for the DashboardErrorMessage field.
 */
public typealias DashboardErrorMessage = String

/**
 Type definition for the DashboardName field.
 */
public typealias DashboardName = String

/**
 Type definition for the DashboardNamePrefix field.
 */
public typealias DashboardNamePrefix = String

/**
 Type definition for the DashboardNames field.
 */
public typealias DashboardNames = [DashboardName]

/**
 Type definition for the DashboardValidationMessages field.
 */
public typealias DashboardValidationMessages = [DashboardValidationMessage]

/**
 Type definition for the DataPath field.
 */
public typealias DataPath = String

/**
 Type definition for the DatapointValue field.
 */
public typealias DatapointValue = Double

/**
 Type definition for the DatapointValueMap field.
 */
public typealias DatapointValueMap = [ExtendedStatistic: DatapointValue]

/**
 Type definition for the DatapointValues field.
 */
public typealias DatapointValues = [DatapointValue]

/**
 Type definition for the Datapoints field.
 */
public typealias Datapoints = [Datapoint]

/**
 Type definition for the DatapointsToAlarm field.
 */
public typealias DatapointsToAlarm = Int

/**
 Type definition for the DimensionFilters field.
 */
public typealias DimensionFilters = [DimensionFilter]

/**
 Type definition for the DimensionName field.
 */
public typealias DimensionName = String

/**
 Type definition for the DimensionValue field.
 */
public typealias DimensionValue = String

/**
 Type definition for the Dimensions field.
 */
public typealias Dimensions = [Dimension]

/**
 Type definition for the ErrorMessage field.
 */
public typealias ErrorMessage = String

/**
 Type definition for the EvaluateLowSampleCountPercentile field.
 */
public typealias EvaluateLowSampleCountPercentile = String

/**
 Type definition for the EvaluationPeriods field.
 */
public typealias EvaluationPeriods = Int

/**
 Type definition for the ExceptionType field.
 */
public typealias ExceptionType = String

/**
 Type definition for the ExtendedStatistic field.
 */
public typealias ExtendedStatistic = String

/**
 Type definition for the ExtendedStatistics field.
 */
public typealias ExtendedStatistics = [ExtendedStatistic]

/**
 Type definition for the FailureCode field.
 */
public typealias FailureCode = String

/**
 Type definition for the FailureDescription field.
 */
public typealias FailureDescription = String

/**
 Type definition for the FailureResource field.
 */
public typealias FailureResource = String

/**
 Type definition for the FaultDescription field.
 */
public typealias FaultDescription = String

/**
 Type definition for the GetMetricDataLabelTimezone field.
 */
public typealias GetMetricDataLabelTimezone = String

/**
 Type definition for the GetMetricDataMaxDatapoints field.
 */
public typealias GetMetricDataMaxDatapoints = Int

/**
 Type definition for the HistoryData field.
 */
public typealias HistoryData = String

/**
 Enumeration restricting the values of the HistoryItemType field.
 */
public enum HistoryItemType: String, Codable, CustomStringConvertible {
    case action = "Action"
    case configurationupdate = "ConfigurationUpdate"
    case stateupdate = "StateUpdate"

    public var description: String {
        return rawValue
    }
    
    public static let __default: HistoryItemType = .action
}

/**
 Type definition for the HistorySummary field.
 */
public typealias HistorySummary = String

/**
 Type definition for the InsightRuleAggregationStatistic field.
 */
public typealias InsightRuleAggregationStatistic = String

/**
 Type definition for the InsightRuleContributorDatapoints field.
 */
public typealias InsightRuleContributorDatapoints = [InsightRuleContributorDatapoint]

/**
 Type definition for the InsightRuleContributorKey field.
 */
public typealias InsightRuleContributorKey = String

/**
 Type definition for the InsightRuleContributorKeyLabel field.
 */
public typealias InsightRuleContributorKeyLabel = String

/**
 Type definition for the InsightRuleContributorKeyLabels field.
 */
public typealias InsightRuleContributorKeyLabels = [InsightRuleContributorKeyLabel]

/**
 Type definition for the InsightRuleContributorKeys field.
 */
public typealias InsightRuleContributorKeys = [InsightRuleContributorKey]

/**
 Type definition for the InsightRuleContributors field.
 */
public typealias InsightRuleContributors = [InsightRuleContributor]

/**
 Type definition for the InsightRuleDefinition field.
 */
public typealias InsightRuleDefinition = String

/**
 Type definition for the InsightRuleMaxResults field.
 */
public typealias InsightRuleMaxResults = Int

/**
 Type definition for the InsightRuleMetricDatapoints field.
 */
public typealias InsightRuleMetricDatapoints = [InsightRuleMetricDatapoint]

/**
 Type definition for the InsightRuleMetricList field.
 */
public typealias InsightRuleMetricList = [InsightRuleMetricName]

/**
 Type definition for the InsightRuleMetricName field.
 */
public typealias InsightRuleMetricName = String

/**
 Type definition for the InsightRuleName field.
 */
public typealias InsightRuleName = String

/**
 Type definition for the InsightRuleNames field.
 */
public typealias InsightRuleNames = [InsightRuleName]

/**
 Type definition for the InsightRuleOrderBy field.
 */
public typealias InsightRuleOrderBy = String

/**
 Type definition for the InsightRuleSchema field.
 */
public typealias InsightRuleSchema = String

/**
 Type definition for the InsightRuleState field.
 */
public typealias InsightRuleState = String

/**
 Type definition for the InsightRuleUnboundDouble field.
 */
public typealias InsightRuleUnboundDouble = Double

/**
 Type definition for the InsightRuleUnboundInteger field.
 */
public typealias InsightRuleUnboundInteger = Int

/**
 Type definition for the InsightRuleUnboundLong field.
 */
public typealias InsightRuleUnboundLong = Int

/**
 Type definition for the InsightRules field.
 */
public typealias InsightRules = [InsightRule]

/**
 Type definition for the LastModified field.
 */
public typealias LastModified = String

/**
 Type definition for the ListMetricStreamsMaxResults field.
 */
public typealias ListMetricStreamsMaxResults = Int

/**
 Type definition for the MaxRecords field.
 */
public typealias MaxRecords = Int

/**
 Type definition for the MaxReturnedResultsCount field.
 */
public typealias MaxReturnedResultsCount = Int

/**
 Type definition for the Message field.
 */
public typealias Message = String

/**
 Type definition for the MessageDataCode field.
 */
public typealias MessageDataCode = String

/**
 Type definition for the MessageDataValue field.
 */
public typealias MessageDataValue = String

/**
 Type definition for the MetricAlarms field.
 */
public typealias MetricAlarms = [MetricAlarm]

/**
 Type definition for the MetricData field.
 */
public typealias MetricData = [MetricDatum]

/**
 Type definition for the MetricDataQueries field.
 */
public typealias MetricDataQueries = [MetricDataQuery]

/**
 Type definition for the MetricDataResultMessages field.
 */
public typealias MetricDataResultMessages = [MessageData]

/**
 Type definition for the MetricDataResults field.
 */
public typealias MetricDataResults = [MetricDataResult]

/**
 Type definition for the MetricExpression field.
 */
public typealias MetricExpression = String

/**
 Type definition for the MetricId field.
 */
public typealias MetricId = String

/**
 Type definition for the MetricLabel field.
 */
public typealias MetricLabel = String

/**
 Type definition for the MetricName field.
 */
public typealias MetricName = String

/**
 Type definition for the MetricStreamEntries field.
 */
public typealias MetricStreamEntries = [MetricStreamEntry]

/**
 Type definition for the MetricStreamFilters field.
 */
public typealias MetricStreamFilters = [MetricStreamFilter]

/**
 Type definition for the MetricStreamName field.
 */
public typealias MetricStreamName = String

/**
 Type definition for the MetricStreamNames field.
 */
public typealias MetricStreamNames = [MetricStreamName]

/**
 Enumeration restricting the values of the MetricStreamOutputFormat field.
 */
public enum MetricStreamOutputFormat: String, Codable, CustomStringConvertible {
    case json
    case opentelemetry07 = "opentelemetry0.7"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MetricStreamOutputFormat = .json
}

/**
 Type definition for the MetricStreamState field.
 */
public typealias MetricStreamState = String

/**
 Type definition for the MetricStreamStatistic field.
 */
public typealias MetricStreamStatistic = String

/**
 Type definition for the MetricStreamStatisticsAdditionalStatistics field.
 */
public typealias MetricStreamStatisticsAdditionalStatistics = [MetricStreamStatistic]

/**
 Type definition for the MetricStreamStatisticsConfigurations field.
 */
public typealias MetricStreamStatisticsConfigurations = [MetricStreamStatisticsConfiguration]

/**
 Type definition for the MetricStreamStatisticsIncludeMetrics field.
 */
public typealias MetricStreamStatisticsIncludeMetrics = [MetricStreamStatisticsMetric]

/**
 Type definition for the MetricWidget field.
 */
public typealias MetricWidget = String

/**
 Type definition for the MetricWidgetImage field.
 */
public typealias MetricWidgetImage = Data

/**
 Type definition for the Metrics field.
 */
public typealias Metrics = [Metric]

/**
 Type definition for the Namespace field.
 */
public typealias Namespace = String

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the OutputFormat field.
 */
public typealias OutputFormat = String

/**
 Type definition for the Period field.
 */
public typealias Period = Int

/**
 Enumeration restricting the values of the RecentlyActive field.
 */
public enum RecentlyActive: String, Codable, CustomStringConvertible {
    case pt3h = "PT3H"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RecentlyActive = .pt3h
}

/**
 Type definition for the ResourceId field.
 */
public typealias ResourceId = String

/**
 Type definition for the ResourceList field.
 */
public typealias ResourceList = [ResourceName]

/**
 Type definition for the ResourceName field.
 */
public typealias ResourceName = String

/**
 Type definition for the ResourceType field.
 */
public typealias ResourceType = String

/**
 Type definition for the ReturnData field.
 */
public typealias ReturnData = Bool

/**
 Enumeration restricting the values of the ScanBy field.
 */
public enum ScanBy: String, Codable, CustomStringConvertible {
    case timestampascending = "TimestampAscending"
    case timestampdescending = "TimestampDescending"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScanBy = .timestampascending
}

/**
 Type definition for the Size field.
 */
public typealias Size = Int

/**
 Enumeration restricting the values of the StandardUnit field.
 */
public enum StandardUnit: String, Codable, CustomStringConvertible {
    case bits = "Bits"
    case bitsSecond = "Bits/Second"
    case bytes = "Bytes"
    case bytesSecond = "Bytes/Second"
    case count = "Count"
    case countSecond = "Count/Second"
    case gigabits = "Gigabits"
    case gigabitsSecond = "Gigabits/Second"
    case gigabytes = "Gigabytes"
    case gigabytesSecond = "Gigabytes/Second"
    case kilobits = "Kilobits"
    case kilobitsSecond = "Kilobits/Second"
    case kilobytes = "Kilobytes"
    case kilobytesSecond = "Kilobytes/Second"
    case megabits = "Megabits"
    case megabitsSecond = "Megabits/Second"
    case megabytes = "Megabytes"
    case megabytesSecond = "Megabytes/Second"
    case microseconds = "Microseconds"
    case milliseconds = "Milliseconds"
    case none = "None"
    case percent = "Percent"
    case seconds = "Seconds"
    case terabits = "Terabits"
    case terabitsSecond = "Terabits/Second"
    case terabytes = "Terabytes"
    case terabytesSecond = "Terabytes/Second"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StandardUnit = .bits
}

/**
 Type definition for the Stat field.
 */
public typealias Stat = String

/**
 Type definition for the StateReason field.
 */
public typealias StateReason = String

/**
 Type definition for the StateReasonData field.
 */
public typealias StateReasonData = String

/**
 Enumeration restricting the values of the StateValue field.
 */
public enum StateValue: String, Codable, CustomStringConvertible {
    case alarm = "ALARM"
    case insufficientData = "INSUFFICIENT_DATA"
    case ok = "OK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StateValue = .alarm
}

/**
 Enumeration restricting the values of the Statistic field.
 */
public enum Statistic: String, Codable, CustomStringConvertible {
    case average = "Average"
    case maximum = "Maximum"
    case minimum = "Minimum"
    case samplecount = "SampleCount"
    case sum = "Sum"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Statistic = .average
}

/**
 Type definition for the Statistics field.
 */
public typealias Statistics = [Statistic]

/**
 Enumeration restricting the values of the StatusCode field.
 */
public enum StatusCode: String, Codable, CustomStringConvertible {
    case complete = "Complete"
    case internalerror = "InternalError"
    case partialdata = "PartialData"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StatusCode = .complete
}

/**
 Type definition for the StorageResolution field.
 */
public typealias StorageResolution = Int

/**
 Type definition for the SuppressorPeriod field.
 */
public typealias SuppressorPeriod = Int

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Threshold field.
 */
public typealias Threshold = Double

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = String

/**
 Type definition for the Timestamps field.
 */
public typealias Timestamps = [Timestamp]

/**
 Type definition for the TreatMissingData field.
 */
public typealias TreatMissingData = String

/**
 Type definition for the Values field.
 */
public typealias Values = [DatapointValue]

/**
 Validation for the AccountId field.
*/
extension CloudWatchModel.AccountId {
    public func validateAsAccountId() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to AccountId violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to AccountId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ActionPrefix field.
*/
extension CloudWatchModel.ActionPrefix {
    public func validateAsActionPrefix() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to ActionPrefix violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchError.validationError(reason: "The provided value to ActionPrefix violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ActionsSuppressedReason field.
*/
extension CloudWatchModel.ActionsSuppressedReason {
    public func validateAsActionsSuppressedReason() throws {
        if self.count < 0 {
            throw CloudWatchError.validationError(reason: "The provided value to ActionsSuppressedReason violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchError.validationError(reason: "The provided value to ActionsSuppressedReason violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmArn field.
*/
extension CloudWatchModel.AlarmArn {
    public func validateAsAlarmArn() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmDescription field.
*/
extension CloudWatchModel.AlarmDescription {
    public func validateAsAlarmDescription() throws {
        if self.count < 0 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmDescription violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmDescription violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmName field.
*/
extension CloudWatchModel.AlarmName {
    public func validateAsAlarmName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmNamePrefix field.
*/
extension CloudWatchModel.AlarmNamePrefix {
    public func validateAsAlarmNamePrefix() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmNamePrefix violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmNamePrefix violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmNames field.
*/
extension Array where Element == CloudWatchModel.AlarmName {
    public func validateAsAlarmNames() throws {

        if self.count > 100 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmNames violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmRule field.
*/
extension CloudWatchModel.AlarmRule {
    public func validateAsAlarmRule() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmRule violated the minimum length constraint.")
        }

        if self.count > 10240 {
            throw CloudWatchError.validationError(reason: "The provided value to AlarmRule violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AmazonResourceName field.
*/
extension CloudWatchModel.AmazonResourceName {
    public func validateAsAmazonResourceName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to AmazonResourceName violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchError.validationError(reason: "The provided value to AmazonResourceName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AnomalyDetectorMetricStat field.
*/
extension CloudWatchModel.AnomalyDetectorMetricStat {
    public func validateAsAnomalyDetectorMetricStat() throws {

        if self.count > 50 {
            throw CloudWatchError.validationError(reason: "The provided value to AnomalyDetectorMetricStat violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "(SampleCount|Average|Sum|Minimum|Maximum|IQM|(p|tc|tm|ts|wm)(\\d{1,2}(\\.\\d{0,10})?|100)|[ou]\\d+(\\.\\d*)?)(_E|_L|_H)?|(TM|TC|TS|WM)\\(((((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%)?:((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%|((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%:(((\\d{1,2})(\\.\\d{0,10})?|100(\\.0{0,10})?)%)?)\\)|(TM|TC|TS|WM|PR)\\(((\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)):((\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)))?|((\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)))?:(\\d+(\\.\\d{0,10})?|(\\d+(\\.\\d{0,10})?[Ee][+-]?\\d+)))\\)", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to AnomalyDetectorMetricStat violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AnomalyDetectorMetricTimezone field.
*/
extension CloudWatchModel.AnomalyDetectorMetricTimezone {
    public func validateAsAnomalyDetectorMetricTimezone() throws {

        if self.count > 50 {
            throw CloudWatchError.validationError(reason: "The provided value to AnomalyDetectorMetricTimezone violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: ".*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to AnomalyDetectorMetricTimezone violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AnomalyDetectorTypes field.
*/
extension Array where Element == CloudWatchModel.AnomalyDetectorType {
    public func validateAsAnomalyDetectorTypes() throws {

        if self.count > 2 {
            throw CloudWatchError.validationError(reason: "The provided value to AnomalyDetectorTypes violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DatapointsToAlarm field.
*/
extension CloudWatchModel.DatapointsToAlarm {
    public func validateAsDatapointsToAlarm() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to DatapointsToAlarm violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the DimensionFilters field.
*/
extension Array where Element == CloudWatchModel.DimensionFilter {
    public func validateAsDimensionFilters() throws {

        if self.count > 10 {
            throw CloudWatchError.validationError(reason: "The provided value to DimensionFilters violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DimensionName field.
*/
extension CloudWatchModel.DimensionName {
    public func validateAsDimensionName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to DimensionName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to DimensionName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DimensionValue field.
*/
extension CloudWatchModel.DimensionValue {
    public func validateAsDimensionValue() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to DimensionValue violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to DimensionValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Dimensions field.
*/
extension Array where Element == CloudWatchModel.Dimension {
    public func validateAsDimensions() throws {

        if self.count > 10 {
            throw CloudWatchError.validationError(reason: "The provided value to Dimensions violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ErrorMessage field.
*/
extension CloudWatchModel.ErrorMessage {
    public func validateAsErrorMessage() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to ErrorMessage violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to ErrorMessage violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the EvaluateLowSampleCountPercentile field.
*/
extension CloudWatchModel.EvaluateLowSampleCountPercentile {
    public func validateAsEvaluateLowSampleCountPercentile() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to EvaluateLowSampleCountPercentile violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to EvaluateLowSampleCountPercentile violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the EvaluationPeriods field.
*/
extension CloudWatchModel.EvaluationPeriods {
    public func validateAsEvaluationPeriods() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to EvaluationPeriods violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ExtendedStatistic field.
*/
extension CloudWatchModel.ExtendedStatistic {
    public func validateAsExtendedStatistic() throws {
        guard let matchingRange = self.range(of: "p(\\d{1,2}(\\.\\d{0,2})?|100)", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to ExtendedStatistic violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ExtendedStatistics field.
*/
extension Array where Element == CloudWatchModel.ExtendedStatistic {
    public func validateAsExtendedStatistics() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to ExtendedStatistics violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw CloudWatchError.validationError(reason: "The provided value to ExtendedStatistics violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the HistoryData field.
*/
extension CloudWatchModel.HistoryData {
    public func validateAsHistoryData() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to HistoryData violated the minimum length constraint.")
        }

        if self.count > 4095 {
            throw CloudWatchError.validationError(reason: "The provided value to HistoryData violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the HistorySummary field.
*/
extension CloudWatchModel.HistorySummary {
    public func validateAsHistorySummary() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to HistorySummary violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to HistorySummary violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the InsightRuleDefinition field.
*/
extension CloudWatchModel.InsightRuleDefinition {
    public func validateAsInsightRuleDefinition() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleDefinition violated the minimum length constraint.")
        }

        if self.count > 8192 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleDefinition violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\x00-\\x7F]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to InsightRuleDefinition violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the InsightRuleMaxResults field.
*/
extension CloudWatchModel.InsightRuleMaxResults {
    public func validateAsInsightRuleMaxResults() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleMaxResults violated the minimum range constraint.")
        }

        if self > 500 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the InsightRuleMetricName field.
*/
extension CloudWatchModel.InsightRuleMetricName {
    public func validateAsInsightRuleMetricName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleMetricName violated the minimum length constraint.")
        }

        if self.count > 32 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleMetricName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\x20-\\x7E]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to InsightRuleMetricName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the InsightRuleName field.
*/
extension CloudWatchModel.InsightRuleName {
    public func validateAsInsightRuleName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\x20-\\x7E]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to InsightRuleName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the InsightRuleOrderBy field.
*/
extension CloudWatchModel.InsightRuleOrderBy {
    public func validateAsInsightRuleOrderBy() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleOrderBy violated the minimum length constraint.")
        }

        if self.count > 32 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleOrderBy violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\x20-\\x7E]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to InsightRuleOrderBy violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the InsightRuleState field.
*/
extension CloudWatchModel.InsightRuleState {
    public func validateAsInsightRuleState() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleState violated the minimum length constraint.")
        }

        if self.count > 32 {
            throw CloudWatchError.validationError(reason: "The provided value to InsightRuleState violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\x20-\\x7E]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to InsightRuleState violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ListMetricStreamsMaxResults field.
*/
extension CloudWatchModel.ListMetricStreamsMaxResults {
    public func validateAsListMetricStreamsMaxResults() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to ListMetricStreamsMaxResults violated the minimum range constraint.")
        }

        if self > 500 {
            throw CloudWatchError.validationError(reason: "The provided value to ListMetricStreamsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaxRecords field.
*/
extension CloudWatchModel.MaxRecords {
    public func validateAsMaxRecords() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to MaxRecords violated the minimum range constraint.")
        }

        if self > 100 {
            throw CloudWatchError.validationError(reason: "The provided value to MaxRecords violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaxReturnedResultsCount field.
*/
extension CloudWatchModel.MaxReturnedResultsCount {
    public func validateAsMaxReturnedResultsCount() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to MaxReturnedResultsCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the MetricExpression field.
*/
extension CloudWatchModel.MetricExpression {
    public func validateAsMetricExpression() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricExpression violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricExpression violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MetricId field.
*/
extension CloudWatchModel.MetricId {
    public func validateAsMetricId() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricId violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MetricName field.
*/
extension CloudWatchModel.MetricName {
    public func validateAsMetricName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MetricStreamName field.
*/
extension CloudWatchModel.MetricStreamName {
    public func validateAsMetricStreamName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricStreamName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to MetricStreamName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Namespace field.
*/
extension CloudWatchModel.Namespace {
    public func validateAsNamespace() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to Namespace violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to Namespace violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^:].*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchError.validationError(
                    reason: "The provided value to Namespace violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Period field.
*/
extension CloudWatchModel.Period {
    public func validateAsPeriod() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to Period violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ResourceList field.
*/
extension Array where Element == CloudWatchModel.ResourceName {
    public func validateAsResourceList() throws {

        if self.count > 5 {
            throw CloudWatchError.validationError(reason: "The provided value to ResourceList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceName field.
*/
extension CloudWatchModel.ResourceName {
    public func validateAsResourceName() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to ResourceName violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchError.validationError(reason: "The provided value to ResourceName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StateReason field.
*/
extension CloudWatchModel.StateReason {
    public func validateAsStateReason() throws {
        if self.count < 0 {
            throw CloudWatchError.validationError(reason: "The provided value to StateReason violated the minimum length constraint.")
        }

        if self.count > 1023 {
            throw CloudWatchError.validationError(reason: "The provided value to StateReason violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StateReasonData field.
*/
extension CloudWatchModel.StateReasonData {
    public func validateAsStateReasonData() throws {
        if self.count < 0 {
            throw CloudWatchError.validationError(reason: "The provided value to StateReasonData violated the minimum length constraint.")
        }

        if self.count > 4000 {
            throw CloudWatchError.validationError(reason: "The provided value to StateReasonData violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Statistics field.
*/
extension Array where Element == CloudWatchModel.Statistic {
    public func validateAsStatistics() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to Statistics violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw CloudWatchError.validationError(reason: "The provided value to Statistics violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StorageResolution field.
*/
extension CloudWatchModel.StorageResolution {
    public func validateAsStorageResolution() throws {
        if self < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to StorageResolution violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the TagKey field.
*/
extension CloudWatchModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CloudWatchError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension CloudWatchModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 0 {
            throw CloudWatchError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw CloudWatchError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TreatMissingData field.
*/
extension CloudWatchModel.TreatMissingData {
    public func validateAsTreatMissingData() throws {
        if self.count < 1 {
            throw CloudWatchError.validationError(reason: "The provided value to TreatMissingData violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchError.validationError(reason: "The provided value to TreatMissingData violated the maximum length constraint.")
        }
    }
}
