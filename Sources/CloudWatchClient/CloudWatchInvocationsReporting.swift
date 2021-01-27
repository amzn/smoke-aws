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
// CloudWatchInvocationsReporting.swift
// CloudWatchClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import CloudWatchModel

/**
 Operation reporting for the CloudWatchModel.
 */
public struct CloudWatchInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let deleteAlarms: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteAnomalyDetector: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteDashboards: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAlarmHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAlarms: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAlarmsForMetric: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeAnomalyDetectors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableAlarmActions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let disableInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableAlarmActions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let enableInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getDashboard: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getInsightRuleReport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getMetricData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getMetricStatistics: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getMetricWidgetImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listDashboards: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listMetrics: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putAnomalyDetector: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putCompositeAlarm: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putDashboard: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putInsightRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putMetricAlarm: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putMetricData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setAlarmState: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: CloudWatchOperationsReporting) {
        self.deleteAlarms = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteAlarms)
        self.deleteAnomalyDetector = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteAnomalyDetector)
        self.deleteDashboards = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDashboards)
        self.deleteInsightRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteInsightRules)
        self.describeAlarmHistory = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAlarmHistory)
        self.describeAlarms = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAlarms)
        self.describeAlarmsForMetric = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAlarmsForMetric)
        self.describeAnomalyDetectors = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeAnomalyDetectors)
        self.describeInsightRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeInsightRules)
        self.disableAlarmActions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableAlarmActions)
        self.disableInsightRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableInsightRules)
        self.enableAlarmActions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableAlarmActions)
        self.enableInsightRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableInsightRules)
        self.getDashboard = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getDashboard)
        self.getInsightRuleReport = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getInsightRuleReport)
        self.getMetricData = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getMetricData)
        self.getMetricStatistics = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getMetricStatistics)
        self.getMetricWidgetImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getMetricWidgetImage)
        self.listDashboards = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listDashboards)
        self.listMetrics = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listMetrics)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.putAnomalyDetector = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putAnomalyDetector)
        self.putCompositeAlarm = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putCompositeAlarm)
        self.putDashboard = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putDashboard)
        self.putInsightRule = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putInsightRule)
        self.putMetricAlarm = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putMetricAlarm)
        self.putMetricData = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putMetricData)
        self.setAlarmState = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setAlarmState)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
    }
}
