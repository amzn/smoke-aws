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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// CloudWatchClientProtocol.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the CloudWatch service.
 */
public protocol CloudWatchClientProtocol {
    typealias DeleteAlarmsSyncType = (
            _ input: CloudWatchModel.DeleteAlarmsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DeleteAlarmsAsyncType = (
            _ input: CloudWatchModel.DeleteAlarmsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDashboardsSyncType = (
            _ input: CloudWatchModel.DeleteDashboardsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards
    typealias DeleteDashboardsAsyncType = (
            _ input: CloudWatchModel.DeleteDashboardsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAlarmHistorySyncType = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory
    typealias DescribeAlarmHistoryAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAlarmsSyncType = (
            _ input: CloudWatchModel.DescribeAlarmsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms
    typealias DescribeAlarmsAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeAlarmsForMetricSyncType = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
    typealias DescribeAlarmsForMetricAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws -> ()
    typealias DisableAlarmActionsSyncType = (
            _ input: CloudWatchModel.DisableAlarmActionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias DisableAlarmActionsAsyncType = (
            _ input: CloudWatchModel.DisableAlarmActionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableAlarmActionsSyncType = (
            _ input: CloudWatchModel.EnableAlarmActionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias EnableAlarmActionsAsyncType = (
            _ input: CloudWatchModel.EnableAlarmActionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetDashboardSyncType = (
            _ input: CloudWatchModel.GetDashboardInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard
    typealias GetDashboardAsyncType = (
            _ input: CloudWatchModel.GetDashboardInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws -> ()
    typealias GetMetricDataSyncType = (
            _ input: CloudWatchModel.GetMetricDataInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData
    typealias GetMetricDataAsyncType = (
            _ input: CloudWatchModel.GetMetricDataInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws -> ()
    typealias GetMetricStatisticsSyncType = (
            _ input: CloudWatchModel.GetMetricStatisticsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics
    typealias GetMetricStatisticsAsyncType = (
            _ input: CloudWatchModel.GetMetricStatisticsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws -> ()
    typealias GetMetricWidgetImageSyncType = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage
    typealias GetMetricWidgetImageAsyncType = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws -> ()
    typealias ListDashboardsSyncType = (
            _ input: CloudWatchModel.ListDashboardsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards
    typealias ListDashboardsAsyncType = (
            _ input: CloudWatchModel.ListDashboardsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws -> ()
    typealias ListMetricsSyncType = (
            _ input: CloudWatchModel.ListMetricsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListMetricsOutputForListMetrics
    typealias ListMetricsAsyncType = (
            _ input: CloudWatchModel.ListMetricsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: CloudWatchModel.ListTagsForResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource
    typealias ListTagsForResourceAsyncType = (
            _ input: CloudWatchModel.ListTagsForResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws -> ()
    typealias PutDashboardSyncType = (
            _ input: CloudWatchModel.PutDashboardInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard
    typealias PutDashboardAsyncType = (
            _ input: CloudWatchModel.PutDashboardInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws -> ()
    typealias PutMetricAlarmSyncType = (
            _ input: CloudWatchModel.PutMetricAlarmInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias PutMetricAlarmAsyncType = (
            _ input: CloudWatchModel.PutMetricAlarmInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutMetricDataSyncType = (
            _ input: CloudWatchModel.PutMetricDataInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias PutMetricDataAsyncType = (
            _ input: CloudWatchModel.PutMetricDataInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SetAlarmStateSyncType = (
            _ input: CloudWatchModel.SetAlarmStateInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> ()
    typealias SetAlarmStateAsyncType = (
            _ input: CloudWatchModel.SetAlarmStateInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: CloudWatchModel.TagResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.TagResourceOutputForTagResource
    typealias TagResourceAsyncType = (
            _ input: CloudWatchModel.TagResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: CloudWatchModel.UntagResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.UntagResourceOutputForUntagResource
    typealias UntagResourceAsyncType = (
            _ input: CloudWatchModel.UntagResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the DeleteAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: resourceNotFound.
     */
    func deleteAlarmsAsync(
            input: CloudWatchModel.DeleteAlarmsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    func deleteAlarmsSync(
            input: CloudWatchModel.DeleteAlarmsInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the DeleteDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
         - completion: The DeleteDashboardsOutputForDeleteDashboards object or an error will be passed to this 
           callback when the operation is complete. The DeleteDashboardsOutputForDeleteDashboards
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboardsAsync(
            input: CloudWatchModel.DeleteDashboardsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboardsSync(
            input: CloudWatchModel.DeleteDashboardsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards

    /**
     Invokes the DescribeAlarmHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
         - completion: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmHistoryOutputForDescribeAlarmHistory
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmHistoryAsync(
            input: CloudWatchModel.DescribeAlarmHistoryInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmHistorySync(
            input: CloudWatchModel.DescribeAlarmHistoryInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory

    /**
     Invokes the DescribeAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
         - completion: The DescribeAlarmsOutputForDescribeAlarms object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsOutputForDescribeAlarms
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmsAsync(
            input: CloudWatchModel.DescribeAlarmsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func describeAlarmsSync(
            input: CloudWatchModel.DescribeAlarmsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
         - completion: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
           object will be validated before being returned to caller.
     */
    func describeAlarmsForMetricAsync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAlarmsForMetricSync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric

    /**
     Invokes the DisableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disableAlarmActionsAsync(
            input: CloudWatchModel.DisableAlarmActionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    func disableAlarmActionsSync(
            input: CloudWatchModel.DisableAlarmActionsInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the EnableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableAlarmActionsAsync(
            input: CloudWatchModel.EnableAlarmActionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    func enableAlarmActionsSync(
            input: CloudWatchModel.EnableAlarmActionsInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the GetDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
         - completion: The GetDashboardOutputForGetDashboard object or an error will be passed to this 
           callback when the operation is complete. The GetDashboardOutputForGetDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboardAsync(
            input: CloudWatchModel.GetDashboardInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboardSync(
            input: CloudWatchModel.GetDashboardInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard

    /**
     Invokes the GetMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
         - completion: The GetMetricDataOutputForGetMetricData object or an error will be passed to this 
           callback when the operation is complete. The GetMetricDataOutputForGetMetricData
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func getMetricDataAsync(
            input: CloudWatchModel.GetMetricDataInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    func getMetricDataSync(
            input: CloudWatchModel.GetMetricDataInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData

    /**
     Invokes the GetMetricStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
         - completion: The GetMetricStatisticsOutputForGetMetricStatistics object or an error will be passed to this 
           callback when the operation is complete. The GetMetricStatisticsOutputForGetMetricStatistics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatisticsAsync(
            input: CloudWatchModel.GetMetricStatisticsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatisticsSync(
            input: CloudWatchModel.GetMetricStatisticsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics

    /**
     Invokes the GetMetricWidgetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
         - completion: The GetMetricWidgetImageOutputForGetMetricWidgetImage object or an error will be passed to this 
           callback when the operation is complete. The GetMetricWidgetImageOutputForGetMetricWidgetImage
           object will be validated before being returned to caller.
     */
    func getMetricWidgetImageAsync(
            input: CloudWatchModel.GetMetricWidgetImageInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getMetricWidgetImageSync(
            input: CloudWatchModel.GetMetricWidgetImageInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage

    /**
     Invokes the ListDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
         - completion: The ListDashboardsOutputForListDashboards object or an error will be passed to this 
           callback when the operation is complete. The ListDashboardsOutputForListDashboards
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listDashboardsAsync(
            input: CloudWatchModel.ListDashboardsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listDashboardsSync(
            input: CloudWatchModel.ListDashboardsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards

    /**
     Invokes the ListMetrics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
         - completion: The ListMetricsOutputForListMetrics object or an error will be passed to this 
           callback when the operation is complete. The ListMetricsOutputForListMetrics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listMetricsAsync(
            input: CloudWatchModel.ListMetricsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    func listMetricsSync(
            input: CloudWatchModel.ListMetricsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListMetricsOutputForListMetrics

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutputForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutputForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResourceAsync(
            input: CloudWatchModel.ListTagsForResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResourceSync(
            input: CloudWatchModel.ListTagsForResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource

    /**
     Invokes the PutDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
         - completion: The PutDashboardOutputForPutDashboard object or an error will be passed to this 
           callback when the operation is complete. The PutDashboardOutputForPutDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    func putDashboardAsync(
            input: CloudWatchModel.PutDashboardInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    func putDashboardSync(
            input: CloudWatchModel.PutDashboardInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard

    /**
     Invokes the PutMetricAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    func putMetricAlarmAsync(
            input: CloudWatchModel.PutMetricAlarmInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    func putMetricAlarmSync(
            input: CloudWatchModel.PutMetricAlarmInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the PutMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricDataAsync(
            input: CloudWatchModel.PutMetricDataInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricDataSync(
            input: CloudWatchModel.PutMetricDataInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the SetAlarmState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    func setAlarmStateAsync(
            input: CloudWatchModel.SetAlarmStateInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    func setAlarmStateSync(
            input: CloudWatchModel.SetAlarmStateInput,
            reporting: SmokeAWSInvocationReporting) throws

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutputForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutputForTagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResourceAsync(
            input: CloudWatchModel.TagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResourceSync(
            input: CloudWatchModel.TagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.TagResourceOutputForTagResource

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutputForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutputForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResourceAsync(
            input: CloudWatchModel.UntagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResourceSync(
            input: CloudWatchModel.UntagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.UntagResourceOutputForUntagResource
}
