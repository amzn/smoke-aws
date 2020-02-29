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
    let deleteAlarms: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let deleteAnomalyDetector: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let deleteDashboards: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let deleteInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let describeAlarmHistory: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let describeAlarms: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let describeAlarmsForMetric: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let describeAnomalyDetectors: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let describeInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let disableAlarmActions: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let disableInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let enableAlarmActions: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let enableInsightRules: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let getDashboard: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let getInsightRuleReport: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let getMetricData: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let getMetricStatistics: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let getMetricWidgetImage: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let listDashboards: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let listMetrics: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let putAnomalyDetector: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let putDashboard: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let putInsightRule: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let putMetricAlarm: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let putMetricData: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let setAlarmState: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<CloudWatchModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>) {
        self.deleteAlarms = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteAlarms, configuration: reportingConfiguration)
        self.deleteAnomalyDetector = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteAnomalyDetector, configuration: reportingConfiguration)
        self.deleteDashboards = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteDashboards, configuration: reportingConfiguration)
        self.deleteInsightRules = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteInsightRules, configuration: reportingConfiguration)
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
        self.getMetricWidgetImage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getMetricWidgetImage, configuration: reportingConfiguration)
        self.listDashboards = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listDashboards, configuration: reportingConfiguration)
        self.listMetrics = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listMetrics, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.putAnomalyDetector = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putAnomalyDetector, configuration: reportingConfiguration)
        self.putDashboard = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putDashboard, configuration: reportingConfiguration)
        self.putInsightRule = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putInsightRule, configuration: reportingConfiguration)
        self.putMetricAlarm = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putMetricAlarm, configuration: reportingConfiguration)
        self.putMetricData = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putMetricData, configuration: reportingConfiguration)
        self.setAlarmState = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setAlarmState, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
    }
}
