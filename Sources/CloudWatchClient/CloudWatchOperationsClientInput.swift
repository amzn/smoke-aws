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
// CloudWatchOperationsClientInput.swift
// CloudWatchClient
//

import Foundation
import SmokeHTTPClient
import CloudWatchModel

/**
 Type to handle the input to the DeleteAlarms operation in a HTTP client.
 */
public typealias DeleteAlarmsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteAnomalyDetector operation in a HTTP client.
 */
public typealias DeleteAnomalyDetectorOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteDashboards operation in a HTTP client.
 */
public typealias DeleteDashboardsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteInsightRules operation in a HTTP client.
 */
public typealias DeleteInsightRulesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteMetricStream operation in a HTTP client.
 */
public typealias DeleteMetricStreamOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeAlarmHistory operation in a HTTP client.
 */
public typealias DescribeAlarmHistoryOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeAlarms operation in a HTTP client.
 */
public typealias DescribeAlarmsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeAlarmsForMetric operation in a HTTP client.
 */
public typealias DescribeAlarmsForMetricOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeAnomalyDetectors operation in a HTTP client.
 */
public typealias DescribeAnomalyDetectorsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DescribeInsightRules operation in a HTTP client.
 */
public typealias DescribeInsightRulesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DisableAlarmActions operation in a HTTP client.
 */
public typealias DisableAlarmActionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DisableInsightRules operation in a HTTP client.
 */
public typealias DisableInsightRulesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the EnableAlarmActions operation in a HTTP client.
 */
public typealias EnableAlarmActionsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the EnableInsightRules operation in a HTTP client.
 */
public typealias EnableInsightRulesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetDashboard operation in a HTTP client.
 */
public typealias GetDashboardOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetInsightRuleReport operation in a HTTP client.
 */
public typealias GetInsightRuleReportOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetMetricData operation in a HTTP client.
 */
public typealias GetMetricDataOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetMetricStatistics operation in a HTTP client.
 */
public typealias GetMetricStatisticsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetMetricStream operation in a HTTP client.
 */
public typealias GetMetricStreamOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the GetMetricWidgetImage operation in a HTTP client.
 */
public typealias GetMetricWidgetImageOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListDashboards operation in a HTTP client.
 */
public typealias ListDashboardsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListManagedInsightRules operation in a HTTP client.
 */
public typealias ListManagedInsightRulesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListMetricStreams operation in a HTTP client.
 */
public typealias ListMetricStreamsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListMetrics operation in a HTTP client.
 */
public typealias ListMetricsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListTagsForResource operation in a HTTP client.
 */
public typealias ListTagsForResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutAnomalyDetector operation in a HTTP client.
 */
public typealias PutAnomalyDetectorOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutCompositeAlarm operation in a HTTP client.
 */
public typealias PutCompositeAlarmOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutDashboard operation in a HTTP client.
 */
public typealias PutDashboardOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutInsightRule operation in a HTTP client.
 */
public typealias PutInsightRuleOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutManagedInsightRules operation in a HTTP client.
 */
public typealias PutManagedInsightRulesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutMetricAlarm operation in a HTTP client.
 */
public typealias PutMetricAlarmOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutMetricData operation in a HTTP client.
 */
public typealias PutMetricDataOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PutMetricStream operation in a HTTP client.
 */
public typealias PutMetricStreamOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the SetAlarmState operation in a HTTP client.
 */
public typealias SetAlarmStateOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StartMetricStreams operation in a HTTP client.
 */
public typealias StartMetricStreamsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the StopMetricStreams operation in a HTTP client.
 */
public typealias StopMetricStreamsOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the TagResource operation in a HTTP client.
 */
public typealias TagResourceOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the UntagResource operation in a HTTP client.
 */
public typealias UntagResourceOperationHTTPRequestInput = QueryHTTPRequestInput
