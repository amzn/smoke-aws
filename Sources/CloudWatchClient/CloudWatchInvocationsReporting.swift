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
// CloudWatchInvocationsReporting.swift
// CloudWatchClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import CloudWatchModel

/**
 Invocations reporting for the CloudWatchModel.
 */
public struct CloudWatchInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable> {
    public let deleteAlarms: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteAnomalyDetector: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteDashboards: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteMetricStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAlarmHistory: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAlarms: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAlarmsForMetric: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeAnomalyDetectors: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableAlarmActions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableAlarmActions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableInsightRules: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getDashboard: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getInsightRuleReport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getMetricData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getMetricStatistics: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getMetricStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getMetricWidgetImage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listDashboards: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listMetricStreams: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listMetrics: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putAnomalyDetector: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putCompositeAlarm: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putDashboard: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putInsightRule: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putMetricAlarm: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putMetricData: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putMetricStream: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setAlarmState: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let startMetricStreams: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let stopMetricStreams: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: CloudWatchOperationsReporting) {
        self.deleteAlarms = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteAlarms)
        self.deleteAnomalyDetector = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteAnomalyDetector)
        self.deleteDashboards = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteDashboards)
        self.deleteInsightRules = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteInsightRules)
        self.deleteMetricStream = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteMetricStream)
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
        self.getMetricStream = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getMetricStream)
        self.getMetricWidgetImage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getMetricWidgetImage)
        self.listDashboards = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listDashboards)
        self.listMetricStreams = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listMetricStreams)
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
        self.putMetricStream = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putMetricStream)
        self.setAlarmState = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setAlarmState)
        self.startMetricStreams = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startMetricStreams)
        self.stopMetricStreams = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopMetricStreams)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
    }
}
