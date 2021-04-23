// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// CloudWatchOperationsReporting.swift
// CloudWatchClient
//

import Foundation
import SmokeAWSCore
import CloudWatchModel

/**
 Operation reporting for the CloudWatchModel.
 */
public struct CloudWatchOperationsReporting {
    public let deleteAlarms: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let deleteAnomalyDetector: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let deleteDashboards: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let deleteInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let deleteMetricStream: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let describeAlarmHistory: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let describeAlarms: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let describeAlarmsForMetric: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let describeAnomalyDetectors: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let describeInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let disableAlarmActions: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let disableInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let enableAlarmActions: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let enableInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let getDashboard: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let getInsightRuleReport: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let getMetricData: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let getMetricStatistics: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let getMetricStream: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let getMetricWidgetImage: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let listDashboards: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let listMetricStreams: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let listMetrics: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let listTagsForResource: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putAnomalyDetector: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putCompositeAlarm: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putDashboard: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putInsightRule: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putMetricAlarm: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putMetricData: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let putMetricStream: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let setAlarmState: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let startMetricStreams: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let stopMetricStreams: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>) {
        self.deleteAlarms = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteAlarms, configuration: reportingConfiguration)
        self.deleteAnomalyDetector = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteAnomalyDetector, configuration: reportingConfiguration)
        self.deleteDashboards = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDashboards, configuration: reportingConfiguration)
        self.deleteInsightRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteInsightRules, configuration: reportingConfiguration)
        self.deleteMetricStream = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteMetricStream, configuration: reportingConfiguration)
        self.describeAlarmHistory = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAlarmHistory, configuration: reportingConfiguration)
        self.describeAlarms = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAlarms, configuration: reportingConfiguration)
        self.describeAlarmsForMetric = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAlarmsForMetric, configuration: reportingConfiguration)
        self.describeAnomalyDetectors = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeAnomalyDetectors, configuration: reportingConfiguration)
        self.describeInsightRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeInsightRules, configuration: reportingConfiguration)
        self.disableAlarmActions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableAlarmActions, configuration: reportingConfiguration)
        self.disableInsightRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableInsightRules, configuration: reportingConfiguration)
        self.enableAlarmActions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableAlarmActions, configuration: reportingConfiguration)
        self.enableInsightRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableInsightRules, configuration: reportingConfiguration)
        self.getDashboard = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getDashboard, configuration: reportingConfiguration)
        self.getInsightRuleReport = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getInsightRuleReport, configuration: reportingConfiguration)
        self.getMetricData = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getMetricData, configuration: reportingConfiguration)
        self.getMetricStatistics = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getMetricStatistics, configuration: reportingConfiguration)
        self.getMetricStream = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getMetricStream, configuration: reportingConfiguration)
        self.getMetricWidgetImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getMetricWidgetImage, configuration: reportingConfiguration)
        self.listDashboards = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listDashboards, configuration: reportingConfiguration)
        self.listMetricStreams = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listMetricStreams, configuration: reportingConfiguration)
        self.listMetrics = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listMetrics, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.putAnomalyDetector = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putAnomalyDetector, configuration: reportingConfiguration)
        self.putCompositeAlarm = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putCompositeAlarm, configuration: reportingConfiguration)
        self.putDashboard = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putDashboard, configuration: reportingConfiguration)
        self.putInsightRule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putInsightRule, configuration: reportingConfiguration)
        self.putMetricAlarm = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putMetricAlarm, configuration: reportingConfiguration)
        self.putMetricData = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putMetricData, configuration: reportingConfiguration)
        self.putMetricStream = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putMetricStream, configuration: reportingConfiguration)
        self.setAlarmState = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setAlarmState, configuration: reportingConfiguration)
        self.startMetricStreams = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startMetricStreams, configuration: reportingConfiguration)
        self.stopMetricStreams = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopMetricStreams, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
    }
}
