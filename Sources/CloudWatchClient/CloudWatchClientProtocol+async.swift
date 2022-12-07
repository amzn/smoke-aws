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
// CloudWatchClientProtocol+async.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the CloudWatchClientProtocol type.
 */
public extension CloudWatchClientProtocol {

    /**
     Invokes the DeleteAlarms operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    func deleteAlarms(input: CloudWatchModel.DeleteAlarmsInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteAlarmsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteAnomalyDetector operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: The DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetector(input: CloudWatchModel.DeleteAnomalyDetectorInput) async throws
     -> CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteAnomalyDetectorAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteDashboards operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboards(input: CloudWatchModel.DeleteDashboardsInput) async throws
     -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteDashboardsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteInsightRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: The DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRules(input: CloudWatchModel.DeleteInsightRulesInput) async throws
     -> CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteInsightRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteMetricStream operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteMetricStreamInput object being passed to this operation.
     - Returns: The DeleteMetricStreamOutputForDeleteMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    func deleteMetricStream(input: CloudWatchModel.DeleteMetricStreamInput) async throws
     -> CloudWatchModel.DeleteMetricStreamOutputForDeleteMetricStream {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteMetricStreamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAlarmHistory operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmHistory(input: CloudWatchModel.DescribeAlarmHistoryInput) async throws
     -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAlarmHistoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAlarms operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarms(input: CloudWatchModel.DescribeAlarmsInput) async throws
     -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAlarmsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAlarmsForMetric operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAlarmsForMetric(input: CloudWatchModel.DescribeAlarmsForMetricInput) async throws
     -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAlarmsForMetricAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeAnomalyDetectors operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: The DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterCombination, invalidParameterValue.
     */
    func describeAnomalyDetectors(input: CloudWatchModel.DescribeAnomalyDetectorsInput) async throws
     -> CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeAnomalyDetectorsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeInsightRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: The DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeInsightRules(input: CloudWatchModel.DescribeInsightRulesInput) async throws
     -> CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try describeInsightRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableAlarmActions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    func disableAlarmActions(input: CloudWatchModel.DisableAlarmActionsInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableAlarmActionsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableInsightRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: The DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRules(input: CloudWatchModel.DisableInsightRulesInput) async throws
     -> CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try disableInsightRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableAlarmActions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    func enableAlarmActions(input: CloudWatchModel.EnableAlarmActionsInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableAlarmActionsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableInsightRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: The EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRules(input: CloudWatchModel.EnableInsightRulesInput) async throws
     -> CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try enableInsightRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetDashboard operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboard(input: CloudWatchModel.GetDashboardInput) async throws
     -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getDashboardAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetInsightRuleReport operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: The GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReport(input: CloudWatchModel.GetInsightRuleReportInput) async throws
     -> CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getInsightRuleReportAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetMetricData operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func getMetricData(input: CloudWatchModel.GetMetricDataInput) async throws
     -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getMetricDataAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetMetricStatistics operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatistics(input: CloudWatchModel.GetMetricStatisticsInput) async throws
     -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getMetricStatisticsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetMetricStream operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetMetricStreamInput object being passed to this operation.
     - Returns: The GetMetricStreamOutputForGetMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getMetricStream(input: CloudWatchModel.GetMetricStreamInput) async throws
     -> CloudWatchModel.GetMetricStreamOutputForGetMetricStream {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getMetricStreamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetMetricWidgetImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getMetricWidgetImage(input: CloudWatchModel.GetMetricWidgetImageInput) async throws
     -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getMetricWidgetImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListDashboards operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listDashboards(input: CloudWatchModel.ListDashboardsInput) async throws
     -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listDashboardsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListManagedInsightRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListManagedInsightRulesInput object being passed to this operation.
     - Returns: The ListManagedInsightRulesOutputForListManagedInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    func listManagedInsightRules(input: CloudWatchModel.ListManagedInsightRulesInput) async throws
     -> CloudWatchModel.ListManagedInsightRulesOutputForListManagedInsightRules {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listManagedInsightRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListMetricStreams operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListMetricStreamsInput object being passed to this operation.
     - Returns: The ListMetricStreamsOutputForListMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidNextToken, invalidParameterValue, missingRequiredParameter.
     */
    func listMetricStreams(input: CloudWatchModel.ListMetricStreamsInput) async throws
     -> CloudWatchModel.ListMetricStreamsOutputForListMetricStreams {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listMetricStreamsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListMetrics operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listMetrics(input: CloudWatchModel.ListMetricsInput) async throws
     -> CloudWatchModel.ListMetricsOutputForListMetrics {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listMetricsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResource(input: CloudWatchModel.ListTagsForResourceInput) async throws
     -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutAnomalyDetector operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: The PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetector(input: CloudWatchModel.PutAnomalyDetectorInput) async throws
     -> CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putAnomalyDetectorAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutCompositeAlarm operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putCompositeAlarm(input: CloudWatchModel.PutCompositeAlarmInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putCompositeAlarmAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutDashboard operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    func putDashboard(input: CloudWatchModel.PutDashboardInput) async throws
     -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putDashboardAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutInsightRule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: The PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRule(input: CloudWatchModel.PutInsightRuleInput) async throws
     -> CloudWatchModel.PutInsightRuleOutputForPutInsightRule {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putInsightRuleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutManagedInsightRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutManagedInsightRulesInput object being passed to this operation.
     - Returns: The PutManagedInsightRulesOutputForPutManagedInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameterValue, missingRequiredParameter.
     */
    func putManagedInsightRules(input: CloudWatchModel.PutManagedInsightRulesInput) async throws
     -> CloudWatchModel.PutManagedInsightRulesOutputForPutManagedInsightRules {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putManagedInsightRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutMetricAlarm operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putMetricAlarm(input: CloudWatchModel.PutMetricAlarmInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putMetricAlarmAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutMetricData operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricData(input: CloudWatchModel.PutMetricDataInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putMetricDataAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutMetricStream operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutMetricStreamInput object being passed to this operation.
     - Returns: The PutMetricStreamOutputForPutMetricStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricStream(input: CloudWatchModel.PutMetricStreamInput) async throws
     -> CloudWatchModel.PutMetricStreamOutputForPutMetricStream {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putMetricStreamAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SetAlarmState operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    func setAlarmState(input: CloudWatchModel.SetAlarmStateInput) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try setAlarmStateAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartMetricStreams operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartMetricStreamsInput object being passed to this operation.
     - Returns: The StartMetricStreamsOutputForStartMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    func startMetricStreams(input: CloudWatchModel.StartMetricStreamsInput) async throws
     -> CloudWatchModel.StartMetricStreamsOutputForStartMetricStreams {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startMetricStreamsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StopMetricStreams operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopMetricStreamsInput object being passed to this operation.
     - Returns: The StopMetricStreamsOutputForStopMetricStreams object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, missingRequiredParameter.
     */
    func stopMetricStreams(input: CloudWatchModel.StopMetricStreamsInput) async throws
     -> CloudWatchModel.StopMetricStreamsOutputForStopMetricStreams {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try stopMetricStreamsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResource(input: CloudWatchModel.TagResourceInput) async throws
     -> CloudWatchModel.TagResourceOutputForTagResource {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResource(input: CloudWatchModel.UntagResourceInput) async throws
     -> CloudWatchModel.UntagResourceOutputForUntagResource {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
