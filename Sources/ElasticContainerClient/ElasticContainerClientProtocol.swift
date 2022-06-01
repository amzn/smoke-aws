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
// ElasticContainerClientProtocol.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ElasticContainer service.
 */
public protocol ElasticContainerClientProtocol {
    typealias CreateCapacityProviderSyncType = (
            _ input: ElasticContainerModel.CreateCapacityProviderRequest) throws -> ElasticContainerModel.CreateCapacityProviderResponse
    typealias CreateCapacityProviderAsyncType = (
            _ input: ElasticContainerModel.CreateCapacityProviderRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.CreateCapacityProviderResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias CreateClusterSyncType = (
            _ input: ElasticContainerModel.CreateClusterRequest) throws -> ElasticContainerModel.CreateClusterResponse
    typealias CreateClusterAsyncType = (
            _ input: ElasticContainerModel.CreateClusterRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.CreateClusterResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias CreateServiceSyncType = (
            _ input: ElasticContainerModel.CreateServiceRequest) throws -> ElasticContainerModel.CreateServiceResponse
    typealias CreateServiceAsyncType = (
            _ input: ElasticContainerModel.CreateServiceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.CreateServiceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias CreateTaskSetSyncType = (
            _ input: ElasticContainerModel.CreateTaskSetRequest) throws -> ElasticContainerModel.CreateTaskSetResponse
    typealias CreateTaskSetAsyncType = (
            _ input: ElasticContainerModel.CreateTaskSetRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.CreateTaskSetResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeleteAccountSettingSyncType = (
            _ input: ElasticContainerModel.DeleteAccountSettingRequest) throws -> ElasticContainerModel.DeleteAccountSettingResponse
    typealias DeleteAccountSettingAsyncType = (
            _ input: ElasticContainerModel.DeleteAccountSettingRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeleteAccountSettingResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeleteAttributesSyncType = (
            _ input: ElasticContainerModel.DeleteAttributesRequest) throws -> ElasticContainerModel.DeleteAttributesResponse
    typealias DeleteAttributesAsyncType = (
            _ input: ElasticContainerModel.DeleteAttributesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeleteAttributesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeleteCapacityProviderSyncType = (
            _ input: ElasticContainerModel.DeleteCapacityProviderRequest) throws -> ElasticContainerModel.DeleteCapacityProviderResponse
    typealias DeleteCapacityProviderAsyncType = (
            _ input: ElasticContainerModel.DeleteCapacityProviderRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeleteCapacityProviderResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeleteClusterSyncType = (
            _ input: ElasticContainerModel.DeleteClusterRequest) throws -> ElasticContainerModel.DeleteClusterResponse
    typealias DeleteClusterAsyncType = (
            _ input: ElasticContainerModel.DeleteClusterRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeleteClusterResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeleteServiceSyncType = (
            _ input: ElasticContainerModel.DeleteServiceRequest) throws -> ElasticContainerModel.DeleteServiceResponse
    typealias DeleteServiceAsyncType = (
            _ input: ElasticContainerModel.DeleteServiceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeleteServiceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeleteTaskSetSyncType = (
            _ input: ElasticContainerModel.DeleteTaskSetRequest) throws -> ElasticContainerModel.DeleteTaskSetResponse
    typealias DeleteTaskSetAsyncType = (
            _ input: ElasticContainerModel.DeleteTaskSetRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeleteTaskSetResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeregisterContainerInstanceSyncType = (
            _ input: ElasticContainerModel.DeregisterContainerInstanceRequest) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse
    typealias DeregisterContainerInstanceAsyncType = (
            _ input: ElasticContainerModel.DeregisterContainerInstanceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeregisterContainerInstanceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DeregisterTaskDefinitionSyncType = (
            _ input: ElasticContainerModel.DeregisterTaskDefinitionRequest) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse
    typealias DeregisterTaskDefinitionAsyncType = (
            _ input: ElasticContainerModel.DeregisterTaskDefinitionRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DeregisterTaskDefinitionResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeCapacityProvidersSyncType = (
            _ input: ElasticContainerModel.DescribeCapacityProvidersRequest) throws -> ElasticContainerModel.DescribeCapacityProvidersResponse
    typealias DescribeCapacityProvidersAsyncType = (
            _ input: ElasticContainerModel.DescribeCapacityProvidersRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeCapacityProvidersResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeClustersSyncType = (
            _ input: ElasticContainerModel.DescribeClustersRequest) throws -> ElasticContainerModel.DescribeClustersResponse
    typealias DescribeClustersAsyncType = (
            _ input: ElasticContainerModel.DescribeClustersRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeClustersResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeContainerInstancesSyncType = (
            _ input: ElasticContainerModel.DescribeContainerInstancesRequest) throws -> ElasticContainerModel.DescribeContainerInstancesResponse
    typealias DescribeContainerInstancesAsyncType = (
            _ input: ElasticContainerModel.DescribeContainerInstancesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeContainerInstancesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeServicesSyncType = (
            _ input: ElasticContainerModel.DescribeServicesRequest) throws -> ElasticContainerModel.DescribeServicesResponse
    typealias DescribeServicesAsyncType = (
            _ input: ElasticContainerModel.DescribeServicesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeServicesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeTaskDefinitionSyncType = (
            _ input: ElasticContainerModel.DescribeTaskDefinitionRequest) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse
    typealias DescribeTaskDefinitionAsyncType = (
            _ input: ElasticContainerModel.DescribeTaskDefinitionRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeTaskDefinitionResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeTaskSetsSyncType = (
            _ input: ElasticContainerModel.DescribeTaskSetsRequest) throws -> ElasticContainerModel.DescribeTaskSetsResponse
    typealias DescribeTaskSetsAsyncType = (
            _ input: ElasticContainerModel.DescribeTaskSetsRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeTaskSetsResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DescribeTasksSyncType = (
            _ input: ElasticContainerModel.DescribeTasksRequest) throws -> ElasticContainerModel.DescribeTasksResponse
    typealias DescribeTasksAsyncType = (
            _ input: ElasticContainerModel.DescribeTasksRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DescribeTasksResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias DiscoverPollEndpointSyncType = (
            _ input: ElasticContainerModel.DiscoverPollEndpointRequest) throws -> ElasticContainerModel.DiscoverPollEndpointResponse
    typealias DiscoverPollEndpointAsyncType = (
            _ input: ElasticContainerModel.DiscoverPollEndpointRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.DiscoverPollEndpointResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ExecuteCommandSyncType = (
            _ input: ElasticContainerModel.ExecuteCommandRequest) throws -> ElasticContainerModel.ExecuteCommandResponse
    typealias ExecuteCommandAsyncType = (
            _ input: ElasticContainerModel.ExecuteCommandRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ExecuteCommandResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListAccountSettingsSyncType = (
            _ input: ElasticContainerModel.ListAccountSettingsRequest) throws -> ElasticContainerModel.ListAccountSettingsResponse
    typealias ListAccountSettingsAsyncType = (
            _ input: ElasticContainerModel.ListAccountSettingsRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListAccountSettingsResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListAttributesSyncType = (
            _ input: ElasticContainerModel.ListAttributesRequest) throws -> ElasticContainerModel.ListAttributesResponse
    typealias ListAttributesAsyncType = (
            _ input: ElasticContainerModel.ListAttributesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListAttributesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListClustersSyncType = (
            _ input: ElasticContainerModel.ListClustersRequest) throws -> ElasticContainerModel.ListClustersResponse
    typealias ListClustersAsyncType = (
            _ input: ElasticContainerModel.ListClustersRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListClustersResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListContainerInstancesSyncType = (
            _ input: ElasticContainerModel.ListContainerInstancesRequest) throws -> ElasticContainerModel.ListContainerInstancesResponse
    typealias ListContainerInstancesAsyncType = (
            _ input: ElasticContainerModel.ListContainerInstancesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListContainerInstancesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListServicesSyncType = (
            _ input: ElasticContainerModel.ListServicesRequest) throws -> ElasticContainerModel.ListServicesResponse
    typealias ListServicesAsyncType = (
            _ input: ElasticContainerModel.ListServicesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListServicesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: ElasticContainerModel.ListTagsForResourceRequest) throws -> ElasticContainerModel.ListTagsForResourceResponse
    typealias ListTagsForResourceAsyncType = (
            _ input: ElasticContainerModel.ListTagsForResourceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListTagsForResourceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListTaskDefinitionFamiliesSyncType = (
            _ input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse
    typealias ListTaskDefinitionFamiliesAsyncType = (
            _ input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionFamiliesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListTaskDefinitionsSyncType = (
            _ input: ElasticContainerModel.ListTaskDefinitionsRequest) throws -> ElasticContainerModel.ListTaskDefinitionsResponse
    typealias ListTaskDefinitionsAsyncType = (
            _ input: ElasticContainerModel.ListTaskDefinitionsRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionsResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias ListTasksSyncType = (
            _ input: ElasticContainerModel.ListTasksRequest) throws -> ElasticContainerModel.ListTasksResponse
    typealias ListTasksAsyncType = (
            _ input: ElasticContainerModel.ListTasksRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.ListTasksResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias PutAccountSettingSyncType = (
            _ input: ElasticContainerModel.PutAccountSettingRequest) throws -> ElasticContainerModel.PutAccountSettingResponse
    typealias PutAccountSettingAsyncType = (
            _ input: ElasticContainerModel.PutAccountSettingRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.PutAccountSettingResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias PutAccountSettingDefaultSyncType = (
            _ input: ElasticContainerModel.PutAccountSettingDefaultRequest) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse
    typealias PutAccountSettingDefaultAsyncType = (
            _ input: ElasticContainerModel.PutAccountSettingDefaultRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.PutAccountSettingDefaultResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias PutAttributesSyncType = (
            _ input: ElasticContainerModel.PutAttributesRequest) throws -> ElasticContainerModel.PutAttributesResponse
    typealias PutAttributesAsyncType = (
            _ input: ElasticContainerModel.PutAttributesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.PutAttributesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias PutClusterCapacityProvidersSyncType = (
            _ input: ElasticContainerModel.PutClusterCapacityProvidersRequest) throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse
    typealias PutClusterCapacityProvidersAsyncType = (
            _ input: ElasticContainerModel.PutClusterCapacityProvidersRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.PutClusterCapacityProvidersResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias RegisterContainerInstanceSyncType = (
            _ input: ElasticContainerModel.RegisterContainerInstanceRequest) throws -> ElasticContainerModel.RegisterContainerInstanceResponse
    typealias RegisterContainerInstanceAsyncType = (
            _ input: ElasticContainerModel.RegisterContainerInstanceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.RegisterContainerInstanceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias RegisterTaskDefinitionSyncType = (
            _ input: ElasticContainerModel.RegisterTaskDefinitionRequest) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse
    typealias RegisterTaskDefinitionAsyncType = (
            _ input: ElasticContainerModel.RegisterTaskDefinitionRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.RegisterTaskDefinitionResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias RunTaskSyncType = (
            _ input: ElasticContainerModel.RunTaskRequest) throws -> ElasticContainerModel.RunTaskResponse
    typealias RunTaskAsyncType = (
            _ input: ElasticContainerModel.RunTaskRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.RunTaskResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias StartTaskSyncType = (
            _ input: ElasticContainerModel.StartTaskRequest) throws -> ElasticContainerModel.StartTaskResponse
    typealias StartTaskAsyncType = (
            _ input: ElasticContainerModel.StartTaskRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.StartTaskResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias StopTaskSyncType = (
            _ input: ElasticContainerModel.StopTaskRequest) throws -> ElasticContainerModel.StopTaskResponse
    typealias StopTaskAsyncType = (
            _ input: ElasticContainerModel.StopTaskRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.StopTaskResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias SubmitAttachmentStateChangesSyncType = (
            _ input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse
    typealias SubmitAttachmentStateChangesAsyncType = (
            _ input: ElasticContainerModel.SubmitAttachmentStateChangesRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.SubmitAttachmentStateChangesResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias SubmitContainerStateChangeSyncType = (
            _ input: ElasticContainerModel.SubmitContainerStateChangeRequest) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse
    typealias SubmitContainerStateChangeAsyncType = (
            _ input: ElasticContainerModel.SubmitContainerStateChangeRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.SubmitContainerStateChangeResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias SubmitTaskStateChangeSyncType = (
            _ input: ElasticContainerModel.SubmitTaskStateChangeRequest) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse
    typealias SubmitTaskStateChangeAsyncType = (
            _ input: ElasticContainerModel.SubmitTaskStateChangeRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.SubmitTaskStateChangeResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: ElasticContainerModel.TagResourceRequest) throws -> ElasticContainerModel.TagResourceResponse
    typealias TagResourceAsyncType = (
            _ input: ElasticContainerModel.TagResourceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.TagResourceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: ElasticContainerModel.UntagResourceRequest) throws -> ElasticContainerModel.UntagResourceResponse
    typealias UntagResourceAsyncType = (
            _ input: ElasticContainerModel.UntagResourceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UntagResourceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateCapacityProviderSyncType = (
            _ input: ElasticContainerModel.UpdateCapacityProviderRequest) throws -> ElasticContainerModel.UpdateCapacityProviderResponse
    typealias UpdateCapacityProviderAsyncType = (
            _ input: ElasticContainerModel.UpdateCapacityProviderRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateCapacityProviderResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateClusterSyncType = (
            _ input: ElasticContainerModel.UpdateClusterRequest) throws -> ElasticContainerModel.UpdateClusterResponse
    typealias UpdateClusterAsyncType = (
            _ input: ElasticContainerModel.UpdateClusterRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateClusterResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateClusterSettingsSyncType = (
            _ input: ElasticContainerModel.UpdateClusterSettingsRequest) throws -> ElasticContainerModel.UpdateClusterSettingsResponse
    typealias UpdateClusterSettingsAsyncType = (
            _ input: ElasticContainerModel.UpdateClusterSettingsRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateClusterSettingsResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateContainerAgentSyncType = (
            _ input: ElasticContainerModel.UpdateContainerAgentRequest) throws -> ElasticContainerModel.UpdateContainerAgentResponse
    typealias UpdateContainerAgentAsyncType = (
            _ input: ElasticContainerModel.UpdateContainerAgentRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateContainerAgentResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateContainerInstancesStateSyncType = (
            _ input: ElasticContainerModel.UpdateContainerInstancesStateRequest) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse
    typealias UpdateContainerInstancesStateAsyncType = (
            _ input: ElasticContainerModel.UpdateContainerInstancesStateRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateContainerInstancesStateResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateServiceSyncType = (
            _ input: ElasticContainerModel.UpdateServiceRequest) throws -> ElasticContainerModel.UpdateServiceResponse
    typealias UpdateServiceAsyncType = (
            _ input: ElasticContainerModel.UpdateServiceRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateServiceResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateServicePrimaryTaskSetSyncType = (
            _ input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse
    typealias UpdateServicePrimaryTaskSetAsyncType = (
            _ input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse, ElasticContainerError>) -> ()) throws -> ()
    typealias UpdateTaskSetSyncType = (
            _ input: ElasticContainerModel.UpdateTaskSetRequest) throws -> ElasticContainerModel.UpdateTaskSetResponse
    typealias UpdateTaskSetAsyncType = (
            _ input: ElasticContainerModel.UpdateTaskSetRequest, 
            _ completion: @escaping (Result<ElasticContainerModel.UpdateTaskSetResponse, ElasticContainerError>) -> ()) throws -> ()

    /**
     Invokes the CreateCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
         - completion: The CreateCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    func createCapacityProviderAsync(
            input: ElasticContainerModel.CreateCapacityProviderRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateCapacityProviderResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the CreateCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    func createCapacityProviderSync(
            input: ElasticContainerModel.CreateCapacityProviderRequest) throws -> ElasticContainerModel.CreateCapacityProviderResponse

    /**
     Invokes the CreateCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
         - completion: The CreateClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func createClusterAsync(
            input: ElasticContainerModel.CreateClusterRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateClusterResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the CreateCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func createClusterSync(
            input: ElasticContainerModel.CreateClusterRequest) throws -> ElasticContainerModel.CreateClusterResponse

    /**
     Invokes the CreateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
         - completion: The CreateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createServiceAsync(
            input: ElasticContainerModel.CreateServiceRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateServiceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the CreateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createServiceSync(
            input: ElasticContainerModel.CreateServiceRequest) throws -> ElasticContainerModel.CreateServiceResponse

    /**
     Invokes the CreateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
         - completion: The CreateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSetAsync(
            input: ElasticContainerModel.CreateTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateTaskSetResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the CreateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSetSync(
            input: ElasticContainerModel.CreateTaskSetRequest) throws -> ElasticContainerModel.CreateTaskSetResponse

    /**
     Invokes the DeleteAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
         - completion: The DeleteAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deleteAccountSettingAsync(
            input: ElasticContainerModel.DeleteAccountSettingRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteAccountSettingResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeleteAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteAccountSettingSync(
            input: ElasticContainerModel.DeleteAccountSettingRequest) throws -> ElasticContainerModel.DeleteAccountSettingResponse

    /**
     Invokes the DeleteAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
         - completion: The DeleteAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributesAsync(
            input: ElasticContainerModel.DeleteAttributesRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteAttributesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeleteAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributesSync(
            input: ElasticContainerModel.DeleteAttributesRequest) throws -> ElasticContainerModel.DeleteAttributesResponse

    /**
     Invokes the DeleteCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
         - completion: The DeleteCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deleteCapacityProviderAsync(
            input: ElasticContainerModel.DeleteCapacityProviderRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteCapacityProviderResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeleteCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: The DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteCapacityProviderSync(
            input: ElasticContainerModel.DeleteCapacityProviderRequest) throws -> ElasticContainerModel.DeleteCapacityProviderResponse

    /**
     Invokes the DeleteCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
         - completion: The DeleteClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteClusterAsync(
            input: ElasticContainerModel.DeleteClusterRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteClusterResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeleteCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteClusterSync(
            input: ElasticContainerModel.DeleteClusterRequest) throws -> ElasticContainerModel.DeleteClusterResponse

    /**
     Invokes the DeleteService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
         - completion: The DeleteServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteServiceAsync(
            input: ElasticContainerModel.DeleteServiceRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteServiceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeleteService operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteServiceSync(
            input: ElasticContainerModel.DeleteServiceRequest) throws -> ElasticContainerModel.DeleteServiceResponse

    /**
     Invokes the DeleteTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
         - completion: The DeleteTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSetAsync(
            input: ElasticContainerModel.DeleteTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteTaskSetResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeleteTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSetSync(
            input: ElasticContainerModel.DeleteTaskSetRequest) throws -> ElasticContainerModel.DeleteTaskSetResponse

    /**
     Invokes the DeregisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
         - completion: The DeregisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstanceAsync(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeregisterContainerInstanceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeregisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstanceSync(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse

    /**
     Invokes the DeregisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
         - completion: The DeregisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deregisterTaskDefinitionAsync(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeregisterTaskDefinitionResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DeregisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deregisterTaskDefinitionSync(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse

    /**
     Invokes the DescribeCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
         - completion: The DescribeCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeCapacityProvidersAsync(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeCapacityProvidersResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeCapacityProvidersSync(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest) throws -> ElasticContainerModel.DescribeCapacityProvidersResponse

    /**
     Invokes the DescribeClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
         - completion: The DescribeClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeClustersAsync(
            input: ElasticContainerModel.DescribeClustersRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeClustersResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeClustersSync(
            input: ElasticContainerModel.DescribeClustersRequest) throws -> ElasticContainerModel.DescribeClustersResponse

    /**
     Invokes the DescribeContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
         - completion: The DescribeContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstancesAsync(
            input: ElasticContainerModel.DescribeContainerInstancesRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeContainerInstancesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstancesSync(
            input: ElasticContainerModel.DescribeContainerInstancesRequest) throws -> ElasticContainerModel.DescribeContainerInstancesResponse

    /**
     Invokes the DescribeServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
         - completion: The DescribeServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeServicesAsync(
            input: ElasticContainerModel.DescribeServicesRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeServicesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeServicesSync(
            input: ElasticContainerModel.DescribeServicesRequest) throws -> ElasticContainerModel.DescribeServicesResponse

    /**
     Invokes the DescribeTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
         - completion: The DescribeTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeTaskDefinitionAsync(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskDefinitionResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeTaskDefinitionSync(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse

    /**
     Invokes the DescribeTaskSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
         - completion: The DescribeTaskSetsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskSetsResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSetsAsync(
            input: ElasticContainerModel.DescribeTaskSetsRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskSetsResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeTaskSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSetsSync(
            input: ElasticContainerModel.DescribeTaskSetsRequest) throws -> ElasticContainerModel.DescribeTaskSetsResponse

    /**
     Invokes the DescribeTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
         - completion: The DescribeTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasksAsync(
            input: ElasticContainerModel.DescribeTasksRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeTasksResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DescribeTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasksSync(
            input: ElasticContainerModel.DescribeTasksRequest) throws -> ElasticContainerModel.DescribeTasksResponse

    /**
     Invokes the DiscoverPollEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
         - completion: The DiscoverPollEndpointResponse object or an error will be passed to this 
           callback when the operation is complete. The DiscoverPollEndpointResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func discoverPollEndpointAsync(
            input: ElasticContainerModel.DiscoverPollEndpointRequest, 
            completion: @escaping (Result<ElasticContainerModel.DiscoverPollEndpointResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the DiscoverPollEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func discoverPollEndpointSync(
            input: ElasticContainerModel.DiscoverPollEndpointRequest) throws -> ElasticContainerModel.DiscoverPollEndpointResponse

    /**
     Invokes the ExecuteCommand operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteCommandRequest object being passed to this operation.
         - completion: The ExecuteCommandResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteCommandResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, targetNotConnected.
     */
    func executeCommandAsync(
            input: ElasticContainerModel.ExecuteCommandRequest, 
            completion: @escaping (Result<ElasticContainerModel.ExecuteCommandResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ExecuteCommand operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteCommandRequest object being passed to this operation.
     - Returns: The ExecuteCommandResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, targetNotConnected.
     */
    func executeCommandSync(
            input: ElasticContainerModel.ExecuteCommandRequest) throws -> ElasticContainerModel.ExecuteCommandResponse

    /**
     Invokes the ListAccountSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
         - completion: The ListAccountSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAccountSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listAccountSettingsAsync(
            input: ElasticContainerModel.ListAccountSettingsRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListAccountSettingsResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListAccountSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listAccountSettingsSync(
            input: ElasticContainerModel.ListAccountSettingsRequest) throws -> ElasticContainerModel.ListAccountSettingsResponse

    /**
     Invokes the ListAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
         - completion: The ListAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter.
     */
    func listAttributesAsync(
            input: ElasticContainerModel.ListAttributesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListAttributesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    func listAttributesSync(
            input: ElasticContainerModel.ListAttributesRequest) throws -> ElasticContainerModel.ListAttributesResponse

    /**
     Invokes the ListClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
         - completion: The ListClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The ListClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listClustersAsync(
            input: ElasticContainerModel.ListClustersRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListClustersResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listClustersSync(
            input: ElasticContainerModel.ListClustersRequest) throws -> ElasticContainerModel.ListClustersResponse

    /**
     Invokes the ListContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
         - completion: The ListContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstancesAsync(
            input: ElasticContainerModel.ListContainerInstancesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListContainerInstancesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstancesSync(
            input: ElasticContainerModel.ListContainerInstancesRequest) throws -> ElasticContainerModel.ListContainerInstancesResponse

    /**
     Invokes the ListServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
         - completion: The ListServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listServicesAsync(
            input: ElasticContainerModel.ListServicesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListServicesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listServicesSync(
            input: ElasticContainerModel.ListServicesRequest) throws -> ElasticContainerModel.ListServicesResponse

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResourceAsync(
            input: ElasticContainerModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTagsForResourceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResourceSync(
            input: ElasticContainerModel.ListTagsForResourceRequest) throws -> ElasticContainerModel.ListTagsForResourceResponse

    /**
     Invokes the ListTaskDefinitionFamilies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
         - completion: The ListTaskDefinitionFamiliesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionFamiliesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listTaskDefinitionFamiliesAsync(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionFamiliesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListTaskDefinitionFamilies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitionFamiliesSync(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse

    /**
     Invokes the ListTaskDefinitions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
         - completion: The ListTaskDefinitionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listTaskDefinitionsAsync(
            input: ElasticContainerModel.ListTaskDefinitionsRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionsResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListTaskDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitionsSync(
            input: ElasticContainerModel.ListTaskDefinitionsRequest) throws -> ElasticContainerModel.ListTaskDefinitionsResponse

    /**
     Invokes the ListTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
         - completion: The ListTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasksAsync(
            input: ElasticContainerModel.ListTasksRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTasksResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the ListTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasksSync(
            input: ElasticContainerModel.ListTasksRequest) throws -> ElasticContainerModel.ListTasksResponse

    /**
     Invokes the PutAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
         - completion: The PutAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func putAccountSettingAsync(
            input: ElasticContainerModel.PutAccountSettingRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the PutAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSettingSync(
            input: ElasticContainerModel.PutAccountSettingRequest) throws -> ElasticContainerModel.PutAccountSettingResponse

    /**
     Invokes the PutAccountSettingDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
         - completion: The PutAccountSettingDefaultResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingDefaultResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func putAccountSettingDefaultAsync(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingDefaultResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the PutAccountSettingDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSettingDefaultSync(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse

    /**
     Invokes the PutAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
         - completion: The PutAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributesAsync(
            input: ElasticContainerModel.PutAttributesRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutAttributesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the PutAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributesSync(
            input: ElasticContainerModel.PutAttributesRequest) throws -> ElasticContainerModel.PutAttributesResponse

    /**
     Invokes the PutClusterCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
         - completion: The PutClusterCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The PutClusterCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProvidersAsync(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutClusterCapacityProvidersResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the PutClusterCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProvidersSync(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest) throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse

    /**
     Invokes the RegisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
         - completion: The RegisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func registerContainerInstanceAsync(
            input: ElasticContainerModel.RegisterContainerInstanceRequest, 
            completion: @escaping (Result<ElasticContainerModel.RegisterContainerInstanceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the RegisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerContainerInstanceSync(
            input: ElasticContainerModel.RegisterContainerInstanceRequest) throws -> ElasticContainerModel.RegisterContainerInstanceResponse

    /**
     Invokes the RegisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
         - completion: The RegisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func registerTaskDefinitionAsync(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest, 
            completion: @escaping (Result<ElasticContainerModel.RegisterTaskDefinitionResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the RegisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerTaskDefinitionSync(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse

    /**
     Invokes the RunTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
         - completion: The RunTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The RunTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTaskAsync(
            input: ElasticContainerModel.RunTaskRequest, 
            completion: @escaping (Result<ElasticContainerModel.RunTaskResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the RunTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTaskSync(
            input: ElasticContainerModel.RunTaskRequest) throws -> ElasticContainerModel.RunTaskResponse

    /**
     Invokes the StartTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
         - completion: The StartTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func startTaskAsync(
            input: ElasticContainerModel.StartTaskRequest, 
            completion: @escaping (Result<ElasticContainerModel.StartTaskResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the StartTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func startTaskSync(
            input: ElasticContainerModel.StartTaskRequest) throws -> ElasticContainerModel.StartTaskResponse

    /**
     Invokes the StopTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
         - completion: The StopTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StopTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func stopTaskAsync(
            input: ElasticContainerModel.StopTaskRequest, 
            completion: @escaping (Result<ElasticContainerModel.StopTaskResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the StopTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func stopTaskSync(
            input: ElasticContainerModel.StopTaskRequest) throws -> ElasticContainerModel.StopTaskResponse

    /**
     Invokes the SubmitAttachmentStateChanges operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
         - completion: The SubmitAttachmentStateChangesResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitAttachmentStateChangesResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChangesAsync(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest, 
            completion: @escaping (Result<ElasticContainerModel.SubmitAttachmentStateChangesResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the SubmitAttachmentStateChanges operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChangesSync(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse

    /**
     Invokes the SubmitContainerStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
         - completion: The SubmitContainerStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitContainerStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    func submitContainerStateChangeAsync(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest, 
            completion: @escaping (Result<ElasticContainerModel.SubmitContainerStateChangeResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the SubmitContainerStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    func submitContainerStateChangeSync(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse

    /**
     Invokes the SubmitTaskStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
         - completion: The SubmitTaskStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitTaskStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChangeAsync(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest, 
            completion: @escaping (Result<ElasticContainerModel.SubmitTaskStateChangeResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the SubmitTaskStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChangeSync(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResourceAsync(
            input: ElasticContainerModel.TagResourceRequest, 
            completion: @escaping (Result<ElasticContainerModel.TagResourceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResourceSync(
            input: ElasticContainerModel.TagResourceRequest) throws -> ElasticContainerModel.TagResourceResponse

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResourceAsync(
            input: ElasticContainerModel.UntagResourceRequest, 
            completion: @escaping (Result<ElasticContainerModel.UntagResourceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResourceSync(
            input: ElasticContainerModel.UntagResourceRequest) throws -> ElasticContainerModel.UntagResourceResponse

    /**
     Invokes the UpdateCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
         - completion: The UpdateCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func updateCapacityProviderAsync(
            input: ElasticContainerModel.UpdateCapacityProviderRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateCapacityProviderResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
     - Returns: The UpdateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func updateCapacityProviderSync(
            input: ElasticContainerModel.UpdateCapacityProviderRequest) throws -> ElasticContainerModel.UpdateCapacityProviderResponse

    /**
     Invokes the UpdateCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateClusterRequest object being passed to this operation.
         - completion: The UpdateClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterAsync(
            input: ElasticContainerModel.UpdateClusterRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateClusterResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateClusterRequest object being passed to this operation.
     - Returns: The UpdateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSync(
            input: ElasticContainerModel.UpdateClusterRequest) throws -> ElasticContainerModel.UpdateClusterResponse

    /**
     Invokes the UpdateClusterSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
         - completion: The UpdateClusterSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateClusterSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettingsAsync(
            input: ElasticContainerModel.UpdateClusterSettingsRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateClusterSettingsResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateClusterSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettingsSync(
            input: ElasticContainerModel.UpdateClusterSettingsRequest) throws -> ElasticContainerModel.UpdateClusterSettingsResponse

    /**
     Invokes the UpdateContainerAgent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
         - completion: The UpdateContainerAgentResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerAgentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgentAsync(
            input: ElasticContainerModel.UpdateContainerAgentRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerAgentResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateContainerAgent operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgentSync(
            input: ElasticContainerModel.UpdateContainerAgentRequest) throws -> ElasticContainerModel.UpdateContainerAgentResponse

    /**
     Invokes the UpdateContainerInstancesState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
         - completion: The UpdateContainerInstancesStateResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerInstancesStateResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesStateAsync(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerInstancesStateResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateContainerInstancesState operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesStateSync(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse

    /**
     Invokes the UpdateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
         - completion: The UpdateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateServiceAsync(
            input: ElasticContainerModel.UpdateServiceRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateServiceResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateServiceSync(
            input: ElasticContainerModel.UpdateServiceRequest) throws -> ElasticContainerModel.UpdateServiceResponse

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
         - completion: The UpdateServicePrimaryTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServicePrimaryTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSetAsync(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateServicePrimaryTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSetSync(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse

    /**
     Invokes the UpdateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
         - completion: The UpdateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSetAsync(
            input: ElasticContainerModel.UpdateTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateTaskSetResponse, ElasticContainerError>) -> ()) throws

    /**
     Invokes the UpdateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSetSync(
            input: ElasticContainerModel.UpdateTaskSetRequest) throws -> ElasticContainerModel.UpdateTaskSetResponse
}
