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
// -- Generated Code; do not edit --
//
// CloudWatchOperationsClientOutput.swift
// CloudWatchClient
//

import Foundation
import SmokeHTTPClient
import CloudWatchModel

/**
 Type to handle the output from the DeleteAnomalyDetector operation in a HTTP client.
 */
extension DeleteAnomalyDetectorOutputForDeleteAnomalyDetector: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteAnomalyDetectorOutputForDeleteAnomalyDetector
    public typealias HeadersType = DeleteAnomalyDetectorOutputForDeleteAnomalyDetector

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteDashboards operation in a HTTP client.
 */
extension DeleteDashboardsOutputForDeleteDashboards: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteDashboardsOutputForDeleteDashboards
    public typealias HeadersType = DeleteDashboardsOutputForDeleteDashboards

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteDashboardsOutputForDeleteDashboards {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteInsightRules operation in a HTTP client.
 */
extension DeleteInsightRulesOutputForDeleteInsightRules: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteInsightRulesOutputForDeleteInsightRules
    public typealias HeadersType = DeleteInsightRulesOutputForDeleteInsightRules

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteInsightRulesOutputForDeleteInsightRules {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAlarmHistory operation in a HTTP client.
 */
extension DescribeAlarmHistoryOutputForDescribeAlarmHistory: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAlarmHistoryOutputForDescribeAlarmHistory
    public typealias HeadersType = DescribeAlarmHistoryOutputForDescribeAlarmHistory

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAlarms operation in a HTTP client.
 */
extension DescribeAlarmsOutputForDescribeAlarms: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAlarmsOutputForDescribeAlarms
    public typealias HeadersType = DescribeAlarmsOutputForDescribeAlarms

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAlarmsOutputForDescribeAlarms {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAlarmsForMetric operation in a HTTP client.
 */
extension DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
    public typealias HeadersType = DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeAnomalyDetectors operation in a HTTP client.
 */
extension DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors
    public typealias HeadersType = DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DescribeInsightRules operation in a HTTP client.
 */
extension DescribeInsightRulesOutputForDescribeInsightRules: HTTPResponseOutputProtocol {
    public typealias BodyType = DescribeInsightRulesOutputForDescribeInsightRules
    public typealias HeadersType = DescribeInsightRulesOutputForDescribeInsightRules

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DescribeInsightRulesOutputForDescribeInsightRules {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DisableInsightRules operation in a HTTP client.
 */
extension DisableInsightRulesOutputForDisableInsightRules: HTTPResponseOutputProtocol {
    public typealias BodyType = DisableInsightRulesOutputForDisableInsightRules
    public typealias HeadersType = DisableInsightRulesOutputForDisableInsightRules

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DisableInsightRulesOutputForDisableInsightRules {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the EnableInsightRules operation in a HTTP client.
 */
extension EnableInsightRulesOutputForEnableInsightRules: HTTPResponseOutputProtocol {
    public typealias BodyType = EnableInsightRulesOutputForEnableInsightRules
    public typealias HeadersType = EnableInsightRulesOutputForEnableInsightRules

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> EnableInsightRulesOutputForEnableInsightRules {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetDashboard operation in a HTTP client.
 */
extension GetDashboardOutputForGetDashboard: HTTPResponseOutputProtocol {
    public typealias BodyType = GetDashboardOutputForGetDashboard
    public typealias HeadersType = GetDashboardOutputForGetDashboard

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetDashboardOutputForGetDashboard {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetInsightRuleReport operation in a HTTP client.
 */
extension GetInsightRuleReportOutputForGetInsightRuleReport: HTTPResponseOutputProtocol {
    public typealias BodyType = GetInsightRuleReportOutputForGetInsightRuleReport
    public typealias HeadersType = GetInsightRuleReportOutputForGetInsightRuleReport

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetInsightRuleReportOutputForGetInsightRuleReport {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetMetricData operation in a HTTP client.
 */
extension GetMetricDataOutputForGetMetricData: HTTPResponseOutputProtocol {
    public typealias BodyType = GetMetricDataOutputForGetMetricData
    public typealias HeadersType = GetMetricDataOutputForGetMetricData

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetMetricDataOutputForGetMetricData {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetMetricStatistics operation in a HTTP client.
 */
extension GetMetricStatisticsOutputForGetMetricStatistics: HTTPResponseOutputProtocol {
    public typealias BodyType = GetMetricStatisticsOutputForGetMetricStatistics
    public typealias HeadersType = GetMetricStatisticsOutputForGetMetricStatistics

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetMetricStatisticsOutputForGetMetricStatistics {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetMetricWidgetImage operation in a HTTP client.
 */
extension GetMetricWidgetImageOutputForGetMetricWidgetImage: HTTPResponseOutputProtocol {
    public typealias BodyType = GetMetricWidgetImageOutputForGetMetricWidgetImage
    public typealias HeadersType = GetMetricWidgetImageOutputForGetMetricWidgetImage

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetMetricWidgetImageOutputForGetMetricWidgetImage {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListDashboards operation in a HTTP client.
 */
extension ListDashboardsOutputForListDashboards: HTTPResponseOutputProtocol {
    public typealias BodyType = ListDashboardsOutputForListDashboards
    public typealias HeadersType = ListDashboardsOutputForListDashboards

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListDashboardsOutputForListDashboards {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListMetrics operation in a HTTP client.
 */
extension ListMetricsOutputForListMetrics: HTTPResponseOutputProtocol {
    public typealias BodyType = ListMetricsOutputForListMetrics
    public typealias HeadersType = ListMetricsOutputForListMetrics

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListMetricsOutputForListMetrics {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ListTagsForResourceOutputForListTagsForResource: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsForResourceOutputForListTagsForResource
    public typealias HeadersType = ListTagsForResourceOutputForListTagsForResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsForResourceOutputForListTagsForResource {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutAnomalyDetector operation in a HTTP client.
 */
extension PutAnomalyDetectorOutputForPutAnomalyDetector: HTTPResponseOutputProtocol {
    public typealias BodyType = PutAnomalyDetectorOutputForPutAnomalyDetector
    public typealias HeadersType = PutAnomalyDetectorOutputForPutAnomalyDetector

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutAnomalyDetectorOutputForPutAnomalyDetector {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutDashboard operation in a HTTP client.
 */
extension PutDashboardOutputForPutDashboard: HTTPResponseOutputProtocol {
    public typealias BodyType = PutDashboardOutputForPutDashboard
    public typealias HeadersType = PutDashboardOutputForPutDashboard

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutDashboardOutputForPutDashboard {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the PutInsightRule operation in a HTTP client.
 */
extension PutInsightRuleOutputForPutInsightRule: HTTPResponseOutputProtocol {
    public typealias BodyType = PutInsightRuleOutputForPutInsightRule
    public typealias HeadersType = PutInsightRuleOutputForPutInsightRule

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PutInsightRuleOutputForPutInsightRule {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TagResource operation in a HTTP client.
 */
extension TagResourceOutputForTagResource: HTTPResponseOutputProtocol {
    public typealias BodyType = TagResourceOutputForTagResource
    public typealias HeadersType = TagResourceOutputForTagResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagResourceOutputForTagResource {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UntagResource operation in a HTTP client.
 */
extension UntagResourceOutputForUntagResource: HTTPResponseOutputProtocol {
    public typealias BodyType = UntagResourceOutputForUntagResource
    public typealias HeadersType = UntagResourceOutputForUntagResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UntagResourceOutputForUntagResource {
        return try bodyDecodableProvider()
    }
}
