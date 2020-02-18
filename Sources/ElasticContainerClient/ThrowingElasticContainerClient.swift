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
// ThrowingElasticContainerClient.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the ElasticContainer service that by default always throws from its methods.
 */
public struct ThrowingElasticContainerClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: ElasticContainerClientProtocol {
    let error: HTTPClientError
    let createCapacityProviderAsyncOverride: CreateCapacityProviderAsyncType<ClientInvocationReportingType>?
    let createCapacityProviderSyncOverride: CreateCapacityProviderSyncType<ClientInvocationReportingType>?
    let createClusterAsyncOverride: CreateClusterAsyncType<ClientInvocationReportingType>?
    let createClusterSyncOverride: CreateClusterSyncType<ClientInvocationReportingType>?
    let createServiceAsyncOverride: CreateServiceAsyncType<ClientInvocationReportingType>?
    let createServiceSyncOverride: CreateServiceSyncType<ClientInvocationReportingType>?
    let createTaskSetAsyncOverride: CreateTaskSetAsyncType<ClientInvocationReportingType>?
    let createTaskSetSyncOverride: CreateTaskSetSyncType<ClientInvocationReportingType>?
    let deleteAccountSettingAsyncOverride: DeleteAccountSettingAsyncType<ClientInvocationReportingType>?
    let deleteAccountSettingSyncOverride: DeleteAccountSettingSyncType<ClientInvocationReportingType>?
    let deleteAttributesAsyncOverride: DeleteAttributesAsyncType<ClientInvocationReportingType>?
    let deleteAttributesSyncOverride: DeleteAttributesSyncType<ClientInvocationReportingType>?
    let deleteClusterAsyncOverride: DeleteClusterAsyncType<ClientInvocationReportingType>?
    let deleteClusterSyncOverride: DeleteClusterSyncType<ClientInvocationReportingType>?
    let deleteServiceAsyncOverride: DeleteServiceAsyncType<ClientInvocationReportingType>?
    let deleteServiceSyncOverride: DeleteServiceSyncType<ClientInvocationReportingType>?
    let deleteTaskSetAsyncOverride: DeleteTaskSetAsyncType<ClientInvocationReportingType>?
    let deleteTaskSetSyncOverride: DeleteTaskSetSyncType<ClientInvocationReportingType>?
    let deregisterContainerInstanceAsyncOverride: DeregisterContainerInstanceAsyncType<ClientInvocationReportingType>?
    let deregisterContainerInstanceSyncOverride: DeregisterContainerInstanceSyncType<ClientInvocationReportingType>?
    let deregisterTaskDefinitionAsyncOverride: DeregisterTaskDefinitionAsyncType<ClientInvocationReportingType>?
    let deregisterTaskDefinitionSyncOverride: DeregisterTaskDefinitionSyncType<ClientInvocationReportingType>?
    let describeCapacityProvidersAsyncOverride: DescribeCapacityProvidersAsyncType<ClientInvocationReportingType>?
    let describeCapacityProvidersSyncOverride: DescribeCapacityProvidersSyncType<ClientInvocationReportingType>?
    let describeClustersAsyncOverride: DescribeClustersAsyncType<ClientInvocationReportingType>?
    let describeClustersSyncOverride: DescribeClustersSyncType<ClientInvocationReportingType>?
    let describeContainerInstancesAsyncOverride: DescribeContainerInstancesAsyncType<ClientInvocationReportingType>?
    let describeContainerInstancesSyncOverride: DescribeContainerInstancesSyncType<ClientInvocationReportingType>?
    let describeServicesAsyncOverride: DescribeServicesAsyncType<ClientInvocationReportingType>?
    let describeServicesSyncOverride: DescribeServicesSyncType<ClientInvocationReportingType>?
    let describeTaskDefinitionAsyncOverride: DescribeTaskDefinitionAsyncType<ClientInvocationReportingType>?
    let describeTaskDefinitionSyncOverride: DescribeTaskDefinitionSyncType<ClientInvocationReportingType>?
    let describeTaskSetsAsyncOverride: DescribeTaskSetsAsyncType<ClientInvocationReportingType>?
    let describeTaskSetsSyncOverride: DescribeTaskSetsSyncType<ClientInvocationReportingType>?
    let describeTasksAsyncOverride: DescribeTasksAsyncType<ClientInvocationReportingType>?
    let describeTasksSyncOverride: DescribeTasksSyncType<ClientInvocationReportingType>?
    let discoverPollEndpointAsyncOverride: DiscoverPollEndpointAsyncType<ClientInvocationReportingType>?
    let discoverPollEndpointSyncOverride: DiscoverPollEndpointSyncType<ClientInvocationReportingType>?
    let listAccountSettingsAsyncOverride: ListAccountSettingsAsyncType<ClientInvocationReportingType>?
    let listAccountSettingsSyncOverride: ListAccountSettingsSyncType<ClientInvocationReportingType>?
    let listAttributesAsyncOverride: ListAttributesAsyncType<ClientInvocationReportingType>?
    let listAttributesSyncOverride: ListAttributesSyncType<ClientInvocationReportingType>?
    let listClustersAsyncOverride: ListClustersAsyncType<ClientInvocationReportingType>?
    let listClustersSyncOverride: ListClustersSyncType<ClientInvocationReportingType>?
    let listContainerInstancesAsyncOverride: ListContainerInstancesAsyncType<ClientInvocationReportingType>?
    let listContainerInstancesSyncOverride: ListContainerInstancesSyncType<ClientInvocationReportingType>?
    let listServicesAsyncOverride: ListServicesAsyncType<ClientInvocationReportingType>?
    let listServicesSyncOverride: ListServicesSyncType<ClientInvocationReportingType>?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType<ClientInvocationReportingType>?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType<ClientInvocationReportingType>?
    let listTaskDefinitionFamiliesAsyncOverride: ListTaskDefinitionFamiliesAsyncType<ClientInvocationReportingType>?
    let listTaskDefinitionFamiliesSyncOverride: ListTaskDefinitionFamiliesSyncType<ClientInvocationReportingType>?
    let listTaskDefinitionsAsyncOverride: ListTaskDefinitionsAsyncType<ClientInvocationReportingType>?
    let listTaskDefinitionsSyncOverride: ListTaskDefinitionsSyncType<ClientInvocationReportingType>?
    let listTasksAsyncOverride: ListTasksAsyncType<ClientInvocationReportingType>?
    let listTasksSyncOverride: ListTasksSyncType<ClientInvocationReportingType>?
    let putAccountSettingAsyncOverride: PutAccountSettingAsyncType<ClientInvocationReportingType>?
    let putAccountSettingSyncOverride: PutAccountSettingSyncType<ClientInvocationReportingType>?
    let putAccountSettingDefaultAsyncOverride: PutAccountSettingDefaultAsyncType<ClientInvocationReportingType>?
    let putAccountSettingDefaultSyncOverride: PutAccountSettingDefaultSyncType<ClientInvocationReportingType>?
    let putAttributesAsyncOverride: PutAttributesAsyncType<ClientInvocationReportingType>?
    let putAttributesSyncOverride: PutAttributesSyncType<ClientInvocationReportingType>?
    let putClusterCapacityProvidersAsyncOverride: PutClusterCapacityProvidersAsyncType<ClientInvocationReportingType>?
    let putClusterCapacityProvidersSyncOverride: PutClusterCapacityProvidersSyncType<ClientInvocationReportingType>?
    let registerContainerInstanceAsyncOverride: RegisterContainerInstanceAsyncType<ClientInvocationReportingType>?
    let registerContainerInstanceSyncOverride: RegisterContainerInstanceSyncType<ClientInvocationReportingType>?
    let registerTaskDefinitionAsyncOverride: RegisterTaskDefinitionAsyncType<ClientInvocationReportingType>?
    let registerTaskDefinitionSyncOverride: RegisterTaskDefinitionSyncType<ClientInvocationReportingType>?
    let runTaskAsyncOverride: RunTaskAsyncType<ClientInvocationReportingType>?
    let runTaskSyncOverride: RunTaskSyncType<ClientInvocationReportingType>?
    let startTaskAsyncOverride: StartTaskAsyncType<ClientInvocationReportingType>?
    let startTaskSyncOverride: StartTaskSyncType<ClientInvocationReportingType>?
    let stopTaskAsyncOverride: StopTaskAsyncType<ClientInvocationReportingType>?
    let stopTaskSyncOverride: StopTaskSyncType<ClientInvocationReportingType>?
    let submitAttachmentStateChangesAsyncOverride: SubmitAttachmentStateChangesAsyncType<ClientInvocationReportingType>?
    let submitAttachmentStateChangesSyncOverride: SubmitAttachmentStateChangesSyncType<ClientInvocationReportingType>?
    let submitContainerStateChangeAsyncOverride: SubmitContainerStateChangeAsyncType<ClientInvocationReportingType>?
    let submitContainerStateChangeSyncOverride: SubmitContainerStateChangeSyncType<ClientInvocationReportingType>?
    let submitTaskStateChangeAsyncOverride: SubmitTaskStateChangeAsyncType<ClientInvocationReportingType>?
    let submitTaskStateChangeSyncOverride: SubmitTaskStateChangeSyncType<ClientInvocationReportingType>?
    let tagResourceAsyncOverride: TagResourceAsyncType<ClientInvocationReportingType>?
    let tagResourceSyncOverride: TagResourceSyncType<ClientInvocationReportingType>?
    let untagResourceAsyncOverride: UntagResourceAsyncType<ClientInvocationReportingType>?
    let untagResourceSyncOverride: UntagResourceSyncType<ClientInvocationReportingType>?
    let updateClusterSettingsAsyncOverride: UpdateClusterSettingsAsyncType<ClientInvocationReportingType>?
    let updateClusterSettingsSyncOverride: UpdateClusterSettingsSyncType<ClientInvocationReportingType>?
    let updateContainerAgentAsyncOverride: UpdateContainerAgentAsyncType<ClientInvocationReportingType>?
    let updateContainerAgentSyncOverride: UpdateContainerAgentSyncType<ClientInvocationReportingType>?
    let updateContainerInstancesStateAsyncOverride: UpdateContainerInstancesStateAsyncType<ClientInvocationReportingType>?
    let updateContainerInstancesStateSyncOverride: UpdateContainerInstancesStateSyncType<ClientInvocationReportingType>?
    let updateServiceAsyncOverride: UpdateServiceAsyncType<ClientInvocationReportingType>?
    let updateServiceSyncOverride: UpdateServiceSyncType<ClientInvocationReportingType>?
    let updateServicePrimaryTaskSetAsyncOverride: UpdateServicePrimaryTaskSetAsyncType<ClientInvocationReportingType>?
    let updateServicePrimaryTaskSetSyncOverride: UpdateServicePrimaryTaskSetSyncType<ClientInvocationReportingType>?
    let updateTaskSetAsyncOverride: UpdateTaskSetAsyncType<ClientInvocationReportingType>?
    let updateTaskSetSyncOverride: UpdateTaskSetSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            createCapacityProviderAsync: CreateCapacityProviderAsyncType<ClientInvocationReportingType>? = nil,
            createCapacityProviderSync: CreateCapacityProviderSyncType<ClientInvocationReportingType>? = nil,
            createClusterAsync: CreateClusterAsyncType<ClientInvocationReportingType>? = nil,
            createClusterSync: CreateClusterSyncType<ClientInvocationReportingType>? = nil,
            createServiceAsync: CreateServiceAsyncType<ClientInvocationReportingType>? = nil,
            createServiceSync: CreateServiceSyncType<ClientInvocationReportingType>? = nil,
            createTaskSetAsync: CreateTaskSetAsyncType<ClientInvocationReportingType>? = nil,
            createTaskSetSync: CreateTaskSetSyncType<ClientInvocationReportingType>? = nil,
            deleteAccountSettingAsync: DeleteAccountSettingAsyncType<ClientInvocationReportingType>? = nil,
            deleteAccountSettingSync: DeleteAccountSettingSyncType<ClientInvocationReportingType>? = nil,
            deleteAttributesAsync: DeleteAttributesAsyncType<ClientInvocationReportingType>? = nil,
            deleteAttributesSync: DeleteAttributesSyncType<ClientInvocationReportingType>? = nil,
            deleteClusterAsync: DeleteClusterAsyncType<ClientInvocationReportingType>? = nil,
            deleteClusterSync: DeleteClusterSyncType<ClientInvocationReportingType>? = nil,
            deleteServiceAsync: DeleteServiceAsyncType<ClientInvocationReportingType>? = nil,
            deleteServiceSync: DeleteServiceSyncType<ClientInvocationReportingType>? = nil,
            deleteTaskSetAsync: DeleteTaskSetAsyncType<ClientInvocationReportingType>? = nil,
            deleteTaskSetSync: DeleteTaskSetSyncType<ClientInvocationReportingType>? = nil,
            deregisterContainerInstanceAsync: DeregisterContainerInstanceAsyncType<ClientInvocationReportingType>? = nil,
            deregisterContainerInstanceSync: DeregisterContainerInstanceSyncType<ClientInvocationReportingType>? = nil,
            deregisterTaskDefinitionAsync: DeregisterTaskDefinitionAsyncType<ClientInvocationReportingType>? = nil,
            deregisterTaskDefinitionSync: DeregisterTaskDefinitionSyncType<ClientInvocationReportingType>? = nil,
            describeCapacityProvidersAsync: DescribeCapacityProvidersAsyncType<ClientInvocationReportingType>? = nil,
            describeCapacityProvidersSync: DescribeCapacityProvidersSyncType<ClientInvocationReportingType>? = nil,
            describeClustersAsync: DescribeClustersAsyncType<ClientInvocationReportingType>? = nil,
            describeClustersSync: DescribeClustersSyncType<ClientInvocationReportingType>? = nil,
            describeContainerInstancesAsync: DescribeContainerInstancesAsyncType<ClientInvocationReportingType>? = nil,
            describeContainerInstancesSync: DescribeContainerInstancesSyncType<ClientInvocationReportingType>? = nil,
            describeServicesAsync: DescribeServicesAsyncType<ClientInvocationReportingType>? = nil,
            describeServicesSync: DescribeServicesSyncType<ClientInvocationReportingType>? = nil,
            describeTaskDefinitionAsync: DescribeTaskDefinitionAsyncType<ClientInvocationReportingType>? = nil,
            describeTaskDefinitionSync: DescribeTaskDefinitionSyncType<ClientInvocationReportingType>? = nil,
            describeTaskSetsAsync: DescribeTaskSetsAsyncType<ClientInvocationReportingType>? = nil,
            describeTaskSetsSync: DescribeTaskSetsSyncType<ClientInvocationReportingType>? = nil,
            describeTasksAsync: DescribeTasksAsyncType<ClientInvocationReportingType>? = nil,
            describeTasksSync: DescribeTasksSyncType<ClientInvocationReportingType>? = nil,
            discoverPollEndpointAsync: DiscoverPollEndpointAsyncType<ClientInvocationReportingType>? = nil,
            discoverPollEndpointSync: DiscoverPollEndpointSyncType<ClientInvocationReportingType>? = nil,
            listAccountSettingsAsync: ListAccountSettingsAsyncType<ClientInvocationReportingType>? = nil,
            listAccountSettingsSync: ListAccountSettingsSyncType<ClientInvocationReportingType>? = nil,
            listAttributesAsync: ListAttributesAsyncType<ClientInvocationReportingType>? = nil,
            listAttributesSync: ListAttributesSyncType<ClientInvocationReportingType>? = nil,
            listClustersAsync: ListClustersAsyncType<ClientInvocationReportingType>? = nil,
            listClustersSync: ListClustersSyncType<ClientInvocationReportingType>? = nil,
            listContainerInstancesAsync: ListContainerInstancesAsyncType<ClientInvocationReportingType>? = nil,
            listContainerInstancesSync: ListContainerInstancesSyncType<ClientInvocationReportingType>? = nil,
            listServicesAsync: ListServicesAsyncType<ClientInvocationReportingType>? = nil,
            listServicesSync: ListServicesSyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType<ClientInvocationReportingType>? = nil,
            listTaskDefinitionFamiliesAsync: ListTaskDefinitionFamiliesAsyncType<ClientInvocationReportingType>? = nil,
            listTaskDefinitionFamiliesSync: ListTaskDefinitionFamiliesSyncType<ClientInvocationReportingType>? = nil,
            listTaskDefinitionsAsync: ListTaskDefinitionsAsyncType<ClientInvocationReportingType>? = nil,
            listTaskDefinitionsSync: ListTaskDefinitionsSyncType<ClientInvocationReportingType>? = nil,
            listTasksAsync: ListTasksAsyncType<ClientInvocationReportingType>? = nil,
            listTasksSync: ListTasksSyncType<ClientInvocationReportingType>? = nil,
            putAccountSettingAsync: PutAccountSettingAsyncType<ClientInvocationReportingType>? = nil,
            putAccountSettingSync: PutAccountSettingSyncType<ClientInvocationReportingType>? = nil,
            putAccountSettingDefaultAsync: PutAccountSettingDefaultAsyncType<ClientInvocationReportingType>? = nil,
            putAccountSettingDefaultSync: PutAccountSettingDefaultSyncType<ClientInvocationReportingType>? = nil,
            putAttributesAsync: PutAttributesAsyncType<ClientInvocationReportingType>? = nil,
            putAttributesSync: PutAttributesSyncType<ClientInvocationReportingType>? = nil,
            putClusterCapacityProvidersAsync: PutClusterCapacityProvidersAsyncType<ClientInvocationReportingType>? = nil,
            putClusterCapacityProvidersSync: PutClusterCapacityProvidersSyncType<ClientInvocationReportingType>? = nil,
            registerContainerInstanceAsync: RegisterContainerInstanceAsyncType<ClientInvocationReportingType>? = nil,
            registerContainerInstanceSync: RegisterContainerInstanceSyncType<ClientInvocationReportingType>? = nil,
            registerTaskDefinitionAsync: RegisterTaskDefinitionAsyncType<ClientInvocationReportingType>? = nil,
            registerTaskDefinitionSync: RegisterTaskDefinitionSyncType<ClientInvocationReportingType>? = nil,
            runTaskAsync: RunTaskAsyncType<ClientInvocationReportingType>? = nil,
            runTaskSync: RunTaskSyncType<ClientInvocationReportingType>? = nil,
            startTaskAsync: StartTaskAsyncType<ClientInvocationReportingType>? = nil,
            startTaskSync: StartTaskSyncType<ClientInvocationReportingType>? = nil,
            stopTaskAsync: StopTaskAsyncType<ClientInvocationReportingType>? = nil,
            stopTaskSync: StopTaskSyncType<ClientInvocationReportingType>? = nil,
            submitAttachmentStateChangesAsync: SubmitAttachmentStateChangesAsyncType<ClientInvocationReportingType>? = nil,
            submitAttachmentStateChangesSync: SubmitAttachmentStateChangesSyncType<ClientInvocationReportingType>? = nil,
            submitContainerStateChangeAsync: SubmitContainerStateChangeAsyncType<ClientInvocationReportingType>? = nil,
            submitContainerStateChangeSync: SubmitContainerStateChangeSyncType<ClientInvocationReportingType>? = nil,
            submitTaskStateChangeAsync: SubmitTaskStateChangeAsyncType<ClientInvocationReportingType>? = nil,
            submitTaskStateChangeSync: SubmitTaskStateChangeSyncType<ClientInvocationReportingType>? = nil,
            tagResourceAsync: TagResourceAsyncType<ClientInvocationReportingType>? = nil,
            tagResourceSync: TagResourceSyncType<ClientInvocationReportingType>? = nil,
            untagResourceAsync: UntagResourceAsyncType<ClientInvocationReportingType>? = nil,
            untagResourceSync: UntagResourceSyncType<ClientInvocationReportingType>? = nil,
            updateClusterSettingsAsync: UpdateClusterSettingsAsyncType<ClientInvocationReportingType>? = nil,
            updateClusterSettingsSync: UpdateClusterSettingsSyncType<ClientInvocationReportingType>? = nil,
            updateContainerAgentAsync: UpdateContainerAgentAsyncType<ClientInvocationReportingType>? = nil,
            updateContainerAgentSync: UpdateContainerAgentSyncType<ClientInvocationReportingType>? = nil,
            updateContainerInstancesStateAsync: UpdateContainerInstancesStateAsyncType<ClientInvocationReportingType>? = nil,
            updateContainerInstancesStateSync: UpdateContainerInstancesStateSyncType<ClientInvocationReportingType>? = nil,
            updateServiceAsync: UpdateServiceAsyncType<ClientInvocationReportingType>? = nil,
            updateServiceSync: UpdateServiceSyncType<ClientInvocationReportingType>? = nil,
            updateServicePrimaryTaskSetAsync: UpdateServicePrimaryTaskSetAsyncType<ClientInvocationReportingType>? = nil,
            updateServicePrimaryTaskSetSync: UpdateServicePrimaryTaskSetSyncType<ClientInvocationReportingType>? = nil,
            updateTaskSetAsync: UpdateTaskSetAsyncType<ClientInvocationReportingType>? = nil,
            updateTaskSetSync: UpdateTaskSetSyncType<ClientInvocationReportingType>? = nil) {
        self.error = error
        self.createCapacityProviderAsyncOverride = createCapacityProviderAsync
        self.createCapacityProviderSyncOverride = createCapacityProviderSync
        self.createClusterAsyncOverride = createClusterAsync
        self.createClusterSyncOverride = createClusterSync
        self.createServiceAsyncOverride = createServiceAsync
        self.createServiceSyncOverride = createServiceSync
        self.createTaskSetAsyncOverride = createTaskSetAsync
        self.createTaskSetSyncOverride = createTaskSetSync
        self.deleteAccountSettingAsyncOverride = deleteAccountSettingAsync
        self.deleteAccountSettingSyncOverride = deleteAccountSettingSync
        self.deleteAttributesAsyncOverride = deleteAttributesAsync
        self.deleteAttributesSyncOverride = deleteAttributesSync
        self.deleteClusterAsyncOverride = deleteClusterAsync
        self.deleteClusterSyncOverride = deleteClusterSync
        self.deleteServiceAsyncOverride = deleteServiceAsync
        self.deleteServiceSyncOverride = deleteServiceSync
        self.deleteTaskSetAsyncOverride = deleteTaskSetAsync
        self.deleteTaskSetSyncOverride = deleteTaskSetSync
        self.deregisterContainerInstanceAsyncOverride = deregisterContainerInstanceAsync
        self.deregisterContainerInstanceSyncOverride = deregisterContainerInstanceSync
        self.deregisterTaskDefinitionAsyncOverride = deregisterTaskDefinitionAsync
        self.deregisterTaskDefinitionSyncOverride = deregisterTaskDefinitionSync
        self.describeCapacityProvidersAsyncOverride = describeCapacityProvidersAsync
        self.describeCapacityProvidersSyncOverride = describeCapacityProvidersSync
        self.describeClustersAsyncOverride = describeClustersAsync
        self.describeClustersSyncOverride = describeClustersSync
        self.describeContainerInstancesAsyncOverride = describeContainerInstancesAsync
        self.describeContainerInstancesSyncOverride = describeContainerInstancesSync
        self.describeServicesAsyncOverride = describeServicesAsync
        self.describeServicesSyncOverride = describeServicesSync
        self.describeTaskDefinitionAsyncOverride = describeTaskDefinitionAsync
        self.describeTaskDefinitionSyncOverride = describeTaskDefinitionSync
        self.describeTaskSetsAsyncOverride = describeTaskSetsAsync
        self.describeTaskSetsSyncOverride = describeTaskSetsSync
        self.describeTasksAsyncOverride = describeTasksAsync
        self.describeTasksSyncOverride = describeTasksSync
        self.discoverPollEndpointAsyncOverride = discoverPollEndpointAsync
        self.discoverPollEndpointSyncOverride = discoverPollEndpointSync
        self.listAccountSettingsAsyncOverride = listAccountSettingsAsync
        self.listAccountSettingsSyncOverride = listAccountSettingsSync
        self.listAttributesAsyncOverride = listAttributesAsync
        self.listAttributesSyncOverride = listAttributesSync
        self.listClustersAsyncOverride = listClustersAsync
        self.listClustersSyncOverride = listClustersSync
        self.listContainerInstancesAsyncOverride = listContainerInstancesAsync
        self.listContainerInstancesSyncOverride = listContainerInstancesSync
        self.listServicesAsyncOverride = listServicesAsync
        self.listServicesSyncOverride = listServicesSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.listTaskDefinitionFamiliesAsyncOverride = listTaskDefinitionFamiliesAsync
        self.listTaskDefinitionFamiliesSyncOverride = listTaskDefinitionFamiliesSync
        self.listTaskDefinitionsAsyncOverride = listTaskDefinitionsAsync
        self.listTaskDefinitionsSyncOverride = listTaskDefinitionsSync
        self.listTasksAsyncOverride = listTasksAsync
        self.listTasksSyncOverride = listTasksSync
        self.putAccountSettingAsyncOverride = putAccountSettingAsync
        self.putAccountSettingSyncOverride = putAccountSettingSync
        self.putAccountSettingDefaultAsyncOverride = putAccountSettingDefaultAsync
        self.putAccountSettingDefaultSyncOverride = putAccountSettingDefaultSync
        self.putAttributesAsyncOverride = putAttributesAsync
        self.putAttributesSyncOverride = putAttributesSync
        self.putClusterCapacityProvidersAsyncOverride = putClusterCapacityProvidersAsync
        self.putClusterCapacityProvidersSyncOverride = putClusterCapacityProvidersSync
        self.registerContainerInstanceAsyncOverride = registerContainerInstanceAsync
        self.registerContainerInstanceSyncOverride = registerContainerInstanceSync
        self.registerTaskDefinitionAsyncOverride = registerTaskDefinitionAsync
        self.registerTaskDefinitionSyncOverride = registerTaskDefinitionSync
        self.runTaskAsyncOverride = runTaskAsync
        self.runTaskSyncOverride = runTaskSync
        self.startTaskAsyncOverride = startTaskAsync
        self.startTaskSyncOverride = startTaskSync
        self.stopTaskAsyncOverride = stopTaskAsync
        self.stopTaskSyncOverride = stopTaskSync
        self.submitAttachmentStateChangesAsyncOverride = submitAttachmentStateChangesAsync
        self.submitAttachmentStateChangesSyncOverride = submitAttachmentStateChangesSync
        self.submitContainerStateChangeAsyncOverride = submitContainerStateChangeAsync
        self.submitContainerStateChangeSyncOverride = submitContainerStateChangeSync
        self.submitTaskStateChangeAsyncOverride = submitTaskStateChangeAsync
        self.submitTaskStateChangeSyncOverride = submitTaskStateChangeSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateClusterSettingsAsyncOverride = updateClusterSettingsAsync
        self.updateClusterSettingsSyncOverride = updateClusterSettingsSync
        self.updateContainerAgentAsyncOverride = updateContainerAgentAsync
        self.updateContainerAgentSyncOverride = updateContainerAgentSync
        self.updateContainerInstancesStateAsyncOverride = updateContainerInstancesStateAsync
        self.updateContainerInstancesStateSyncOverride = updateContainerInstancesStateSync
        self.updateServiceAsyncOverride = updateServiceAsync
        self.updateServiceSyncOverride = updateServiceSync
        self.updateServicePrimaryTaskSetAsyncOverride = updateServicePrimaryTaskSetAsync
        self.updateServicePrimaryTaskSetSyncOverride = updateServicePrimaryTaskSetSync
        self.updateTaskSetAsyncOverride = updateTaskSetAsync
        self.updateTaskSetSyncOverride = updateTaskSetSync
    }

    /**
     Invokes the CreateCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
         - completion: The CreateCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, limitExceeded, server.
     */
    public func createCapacityProviderAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateCapacityProviderRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateCapacityProviderResponse, HTTPClientError>) -> ()) throws {
        if let createCapacityProviderAsyncOverrideNonOptional = createCapacityProviderAsyncOverride {
            if let createCapacityProviderAsyncOverrideTyped = createCapacityProviderAsyncOverrideNonOptional
                    as? CreateCapacityProviderAsyncType<InvocationReportingType> {
                return try createCapacityProviderAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server.
     */
    public func createCapacityProviderSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateCapacityProviderRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateCapacityProviderResponse {
        if let createCapacityProviderSyncOverrideNonOptional = createCapacityProviderSyncOverride {
            if let createCapacityProviderSyncOverrideTyped = createCapacityProviderSyncOverrideNonOptional
                    as? CreateCapacityProviderSyncType<InvocationReportingType> {
                return try createCapacityProviderSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
         - completion: The CreateClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func createClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateClusterRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateClusterResponse, HTTPClientError>) -> ()) throws {
        if let createClusterAsyncOverrideNonOptional = createClusterAsyncOverride {
            if let createClusterAsyncOverrideTyped = createClusterAsyncOverrideNonOptional
                    as? CreateClusterAsyncType<InvocationReportingType> {
                return try createClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func createClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateClusterRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateClusterResponse {
        if let createClusterSyncOverrideNonOptional = createClusterSyncOverride {
            if let createClusterSyncOverrideTyped = createClusterSyncOverrideNonOptional
                    as? CreateClusterSyncType<InvocationReportingType> {
                return try createClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
         - completion: The CreateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createServiceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateServiceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateServiceResponse, HTTPClientError>) -> ()) throws {
        if let createServiceAsyncOverrideNonOptional = createServiceAsyncOverride {
            if let createServiceAsyncOverrideTyped = createServiceAsyncOverrideNonOptional
                    as? CreateServiceAsyncType<InvocationReportingType> {
                return try createServiceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createServiceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateServiceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateServiceResponse {
        if let createServiceSyncOverrideNonOptional = createServiceSyncOverride {
            if let createServiceSyncOverrideTyped = createServiceSyncOverrideNonOptional
                    as? CreateServiceSyncType<InvocationReportingType> {
                return try createServiceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the CreateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
         - completion: The CreateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.CreateTaskSetResponse, HTTPClientError>) -> ()) throws {
        if let createTaskSetAsyncOverrideNonOptional = createTaskSetAsyncOverride {
            if let createTaskSetAsyncOverrideTyped = createTaskSetAsyncOverrideNonOptional
                    as? CreateTaskSetAsyncType<InvocationReportingType> {
                return try createTaskSetAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.CreateTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.CreateTaskSetResponse {
        if let createTaskSetSyncOverrideNonOptional = createTaskSetSyncOverride {
            if let createTaskSetSyncOverrideTyped = createTaskSetSyncOverrideNonOptional
                    as? CreateTaskSetSyncType<InvocationReportingType> {
                return try createTaskSetSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
         - completion: The DeleteAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deleteAccountSettingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAccountSettingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteAccountSettingResponse, HTTPClientError>) -> ()) throws {
        if let deleteAccountSettingAsyncOverrideNonOptional = deleteAccountSettingAsyncOverride {
            if let deleteAccountSettingAsyncOverrideTyped = deleteAccountSettingAsyncOverrideNonOptional
                    as? DeleteAccountSettingAsyncType<InvocationReportingType> {
                return try deleteAccountSettingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deleteAccountSettingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAccountSettingRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteAccountSettingResponse {
        if let deleteAccountSettingSyncOverrideNonOptional = deleteAccountSettingSyncOverride {
            if let deleteAccountSettingSyncOverrideTyped = deleteAccountSettingSyncOverrideNonOptional
                    as? DeleteAccountSettingSyncType<InvocationReportingType> {
                return try deleteAccountSettingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
         - completion: The DeleteAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteAttributesResponse, HTTPClientError>) -> ()) throws {
        if let deleteAttributesAsyncOverrideNonOptional = deleteAttributesAsyncOverride {
            if let deleteAttributesAsyncOverrideTyped = deleteAttributesAsyncOverrideNonOptional
                    as? DeleteAttributesAsyncType<InvocationReportingType> {
                return try deleteAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteAttributesResponse {
        if let deleteAttributesSyncOverrideNonOptional = deleteAttributesSyncOverride {
            if let deleteAttributesSyncOverrideTyped = deleteAttributesSyncOverrideNonOptional
                    as? DeleteAttributesSyncType<InvocationReportingType> {
                return try deleteAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
         - completion: The DeleteClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    public func deleteClusterAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteClusterRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteClusterResponse, HTTPClientError>) -> ()) throws {
        if let deleteClusterAsyncOverrideNonOptional = deleteClusterAsyncOverride {
            if let deleteClusterAsyncOverrideTyped = deleteClusterAsyncOverrideNonOptional
                    as? DeleteClusterAsyncType<InvocationReportingType> {
                return try deleteClusterAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    public func deleteClusterSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteClusterRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteClusterResponse {
        if let deleteClusterSyncOverrideNonOptional = deleteClusterSyncOverride {
            if let deleteClusterSyncOverrideTyped = deleteClusterSyncOverrideNonOptional
                    as? DeleteClusterSyncType<InvocationReportingType> {
                return try deleteClusterSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
         - completion: The DeleteServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteServiceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteServiceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteServiceResponse, HTTPClientError>) -> ()) throws {
        if let deleteServiceAsyncOverrideNonOptional = deleteServiceAsyncOverride {
            if let deleteServiceAsyncOverrideTyped = deleteServiceAsyncOverrideNonOptional
                    as? DeleteServiceAsyncType<InvocationReportingType> {
                return try deleteServiceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteService operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteServiceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteServiceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteServiceResponse {
        if let deleteServiceSyncOverrideNonOptional = deleteServiceSyncOverride {
            if let deleteServiceSyncOverrideTyped = deleteServiceSyncOverrideNonOptional
                    as? DeleteServiceSyncType<InvocationReportingType> {
                return try deleteServiceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
         - completion: The DeleteTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeleteTaskSetResponse, HTTPClientError>) -> ()) throws {
        if let deleteTaskSetAsyncOverrideNonOptional = deleteTaskSetAsyncOverride {
            if let deleteTaskSetAsyncOverrideTyped = deleteTaskSetAsyncOverrideNonOptional
                    as? DeleteTaskSetAsyncType<InvocationReportingType> {
                return try deleteTaskSetAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeleteTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeleteTaskSetResponse {
        if let deleteTaskSetSyncOverrideNonOptional = deleteTaskSetSyncOverride {
            if let deleteTaskSetSyncOverrideTyped = deleteTaskSetSyncOverrideNonOptional
                    as? DeleteTaskSetSyncType<InvocationReportingType> {
                return try deleteTaskSetSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeregisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
         - completion: The DeregisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeregisterContainerInstanceResponse, HTTPClientError>) -> ()) throws {
        if let deregisterContainerInstanceAsyncOverrideNonOptional = deregisterContainerInstanceAsyncOverride {
            if let deregisterContainerInstanceAsyncOverrideTyped = deregisterContainerInstanceAsyncOverrideNonOptional
                    as? DeregisterContainerInstanceAsyncType<InvocationReportingType> {
                return try deregisterContainerInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse {
        if let deregisterContainerInstanceSyncOverrideNonOptional = deregisterContainerInstanceSyncOverride {
            if let deregisterContainerInstanceSyncOverrideTyped = deregisterContainerInstanceSyncOverrideNonOptional
                    as? DeregisterContainerInstanceSyncType<InvocationReportingType> {
                return try deregisterContainerInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeregisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
         - completion: The DeregisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deregisterTaskDefinitionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DeregisterTaskDefinitionResponse, HTTPClientError>) -> ()) throws {
        if let deregisterTaskDefinitionAsyncOverrideNonOptional = deregisterTaskDefinitionAsyncOverride {
            if let deregisterTaskDefinitionAsyncOverrideTyped = deregisterTaskDefinitionAsyncOverrideNonOptional
                    as? DeregisterTaskDefinitionAsyncType<InvocationReportingType> {
                return try deregisterTaskDefinitionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deregisterTaskDefinitionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse {
        if let deregisterTaskDefinitionSyncOverrideNonOptional = deregisterTaskDefinitionSyncOverride {
            if let deregisterTaskDefinitionSyncOverrideTyped = deregisterTaskDefinitionSyncOverrideNonOptional
                    as? DeregisterTaskDefinitionSyncType<InvocationReportingType> {
                return try deregisterTaskDefinitionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
         - completion: The DescribeCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeCapacityProvidersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeCapacityProvidersResponse, HTTPClientError>) -> ()) throws {
        if let describeCapacityProvidersAsyncOverrideNonOptional = describeCapacityProvidersAsyncOverride {
            if let describeCapacityProvidersAsyncOverrideTyped = describeCapacityProvidersAsyncOverrideNonOptional
                    as? DescribeCapacityProvidersAsyncType<InvocationReportingType> {
                return try describeCapacityProvidersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeCapacityProvidersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeCapacityProvidersResponse {
        if let describeCapacityProvidersSyncOverrideNonOptional = describeCapacityProvidersSyncOverride {
            if let describeCapacityProvidersSyncOverrideTyped = describeCapacityProvidersSyncOverrideNonOptional
                    as? DescribeCapacityProvidersSyncType<InvocationReportingType> {
                return try describeCapacityProvidersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
         - completion: The DescribeClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeClustersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeClustersResponse, HTTPClientError>) -> ()) throws {
        if let describeClustersAsyncOverrideNonOptional = describeClustersAsyncOverride {
            if let describeClustersAsyncOverrideTyped = describeClustersAsyncOverrideNonOptional
                    as? DescribeClustersAsyncType<InvocationReportingType> {
                return try describeClustersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeClustersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeClustersResponse {
        if let describeClustersSyncOverrideNonOptional = describeClustersSyncOverride {
            if let describeClustersSyncOverrideTyped = describeClustersSyncOverrideNonOptional
                    as? DescribeClustersSyncType<InvocationReportingType> {
                return try describeClustersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
         - completion: The DescribeContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeContainerInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeContainerInstancesResponse, HTTPClientError>) -> ()) throws {
        if let describeContainerInstancesAsyncOverrideNonOptional = describeContainerInstancesAsyncOverride {
            if let describeContainerInstancesAsyncOverrideTyped = describeContainerInstancesAsyncOverrideNonOptional
                    as? DescribeContainerInstancesAsyncType<InvocationReportingType> {
                return try describeContainerInstancesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeContainerInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeContainerInstancesResponse {
        if let describeContainerInstancesSyncOverrideNonOptional = describeContainerInstancesSyncOverride {
            if let describeContainerInstancesSyncOverrideTyped = describeContainerInstancesSyncOverrideNonOptional
                    as? DescribeContainerInstancesSyncType<InvocationReportingType> {
                return try describeContainerInstancesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
         - completion: The DescribeServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServicesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeServicesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeServicesResponse, HTTPClientError>) -> ()) throws {
        if let describeServicesAsyncOverrideNonOptional = describeServicesAsyncOverride {
            if let describeServicesAsyncOverrideTyped = describeServicesAsyncOverrideNonOptional
                    as? DescribeServicesAsyncType<InvocationReportingType> {
                return try describeServicesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServicesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeServicesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeServicesResponse {
        if let describeServicesSyncOverrideNonOptional = describeServicesSyncOverride {
            if let describeServicesSyncOverrideTyped = describeServicesSyncOverrideNonOptional
                    as? DescribeServicesSyncType<InvocationReportingType> {
                return try describeServicesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
         - completion: The DescribeTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeTaskDefinitionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskDefinitionResponse, HTTPClientError>) -> ()) throws {
        if let describeTaskDefinitionAsyncOverrideNonOptional = describeTaskDefinitionAsyncOverride {
            if let describeTaskDefinitionAsyncOverrideTyped = describeTaskDefinitionAsyncOverrideNonOptional
                    as? DescribeTaskDefinitionAsyncType<InvocationReportingType> {
                return try describeTaskDefinitionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeTaskDefinitionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse {
        if let describeTaskDefinitionSyncOverrideNonOptional = describeTaskDefinitionSyncOverride {
            if let describeTaskDefinitionSyncOverrideTyped = describeTaskDefinitionSyncOverrideNonOptional
                    as? DescribeTaskDefinitionSyncType<InvocationReportingType> {
                return try describeTaskDefinitionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeTaskSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
         - completion: The DescribeTaskSetsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskSetsResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSetsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskSetsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskSetsResponse, HTTPClientError>) -> ()) throws {
        if let describeTaskSetsAsyncOverrideNonOptional = describeTaskSetsAsyncOverride {
            if let describeTaskSetsAsyncOverrideTyped = describeTaskSetsAsyncOverrideNonOptional
                    as? DescribeTaskSetsAsyncType<InvocationReportingType> {
                return try describeTaskSetsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTaskSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSetsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTaskSetsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTaskSetsResponse {
        if let describeTaskSetsSyncOverrideNonOptional = describeTaskSetsSyncOverride {
            if let describeTaskSetsSyncOverrideTyped = describeTaskSetsSyncOverrideNonOptional
                    as? DescribeTaskSetsSyncType<InvocationReportingType> {
                return try describeTaskSetsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DescribeTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
         - completion: The DescribeTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DescribeTasksResponse, HTTPClientError>) -> ()) throws {
        if let describeTasksAsyncOverrideNonOptional = describeTasksAsyncOverride {
            if let describeTasksAsyncOverrideTyped = describeTasksAsyncOverrideNonOptional
                    as? DescribeTasksAsyncType<InvocationReportingType> {
                return try describeTasksAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DescribeTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DescribeTasksResponse {
        if let describeTasksSyncOverrideNonOptional = describeTasksSyncOverride {
            if let describeTasksSyncOverrideTyped = describeTasksSyncOverrideNonOptional
                    as? DescribeTasksSyncType<InvocationReportingType> {
                return try describeTasksSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DiscoverPollEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
         - completion: The DiscoverPollEndpointResponse object or an error will be passed to this 
           callback when the operation is complete. The DiscoverPollEndpointResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func discoverPollEndpointAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DiscoverPollEndpointRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.DiscoverPollEndpointResponse, HTTPClientError>) -> ()) throws {
        if let discoverPollEndpointAsyncOverrideNonOptional = discoverPollEndpointAsyncOverride {
            if let discoverPollEndpointAsyncOverrideTyped = discoverPollEndpointAsyncOverrideNonOptional
                    as? DiscoverPollEndpointAsyncType<InvocationReportingType> {
                return try discoverPollEndpointAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DiscoverPollEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func discoverPollEndpointSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.DiscoverPollEndpointRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.DiscoverPollEndpointResponse {
        if let discoverPollEndpointSyncOverrideNonOptional = discoverPollEndpointSyncOverride {
            if let discoverPollEndpointSyncOverrideTyped = discoverPollEndpointSyncOverrideNonOptional
                    as? DiscoverPollEndpointSyncType<InvocationReportingType> {
                return try discoverPollEndpointSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListAccountSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
         - completion: The ListAccountSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAccountSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listAccountSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAccountSettingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListAccountSettingsResponse, HTTPClientError>) -> ()) throws {
        if let listAccountSettingsAsyncOverrideNonOptional = listAccountSettingsAsyncOverride {
            if let listAccountSettingsAsyncOverrideTyped = listAccountSettingsAsyncOverrideNonOptional
                    as? ListAccountSettingsAsyncType<InvocationReportingType> {
                return try listAccountSettingsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListAccountSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listAccountSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAccountSettingsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListAccountSettingsResponse {
        if let listAccountSettingsSyncOverrideNonOptional = listAccountSettingsSyncOverride {
            if let listAccountSettingsSyncOverrideTyped = listAccountSettingsSyncOverrideNonOptional
                    as? ListAccountSettingsSyncType<InvocationReportingType> {
                return try listAccountSettingsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
         - completion: The ListAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter.
     */
    public func listAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListAttributesResponse, HTTPClientError>) -> ()) throws {
        if let listAttributesAsyncOverrideNonOptional = listAttributesAsyncOverride {
            if let listAttributesAsyncOverrideTyped = listAttributesAsyncOverrideNonOptional
                    as? ListAttributesAsyncType<InvocationReportingType> {
                return try listAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    public func listAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListAttributesResponse {
        if let listAttributesSyncOverrideNonOptional = listAttributesSyncOverride {
            if let listAttributesSyncOverrideTyped = listAttributesSyncOverrideNonOptional
                    as? ListAttributesSyncType<InvocationReportingType> {
                return try listAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
         - completion: The ListClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The ListClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listClustersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListClustersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListClustersResponse, HTTPClientError>) -> ()) throws {
        if let listClustersAsyncOverrideNonOptional = listClustersAsyncOverride {
            if let listClustersAsyncOverrideTyped = listClustersAsyncOverrideNonOptional
                    as? ListClustersAsyncType<InvocationReportingType> {
                return try listClustersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listClustersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListClustersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListClustersResponse {
        if let listClustersSyncOverrideNonOptional = listClustersSyncOverride {
            if let listClustersSyncOverrideTyped = listClustersSyncOverrideNonOptional
                    as? ListClustersSyncType<InvocationReportingType> {
                return try listClustersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
         - completion: The ListContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstancesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListContainerInstancesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListContainerInstancesResponse, HTTPClientError>) -> ()) throws {
        if let listContainerInstancesAsyncOverrideNonOptional = listContainerInstancesAsyncOverride {
            if let listContainerInstancesAsyncOverrideTyped = listContainerInstancesAsyncOverrideNonOptional
                    as? ListContainerInstancesAsyncType<InvocationReportingType> {
                return try listContainerInstancesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstancesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListContainerInstancesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListContainerInstancesResponse {
        if let listContainerInstancesSyncOverrideNonOptional = listContainerInstancesSyncOverride {
            if let listContainerInstancesSyncOverrideTyped = listContainerInstancesSyncOverrideNonOptional
                    as? ListContainerInstancesSyncType<InvocationReportingType> {
                return try listContainerInstancesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
         - completion: The ListServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listServicesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListServicesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListServicesResponse, HTTPClientError>) -> ()) throws {
        if let listServicesAsyncOverrideNonOptional = listServicesAsyncOverride {
            if let listServicesAsyncOverrideTyped = listServicesAsyncOverrideNonOptional
                    as? ListServicesAsyncType<InvocationReportingType> {
                return try listServicesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listServicesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListServicesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListServicesResponse {
        if let listServicesSyncOverrideNonOptional = listServicesSyncOverride {
            if let listServicesSyncOverrideTyped = listServicesSyncOverrideNonOptional
                    as? ListServicesSyncType<InvocationReportingType> {
                return try listServicesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTagsForResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTagsForResourceResponse, HTTPClientError>) -> ()) throws {
        if let listTagsForResourceAsyncOverrideNonOptional = listTagsForResourceAsyncOverride {
            if let listTagsForResourceAsyncOverrideTyped = listTagsForResourceAsyncOverrideNonOptional
                    as? ListTagsForResourceAsyncType<InvocationReportingType> {
                return try listTagsForResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTagsForResourceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTagsForResourceResponse {
        if let listTagsForResourceSyncOverrideNonOptional = listTagsForResourceSyncOverride {
            if let listTagsForResourceSyncOverrideTyped = listTagsForResourceSyncOverrideNonOptional
                    as? ListTagsForResourceSyncType<InvocationReportingType> {
                return try listTagsForResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
         - completion: The ListTaskDefinitionFamiliesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionFamiliesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamiliesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionFamiliesResponse, HTTPClientError>) -> ()) throws {
        if let listTaskDefinitionFamiliesAsyncOverrideNonOptional = listTaskDefinitionFamiliesAsyncOverride {
            if let listTaskDefinitionFamiliesAsyncOverrideTyped = listTaskDefinitionFamiliesAsyncOverrideNonOptional
                    as? ListTaskDefinitionFamiliesAsyncType<InvocationReportingType> {
                return try listTaskDefinitionFamiliesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamiliesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse {
        if let listTaskDefinitionFamiliesSyncOverrideNonOptional = listTaskDefinitionFamiliesSyncOverride {
            if let listTaskDefinitionFamiliesSyncOverrideTyped = listTaskDefinitionFamiliesSyncOverrideNonOptional
                    as? ListTaskDefinitionFamiliesSyncType<InvocationReportingType> {
                return try listTaskDefinitionFamiliesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListTaskDefinitions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
         - completion: The ListTaskDefinitionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listTaskDefinitionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionsResponse, HTTPClientError>) -> ()) throws {
        if let listTaskDefinitionsAsyncOverrideNonOptional = listTaskDefinitionsAsyncOverride {
            if let listTaskDefinitionsAsyncOverrideTyped = listTaskDefinitionsAsyncOverrideNonOptional
                    as? ListTaskDefinitionsAsyncType<InvocationReportingType> {
                return try listTaskDefinitionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTaskDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTaskDefinitionsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTaskDefinitionsResponse {
        if let listTaskDefinitionsSyncOverrideNonOptional = listTaskDefinitionsSyncOverride {
            if let listTaskDefinitionsSyncOverrideTyped = listTaskDefinitionsSyncOverrideNonOptional
                    as? ListTaskDefinitionsSyncType<InvocationReportingType> {
                return try listTaskDefinitionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
         - completion: The ListTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasksAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTasksRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.ListTasksResponse, HTTPClientError>) -> ()) throws {
        if let listTasksAsyncOverrideNonOptional = listTasksAsyncOverride {
            if let listTasksAsyncOverrideTyped = listTasksAsyncOverrideNonOptional
                    as? ListTasksAsyncType<InvocationReportingType> {
                return try listTasksAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasksSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.ListTasksRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.ListTasksResponse {
        if let listTasksSyncOverrideNonOptional = listTasksSyncOverride {
            if let listTasksSyncOverrideTyped = listTasksSyncOverrideNonOptional
                    as? ListTasksSyncType<InvocationReportingType> {
                return try listTasksSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PutAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
         - completion: The PutAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func putAccountSettingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingResponse, HTTPClientError>) -> ()) throws {
        if let putAccountSettingAsyncOverrideNonOptional = putAccountSettingAsyncOverride {
            if let putAccountSettingAsyncOverrideTyped = putAccountSettingAsyncOverrideNonOptional
                    as? PutAccountSettingAsyncType<InvocationReportingType> {
                return try putAccountSettingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAccountSettingResponse {
        if let putAccountSettingSyncOverrideNonOptional = putAccountSettingSyncOverride {
            if let putAccountSettingSyncOverrideTyped = putAccountSettingSyncOverrideNonOptional
                    as? PutAccountSettingSyncType<InvocationReportingType> {
                return try putAccountSettingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PutAccountSettingDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
         - completion: The PutAccountSettingDefaultResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingDefaultResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func putAccountSettingDefaultAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingDefaultResponse, HTTPClientError>) -> ()) throws {
        if let putAccountSettingDefaultAsyncOverrideNonOptional = putAccountSettingDefaultAsyncOverride {
            if let putAccountSettingDefaultAsyncOverrideTyped = putAccountSettingDefaultAsyncOverrideNonOptional
                    as? PutAccountSettingDefaultAsyncType<InvocationReportingType> {
                return try putAccountSettingDefaultAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutAccountSettingDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingDefaultSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse {
        if let putAccountSettingDefaultSyncOverrideNonOptional = putAccountSettingDefaultSyncOverride {
            if let putAccountSettingDefaultSyncOverrideTyped = putAccountSettingDefaultSyncOverrideNonOptional
                    as? PutAccountSettingDefaultSyncType<InvocationReportingType> {
                return try putAccountSettingDefaultSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PutAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
         - completion: The PutAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutAttributesResponse, HTTPClientError>) -> ()) throws {
        if let putAttributesAsyncOverrideNonOptional = putAttributesAsyncOverride {
            if let putAttributesAsyncOverrideTyped = putAttributesAsyncOverrideNonOptional
                    as? PutAttributesAsyncType<InvocationReportingType> {
                return try putAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutAttributesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutAttributesResponse {
        if let putAttributesSyncOverrideNonOptional = putAttributesSyncOverride {
            if let putAttributesSyncOverrideTyped = putAttributesSyncOverrideNonOptional
                    as? PutAttributesSyncType<InvocationReportingType> {
                return try putAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PutClusterCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
         - completion: The PutClusterCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The PutClusterCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    public func putClusterCapacityProvidersAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.PutClusterCapacityProvidersResponse, HTTPClientError>) -> ()) throws {
        if let putClusterCapacityProvidersAsyncOverrideNonOptional = putClusterCapacityProvidersAsyncOverride {
            if let putClusterCapacityProvidersAsyncOverrideTyped = putClusterCapacityProvidersAsyncOverrideNonOptional
                    as? PutClusterCapacityProvidersAsyncType<InvocationReportingType> {
                return try putClusterCapacityProvidersAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutClusterCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    public func putClusterCapacityProvidersSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse {
        if let putClusterCapacityProvidersSyncOverrideNonOptional = putClusterCapacityProvidersSyncOverride {
            if let putClusterCapacityProvidersSyncOverrideTyped = putClusterCapacityProvidersSyncOverrideNonOptional
                    as? PutClusterCapacityProvidersSyncType<InvocationReportingType> {
                return try putClusterCapacityProvidersSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RegisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
         - completion: The RegisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func registerContainerInstanceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterContainerInstanceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.RegisterContainerInstanceResponse, HTTPClientError>) -> ()) throws {
        if let registerContainerInstanceAsyncOverrideNonOptional = registerContainerInstanceAsyncOverride {
            if let registerContainerInstanceAsyncOverrideTyped = registerContainerInstanceAsyncOverrideNonOptional
                    as? RegisterContainerInstanceAsyncType<InvocationReportingType> {
                return try registerContainerInstanceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerContainerInstanceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterContainerInstanceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.RegisterContainerInstanceResponse {
        if let registerContainerInstanceSyncOverrideNonOptional = registerContainerInstanceSyncOverride {
            if let registerContainerInstanceSyncOverrideTyped = registerContainerInstanceSyncOverrideNonOptional
                    as? RegisterContainerInstanceSyncType<InvocationReportingType> {
                return try registerContainerInstanceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RegisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
         - completion: The RegisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func registerTaskDefinitionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.RegisterTaskDefinitionResponse, HTTPClientError>) -> ()) throws {
        if let registerTaskDefinitionAsyncOverrideNonOptional = registerTaskDefinitionAsyncOverride {
            if let registerTaskDefinitionAsyncOverrideTyped = registerTaskDefinitionAsyncOverrideNonOptional
                    as? RegisterTaskDefinitionAsyncType<InvocationReportingType> {
                return try registerTaskDefinitionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerTaskDefinitionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse {
        if let registerTaskDefinitionSyncOverrideNonOptional = registerTaskDefinitionSyncOverride {
            if let registerTaskDefinitionSyncOverrideTyped = registerTaskDefinitionSyncOverrideNonOptional
                    as? RegisterTaskDefinitionSyncType<InvocationReportingType> {
                return try registerTaskDefinitionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RunTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
         - completion: The RunTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The RunTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RunTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.RunTaskResponse, HTTPClientError>) -> ()) throws {
        if let runTaskAsyncOverrideNonOptional = runTaskAsyncOverride {
            if let runTaskAsyncOverrideTyped = runTaskAsyncOverrideNonOptional
                    as? RunTaskAsyncType<InvocationReportingType> {
                return try runTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the RunTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.RunTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.RunTaskResponse {
        if let runTaskSyncOverrideNonOptional = runTaskSyncOverride {
            if let runTaskSyncOverrideTyped = runTaskSyncOverrideNonOptional
                    as? RunTaskSyncType<InvocationReportingType> {
                return try runTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StartTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
         - completion: The StartTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func startTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StartTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.StartTaskResponse, HTTPClientError>) -> ()) throws {
        if let startTaskAsyncOverrideNonOptional = startTaskAsyncOverride {
            if let startTaskAsyncOverrideTyped = startTaskAsyncOverrideNonOptional
                    as? StartTaskAsyncType<InvocationReportingType> {
                return try startTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func startTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StartTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.StartTaskResponse {
        if let startTaskSyncOverrideNonOptional = startTaskSyncOverride {
            if let startTaskSyncOverrideTyped = startTaskSyncOverrideNonOptional
                    as? StartTaskSyncType<InvocationReportingType> {
                return try startTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the StopTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
         - completion: The StopTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StopTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StopTaskRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.StopTaskResponse, HTTPClientError>) -> ()) throws {
        if let stopTaskAsyncOverrideNonOptional = stopTaskAsyncOverride {
            if let stopTaskAsyncOverrideTyped = stopTaskAsyncOverrideNonOptional
                    as? StopTaskAsyncType<InvocationReportingType> {
                return try stopTaskAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.StopTaskRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.StopTaskResponse {
        if let stopTaskSyncOverrideNonOptional = stopTaskSyncOverride {
            if let stopTaskSyncOverrideTyped = stopTaskSyncOverrideNonOptional
                    as? StopTaskSyncType<InvocationReportingType> {
                return try stopTaskSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the SubmitAttachmentStateChanges operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
         - completion: The SubmitAttachmentStateChangesResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitAttachmentStateChangesResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    public func submitAttachmentStateChangesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.SubmitAttachmentStateChangesResponse, HTTPClientError>) -> ()) throws {
        if let submitAttachmentStateChangesAsyncOverrideNonOptional = submitAttachmentStateChangesAsyncOverride {
            if let submitAttachmentStateChangesAsyncOverrideTyped = submitAttachmentStateChangesAsyncOverrideNonOptional
                    as? SubmitAttachmentStateChangesAsyncType<InvocationReportingType> {
                return try submitAttachmentStateChangesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the SubmitAttachmentStateChanges operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    public func submitAttachmentStateChangesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse {
        if let submitAttachmentStateChangesSyncOverrideNonOptional = submitAttachmentStateChangesSyncOverride {
            if let submitAttachmentStateChangesSyncOverrideTyped = submitAttachmentStateChangesSyncOverrideNonOptional
                    as? SubmitAttachmentStateChangesSyncType<InvocationReportingType> {
                return try submitAttachmentStateChangesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the SubmitContainerStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
         - completion: The SubmitContainerStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitContainerStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    public func submitContainerStateChangeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.SubmitContainerStateChangeResponse, HTTPClientError>) -> ()) throws {
        if let submitContainerStateChangeAsyncOverrideNonOptional = submitContainerStateChangeAsyncOverride {
            if let submitContainerStateChangeAsyncOverrideTyped = submitContainerStateChangeAsyncOverrideNonOptional
                    as? SubmitContainerStateChangeAsyncType<InvocationReportingType> {
                return try submitContainerStateChangeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the SubmitContainerStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    public func submitContainerStateChangeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse {
        if let submitContainerStateChangeSyncOverrideNonOptional = submitContainerStateChangeSyncOverride {
            if let submitContainerStateChangeSyncOverrideTyped = submitContainerStateChangeSyncOverrideNonOptional
                    as? SubmitContainerStateChangeSyncType<InvocationReportingType> {
                return try submitContainerStateChangeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the SubmitTaskStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
         - completion: The SubmitTaskStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitTaskStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    public func submitTaskStateChangeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.SubmitTaskStateChangeResponse, HTTPClientError>) -> ()) throws {
        if let submitTaskStateChangeAsyncOverrideNonOptional = submitTaskStateChangeAsyncOverride {
            if let submitTaskStateChangeAsyncOverrideTyped = submitTaskStateChangeAsyncOverrideNonOptional
                    as? SubmitTaskStateChangeAsyncType<InvocationReportingType> {
                return try submitTaskStateChangeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the SubmitTaskStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    public func submitTaskStateChangeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse {
        if let submitTaskStateChangeSyncOverrideNonOptional = submitTaskStateChangeSyncOverride {
            if let submitTaskStateChangeSyncOverrideTyped = submitTaskStateChangeSyncOverrideNonOptional
                    as? SubmitTaskStateChangeSyncType<InvocationReportingType> {
                return try submitTaskStateChangeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.TagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.TagResourceResponse, HTTPClientError>) -> ()) throws {
        if let tagResourceAsyncOverrideNonOptional = tagResourceAsyncOverride {
            if let tagResourceAsyncOverrideTyped = tagResourceAsyncOverrideNonOptional
                    as? TagResourceAsyncType<InvocationReportingType> {
                return try tagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.TagResourceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.TagResourceResponse {
        if let tagResourceSyncOverrideNonOptional = tagResourceSyncOverride {
            if let tagResourceSyncOverrideTyped = tagResourceSyncOverrideNonOptional
                    as? TagResourceSyncType<InvocationReportingType> {
                return try tagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UntagResourceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UntagResourceResponse, HTTPClientError>) -> ()) throws {
        if let untagResourceAsyncOverrideNonOptional = untagResourceAsyncOverride {
            if let untagResourceAsyncOverrideTyped = untagResourceAsyncOverrideNonOptional
                    as? UntagResourceAsyncType<InvocationReportingType> {
                return try untagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UntagResourceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UntagResourceResponse {
        if let untagResourceSyncOverrideNonOptional = untagResourceSyncOverride {
            if let untagResourceSyncOverrideTyped = untagResourceSyncOverrideNonOptional
                    as? UntagResourceSyncType<InvocationReportingType> {
                return try untagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UpdateClusterSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
         - completion: The UpdateClusterSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateClusterSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func updateClusterSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateClusterSettingsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateClusterSettingsResponse, HTTPClientError>) -> ()) throws {
        if let updateClusterSettingsAsyncOverrideNonOptional = updateClusterSettingsAsyncOverride {
            if let updateClusterSettingsAsyncOverrideTyped = updateClusterSettingsAsyncOverrideNonOptional
                    as? UpdateClusterSettingsAsyncType<InvocationReportingType> {
                return try updateClusterSettingsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateClusterSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateClusterSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateClusterSettingsRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateClusterSettingsResponse {
        if let updateClusterSettingsSyncOverrideNonOptional = updateClusterSettingsSyncOverride {
            if let updateClusterSettingsSyncOverrideTyped = updateClusterSettingsSyncOverrideNonOptional
                    as? UpdateClusterSettingsSyncType<InvocationReportingType> {
                return try updateClusterSettingsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UpdateContainerAgent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
         - completion: The UpdateContainerAgentResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerAgentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerAgentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerAgentResponse, HTTPClientError>) -> ()) throws {
        if let updateContainerAgentAsyncOverrideNonOptional = updateContainerAgentAsyncOverride {
            if let updateContainerAgentAsyncOverrideTyped = updateContainerAgentAsyncOverrideNonOptional
                    as? UpdateContainerAgentAsyncType<InvocationReportingType> {
                return try updateContainerAgentAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateContainerAgent operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerAgentRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateContainerAgentResponse {
        if let updateContainerAgentSyncOverrideNonOptional = updateContainerAgentSyncOverride {
            if let updateContainerAgentSyncOverrideTyped = updateContainerAgentSyncOverrideNonOptional
                    as? UpdateContainerAgentSyncType<InvocationReportingType> {
                return try updateContainerAgentSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UpdateContainerInstancesState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
         - completion: The UpdateContainerInstancesStateResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerInstancesStateResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesStateAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerInstancesStateResponse, HTTPClientError>) -> ()) throws {
        if let updateContainerInstancesStateAsyncOverrideNonOptional = updateContainerInstancesStateAsyncOverride {
            if let updateContainerInstancesStateAsyncOverrideTyped = updateContainerInstancesStateAsyncOverrideNonOptional
                    as? UpdateContainerInstancesStateAsyncType<InvocationReportingType> {
                return try updateContainerInstancesStateAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateContainerInstancesState operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesStateSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse {
        if let updateContainerInstancesStateSyncOverrideNonOptional = updateContainerInstancesStateSyncOverride {
            if let updateContainerInstancesStateSyncOverrideTyped = updateContainerInstancesStateSyncOverrideNonOptional
                    as? UpdateContainerInstancesStateSyncType<InvocationReportingType> {
                return try updateContainerInstancesStateSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UpdateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
         - completion: The UpdateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateServiceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServiceRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateServiceResponse, HTTPClientError>) -> ()) throws {
        if let updateServiceAsyncOverrideNonOptional = updateServiceAsyncOverride {
            if let updateServiceAsyncOverrideTyped = updateServiceAsyncOverrideNonOptional
                    as? UpdateServiceAsyncType<InvocationReportingType> {
                return try updateServiceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateServiceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServiceRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateServiceResponse {
        if let updateServiceSyncOverrideNonOptional = updateServiceSyncOverride {
            if let updateServiceSyncOverrideTyped = updateServiceSyncOverrideNonOptional
                    as? UpdateServiceSyncType<InvocationReportingType> {
                return try updateServiceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
         - completion: The UpdateServicePrimaryTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServicePrimaryTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse, HTTPClientError>) -> ()) throws {
        if let updateServicePrimaryTaskSetAsyncOverrideNonOptional = updateServicePrimaryTaskSetAsyncOverride {
            if let updateServicePrimaryTaskSetAsyncOverrideTyped = updateServicePrimaryTaskSetAsyncOverrideNonOptional
                    as? UpdateServicePrimaryTaskSetAsyncType<InvocationReportingType> {
                return try updateServicePrimaryTaskSetAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse {
        if let updateServicePrimaryTaskSetSyncOverrideNonOptional = updateServicePrimaryTaskSetSyncOverride {
            if let updateServicePrimaryTaskSetSyncOverrideTyped = updateServicePrimaryTaskSetSyncOverrideNonOptional
                    as? UpdateServicePrimaryTaskSetSyncType<InvocationReportingType> {
                return try updateServicePrimaryTaskSetSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UpdateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
         - completion: The UpdateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSetAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateTaskSetRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<ElasticContainerModel.UpdateTaskSetResponse, HTTPClientError>) -> ()) throws {
        if let updateTaskSetAsyncOverrideNonOptional = updateTaskSetAsyncOverride {
            if let updateTaskSetAsyncOverrideTyped = updateTaskSetAsyncOverrideNonOptional
                    as? UpdateTaskSetAsyncType<InvocationReportingType> {
                return try updateTaskSetAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSetSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: ElasticContainerModel.UpdateTaskSetRequest,
            reporting: InvocationReportingType) throws -> ElasticContainerModel.UpdateTaskSetResponse {
        if let updateTaskSetSyncOverrideNonOptional = updateTaskSetSyncOverride {
            if let updateTaskSetSyncOverrideTyped = updateTaskSetSyncOverrideNonOptional
                    as? UpdateTaskSetSyncType<InvocationReportingType> {
                return try updateTaskSetSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
