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
// MockCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CloudWatch service by default returns the `__default` property of its return type.
 */
public struct MockCloudWatchClient: CloudWatchClientProtocol {
    let deleteAlarmsAsyncOverride: CloudWatchClientProtocol.DeleteAlarmsAsyncType?
    let deleteAlarmsSyncOverride: CloudWatchClientProtocol.DeleteAlarmsSyncType?
    let deleteDashboardsAsyncOverride: CloudWatchClientProtocol.DeleteDashboardsAsyncType?
    let deleteDashboardsSyncOverride: CloudWatchClientProtocol.DeleteDashboardsSyncType?
    let describeAlarmHistoryAsyncOverride: CloudWatchClientProtocol.DescribeAlarmHistoryAsyncType?
    let describeAlarmHistorySyncOverride: CloudWatchClientProtocol.DescribeAlarmHistorySyncType?
    let describeAlarmsAsyncOverride: CloudWatchClientProtocol.DescribeAlarmsAsyncType?
    let describeAlarmsSyncOverride: CloudWatchClientProtocol.DescribeAlarmsSyncType?
    let describeAlarmsForMetricAsyncOverride: CloudWatchClientProtocol.DescribeAlarmsForMetricAsyncType?
    let describeAlarmsForMetricSyncOverride: CloudWatchClientProtocol.DescribeAlarmsForMetricSyncType?
    let disableAlarmActionsAsyncOverride: CloudWatchClientProtocol.DisableAlarmActionsAsyncType?
    let disableAlarmActionsSyncOverride: CloudWatchClientProtocol.DisableAlarmActionsSyncType?
    let enableAlarmActionsAsyncOverride: CloudWatchClientProtocol.EnableAlarmActionsAsyncType?
    let enableAlarmActionsSyncOverride: CloudWatchClientProtocol.EnableAlarmActionsSyncType?
    let getDashboardAsyncOverride: CloudWatchClientProtocol.GetDashboardAsyncType?
    let getDashboardSyncOverride: CloudWatchClientProtocol.GetDashboardSyncType?
    let getMetricDataAsyncOverride: CloudWatchClientProtocol.GetMetricDataAsyncType?
    let getMetricDataSyncOverride: CloudWatchClientProtocol.GetMetricDataSyncType?
    let getMetricStatisticsAsyncOverride: CloudWatchClientProtocol.GetMetricStatisticsAsyncType?
    let getMetricStatisticsSyncOverride: CloudWatchClientProtocol.GetMetricStatisticsSyncType?
    let getMetricWidgetImageAsyncOverride: CloudWatchClientProtocol.GetMetricWidgetImageAsyncType?
    let getMetricWidgetImageSyncOverride: CloudWatchClientProtocol.GetMetricWidgetImageSyncType?
    let listDashboardsAsyncOverride: CloudWatchClientProtocol.ListDashboardsAsyncType?
    let listDashboardsSyncOverride: CloudWatchClientProtocol.ListDashboardsSyncType?
    let listMetricsAsyncOverride: CloudWatchClientProtocol.ListMetricsAsyncType?
    let listMetricsSyncOverride: CloudWatchClientProtocol.ListMetricsSyncType?
    let listTagsForResourceAsyncOverride: CloudWatchClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: CloudWatchClientProtocol.ListTagsForResourceSyncType?
    let putDashboardAsyncOverride: CloudWatchClientProtocol.PutDashboardAsyncType?
    let putDashboardSyncOverride: CloudWatchClientProtocol.PutDashboardSyncType?
    let putMetricAlarmAsyncOverride: CloudWatchClientProtocol.PutMetricAlarmAsyncType?
    let putMetricAlarmSyncOverride: CloudWatchClientProtocol.PutMetricAlarmSyncType?
    let putMetricDataAsyncOverride: CloudWatchClientProtocol.PutMetricDataAsyncType?
    let putMetricDataSyncOverride: CloudWatchClientProtocol.PutMetricDataSyncType?
    let setAlarmStateAsyncOverride: CloudWatchClientProtocol.SetAlarmStateAsyncType?
    let setAlarmStateSyncOverride: CloudWatchClientProtocol.SetAlarmStateSyncType?
    let tagResourceAsyncOverride: CloudWatchClientProtocol.TagResourceAsyncType?
    let tagResourceSyncOverride: CloudWatchClientProtocol.TagResourceSyncType?
    let untagResourceAsyncOverride: CloudWatchClientProtocol.UntagResourceAsyncType?
    let untagResourceSyncOverride: CloudWatchClientProtocol.UntagResourceSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            deleteAlarmsAsync: CloudWatchClientProtocol.DeleteAlarmsAsyncType? = nil,
            deleteAlarmsSync: CloudWatchClientProtocol.DeleteAlarmsSyncType? = nil,
            deleteDashboardsAsync: CloudWatchClientProtocol.DeleteDashboardsAsyncType? = nil,
            deleteDashboardsSync: CloudWatchClientProtocol.DeleteDashboardsSyncType? = nil,
            describeAlarmHistoryAsync: CloudWatchClientProtocol.DescribeAlarmHistoryAsyncType? = nil,
            describeAlarmHistorySync: CloudWatchClientProtocol.DescribeAlarmHistorySyncType? = nil,
            describeAlarmsAsync: CloudWatchClientProtocol.DescribeAlarmsAsyncType? = nil,
            describeAlarmsSync: CloudWatchClientProtocol.DescribeAlarmsSyncType? = nil,
            describeAlarmsForMetricAsync: CloudWatchClientProtocol.DescribeAlarmsForMetricAsyncType? = nil,
            describeAlarmsForMetricSync: CloudWatchClientProtocol.DescribeAlarmsForMetricSyncType? = nil,
            disableAlarmActionsAsync: CloudWatchClientProtocol.DisableAlarmActionsAsyncType? = nil,
            disableAlarmActionsSync: CloudWatchClientProtocol.DisableAlarmActionsSyncType? = nil,
            enableAlarmActionsAsync: CloudWatchClientProtocol.EnableAlarmActionsAsyncType? = nil,
            enableAlarmActionsSync: CloudWatchClientProtocol.EnableAlarmActionsSyncType? = nil,
            getDashboardAsync: CloudWatchClientProtocol.GetDashboardAsyncType? = nil,
            getDashboardSync: CloudWatchClientProtocol.GetDashboardSyncType? = nil,
            getMetricDataAsync: CloudWatchClientProtocol.GetMetricDataAsyncType? = nil,
            getMetricDataSync: CloudWatchClientProtocol.GetMetricDataSyncType? = nil,
            getMetricStatisticsAsync: CloudWatchClientProtocol.GetMetricStatisticsAsyncType? = nil,
            getMetricStatisticsSync: CloudWatchClientProtocol.GetMetricStatisticsSyncType? = nil,
            getMetricWidgetImageAsync: CloudWatchClientProtocol.GetMetricWidgetImageAsyncType? = nil,
            getMetricWidgetImageSync: CloudWatchClientProtocol.GetMetricWidgetImageSyncType? = nil,
            listDashboardsAsync: CloudWatchClientProtocol.ListDashboardsAsyncType? = nil,
            listDashboardsSync: CloudWatchClientProtocol.ListDashboardsSyncType? = nil,
            listMetricsAsync: CloudWatchClientProtocol.ListMetricsAsyncType? = nil,
            listMetricsSync: CloudWatchClientProtocol.ListMetricsSyncType? = nil,
            listTagsForResourceAsync: CloudWatchClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: CloudWatchClientProtocol.ListTagsForResourceSyncType? = nil,
            putDashboardAsync: CloudWatchClientProtocol.PutDashboardAsyncType? = nil,
            putDashboardSync: CloudWatchClientProtocol.PutDashboardSyncType? = nil,
            putMetricAlarmAsync: CloudWatchClientProtocol.PutMetricAlarmAsyncType? = nil,
            putMetricAlarmSync: CloudWatchClientProtocol.PutMetricAlarmSyncType? = nil,
            putMetricDataAsync: CloudWatchClientProtocol.PutMetricDataAsyncType? = nil,
            putMetricDataSync: CloudWatchClientProtocol.PutMetricDataSyncType? = nil,
            setAlarmStateAsync: CloudWatchClientProtocol.SetAlarmStateAsyncType? = nil,
            setAlarmStateSync: CloudWatchClientProtocol.SetAlarmStateSyncType? = nil,
            tagResourceAsync: CloudWatchClientProtocol.TagResourceAsyncType? = nil,
            tagResourceSync: CloudWatchClientProtocol.TagResourceSyncType? = nil,
            untagResourceAsync: CloudWatchClientProtocol.UntagResourceAsyncType? = nil,
            untagResourceSync: CloudWatchClientProtocol.UntagResourceSyncType? = nil) {
        self.deleteAlarmsAsyncOverride = deleteAlarmsAsync
        self.deleteAlarmsSyncOverride = deleteAlarmsSync
        self.deleteDashboardsAsyncOverride = deleteDashboardsAsync
        self.deleteDashboardsSyncOverride = deleteDashboardsSync
        self.describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsync
        self.describeAlarmHistorySyncOverride = describeAlarmHistorySync
        self.describeAlarmsAsyncOverride = describeAlarmsAsync
        self.describeAlarmsSyncOverride = describeAlarmsSync
        self.describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsync
        self.describeAlarmsForMetricSyncOverride = describeAlarmsForMetricSync
        self.disableAlarmActionsAsyncOverride = disableAlarmActionsAsync
        self.disableAlarmActionsSyncOverride = disableAlarmActionsSync
        self.enableAlarmActionsAsyncOverride = enableAlarmActionsAsync
        self.enableAlarmActionsSyncOverride = enableAlarmActionsSync
        self.getDashboardAsyncOverride = getDashboardAsync
        self.getDashboardSyncOverride = getDashboardSync
        self.getMetricDataAsyncOverride = getMetricDataAsync
        self.getMetricDataSyncOverride = getMetricDataSync
        self.getMetricStatisticsAsyncOverride = getMetricStatisticsAsync
        self.getMetricStatisticsSyncOverride = getMetricStatisticsSync
        self.getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsync
        self.getMetricWidgetImageSyncOverride = getMetricWidgetImageSync
        self.listDashboardsAsyncOverride = listDashboardsAsync
        self.listDashboardsSyncOverride = listDashboardsSync
        self.listMetricsAsyncOverride = listMetricsAsync
        self.listMetricsSyncOverride = listMetricsSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.putDashboardAsyncOverride = putDashboardAsync
        self.putDashboardSyncOverride = putDashboardSync
        self.putMetricAlarmAsyncOverride = putMetricAlarmAsync
        self.putMetricAlarmSyncOverride = putMetricAlarmSync
        self.putMetricDataAsyncOverride = putMetricDataAsync
        self.putMetricDataSyncOverride = putMetricDataSync
        self.setAlarmStateAsyncOverride = setAlarmStateAsync
        self.setAlarmStateSyncOverride = setAlarmStateSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
    }

    /**
     Invokes the DeleteAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: resourceNotFound.
     */
    public func deleteAlarmsAsync(
            input: CloudWatchModel.DeleteAlarmsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteAlarmsAsyncOverride = deleteAlarmsAsyncOverride {
            return try deleteAlarmsAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    public func deleteAlarmsSync(
            input: CloudWatchModel.DeleteAlarmsInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteAlarmsSyncOverride = deleteAlarmsSyncOverride {
            return try deleteAlarmsSyncOverride(input, reporting)
        }

    }

    /**
     Invokes the DeleteDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
         - completion: The DeleteDashboardsOutputForDeleteDashboards object or an error will be passed to this 
           callback when the operation is complete. The DeleteDashboardsOutputForDeleteDashboards
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboardsAsync(
            input: CloudWatchModel.DeleteDashboardsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards, HTTPClientError>) -> ()) throws {
        if let deleteDashboardsAsyncOverride = deleteDashboardsAsyncOverride {
            return try deleteDashboardsAsyncOverride(input, reporting, completion)
        }

        let result = DeleteDashboardsOutputForDeleteDashboards.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboardsSync(
            input: CloudWatchModel.DeleteDashboardsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        if let deleteDashboardsSyncOverride = deleteDashboardsSyncOverride {
            return try deleteDashboardsSyncOverride(input, reporting)
        }

        return DeleteDashboardsOutputForDeleteDashboards.__default
    }

    /**
     Invokes the DescribeAlarmHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
         - completion: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmHistoryOutputForDescribeAlarmHistory
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeAlarmHistoryAsync(
            input: CloudWatchModel.DescribeAlarmHistoryInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory, HTTPClientError>) -> ()) throws {
        if let describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsyncOverride {
            return try describeAlarmHistoryAsyncOverride(input, reporting, completion)
        }

        let result = DescribeAlarmHistoryOutputForDescribeAlarmHistory.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmHistorySync(
            input: CloudWatchModel.DescribeAlarmHistoryInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        if let describeAlarmHistorySyncOverride = describeAlarmHistorySyncOverride {
            return try describeAlarmHistorySyncOverride(input, reporting)
        }

        return DescribeAlarmHistoryOutputForDescribeAlarmHistory.__default
    }

    /**
     Invokes the DescribeAlarms operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
         - completion: The DescribeAlarmsOutputForDescribeAlarms object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsOutputForDescribeAlarms
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeAlarmsAsync(
            input: CloudWatchModel.DescribeAlarmsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms, HTTPClientError>) -> ()) throws {
        if let describeAlarmsAsyncOverride = describeAlarmsAsyncOverride {
            return try describeAlarmsAsyncOverride(input, reporting, completion)
        }

        let result = DescribeAlarmsOutputForDescribeAlarms.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmsSync(
            input: CloudWatchModel.DescribeAlarmsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        if let describeAlarmsSyncOverride = describeAlarmsSyncOverride {
            return try describeAlarmsSyncOverride(input, reporting)
        }

        return DescribeAlarmsOutputForDescribeAlarms.__default
    }

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
         - completion: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
           object will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricAsync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric, HTTPClientError>) -> ()) throws {
        if let describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsyncOverride {
            return try describeAlarmsForMetricAsyncOverride(input, reporting, completion)
        }

        let result = DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricSync(
            input: CloudWatchModel.DescribeAlarmsForMetricInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        if let describeAlarmsForMetricSyncOverride = describeAlarmsForMetricSyncOverride {
            return try describeAlarmsForMetricSyncOverride(input, reporting)
        }

        return DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric.__default
    }

    /**
     Invokes the DisableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disableAlarmActionsAsync(
            input: CloudWatchModel.DisableAlarmActionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let disableAlarmActionsAsyncOverride = disableAlarmActionsAsyncOverride {
            return try disableAlarmActionsAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActionsSync(
            input: CloudWatchModel.DisableAlarmActionsInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let disableAlarmActionsSyncOverride = disableAlarmActionsSyncOverride {
            return try disableAlarmActionsSyncOverride(input, reporting)
        }

    }

    /**
     Invokes the EnableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableAlarmActionsAsync(
            input: CloudWatchModel.EnableAlarmActionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let enableAlarmActionsAsyncOverride = enableAlarmActionsAsyncOverride {
            return try enableAlarmActionsAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActionsSync(
            input: CloudWatchModel.EnableAlarmActionsInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let enableAlarmActionsSyncOverride = enableAlarmActionsSyncOverride {
            return try enableAlarmActionsSyncOverride(input, reporting)
        }

    }

    /**
     Invokes the GetDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
         - completion: The GetDashboardOutputForGetDashboard object or an error will be passed to this 
           callback when the operation is complete. The GetDashboardOutputForGetDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboardAsync(
            input: CloudWatchModel.GetDashboardInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetDashboardOutputForGetDashboard, HTTPClientError>) -> ()) throws {
        if let getDashboardAsyncOverride = getDashboardAsyncOverride {
            return try getDashboardAsyncOverride(input, reporting, completion)
        }

        let result = GetDashboardOutputForGetDashboard.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboardSync(
            input: CloudWatchModel.GetDashboardInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        if let getDashboardSyncOverride = getDashboardSyncOverride {
            return try getDashboardSyncOverride(input, reporting)
        }

        return GetDashboardOutputForGetDashboard.__default
    }

    /**
     Invokes the GetMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
         - completion: The GetMetricDataOutputForGetMetricData object or an error will be passed to this 
           callback when the operation is complete. The GetMetricDataOutputForGetMetricData
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func getMetricDataAsync(
            input: CloudWatchModel.GetMetricDataInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricDataOutputForGetMetricData, HTTPClientError>) -> ()) throws {
        if let getMetricDataAsyncOverride = getMetricDataAsyncOverride {
            return try getMetricDataAsyncOverride(input, reporting, completion)
        }

        let result = GetMetricDataOutputForGetMetricData.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func getMetricDataSync(
            input: CloudWatchModel.GetMetricDataInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        if let getMetricDataSyncOverride = getMetricDataSyncOverride {
            return try getMetricDataSyncOverride(input, reporting)
        }

        return GetMetricDataOutputForGetMetricData.__default
    }

    /**
     Invokes the GetMetricStatistics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
         - completion: The GetMetricStatisticsOutputForGetMetricStatistics object or an error will be passed to this 
           callback when the operation is complete. The GetMetricStatisticsOutputForGetMetricStatistics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatisticsAsync(
            input: CloudWatchModel.GetMetricStatisticsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics, HTTPClientError>) -> ()) throws {
        if let getMetricStatisticsAsyncOverride = getMetricStatisticsAsyncOverride {
            return try getMetricStatisticsAsyncOverride(input, reporting, completion)
        }

        let result = GetMetricStatisticsOutputForGetMetricStatistics.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatisticsSync(
            input: CloudWatchModel.GetMetricStatisticsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        if let getMetricStatisticsSyncOverride = getMetricStatisticsSyncOverride {
            return try getMetricStatisticsSyncOverride(input, reporting)
        }

        return GetMetricStatisticsOutputForGetMetricStatistics.__default
    }

    /**
     Invokes the GetMetricWidgetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
         - completion: The GetMetricWidgetImageOutputForGetMetricWidgetImage object or an error will be passed to this 
           callback when the operation is complete. The GetMetricWidgetImageOutputForGetMetricWidgetImage
           object will be validated before being returned to caller.
     */
    public func getMetricWidgetImageAsync(
            input: CloudWatchModel.GetMetricWidgetImageInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage, HTTPClientError>) -> ()) throws {
        if let getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsyncOverride {
            return try getMetricWidgetImageAsyncOverride(input, reporting, completion)
        }

        let result = GetMetricWidgetImageOutputForGetMetricWidgetImage.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getMetricWidgetImageSync(
            input: CloudWatchModel.GetMetricWidgetImageInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        if let getMetricWidgetImageSyncOverride = getMetricWidgetImageSyncOverride {
            return try getMetricWidgetImageSyncOverride(input, reporting)
        }

        return GetMetricWidgetImageOutputForGetMetricWidgetImage.__default
    }

    /**
     Invokes the ListDashboards operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
         - completion: The ListDashboardsOutputForListDashboards object or an error will be passed to this 
           callback when the operation is complete. The ListDashboardsOutputForListDashboards
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    public func listDashboardsAsync(
            input: CloudWatchModel.ListDashboardsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListDashboardsOutputForListDashboards, HTTPClientError>) -> ()) throws {
        if let listDashboardsAsyncOverride = listDashboardsAsyncOverride {
            return try listDashboardsAsyncOverride(input, reporting, completion)
        }

        let result = ListDashboardsOutputForListDashboards.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listDashboardsSync(
            input: CloudWatchModel.ListDashboardsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        if let listDashboardsSyncOverride = listDashboardsSyncOverride {
            return try listDashboardsSyncOverride(input, reporting)
        }

        return ListDashboardsOutputForListDashboards.__default
    }

    /**
     Invokes the ListMetrics operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
         - completion: The ListMetricsOutputForListMetrics object or an error will be passed to this 
           callback when the operation is complete. The ListMetricsOutputForListMetrics
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    public func listMetricsAsync(
            input: CloudWatchModel.ListMetricsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListMetricsOutputForListMetrics, HTTPClientError>) -> ()) throws {
        if let listMetricsAsyncOverride = listMetricsAsyncOverride {
            return try listMetricsAsyncOverride(input, reporting, completion)
        }

        let result = ListMetricsOutputForListMetrics.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listMetricsSync(
            input: CloudWatchModel.ListMetricsInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
        if let listMetricsSyncOverride = listMetricsSyncOverride {
            return try listMetricsSyncOverride(input, reporting)
        }

        return ListMetricsOutputForListMetrics.__default
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutputForListTagsForResource object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutputForListTagsForResource
           object will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResourceAsync(
            input: CloudWatchModel.ListTagsForResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, reporting, completion)
        }

        let result = ListTagsForResourceOutputForListTagsForResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResourceSync(
            input: CloudWatchModel.ListTagsForResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input, reporting)
        }

        return ListTagsForResourceOutputForListTagsForResource.__default
    }

    /**
     Invokes the PutDashboard operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
         - completion: The PutDashboardOutputForPutDashboard object or an error will be passed to this 
           callback when the operation is complete. The PutDashboardOutputForPutDashboard
           object will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    public func putDashboardAsync(
            input: CloudWatchModel.PutDashboardInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.PutDashboardOutputForPutDashboard, HTTPClientError>) -> ()) throws {
        if let putDashboardAsyncOverride = putDashboardAsyncOverride {
            return try putDashboardAsyncOverride(input, reporting, completion)
        }

        let result = PutDashboardOutputForPutDashboard.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    public func putDashboardSync(
            input: CloudWatchModel.PutDashboardInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        if let putDashboardSyncOverride = putDashboardSyncOverride {
            return try putDashboardSyncOverride(input, reporting)
        }

        return PutDashboardOutputForPutDashboard.__default
    }

    /**
     Invokes the PutMetricAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    public func putMetricAlarmAsync(
            input: CloudWatchModel.PutMetricAlarmInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricAlarmAsyncOverride = putMetricAlarmAsyncOverride {
            return try putMetricAlarmAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putMetricAlarmSync(
            input: CloudWatchModel.PutMetricAlarmInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putMetricAlarmSyncOverride = putMetricAlarmSyncOverride {
            return try putMetricAlarmSyncOverride(input, reporting)
        }

    }

    /**
     Invokes the PutMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataAsync(
            input: CloudWatchModel.PutMetricDataInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricDataAsyncOverride = putMetricDataAsyncOverride {
            return try putMetricDataAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataSync(
            input: CloudWatchModel.PutMetricDataInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putMetricDataSyncOverride = putMetricDataSyncOverride {
            return try putMetricDataSyncOverride(input, reporting)
        }

    }

    /**
     Invokes the SetAlarmState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateAsync(
            input: CloudWatchModel.SetAlarmStateInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setAlarmStateAsyncOverride = setAlarmStateAsyncOverride {
            return try setAlarmStateAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateSync(
            input: CloudWatchModel.SetAlarmStateInput,
            reporting: SmokeAWSInvocationReporting) throws {
        if let setAlarmStateSyncOverride = setAlarmStateSyncOverride {
            return try setAlarmStateSyncOverride(input, reporting)
        }

    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutputForTagResource object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutputForTagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResourceAsync(
            input: CloudWatchModel.TagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.TagResourceOutputForTagResource, HTTPClientError>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, reporting, completion)
        }

        let result = TagResourceOutputForTagResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResourceSync(
            input: CloudWatchModel.TagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.TagResourceOutputForTagResource {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input, reporting)
        }

        return TagResourceOutputForTagResource.__default
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutputForUntagResource object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutputForUntagResource
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResourceAsync(
            input: CloudWatchModel.UntagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<CloudWatchModel.UntagResourceOutputForUntagResource, HTTPClientError>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, reporting, completion)
        }

        let result = UntagResourceOutputForUntagResource.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResourceSync(
            input: CloudWatchModel.UntagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input, reporting)
        }

        return UntagResourceOutputForUntagResource.__default
    }
}
