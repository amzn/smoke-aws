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
    typealias CreateCapacityProviderSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateCapacityProviderRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateCapacityProviderResponse
    typealias CreateCapacityProviderAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateCapacityProviderRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.CreateCapacityProviderResponse, HTTPClientError>) -> ()) throws -> ()
    typealias CreateClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateClusterRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateClusterResponse
    typealias CreateClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateClusterRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.CreateClusterResponse, HTTPClientError>) -> ()) throws -> ()
    typealias CreateServiceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateServiceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateServiceResponse
    typealias CreateServiceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateServiceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.CreateServiceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTaskSetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateTaskSetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateTaskSetResponse
    typealias CreateTaskSetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.CreateTaskSetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.CreateTaskSetResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteAccountSettingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteAccountSettingRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteAccountSettingResponse
    typealias DeleteAccountSettingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteAccountSettingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeleteAccountSettingResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteAttributesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteAttributesResponse
    typealias DeleteAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeleteAttributesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteClusterSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteClusterRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteClusterResponse
    typealias DeleteClusterAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteClusterRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeleteClusterResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteServiceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteServiceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteServiceResponse
    typealias DeleteServiceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteServiceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeleteServiceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTaskSetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteTaskSetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteTaskSetResponse
    typealias DeleteTaskSetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeleteTaskSetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeleteTaskSetResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeregisterContainerInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeregisterContainerInstanceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse
    typealias DeregisterContainerInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeregisterContainerInstanceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeregisterContainerInstanceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DeregisterTaskDefinitionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeregisterTaskDefinitionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse
    typealias DeregisterTaskDefinitionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DeregisterTaskDefinitionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DeregisterTaskDefinitionResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeCapacityProvidersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeCapacityProvidersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeCapacityProvidersResponse
    typealias DescribeCapacityProvidersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeCapacityProvidersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeCapacityProvidersResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeClustersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeClustersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeClustersResponse
    typealias DescribeClustersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeClustersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeClustersResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeContainerInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeContainerInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeContainerInstancesResponse
    typealias DescribeContainerInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeContainerInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeContainerInstancesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeServicesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeServicesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeServicesResponse
    typealias DescribeServicesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeServicesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeServicesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTaskDefinitionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeTaskDefinitionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse
    typealias DescribeTaskDefinitionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeTaskDefinitionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeTaskDefinitionResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTaskSetsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeTaskSetsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTaskSetsResponse
    typealias DescribeTaskSetsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeTaskSetsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeTaskSetsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTasksResponse
    typealias DescribeTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DescribeTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DescribeTasksResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DiscoverPollEndpointSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DiscoverPollEndpointRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.DiscoverPollEndpointResponse
    typealias DiscoverPollEndpointAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.DiscoverPollEndpointRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.DiscoverPollEndpointResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListAccountSettingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListAccountSettingsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListAccountSettingsResponse
    typealias ListAccountSettingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListAccountSettingsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListAccountSettingsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListAttributesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListAttributesResponse
    typealias ListAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListAttributesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListClustersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListClustersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListClustersResponse
    typealias ListClustersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListClustersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListClustersResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListContainerInstancesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListContainerInstancesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListContainerInstancesResponse
    typealias ListContainerInstancesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListContainerInstancesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListContainerInstancesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListServicesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListServicesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListServicesResponse
    typealias ListServicesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListServicesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListServicesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTagsForResourceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTagsForResourceResponse
    typealias ListTagsForResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTagsForResourceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListTagsForResourceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListTaskDefinitionFamiliesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse
    typealias ListTaskDefinitionFamiliesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionFamiliesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListTaskDefinitionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTaskDefinitionsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTaskDefinitionsResponse
    typealias ListTaskDefinitionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTaskDefinitionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ListTasksSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTasksRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTasksResponse
    typealias ListTasksAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.ListTasksRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.ListTasksResponse, HTTPClientError>) -> ()) throws -> ()
    typealias PutAccountSettingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutAccountSettingRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAccountSettingResponse
    typealias PutAccountSettingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutAccountSettingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.PutAccountSettingResponse, HTTPClientError>) -> ()) throws -> ()
    typealias PutAccountSettingDefaultSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutAccountSettingDefaultRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse
    typealias PutAccountSettingDefaultAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutAccountSettingDefaultRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.PutAccountSettingDefaultResponse, HTTPClientError>) -> ()) throws -> ()
    typealias PutAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutAttributesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAttributesResponse
    typealias PutAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.PutAttributesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias PutClusterCapacityProvidersSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutClusterCapacityProvidersRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse
    typealias PutClusterCapacityProvidersAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.PutClusterCapacityProvidersRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.PutClusterCapacityProvidersResponse, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterContainerInstanceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.RegisterContainerInstanceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.RegisterContainerInstanceResponse
    typealias RegisterContainerInstanceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.RegisterContainerInstanceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.RegisterContainerInstanceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias RegisterTaskDefinitionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.RegisterTaskDefinitionRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse
    typealias RegisterTaskDefinitionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.RegisterTaskDefinitionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.RegisterTaskDefinitionResponse, HTTPClientError>) -> ()) throws -> ()
    typealias RunTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.RunTaskRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.RunTaskResponse
    typealias RunTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.RunTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.RunTaskResponse, HTTPClientError>) -> ()) throws -> ()
    typealias StartTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.StartTaskRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.StartTaskResponse
    typealias StartTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.StartTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.StartTaskResponse, HTTPClientError>) -> ()) throws -> ()
    typealias StopTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.StopTaskRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.StopTaskResponse
    typealias StopTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.StopTaskRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.StopTaskResponse, HTTPClientError>) -> ()) throws -> ()
    typealias SubmitAttachmentStateChangesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.SubmitAttachmentStateChangesRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse
    typealias SubmitAttachmentStateChangesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.SubmitAttachmentStateChangesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.SubmitAttachmentStateChangesResponse, HTTPClientError>) -> ()) throws -> ()
    typealias SubmitContainerStateChangeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.SubmitContainerStateChangeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse
    typealias SubmitContainerStateChangeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.SubmitContainerStateChangeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.SubmitContainerStateChangeResponse, HTTPClientError>) -> ()) throws -> ()
    typealias SubmitTaskStateChangeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.SubmitTaskStateChangeRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse
    typealias SubmitTaskStateChangeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.SubmitTaskStateChangeRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.SubmitTaskStateChangeResponse, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.TagResourceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.TagResourceResponse
    typealias TagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.TagResourceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.TagResourceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UntagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UntagResourceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UntagResourceResponse
    typealias UntagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UntagResourceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UntagResourceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateClusterSettingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateClusterSettingsRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateClusterSettingsResponse
    typealias UpdateClusterSettingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateClusterSettingsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UpdateClusterSettingsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateContainerAgentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateContainerAgentRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateContainerAgentResponse
    typealias UpdateContainerAgentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateContainerAgentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UpdateContainerAgentResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateContainerInstancesStateSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateContainerInstancesStateRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse
    typealias UpdateContainerInstancesStateAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateContainerInstancesStateRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UpdateContainerInstancesStateResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateServiceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateServiceRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateServiceResponse
    typealias UpdateServiceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateServiceRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UpdateServiceResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateServicePrimaryTaskSetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse
    typealias UpdateServicePrimaryTaskSetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateTaskSetSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateTaskSetRequest,
            _ reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateTaskSetResponse
    typealias UpdateTaskSetAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: ElasticContainerModel.UpdateTaskSetRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<ElasticContainerModel.UpdateTaskSetResponse, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the CreateCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
         - completion: The CreateCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, limitExceeded, server.
     */
    func createCapacityProviderAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateCapacityProviderRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateCapacityProviderResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server.
     */
    func createCapacityProviderSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateCapacityProviderRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateCapacityProviderResponse

    /**
     Invokes the CreateCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
         - completion: The CreateClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func createClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateClusterRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateClusterResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func createClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateClusterRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateClusterResponse

    /**
     Invokes the CreateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
         - completion: The CreateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createServiceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateServiceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateServiceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createServiceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateServiceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateServiceResponse

    /**
     Invokes the CreateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
         - completion: The CreateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateTaskSetResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateTaskSetResponse

    /**
     Invokes the DeleteAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
         - completion: The DeleteAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deleteAccountSettingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAccountSettingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteAccountSettingResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteAccountSettingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAccountSettingRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteAccountSettingResponse

    /**
     Invokes the DeleteAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
         - completion: The DeleteAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteAttributesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteAttributesResponse

    /**
     Invokes the DeleteCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
         - completion: The DeleteClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteClusterRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteClusterResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteClusterRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteClusterResponse

    /**
     Invokes the DeleteService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
         - completion: The DeleteServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteServiceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteServiceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteServiceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteService operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteServiceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteServiceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteServiceResponse

    /**
     Invokes the DeleteTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
         - completion: The DeleteTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteTaskSetResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteTaskSetResponse

    /**
     Invokes the DeregisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
         - completion: The DeregisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeregisterContainerInstanceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeregisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse

    /**
     Invokes the DeregisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
         - completion: The DeregisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deregisterTaskDefinitionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeregisterTaskDefinitionResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeregisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deregisterTaskDefinitionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse

    /**
     Invokes the DescribeCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
         - completion: The DescribeCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeCapacityProvidersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeCapacityProvidersResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeCapacityProvidersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeCapacityProvidersResponse

    /**
     Invokes the DescribeClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
         - completion: The DescribeClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeClustersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeClustersResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeClustersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeClustersResponse

    /**
     Invokes the DescribeContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
         - completion: The DescribeContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeContainerInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeContainerInstancesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeContainerInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeContainerInstancesResponse

    /**
     Invokes the DescribeServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
         - completion: The DescribeServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeServicesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeServicesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeServicesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeServicesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeServicesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeServicesResponse

    /**
     Invokes the DescribeTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
         - completion: The DescribeTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeTaskDefinitionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskDefinitionResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeTaskDefinitionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse

    /**
     Invokes the DescribeTaskSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
         - completion: The DescribeTaskSetsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskSetsResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskSetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskSetsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTaskSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskSetsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTaskSetsResponse

    /**
     Invokes the DescribeTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
         - completion: The DescribeTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeTasksResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTasksResponse

    /**
     Invokes the DiscoverPollEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
         - completion: The DiscoverPollEndpointResponse object or an error will be passed to this 
           callback when the operation is complete. The DiscoverPollEndpointResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func discoverPollEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DiscoverPollEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DiscoverPollEndpointResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DiscoverPollEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func discoverPollEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DiscoverPollEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DiscoverPollEndpointResponse

    /**
     Invokes the ListAccountSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
         - completion: The ListAccountSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAccountSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listAccountSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAccountSettingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListAccountSettingsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListAccountSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listAccountSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAccountSettingsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListAccountSettingsResponse

    /**
     Invokes the ListAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
         - completion: The ListAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter.
     */
    func listAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListAttributesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    func listAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListAttributesResponse

    /**
     Invokes the ListClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
         - completion: The ListClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The ListClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListClustersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListClustersResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListClustersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListClustersResponse

    /**
     Invokes the ListContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
         - completion: The ListContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListContainerInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListContainerInstancesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListContainerInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListContainerInstancesResponse

    /**
     Invokes the ListServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
         - completion: The ListServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listServicesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListServicesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListServicesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listServicesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListServicesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListServicesResponse

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTagsForResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTagsForResourceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTagsForResourceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTagsForResourceResponse

    /**
     Invokes the ListTaskDefinitionFamilies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
         - completion: The ListTaskDefinitionFamiliesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionFamiliesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listTaskDefinitionFamiliesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionFamiliesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTaskDefinitionFamilies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitionFamiliesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse

    /**
     Invokes the ListTaskDefinitions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
         - completion: The ListTaskDefinitionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listTaskDefinitionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTaskDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTaskDefinitionsResponse

    /**
     Invokes the ListTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
         - completion: The ListTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTasksResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTasksResponse

    /**
     Invokes the PutAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
         - completion: The PutAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func putAccountSettingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSettingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAccountSettingResponse

    /**
     Invokes the PutAccountSettingDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
         - completion: The PutAccountSettingDefaultResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingDefaultResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func putAccountSettingDefaultAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingDefaultResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutAccountSettingDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSettingDefaultSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse

    /**
     Invokes the PutAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
         - completion: The PutAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutAttributesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAttributesResponse

    /**
     Invokes the PutClusterCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
         - completion: The PutClusterCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The PutClusterCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProvidersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutClusterCapacityProvidersResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutClusterCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProvidersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse

    /**
     Invokes the RegisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
         - completion: The RegisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func registerContainerInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterContainerInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.RegisterContainerInstanceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the RegisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerContainerInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterContainerInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.RegisterContainerInstanceResponse

    /**
     Invokes the RegisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
         - completion: The RegisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func registerTaskDefinitionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.RegisterTaskDefinitionResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the RegisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerTaskDefinitionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse

    /**
     Invokes the RunTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
         - completion: The RunTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The RunTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RunTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.RunTaskResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the RunTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RunTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.RunTaskResponse

    /**
     Invokes the StartTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
         - completion: The StartTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func startTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StartTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.StartTaskResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func startTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StartTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.StartTaskResponse

    /**
     Invokes the StopTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
         - completion: The StopTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StopTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func stopTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StopTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.StopTaskResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func stopTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StopTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.StopTaskResponse

    /**
     Invokes the SubmitAttachmentStateChanges operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
         - completion: The SubmitAttachmentStateChangesResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitAttachmentStateChangesResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChangesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.SubmitAttachmentStateChangesResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the SubmitAttachmentStateChanges operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChangesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse

    /**
     Invokes the SubmitContainerStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
         - completion: The SubmitContainerStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitContainerStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    func submitContainerStateChangeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.SubmitContainerStateChangeResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the SubmitContainerStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    func submitContainerStateChangeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse

    /**
     Invokes the SubmitTaskStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
         - completion: The SubmitTaskStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitTaskStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChangeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.SubmitTaskStateChangeResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the SubmitTaskStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChangeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.TagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.TagResourceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.TagResourceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.TagResourceResponse

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UntagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UntagResourceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UntagResourceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UntagResourceResponse

    /**
     Invokes the UpdateClusterSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
         - completion: The UpdateClusterSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateClusterSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateClusterSettingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateClusterSettingsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateClusterSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateClusterSettingsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateClusterSettingsResponse

    /**
     Invokes the UpdateContainerAgent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
         - completion: The UpdateContainerAgentResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerAgentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerAgentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerAgentResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateContainerAgent operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerAgentRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateContainerAgentResponse

    /**
     Invokes the UpdateContainerInstancesState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
         - completion: The UpdateContainerInstancesStateResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerInstancesStateResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesStateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerInstancesStateResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateContainerInstancesState operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesStateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse

    /**
     Invokes the UpdateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
         - completion: The UpdateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateServiceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServiceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateServiceResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateServiceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServiceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateServiceResponse

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
         - completion: The UpdateServicePrimaryTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServicePrimaryTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateServicePrimaryTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse

    /**
     Invokes the UpdateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
         - completion: The UpdateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateTaskSetResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateTaskSetResponse
}
