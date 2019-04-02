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
// ThrowingCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeHTTPClient

/**
 Mock Client for the CloudWatch service that by default always throws from its methods.
 */
public struct ThrowingCloudWatchClient: CloudWatchClientProtocol {
    let error: Swift.Error
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
    public init(error: Swift.Error,
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
        self.error = error
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
    public func deleteAlarmsAsync(input: CloudWatchModel.DeleteAlarmsInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteAlarmsAsyncOverride = deleteAlarmsAsyncOverride {
            return try deleteAlarmsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
     - Throws: resourceNotFound.
     */
    public func deleteAlarmsSync(input: CloudWatchModel.DeleteAlarmsInput) throws {
        if let deleteAlarmsSyncOverride = deleteAlarmsSyncOverride {
            return try deleteAlarmsSyncOverride(input)
        }

        throw error
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
    public func deleteDashboardsAsync(input: CloudWatchModel.DeleteDashboardsInput, completion: @escaping (HTTPResult<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards>) -> ()) throws {
        if let deleteDashboardsAsyncOverride = deleteDashboardsAsyncOverride {
            return try deleteDashboardsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DeleteDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: The DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboardsSync(input: CloudWatchModel.DeleteDashboardsInput) throws -> CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards {
        if let deleteDashboardsSyncOverride = deleteDashboardsSyncOverride {
            return try deleteDashboardsSyncOverride(input)
        }

        throw error
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
    public func describeAlarmHistoryAsync(input: CloudWatchModel.DescribeAlarmHistoryInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory>) -> ()) throws {
        if let describeAlarmHistoryAsyncOverride = describeAlarmHistoryAsyncOverride {
            return try describeAlarmHistoryAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeAlarmHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: The DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmHistorySync(input: CloudWatchModel.DescribeAlarmHistoryInput) throws -> CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory {
        if let describeAlarmHistorySyncOverride = describeAlarmHistorySyncOverride {
            return try describeAlarmHistorySyncOverride(input)
        }

        throw error
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
    public func describeAlarmsAsync(input: CloudWatchModel.DescribeAlarmsInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms>) -> ()) throws {
        if let describeAlarmsAsyncOverride = describeAlarmsAsyncOverride {
            return try describeAlarmsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeAlarms operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: The DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func describeAlarmsSync(input: CloudWatchModel.DescribeAlarmsInput) throws -> CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms {
        if let describeAlarmsSyncOverride = describeAlarmsSyncOverride {
            return try describeAlarmsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
         - completion: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object or an error will be passed to this 
           callback when the operation is complete. The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric
           object will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricAsync(input: CloudWatchModel.DescribeAlarmsForMetricInput, completion: @escaping (HTTPResult<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric>) -> ()) throws {
        if let describeAlarmsForMetricAsyncOverride = describeAlarmsForMetricAsyncOverride {
            return try describeAlarmsForMetricAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the DescribeAlarmsForMetric operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: The DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAlarmsForMetricSync(input: CloudWatchModel.DescribeAlarmsForMetricInput) throws -> CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric {
        if let describeAlarmsForMetricSyncOverride = describeAlarmsForMetricSyncOverride {
            return try describeAlarmsForMetricSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disableAlarmActionsAsync(input: CloudWatchModel.DisableAlarmActionsInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let disableAlarmActionsAsyncOverride = disableAlarmActionsAsyncOverride {
            return try disableAlarmActionsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DisableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActionsSync(input: CloudWatchModel.DisableAlarmActionsInput) throws {
        if let disableAlarmActionsSyncOverride = disableAlarmActionsSyncOverride {
            return try disableAlarmActionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableAlarmActions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableAlarmActionsAsync(input: CloudWatchModel.EnableAlarmActionsInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let enableAlarmActionsAsyncOverride = enableAlarmActionsAsyncOverride {
            return try enableAlarmActionsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the EnableAlarmActions operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActionsSync(input: CloudWatchModel.EnableAlarmActionsInput) throws {
        if let enableAlarmActionsSyncOverride = enableAlarmActionsSyncOverride {
            return try enableAlarmActionsSyncOverride(input)
        }

        throw error
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
    public func getDashboardAsync(input: CloudWatchModel.GetDashboardInput, completion: @escaping (HTTPResult<CloudWatchModel.GetDashboardOutputForGetDashboard>) -> ()) throws {
        if let getDashboardAsyncOverride = getDashboardAsyncOverride {
            return try getDashboardAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: The GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboardSync(input: CloudWatchModel.GetDashboardInput) throws -> CloudWatchModel.GetDashboardOutputForGetDashboard {
        if let getDashboardSyncOverride = getDashboardSyncOverride {
            return try getDashboardSyncOverride(input)
        }

        throw error
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
    public func getMetricDataAsync(input: CloudWatchModel.GetMetricDataInput, completion: @escaping (HTTPResult<CloudWatchModel.GetMetricDataOutputForGetMetricData>) -> ()) throws {
        if let getMetricDataAsyncOverride = getMetricDataAsyncOverride {
            return try getMetricDataAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: The GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken.
     */
    public func getMetricDataSync(input: CloudWatchModel.GetMetricDataInput) throws -> CloudWatchModel.GetMetricDataOutputForGetMetricData {
        if let getMetricDataSyncOverride = getMetricDataSyncOverride {
            return try getMetricDataSyncOverride(input)
        }

        throw error
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
    public func getMetricStatisticsAsync(input: CloudWatchModel.GetMetricStatisticsInput, completion: @escaping (HTTPResult<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics>) -> ()) throws {
        if let getMetricStatisticsAsyncOverride = getMetricStatisticsAsyncOverride {
            return try getMetricStatisticsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetMetricStatistics operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: The GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatisticsSync(input: CloudWatchModel.GetMetricStatisticsInput) throws -> CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics {
        if let getMetricStatisticsSyncOverride = getMetricStatisticsSyncOverride {
            return try getMetricStatisticsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetMetricWidgetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
         - completion: The GetMetricWidgetImageOutputForGetMetricWidgetImage object or an error will be passed to this 
           callback when the operation is complete. The GetMetricWidgetImageOutputForGetMetricWidgetImage
           object will be validated before being returned to caller.
     */
    public func getMetricWidgetImageAsync(input: CloudWatchModel.GetMetricWidgetImageInput, completion: @escaping (HTTPResult<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage>) -> ()) throws {
        if let getMetricWidgetImageAsyncOverride = getMetricWidgetImageAsyncOverride {
            return try getMetricWidgetImageAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the GetMetricWidgetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: The GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getMetricWidgetImageSync(input: CloudWatchModel.GetMetricWidgetImageInput) throws -> CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage {
        if let getMetricWidgetImageSyncOverride = getMetricWidgetImageSyncOverride {
            return try getMetricWidgetImageSyncOverride(input)
        }

        throw error
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
    public func listDashboardsAsync(input: CloudWatchModel.ListDashboardsInput, completion: @escaping (HTTPResult<CloudWatchModel.ListDashboardsOutputForListDashboards>) -> ()) throws {
        if let listDashboardsAsyncOverride = listDashboardsAsyncOverride {
            return try listDashboardsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListDashboards operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: The ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listDashboardsSync(input: CloudWatchModel.ListDashboardsInput) throws -> CloudWatchModel.ListDashboardsOutputForListDashboards {
        if let listDashboardsSyncOverride = listDashboardsSyncOverride {
            return try listDashboardsSyncOverride(input)
        }

        throw error
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
    public func listMetricsAsync(input: CloudWatchModel.ListMetricsInput, completion: @escaping (HTTPResult<CloudWatchModel.ListMetricsOutputForListMetrics>) -> ()) throws {
        if let listMetricsAsyncOverride = listMetricsAsyncOverride {
            return try listMetricsAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListMetrics operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: The ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue.
     */
    public func listMetricsSync(input: CloudWatchModel.ListMetricsInput) throws -> CloudWatchModel.ListMetricsOutputForListMetrics {
        if let listMetricsSyncOverride = listMetricsSyncOverride {
            return try listMetricsSyncOverride(input)
        }

        throw error
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
    public func listTagsForResourceAsync(input: CloudWatchModel.ListTagsForResourceInput, completion: @escaping (HTTPResult<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResourceSync(input: CloudWatchModel.ListTagsForResourceInput) throws -> CloudWatchModel.ListTagsForResourceOutputForListTagsForResource {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        throw error
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
    public func putDashboardAsync(input: CloudWatchModel.PutDashboardInput, completion: @escaping (HTTPResult<CloudWatchModel.PutDashboardOutputForPutDashboard>) -> ()) throws {
        if let putDashboardAsyncOverride = putDashboardAsyncOverride {
            return try putDashboardAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the PutDashboard operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: The PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: dashboardInvalidInput, internalService.
     */
    public func putDashboardSync(input: CloudWatchModel.PutDashboardInput) throws -> CloudWatchModel.PutDashboardOutputForPutDashboard {
        if let putDashboardSyncOverride = putDashboardSyncOverride {
            return try putDashboardSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutMetricAlarm operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: limitExceeded.
     */
    public func putMetricAlarmAsync(input: CloudWatchModel.PutMetricAlarmInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricAlarmAsyncOverride = putMetricAlarmAsyncOverride {
            return try putMetricAlarmAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutMetricAlarm operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
     - Throws: limitExceeded.
     */
    public func putMetricAlarmSync(input: CloudWatchModel.PutMetricAlarmInput) throws {
        if let putMetricAlarmSyncOverride = putMetricAlarmSyncOverride {
            return try putMetricAlarmSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutMetricData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataAsync(input: CloudWatchModel.PutMetricDataInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let putMetricDataAsyncOverride = putMetricDataAsyncOverride {
            return try putMetricDataAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutMetricData operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
     - Throws: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricDataSync(input: CloudWatchModel.PutMetricDataInput) throws {
        if let putMetricDataSyncOverride = putMetricDataSyncOverride {
            return try putMetricDataSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetAlarmState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateAsync(input: CloudWatchModel.SetAlarmStateInput, completion: @escaping (Swift.Error?) -> ()) throws {
        if let setAlarmStateAsyncOverride = setAlarmStateAsyncOverride {
            return try setAlarmStateAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SetAlarmState operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
     - Throws: invalidFormat, resourceNotFound.
     */
    public func setAlarmStateSync(input: CloudWatchModel.SetAlarmStateInput) throws {
        if let setAlarmStateSyncOverride = setAlarmStateSyncOverride {
            return try setAlarmStateSyncOverride(input)
        }

        throw error
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
    public func tagResourceAsync(input: CloudWatchModel.TagResourceInput, completion: @escaping (HTTPResult<CloudWatchModel.TagResourceOutputForTagResource>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResourceSync(input: CloudWatchModel.TagResourceInput) throws -> CloudWatchModel.TagResourceOutputForTagResource {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
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
    public func untagResourceAsync(input: CloudWatchModel.UntagResourceInput, completion: @escaping (HTTPResult<CloudWatchModel.UntagResourceOutputForUntagResource>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(.error(error))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResourceSync(input: CloudWatchModel.UntagResourceInput) throws -> CloudWatchModel.UntagResourceOutputForUntagResource {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }
}
