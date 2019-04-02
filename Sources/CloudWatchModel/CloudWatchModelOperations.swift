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
// CloudWatchModelOperations.swift
// CloudWatchModel
//

import Foundation

/**
 Operation enumeration for the CloudWatchModel.
 */
public enum CloudWatchModelOperations: String {
    case deleteAlarms = "DeleteAlarms"
    case deleteDashboards = "DeleteDashboards"
    case describeAlarmHistory = "DescribeAlarmHistory"
    case describeAlarms = "DescribeAlarms"
    case describeAlarmsForMetric = "DescribeAlarmsForMetric"
    case disableAlarmActions = "DisableAlarmActions"
    case enableAlarmActions = "EnableAlarmActions"
    case getDashboard = "GetDashboard"
    case getMetricData = "GetMetricData"
    case getMetricStatistics = "GetMetricStatistics"
    case getMetricWidgetImage = "GetMetricWidgetImage"
    case listDashboards = "ListDashboards"
    case listMetrics = "ListMetrics"
    case listTagsForResource = "ListTagsForResource"
    case putDashboard = "PutDashboard"
    case putMetricAlarm = "PutMetricAlarm"
    case putMetricData = "PutMetricData"
    case setAlarmState = "SetAlarmState"
    case tagResource = "TagResource"
    case untagResource = "UntagResource"

    public var operationPath: String {
        switch self {
        case .deleteAlarms:
            return "/"
        case .deleteDashboards:
            return "/"
        case .describeAlarmHistory:
            return "/"
        case .describeAlarms:
            return "/"
        case .describeAlarmsForMetric:
            return "/"
        case .disableAlarmActions:
            return "/"
        case .enableAlarmActions:
            return "/"
        case .getDashboard:
            return "/"
        case .getMetricData:
            return "/"
        case .getMetricStatistics:
            return "/"
        case .getMetricWidgetImage:
            return "/"
        case .listDashboards:
            return "/"
        case .listMetrics:
            return "/"
        case .listTagsForResource:
            return "/"
        case .putDashboard:
            return "/"
        case .putMetricAlarm:
            return "/"
        case .putMetricData:
            return "/"
        case .setAlarmState:
            return "/"
        case .tagResource:
            return "/"
        case .untagResource:
            return "/"
        }
    }
}
