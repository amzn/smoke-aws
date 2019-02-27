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
// CloudWatchModelTypes.swift
// CloudWatchModel
//

import Foundation

/**
 Type definition for the ActionPrefix field.
 */
public typealias ActionPrefix = String

/**
 Type definition for the ActionsEnabled field.
 */
public typealias ActionsEnabled = Bool

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
 Type definition for the AwsQueryErrorMessage field.
 */
public typealias AwsQueryErrorMessage = String

/**
 Enumeration restricting the values of the ComparisonOperator field.
 */
public enum ComparisonOperator: String, Codable, CustomStringConvertible {
    case greaterthanorequaltothreshold = "GreaterThanOrEqualToThreshold"
    case greaterthanthreshold = "GreaterThanThreshold"
    case lessthanorequaltothreshold = "LessThanOrEqualToThreshold"
    case lessthanthreshold = "LessThanThreshold"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ComparisonOperator = .greaterthanorequaltothreshold
}

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
 Type definition for the ExtendedStatistic field.
 */
public typealias ExtendedStatistic = String

/**
 Type definition for the ExtendedStatistics field.
 */
public typealias ExtendedStatistics = [ExtendedStatistic]

/**
 Type definition for the FaultDescription field.
 */
public typealias FaultDescription = String

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
 Type definition for the LastModified field.
 */
public typealias LastModified = String

/**
 Type definition for the MaxRecords field.
 */
public typealias MaxRecords = Int

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
 Type definition for the ResourceList field.
 */
public typealias ResourceList = [ResourceName]

/**
 Type definition for the ResourceName field.
 */
public typealias ResourceName = String

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
 Validation for the ActionPrefix field.
*/
extension CloudWatchModel.ActionPrefix {
    public func validateAsActionPrefix() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ActionPrefix violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ActionPrefix violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmArn field.
*/
extension CloudWatchModel.AlarmArn {
    public func validateAsAlarmArn() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmArn violated the minimum length constraint.")
        }

        if self.count > 1600 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmDescription field.
*/
extension CloudWatchModel.AlarmDescription {
    public func validateAsAlarmDescription() throws {
        if self.count < 0 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmDescription violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmDescription violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmName field.
*/
extension CloudWatchModel.AlarmName {
    public func validateAsAlarmName() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmNamePrefix field.
*/
extension CloudWatchModel.AlarmNamePrefix {
    public func validateAsAlarmNamePrefix() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmNamePrefix violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmNamePrefix violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AlarmNames field.
*/
extension Array where Element == CloudWatchModel.AlarmName {
    public func validateAsAlarmNames() throws {

        if self.count > 100 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to AlarmNames violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DatapointsToAlarm field.
*/
extension CloudWatchModel.DatapointsToAlarm {
    public func validateAsDatapointsToAlarm() throws {
        if self < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to DatapointsToAlarm violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the DimensionFilters field.
*/
extension Array where Element == CloudWatchModel.DimensionFilter {
    public func validateAsDimensionFilters() throws {

        if self.count > 10 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to DimensionFilters violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DimensionName field.
*/
extension CloudWatchModel.DimensionName {
    public func validateAsDimensionName() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to DimensionName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to DimensionName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DimensionValue field.
*/
extension CloudWatchModel.DimensionValue {
    public func validateAsDimensionValue() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to DimensionValue violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to DimensionValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Dimensions field.
*/
extension Array where Element == CloudWatchModel.Dimension {
    public func validateAsDimensions() throws {

        if self.count > 10 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to Dimensions violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ErrorMessage field.
*/
extension CloudWatchModel.ErrorMessage {
    public func validateAsErrorMessage() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ErrorMessage violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ErrorMessage violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the EvaluateLowSampleCountPercentile field.
*/
extension CloudWatchModel.EvaluateLowSampleCountPercentile {
    public func validateAsEvaluateLowSampleCountPercentile() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to EvaluateLowSampleCountPercentile violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to EvaluateLowSampleCountPercentile violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the EvaluationPeriods field.
*/
extension CloudWatchModel.EvaluationPeriods {
    public func validateAsEvaluationPeriods() throws {
        if self < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to EvaluationPeriods violated the minimum range constraint.")
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
                throw CloudWatchCodingError.validationError(
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
            throw CloudWatchCodingError.validationError(reason: "The provided value to ExtendedStatistics violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ExtendedStatistics violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the HistoryData field.
*/
extension CloudWatchModel.HistoryData {
    public func validateAsHistoryData() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to HistoryData violated the minimum length constraint.")
        }

        if self.count > 4095 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to HistoryData violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the HistorySummary field.
*/
extension CloudWatchModel.HistorySummary {
    public func validateAsHistorySummary() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to HistorySummary violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to HistorySummary violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MaxRecords field.
*/
extension CloudWatchModel.MaxRecords {
    public func validateAsMaxRecords() throws {
        if self < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MaxRecords violated the minimum range constraint.")
        }

        if self > 100 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MaxRecords violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MetricExpression field.
*/
extension CloudWatchModel.MetricExpression {
    public func validateAsMetricExpression() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MetricExpression violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MetricExpression violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MetricId field.
*/
extension CloudWatchModel.MetricId {
    public func validateAsMetricId() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MetricId violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MetricId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MetricName field.
*/
extension CloudWatchModel.MetricName {
    public func validateAsMetricName() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MetricName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to MetricName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Namespace field.
*/
extension CloudWatchModel.Namespace {
    public func validateAsNamespace() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to Namespace violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to Namespace violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[^:].*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CloudWatchCodingError.validationError(
                    reason: "The provided value to Namespace violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the NextToken field.
*/
extension CloudWatchModel.NextToken {
    public func validateAsNextToken() throws {
        if self.count < 0 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to NextToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to NextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Period field.
*/
extension CloudWatchModel.Period {
    public func validateAsPeriod() throws {
        if self < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to Period violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the ResourceList field.
*/
extension Array where Element == CloudWatchModel.ResourceName {
    public func validateAsResourceList() throws {

        if self.count > 5 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ResourceList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceName field.
*/
extension CloudWatchModel.ResourceName {
    public func validateAsResourceName() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ResourceName violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to ResourceName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StateReason field.
*/
extension CloudWatchModel.StateReason {
    public func validateAsStateReason() throws {
        if self.count < 0 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to StateReason violated the minimum length constraint.")
        }

        if self.count > 1023 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to StateReason violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StateReasonData field.
*/
extension CloudWatchModel.StateReasonData {
    public func validateAsStateReasonData() throws {
        if self.count < 0 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to StateReasonData violated the minimum length constraint.")
        }

        if self.count > 4000 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to StateReasonData violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Statistics field.
*/
extension Array where Element == CloudWatchModel.Statistic {
    public func validateAsStatistics() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to Statistics violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to Statistics violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StorageResolution field.
*/
extension CloudWatchModel.StorageResolution {
    public func validateAsStorageResolution() throws {
        if self < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to StorageResolution violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the TreatMissingData field.
*/
extension CloudWatchModel.TreatMissingData {
    public func validateAsTreatMissingData() throws {
        if self.count < 1 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to TreatMissingData violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CloudWatchCodingError.validationError(reason: "The provided value to TreatMissingData violated the maximum length constraint.")
        }
    }
}
