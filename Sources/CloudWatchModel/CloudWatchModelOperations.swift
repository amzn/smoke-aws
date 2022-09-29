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
// CloudWatchModelOperations.swift
// CloudWatchModel
//

import Foundation

/**
 Operation enumeration for the CloudWatchModel.
 */
public enum CloudWatchModelOperations: String, Hashable, CustomStringConvertible {
    case deleteAlarms = "DeleteAlarms"
    case deleteAnomalyDetector = "DeleteAnomalyDetector"
    case deleteDashboards = "DeleteDashboards"
    case deleteInsightRules = "DeleteInsightRules"
    case deleteMetricStream = "DeleteMetricStream"
    case describeAlarmHistory = "DescribeAlarmHistory"
    case describeAlarms = "DescribeAlarms"
    case describeAlarmsForMetric = "DescribeAlarmsForMetric"
    case describeAnomalyDetectors = "DescribeAnomalyDetectors"
    case describeInsightRules = "DescribeInsightRules"
    case disableAlarmActions = "DisableAlarmActions"
    case disableInsightRules = "DisableInsightRules"
    case enableAlarmActions = "EnableAlarmActions"
    case enableInsightRules = "EnableInsightRules"
    case getDashboard = "GetDashboard"
    case getInsightRuleReport = "GetInsightRuleReport"
    case getMetricData = "GetMetricData"
    case getMetricStatistics = "GetMetricStatistics"
    case getMetricStream = "GetMetricStream"
    case getMetricWidgetImage = "GetMetricWidgetImage"
    case listDashboards = "ListDashboards"
    case listManagedInsightRules = "ListManagedInsightRules"
    case listMetricStreams = "ListMetricStreams"
    case listMetrics = "ListMetrics"
    case listTagsForResource = "ListTagsForResource"
    case putAnomalyDetector = "PutAnomalyDetector"
    case putCompositeAlarm = "PutCompositeAlarm"
    case putDashboard = "PutDashboard"
    case putInsightRule = "PutInsightRule"
    case putManagedInsightRules = "PutManagedInsightRules"
    case putMetricAlarm = "PutMetricAlarm"
    case putMetricData = "PutMetricData"
    case putMetricStream = "PutMetricStream"
    case setAlarmState = "SetAlarmState"
    case startMetricStreams = "StartMetricStreams"
    case stopMetricStreams = "StopMetricStreams"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .deleteAlarms:
            return "/"
        case .deleteAnomalyDetector:
            return "/"
        case .deleteDashboards:
            return "/"
        case .deleteInsightRules:
            return "/"
        case .deleteMetricStream:
            return "/"
        case .describeAlarmHistory:
            return "/"
        case .describeAlarms:
            return "/"
        case .describeAlarmsForMetric:
            return "/"
        case .describeAnomalyDetectors:
            return "/"
        case .describeInsightRules:
            return "/"
        case .disableAlarmActions:
            return "/"
        case .disableInsightRules:
            return "/"
        case .enableAlarmActions:
            return "/"
        case .enableInsightRules:
            return "/"
        case .getDashboard:
            return "/"
        case .getInsightRuleReport:
            return "/"
        case .getMetricData:
            return "/"
        case .getMetricStatistics:
            return "/"
        case .getMetricStream:
            return "/"
        case .getMetricWidgetImage:
            return "/"
        case .listDashboards:
            return "/"
        case .listManagedInsightRules:
            return "/"
        case .listMetricStreams:
            return "/"
        case .listMetrics:
            return "/"
        case .listTagsForResource:
            return "/"
        case .putAnomalyDetector:
            return "/"
        case .putCompositeAlarm:
            return "/"
        case .putDashboard:
            return "/"
        case .putInsightRule:
            return "/"
        case .putManagedInsightRules:
            return "/"
        case .putMetricAlarm:
            return "/"
        case .putMetricData:
            return "/"
        case .putMetricStream:
            return "/"
        case .setAlarmState:
            return "/"
        case .startMetricStreams:
            return "/"
        case .stopMetricStreams:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        }
    }
}
