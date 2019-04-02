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
// MockElasticContainerClient.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeHTTPClient

/**
 Mock Client for the ElasticContainer service by default returns the `__default` property of its return type.
 */
public struct MockElasticContainerClient: ElasticContainerClientProtocol {
    let createClusterAsyncOverride: ElasticContainerClientProtocol.CreateClusterAsyncType?
    let createClusterSyncOverride: ElasticContainerClientProtocol.CreateClusterSyncType?
    let createServiceAsyncOverride: ElasticContainerClientProtocol.CreateServiceAsyncType?
    let createServiceSyncOverride: ElasticContainerClientProtocol.CreateServiceSyncType?
    let createTaskSetAsyncOverride: ElasticContainerClientProtocol.CreateTaskSetAsyncType?
    let createTaskSetSyncOverride: ElasticContainerClientProtocol.CreateTaskSetSyncType?
    let deleteAccountSettingAsyncOverride: ElasticContainerClientProtocol.DeleteAccountSettingAsyncType?
    let deleteAccountSettingSyncOverride: ElasticContainerClientProtocol.DeleteAccountSettingSyncType?
    let deleteAttributesAsyncOverride: ElasticContainerClientProtocol.DeleteAttributesAsyncType?
    let deleteAttributesSyncOverride: ElasticContainerClientProtocol.DeleteAttributesSyncType?
    let deleteClusterAsyncOverride: ElasticContainerClientProtocol.DeleteClusterAsyncType?
    let deleteClusterSyncOverride: ElasticContainerClientProtocol.DeleteClusterSyncType?
    let deleteServiceAsyncOverride: ElasticContainerClientProtocol.DeleteServiceAsyncType?
    let deleteServiceSyncOverride: ElasticContainerClientProtocol.DeleteServiceSyncType?
    let deleteTaskSetAsyncOverride: ElasticContainerClientProtocol.DeleteTaskSetAsyncType?
    let deleteTaskSetSyncOverride: ElasticContainerClientProtocol.DeleteTaskSetSyncType?
    let deregisterContainerInstanceAsyncOverride: ElasticContainerClientProtocol.DeregisterContainerInstanceAsyncType?
    let deregisterContainerInstanceSyncOverride: ElasticContainerClientProtocol.DeregisterContainerInstanceSyncType?
    let deregisterTaskDefinitionAsyncOverride: ElasticContainerClientProtocol.DeregisterTaskDefinitionAsyncType?
    let deregisterTaskDefinitionSyncOverride: ElasticContainerClientProtocol.DeregisterTaskDefinitionSyncType?
    let describeClustersAsyncOverride: ElasticContainerClientProtocol.DescribeClustersAsyncType?
    let describeClustersSyncOverride: ElasticContainerClientProtocol.DescribeClustersSyncType?
    let describeContainerInstancesAsyncOverride: ElasticContainerClientProtocol.DescribeContainerInstancesAsyncType?
    let describeContainerInstancesSyncOverride: ElasticContainerClientProtocol.DescribeContainerInstancesSyncType?
    let describeServicesAsyncOverride: ElasticContainerClientProtocol.DescribeServicesAsyncType?
    let describeServicesSyncOverride: ElasticContainerClientProtocol.DescribeServicesSyncType?
    let describeTaskDefinitionAsyncOverride: ElasticContainerClientProtocol.DescribeTaskDefinitionAsyncType?
    let describeTaskDefinitionSyncOverride: ElasticContainerClientProtocol.DescribeTaskDefinitionSyncType?
    let describeTaskSetsAsyncOverride: ElasticContainerClientProtocol.DescribeTaskSetsAsyncType?
    let describeTaskSetsSyncOverride: ElasticContainerClientProtocol.DescribeTaskSetsSyncType?
    let describeTasksAsyncOverride: ElasticContainerClientProtocol.DescribeTasksAsyncType?
    let describeTasksSyncOverride: ElasticContainerClientProtocol.DescribeTasksSyncType?
    let discoverPollEndpointAsyncOverride: ElasticContainerClientProtocol.DiscoverPollEndpointAsyncType?
    let discoverPollEndpointSyncOverride: ElasticContainerClientProtocol.DiscoverPollEndpointSyncType?
    let listAccountSettingsAsyncOverride: ElasticContainerClientProtocol.ListAccountSettingsAsyncType?
    let listAccountSettingsSyncOverride: ElasticContainerClientProtocol.ListAccountSettingsSyncType?
    let listAttributesAsyncOverride: ElasticContainerClientProtocol.ListAttributesAsyncType?
    let listAttributesSyncOverride: ElasticContainerClientProtocol.ListAttributesSyncType?
    let listClustersAsyncOverride: ElasticContainerClientProtocol.ListClustersAsyncType?
    let listClustersSyncOverride: ElasticContainerClientProtocol.ListClustersSyncType?
    let listContainerInstancesAsyncOverride: ElasticContainerClientProtocol.ListContainerInstancesAsyncType?
    let listContainerInstancesSyncOverride: ElasticContainerClientProtocol.ListContainerInstancesSyncType?
    let listServicesAsyncOverride: ElasticContainerClientProtocol.ListServicesAsyncType?
    let listServicesSyncOverride: ElasticContainerClientProtocol.ListServicesSyncType?
    let listTagsForResourceAsyncOverride: ElasticContainerClientProtocol.ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ElasticContainerClientProtocol.ListTagsForResourceSyncType?
    let listTaskDefinitionFamiliesAsyncOverride: ElasticContainerClientProtocol.ListTaskDefinitionFamiliesAsyncType?
    let listTaskDefinitionFamiliesSyncOverride: ElasticContainerClientProtocol.ListTaskDefinitionFamiliesSyncType?
    let listTaskDefinitionsAsyncOverride: ElasticContainerClientProtocol.ListTaskDefinitionsAsyncType?
    let listTaskDefinitionsSyncOverride: ElasticContainerClientProtocol.ListTaskDefinitionsSyncType?
    let listTasksAsyncOverride: ElasticContainerClientProtocol.ListTasksAsyncType?
    let listTasksSyncOverride: ElasticContainerClientProtocol.ListTasksSyncType?
    let putAccountSettingAsyncOverride: ElasticContainerClientProtocol.PutAccountSettingAsyncType?
    let putAccountSettingSyncOverride: ElasticContainerClientProtocol.PutAccountSettingSyncType?
    let putAccountSettingDefaultAsyncOverride: ElasticContainerClientProtocol.PutAccountSettingDefaultAsyncType?
    let putAccountSettingDefaultSyncOverride: ElasticContainerClientProtocol.PutAccountSettingDefaultSyncType?
    let putAttributesAsyncOverride: ElasticContainerClientProtocol.PutAttributesAsyncType?
    let putAttributesSyncOverride: ElasticContainerClientProtocol.PutAttributesSyncType?
    let registerContainerInstanceAsyncOverride: ElasticContainerClientProtocol.RegisterContainerInstanceAsyncType?
    let registerContainerInstanceSyncOverride: ElasticContainerClientProtocol.RegisterContainerInstanceSyncType?
    let registerTaskDefinitionAsyncOverride: ElasticContainerClientProtocol.RegisterTaskDefinitionAsyncType?
    let registerTaskDefinitionSyncOverride: ElasticContainerClientProtocol.RegisterTaskDefinitionSyncType?
    let runTaskAsyncOverride: ElasticContainerClientProtocol.RunTaskAsyncType?
    let runTaskSyncOverride: ElasticContainerClientProtocol.RunTaskSyncType?
    let startTaskAsyncOverride: ElasticContainerClientProtocol.StartTaskAsyncType?
    let startTaskSyncOverride: ElasticContainerClientProtocol.StartTaskSyncType?
    let stopTaskAsyncOverride: ElasticContainerClientProtocol.StopTaskAsyncType?
    let stopTaskSyncOverride: ElasticContainerClientProtocol.StopTaskSyncType?
    let submitContainerStateChangeAsyncOverride: ElasticContainerClientProtocol.SubmitContainerStateChangeAsyncType?
    let submitContainerStateChangeSyncOverride: ElasticContainerClientProtocol.SubmitContainerStateChangeSyncType?
    let submitTaskStateChangeAsyncOverride: ElasticContainerClientProtocol.SubmitTaskStateChangeAsyncType?
    let submitTaskStateChangeSyncOverride: ElasticContainerClientProtocol.SubmitTaskStateChangeSyncType?
    let tagResourceAsyncOverride: ElasticContainerClientProtocol.TagResourceAsyncType?
    let tagResourceSyncOverride: ElasticContainerClientProtocol.TagResourceSyncType?
    let untagResourceAsyncOverride: ElasticContainerClientProtocol.UntagResourceAsyncType?
    let untagResourceSyncOverride: ElasticContainerClientProtocol.UntagResourceSyncType?
    let updateContainerAgentAsyncOverride: ElasticContainerClientProtocol.UpdateContainerAgentAsyncType?
    let updateContainerAgentSyncOverride: ElasticContainerClientProtocol.UpdateContainerAgentSyncType?
    let updateContainerInstancesStateAsyncOverride: ElasticContainerClientProtocol.UpdateContainerInstancesStateAsyncType?
    let updateContainerInstancesStateSyncOverride: ElasticContainerClientProtocol.UpdateContainerInstancesStateSyncType?
    let updateServiceAsyncOverride: ElasticContainerClientProtocol.UpdateServiceAsyncType?
    let updateServiceSyncOverride: ElasticContainerClientProtocol.UpdateServiceSyncType?
    let updateServicePrimaryTaskSetAsyncOverride: ElasticContainerClientProtocol.UpdateServicePrimaryTaskSetAsyncType?
    let updateServicePrimaryTaskSetSyncOverride: ElasticContainerClientProtocol.UpdateServicePrimaryTaskSetSyncType?
    let updateTaskSetAsyncOverride: ElasticContainerClientProtocol.UpdateTaskSetAsyncType?
    let updateTaskSetSyncOverride: ElasticContainerClientProtocol.UpdateTaskSetSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createClusterAsync: ElasticContainerClientProtocol.CreateClusterAsyncType? = nil,
            createClusterSync: ElasticContainerClientProtocol.CreateClusterSyncType? = nil,
            createServiceAsync: ElasticContainerClientProtocol.CreateServiceAsyncType? = nil,
            createServiceSync: ElasticContainerClientProtocol.CreateServiceSyncType? = nil,
            createTaskSetAsync: ElasticContainerClientProtocol.CreateTaskSetAsyncType? = nil,
            createTaskSetSync: ElasticContainerClientProtocol.CreateTaskSetSyncType? = nil,
            deleteAccountSettingAsync: ElasticContainerClientProtocol.DeleteAccountSettingAsyncType? = nil,
            deleteAccountSettingSync: ElasticContainerClientProtocol.DeleteAccountSettingSyncType? = nil,
            deleteAttributesAsync: ElasticContainerClientProtocol.DeleteAttributesAsyncType? = nil,
            deleteAttributesSync: ElasticContainerClientProtocol.DeleteAttributesSyncType? = nil,
            deleteClusterAsync: ElasticContainerClientProtocol.DeleteClusterAsyncType? = nil,
            deleteClusterSync: ElasticContainerClientProtocol.DeleteClusterSyncType? = nil,
            deleteServiceAsync: ElasticContainerClientProtocol.DeleteServiceAsyncType? = nil,
            deleteServiceSync: ElasticContainerClientProtocol.DeleteServiceSyncType? = nil,
            deleteTaskSetAsync: ElasticContainerClientProtocol.DeleteTaskSetAsyncType? = nil,
            deleteTaskSetSync: ElasticContainerClientProtocol.DeleteTaskSetSyncType? = nil,
            deregisterContainerInstanceAsync: ElasticContainerClientProtocol.DeregisterContainerInstanceAsyncType? = nil,
            deregisterContainerInstanceSync: ElasticContainerClientProtocol.DeregisterContainerInstanceSyncType? = nil,
            deregisterTaskDefinitionAsync: ElasticContainerClientProtocol.DeregisterTaskDefinitionAsyncType? = nil,
            deregisterTaskDefinitionSync: ElasticContainerClientProtocol.DeregisterTaskDefinitionSyncType? = nil,
            describeClustersAsync: ElasticContainerClientProtocol.DescribeClustersAsyncType? = nil,
            describeClustersSync: ElasticContainerClientProtocol.DescribeClustersSyncType? = nil,
            describeContainerInstancesAsync: ElasticContainerClientProtocol.DescribeContainerInstancesAsyncType? = nil,
            describeContainerInstancesSync: ElasticContainerClientProtocol.DescribeContainerInstancesSyncType? = nil,
            describeServicesAsync: ElasticContainerClientProtocol.DescribeServicesAsyncType? = nil,
            describeServicesSync: ElasticContainerClientProtocol.DescribeServicesSyncType? = nil,
            describeTaskDefinitionAsync: ElasticContainerClientProtocol.DescribeTaskDefinitionAsyncType? = nil,
            describeTaskDefinitionSync: ElasticContainerClientProtocol.DescribeTaskDefinitionSyncType? = nil,
            describeTaskSetsAsync: ElasticContainerClientProtocol.DescribeTaskSetsAsyncType? = nil,
            describeTaskSetsSync: ElasticContainerClientProtocol.DescribeTaskSetsSyncType? = nil,
            describeTasksAsync: ElasticContainerClientProtocol.DescribeTasksAsyncType? = nil,
            describeTasksSync: ElasticContainerClientProtocol.DescribeTasksSyncType? = nil,
            discoverPollEndpointAsync: ElasticContainerClientProtocol.DiscoverPollEndpointAsyncType? = nil,
            discoverPollEndpointSync: ElasticContainerClientProtocol.DiscoverPollEndpointSyncType? = nil,
            listAccountSettingsAsync: ElasticContainerClientProtocol.ListAccountSettingsAsyncType? = nil,
            listAccountSettingsSync: ElasticContainerClientProtocol.ListAccountSettingsSyncType? = nil,
            listAttributesAsync: ElasticContainerClientProtocol.ListAttributesAsyncType? = nil,
            listAttributesSync: ElasticContainerClientProtocol.ListAttributesSyncType? = nil,
            listClustersAsync: ElasticContainerClientProtocol.ListClustersAsyncType? = nil,
            listClustersSync: ElasticContainerClientProtocol.ListClustersSyncType? = nil,
            listContainerInstancesAsync: ElasticContainerClientProtocol.ListContainerInstancesAsyncType? = nil,
            listContainerInstancesSync: ElasticContainerClientProtocol.ListContainerInstancesSyncType? = nil,
            listServicesAsync: ElasticContainerClientProtocol.ListServicesAsyncType? = nil,
            listServicesSync: ElasticContainerClientProtocol.ListServicesSyncType? = nil,
            listTagsForResourceAsync: ElasticContainerClientProtocol.ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ElasticContainerClientProtocol.ListTagsForResourceSyncType? = nil,
            listTaskDefinitionFamiliesAsync: ElasticContainerClientProtocol.ListTaskDefinitionFamiliesAsyncType? = nil,
            listTaskDefinitionFamiliesSync: ElasticContainerClientProtocol.ListTaskDefinitionFamiliesSyncType? = nil,
            listTaskDefinitionsAsync: ElasticContainerClientProtocol.ListTaskDefinitionsAsyncType? = nil,
            listTaskDefinitionsSync: ElasticContainerClientProtocol.ListTaskDefinitionsSyncType? = nil,
            listTasksAsync: ElasticContainerClientProtocol.ListTasksAsyncType? = nil,
            listTasksSync: ElasticContainerClientProtocol.ListTasksSyncType? = nil,
            putAccountSettingAsync: ElasticContainerClientProtocol.PutAccountSettingAsyncType? = nil,
            putAccountSettingSync: ElasticContainerClientProtocol.PutAccountSettingSyncType? = nil,
            putAccountSettingDefaultAsync: ElasticContainerClientProtocol.PutAccountSettingDefaultAsyncType? = nil,
            putAccountSettingDefaultSync: ElasticContainerClientProtocol.PutAccountSettingDefaultSyncType? = nil,
            putAttributesAsync: ElasticContainerClientProtocol.PutAttributesAsyncType? = nil,
            putAttributesSync: ElasticContainerClientProtocol.PutAttributesSyncType? = nil,
            registerContainerInstanceAsync: ElasticContainerClientProtocol.RegisterContainerInstanceAsyncType? = nil,
            registerContainerInstanceSync: ElasticContainerClientProtocol.RegisterContainerInstanceSyncType? = nil,
            registerTaskDefinitionAsync: ElasticContainerClientProtocol.RegisterTaskDefinitionAsyncType? = nil,
            registerTaskDefinitionSync: ElasticContainerClientProtocol.RegisterTaskDefinitionSyncType? = nil,
            runTaskAsync: ElasticContainerClientProtocol.RunTaskAsyncType? = nil,
            runTaskSync: ElasticContainerClientProtocol.RunTaskSyncType? = nil,
            startTaskAsync: ElasticContainerClientProtocol.StartTaskAsyncType? = nil,
            startTaskSync: ElasticContainerClientProtocol.StartTaskSyncType? = nil,
            stopTaskAsync: ElasticContainerClientProtocol.StopTaskAsyncType? = nil,
            stopTaskSync: ElasticContainerClientProtocol.StopTaskSyncType? = nil,
            submitContainerStateChangeAsync: ElasticContainerClientProtocol.SubmitContainerStateChangeAsyncType? = nil,
            submitContainerStateChangeSync: ElasticContainerClientProtocol.SubmitContainerStateChangeSyncType? = nil,
            submitTaskStateChangeAsync: ElasticContainerClientProtocol.SubmitTaskStateChangeAsyncType? = nil,
            submitTaskStateChangeSync: ElasticContainerClientProtocol.SubmitTaskStateChangeSyncType? = nil,
            tagResourceAsync: ElasticContainerClientProtocol.TagResourceAsyncType? = nil,
            tagResourceSync: ElasticContainerClientProtocol.TagResourceSyncType? = nil,
            untagResourceAsync: ElasticContainerClientProtocol.UntagResourceAsyncType? = nil,
            untagResourceSync: ElasticContainerClientProtocol.UntagResourceSyncType? = nil,
            updateContainerAgentAsync: ElasticContainerClientProtocol.UpdateContainerAgentAsyncType? = nil,
            updateContainerAgentSync: ElasticContainerClientProtocol.UpdateContainerAgentSyncType? = nil,
            updateContainerInstancesStateAsync: ElasticContainerClientProtocol.UpdateContainerInstancesStateAsyncType? = nil,
            updateContainerInstancesStateSync: ElasticContainerClientProtocol.UpdateContainerInstancesStateSyncType? = nil,
            updateServiceAsync: ElasticContainerClientProtocol.UpdateServiceAsyncType? = nil,
            updateServiceSync: ElasticContainerClientProtocol.UpdateServiceSyncType? = nil,
            updateServicePrimaryTaskSetAsync: ElasticContainerClientProtocol.UpdateServicePrimaryTaskSetAsyncType? = nil,
            updateServicePrimaryTaskSetSync: ElasticContainerClientProtocol.UpdateServicePrimaryTaskSetSyncType? = nil,
            updateTaskSetAsync: ElasticContainerClientProtocol.UpdateTaskSetAsyncType? = nil,
            updateTaskSetSync: ElasticContainerClientProtocol.UpdateTaskSetSyncType? = nil) {
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
        self.submitContainerStateChangeAsyncOverride = submitContainerStateChangeAsync
        self.submitContainerStateChangeSyncOverride = submitContainerStateChangeSync
        self.submitTaskStateChangeAsyncOverride = submitTaskStateChangeAsync
        self.submitTaskStateChangeSyncOverride = submitTaskStateChangeSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
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
     Invokes the CreateCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
         - completion: The CreateClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func createClusterAsync(input: ElasticContainerModel.CreateClusterRequest, completion: @escaping (HTTPResult<ElasticContainerModel.CreateClusterResponse>) -> ()) throws {
        if let createClusterAsyncOverride = createClusterAsyncOverride {
            return try createClusterAsyncOverride(input, completion)
        }

        let result = CreateClusterResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the CreateCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func createClusterSync(input: ElasticContainerModel.CreateClusterRequest) throws -> ElasticContainerModel.CreateClusterResponse {
        if let createClusterSyncOverride = createClusterSyncOverride {
            return try createClusterSyncOverride(input)
        }

        return CreateClusterResponse.__default
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
    public func createServiceAsync(input: ElasticContainerModel.CreateServiceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.CreateServiceResponse>) -> ()) throws {
        if let createServiceAsyncOverride = createServiceAsyncOverride {
            return try createServiceAsyncOverride(input, completion)
        }

        let result = CreateServiceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the CreateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createServiceSync(input: ElasticContainerModel.CreateServiceRequest) throws -> ElasticContainerModel.CreateServiceResponse {
        if let createServiceSyncOverride = createServiceSyncOverride {
            return try createServiceSyncOverride(input)
        }

        return CreateServiceResponse.__default
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
    public func createTaskSetAsync(input: ElasticContainerModel.CreateTaskSetRequest, completion: @escaping (HTTPResult<ElasticContainerModel.CreateTaskSetResponse>) -> ()) throws {
        if let createTaskSetAsyncOverride = createTaskSetAsyncOverride {
            return try createTaskSetAsyncOverride(input, completion)
        }

        let result = CreateTaskSetResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the CreateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSetSync(input: ElasticContainerModel.CreateTaskSetRequest) throws -> ElasticContainerModel.CreateTaskSetResponse {
        if let createTaskSetSyncOverride = createTaskSetSyncOverride {
            return try createTaskSetSyncOverride(input)
        }

        return CreateTaskSetResponse.__default
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
    public func deleteAccountSettingAsync(input: ElasticContainerModel.DeleteAccountSettingRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeleteAccountSettingResponse>) -> ()) throws {
        if let deleteAccountSettingAsyncOverride = deleteAccountSettingAsyncOverride {
            return try deleteAccountSettingAsyncOverride(input, completion)
        }

        let result = DeleteAccountSettingResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deleteAccountSettingSync(input: ElasticContainerModel.DeleteAccountSettingRequest) throws -> ElasticContainerModel.DeleteAccountSettingResponse {
        if let deleteAccountSettingSyncOverride = deleteAccountSettingSyncOverride {
            return try deleteAccountSettingSyncOverride(input)
        }

        return DeleteAccountSettingResponse.__default
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
    public func deleteAttributesAsync(input: ElasticContainerModel.DeleteAttributesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeleteAttributesResponse>) -> ()) throws {
        if let deleteAttributesAsyncOverride = deleteAttributesAsyncOverride {
            return try deleteAttributesAsyncOverride(input, completion)
        }

        let result = DeleteAttributesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributesSync(input: ElasticContainerModel.DeleteAttributesRequest) throws -> ElasticContainerModel.DeleteAttributesResponse {
        if let deleteAttributesSyncOverride = deleteAttributesSyncOverride {
            return try deleteAttributesSyncOverride(input)
        }

        return DeleteAttributesResponse.__default
    }

    /**
     Invokes the DeleteCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
         - completion: The DeleteClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server.
     */
    public func deleteClusterAsync(input: ElasticContainerModel.DeleteClusterRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeleteClusterResponse>) -> ()) throws {
        if let deleteClusterAsyncOverride = deleteClusterAsyncOverride {
            return try deleteClusterAsyncOverride(input, completion)
        }

        let result = DeleteClusterResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server.
     */
    public func deleteClusterSync(input: ElasticContainerModel.DeleteClusterRequest) throws -> ElasticContainerModel.DeleteClusterResponse {
        if let deleteClusterSyncOverride = deleteClusterSyncOverride {
            return try deleteClusterSyncOverride(input)
        }

        return DeleteClusterResponse.__default
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
    public func deleteServiceAsync(input: ElasticContainerModel.DeleteServiceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeleteServiceResponse>) -> ()) throws {
        if let deleteServiceAsyncOverride = deleteServiceAsyncOverride {
            return try deleteServiceAsyncOverride(input, completion)
        }

        let result = DeleteServiceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteService operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteServiceSync(input: ElasticContainerModel.DeleteServiceRequest) throws -> ElasticContainerModel.DeleteServiceResponse {
        if let deleteServiceSyncOverride = deleteServiceSyncOverride {
            return try deleteServiceSyncOverride(input)
        }

        return DeleteServiceResponse.__default
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
    public func deleteTaskSetAsync(input: ElasticContainerModel.DeleteTaskSetRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeleteTaskSetResponse>) -> ()) throws {
        if let deleteTaskSetAsyncOverride = deleteTaskSetAsyncOverride {
            return try deleteTaskSetAsyncOverride(input, completion)
        }

        let result = DeleteTaskSetResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeleteTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSetSync(input: ElasticContainerModel.DeleteTaskSetRequest) throws -> ElasticContainerModel.DeleteTaskSetResponse {
        if let deleteTaskSetSyncOverride = deleteTaskSetSyncOverride {
            return try deleteTaskSetSyncOverride(input)
        }

        return DeleteTaskSetResponse.__default
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
    public func deregisterContainerInstanceAsync(input: ElasticContainerModel.DeregisterContainerInstanceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeregisterContainerInstanceResponse>) -> ()) throws {
        if let deregisterContainerInstanceAsyncOverride = deregisterContainerInstanceAsyncOverride {
            return try deregisterContainerInstanceAsyncOverride(input, completion)
        }

        let result = DeregisterContainerInstanceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeregisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstanceSync(input: ElasticContainerModel.DeregisterContainerInstanceRequest) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse {
        if let deregisterContainerInstanceSyncOverride = deregisterContainerInstanceSyncOverride {
            return try deregisterContainerInstanceSyncOverride(input)
        }

        return DeregisterContainerInstanceResponse.__default
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
    public func deregisterTaskDefinitionAsync(input: ElasticContainerModel.DeregisterTaskDefinitionRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DeregisterTaskDefinitionResponse>) -> ()) throws {
        if let deregisterTaskDefinitionAsyncOverride = deregisterTaskDefinitionAsyncOverride {
            return try deregisterTaskDefinitionAsyncOverride(input, completion)
        }

        let result = DeregisterTaskDefinitionResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DeregisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deregisterTaskDefinitionSync(input: ElasticContainerModel.DeregisterTaskDefinitionRequest) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse {
        if let deregisterTaskDefinitionSyncOverride = deregisterTaskDefinitionSyncOverride {
            return try deregisterTaskDefinitionSyncOverride(input)
        }

        return DeregisterTaskDefinitionResponse.__default
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
    public func describeClustersAsync(input: ElasticContainerModel.DescribeClustersRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DescribeClustersResponse>) -> ()) throws {
        if let describeClustersAsyncOverride = describeClustersAsyncOverride {
            return try describeClustersAsyncOverride(input, completion)
        }

        let result = DescribeClustersResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeClustersSync(input: ElasticContainerModel.DescribeClustersRequest) throws -> ElasticContainerModel.DescribeClustersResponse {
        if let describeClustersSyncOverride = describeClustersSyncOverride {
            return try describeClustersSyncOverride(input)
        }

        return DescribeClustersResponse.__default
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
    public func describeContainerInstancesAsync(input: ElasticContainerModel.DescribeContainerInstancesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DescribeContainerInstancesResponse>) -> ()) throws {
        if let describeContainerInstancesAsyncOverride = describeContainerInstancesAsyncOverride {
            return try describeContainerInstancesAsyncOverride(input, completion)
        }

        let result = DescribeContainerInstancesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstancesSync(input: ElasticContainerModel.DescribeContainerInstancesRequest) throws -> ElasticContainerModel.DescribeContainerInstancesResponse {
        if let describeContainerInstancesSyncOverride = describeContainerInstancesSyncOverride {
            return try describeContainerInstancesSyncOverride(input)
        }

        return DescribeContainerInstancesResponse.__default
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
    public func describeServicesAsync(input: ElasticContainerModel.DescribeServicesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DescribeServicesResponse>) -> ()) throws {
        if let describeServicesAsyncOverride = describeServicesAsyncOverride {
            return try describeServicesAsyncOverride(input, completion)
        }

        let result = DescribeServicesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServicesSync(input: ElasticContainerModel.DescribeServicesRequest) throws -> ElasticContainerModel.DescribeServicesResponse {
        if let describeServicesSyncOverride = describeServicesSyncOverride {
            return try describeServicesSyncOverride(input)
        }

        return DescribeServicesResponse.__default
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
    public func describeTaskDefinitionAsync(input: ElasticContainerModel.DescribeTaskDefinitionRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DescribeTaskDefinitionResponse>) -> ()) throws {
        if let describeTaskDefinitionAsyncOverride = describeTaskDefinitionAsyncOverride {
            return try describeTaskDefinitionAsyncOverride(input, completion)
        }

        let result = DescribeTaskDefinitionResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeTaskDefinitionSync(input: ElasticContainerModel.DescribeTaskDefinitionRequest) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse {
        if let describeTaskDefinitionSyncOverride = describeTaskDefinitionSyncOverride {
            return try describeTaskDefinitionSyncOverride(input)
        }

        return DescribeTaskDefinitionResponse.__default
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
    public func describeTaskSetsAsync(input: ElasticContainerModel.DescribeTaskSetsRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DescribeTaskSetsResponse>) -> ()) throws {
        if let describeTaskSetsAsyncOverride = describeTaskSetsAsyncOverride {
            return try describeTaskSetsAsyncOverride(input, completion)
        }

        let result = DescribeTaskSetsResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeTaskSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSetsSync(input: ElasticContainerModel.DescribeTaskSetsRequest) throws -> ElasticContainerModel.DescribeTaskSetsResponse {
        if let describeTaskSetsSyncOverride = describeTaskSetsSyncOverride {
            return try describeTaskSetsSyncOverride(input)
        }

        return DescribeTaskSetsResponse.__default
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
    public func describeTasksAsync(input: ElasticContainerModel.DescribeTasksRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DescribeTasksResponse>) -> ()) throws {
        if let describeTasksAsyncOverride = describeTasksAsyncOverride {
            return try describeTasksAsyncOverride(input, completion)
        }

        let result = DescribeTasksResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DescribeTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasksSync(input: ElasticContainerModel.DescribeTasksRequest) throws -> ElasticContainerModel.DescribeTasksResponse {
        if let describeTasksSyncOverride = describeTasksSyncOverride {
            return try describeTasksSyncOverride(input)
        }

        return DescribeTasksResponse.__default
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
    public func discoverPollEndpointAsync(input: ElasticContainerModel.DiscoverPollEndpointRequest, completion: @escaping (HTTPResult<ElasticContainerModel.DiscoverPollEndpointResponse>) -> ()) throws {
        if let discoverPollEndpointAsyncOverride = discoverPollEndpointAsyncOverride {
            return try discoverPollEndpointAsyncOverride(input, completion)
        }

        let result = DiscoverPollEndpointResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the DiscoverPollEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func discoverPollEndpointSync(input: ElasticContainerModel.DiscoverPollEndpointRequest) throws -> ElasticContainerModel.DiscoverPollEndpointResponse {
        if let discoverPollEndpointSyncOverride = discoverPollEndpointSyncOverride {
            return try discoverPollEndpointSyncOverride(input)
        }

        return DiscoverPollEndpointResponse.__default
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
    public func listAccountSettingsAsync(input: ElasticContainerModel.ListAccountSettingsRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListAccountSettingsResponse>) -> ()) throws {
        if let listAccountSettingsAsyncOverride = listAccountSettingsAsyncOverride {
            return try listAccountSettingsAsyncOverride(input, completion)
        }

        let result = ListAccountSettingsResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListAccountSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listAccountSettingsSync(input: ElasticContainerModel.ListAccountSettingsRequest) throws -> ElasticContainerModel.ListAccountSettingsResponse {
        if let listAccountSettingsSyncOverride = listAccountSettingsSyncOverride {
            return try listAccountSettingsSyncOverride(input)
        }

        return ListAccountSettingsResponse.__default
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
    public func listAttributesAsync(input: ElasticContainerModel.ListAttributesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListAttributesResponse>) -> ()) throws {
        if let listAttributesAsyncOverride = listAttributesAsyncOverride {
            return try listAttributesAsyncOverride(input, completion)
        }

        let result = ListAttributesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    public func listAttributesSync(input: ElasticContainerModel.ListAttributesRequest) throws -> ElasticContainerModel.ListAttributesResponse {
        if let listAttributesSyncOverride = listAttributesSyncOverride {
            return try listAttributesSyncOverride(input)
        }

        return ListAttributesResponse.__default
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
    public func listClustersAsync(input: ElasticContainerModel.ListClustersRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListClustersResponse>) -> ()) throws {
        if let listClustersAsyncOverride = listClustersAsyncOverride {
            return try listClustersAsyncOverride(input, completion)
        }

        let result = ListClustersResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listClustersSync(input: ElasticContainerModel.ListClustersRequest) throws -> ElasticContainerModel.ListClustersResponse {
        if let listClustersSyncOverride = listClustersSyncOverride {
            return try listClustersSyncOverride(input)
        }

        return ListClustersResponse.__default
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
    public func listContainerInstancesAsync(input: ElasticContainerModel.ListContainerInstancesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListContainerInstancesResponse>) -> ()) throws {
        if let listContainerInstancesAsyncOverride = listContainerInstancesAsyncOverride {
            return try listContainerInstancesAsyncOverride(input, completion)
        }

        let result = ListContainerInstancesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstancesSync(input: ElasticContainerModel.ListContainerInstancesRequest) throws -> ElasticContainerModel.ListContainerInstancesResponse {
        if let listContainerInstancesSyncOverride = listContainerInstancesSyncOverride {
            return try listContainerInstancesSyncOverride(input)
        }

        return ListContainerInstancesResponse.__default
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
    public func listServicesAsync(input: ElasticContainerModel.ListServicesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListServicesResponse>) -> ()) throws {
        if let listServicesAsyncOverride = listServicesAsyncOverride {
            return try listServicesAsyncOverride(input, completion)
        }

        let result = ListServicesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listServicesSync(input: ElasticContainerModel.ListServicesRequest) throws -> ElasticContainerModel.ListServicesResponse {
        if let listServicesSyncOverride = listServicesSyncOverride {
            return try listServicesSyncOverride(input)
        }

        return ListServicesResponse.__default
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
    public func listTagsForResourceAsync(input: ElasticContainerModel.ListTagsForResourceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListTagsForResourceResponse>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        let result = ListTagsForResourceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResourceSync(input: ElasticContainerModel.ListTagsForResourceRequest) throws -> ElasticContainerModel.ListTagsForResourceResponse {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        return ListTagsForResourceResponse.__default
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
    public func listTaskDefinitionFamiliesAsync(input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListTaskDefinitionFamiliesResponse>) -> ()) throws {
        if let listTaskDefinitionFamiliesAsyncOverride = listTaskDefinitionFamiliesAsyncOverride {
            return try listTaskDefinitionFamiliesAsyncOverride(input, completion)
        }

        let result = ListTaskDefinitionFamiliesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamiliesSync(input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse {
        if let listTaskDefinitionFamiliesSyncOverride = listTaskDefinitionFamiliesSyncOverride {
            return try listTaskDefinitionFamiliesSyncOverride(input)
        }

        return ListTaskDefinitionFamiliesResponse.__default
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
    public func listTaskDefinitionsAsync(input: ElasticContainerModel.ListTaskDefinitionsRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListTaskDefinitionsResponse>) -> ()) throws {
        if let listTaskDefinitionsAsyncOverride = listTaskDefinitionsAsyncOverride {
            return try listTaskDefinitionsAsyncOverride(input, completion)
        }

        let result = ListTaskDefinitionsResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListTaskDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionsSync(input: ElasticContainerModel.ListTaskDefinitionsRequest) throws -> ElasticContainerModel.ListTaskDefinitionsResponse {
        if let listTaskDefinitionsSyncOverride = listTaskDefinitionsSyncOverride {
            return try listTaskDefinitionsSyncOverride(input)
        }

        return ListTaskDefinitionsResponse.__default
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
    public func listTasksAsync(input: ElasticContainerModel.ListTasksRequest, completion: @escaping (HTTPResult<ElasticContainerModel.ListTasksResponse>) -> ()) throws {
        if let listTasksAsyncOverride = listTasksAsyncOverride {
            return try listTasksAsyncOverride(input, completion)
        }

        let result = ListTasksResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the ListTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasksSync(input: ElasticContainerModel.ListTasksRequest) throws -> ElasticContainerModel.ListTasksResponse {
        if let listTasksSyncOverride = listTasksSyncOverride {
            return try listTasksSyncOverride(input)
        }

        return ListTasksResponse.__default
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
    public func putAccountSettingAsync(input: ElasticContainerModel.PutAccountSettingRequest, completion: @escaping (HTTPResult<ElasticContainerModel.PutAccountSettingResponse>) -> ()) throws {
        if let putAccountSettingAsyncOverride = putAccountSettingAsyncOverride {
            return try putAccountSettingAsyncOverride(input, completion)
        }

        let result = PutAccountSettingResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the PutAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingSync(input: ElasticContainerModel.PutAccountSettingRequest) throws -> ElasticContainerModel.PutAccountSettingResponse {
        if let putAccountSettingSyncOverride = putAccountSettingSyncOverride {
            return try putAccountSettingSyncOverride(input)
        }

        return PutAccountSettingResponse.__default
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
    public func putAccountSettingDefaultAsync(input: ElasticContainerModel.PutAccountSettingDefaultRequest, completion: @escaping (HTTPResult<ElasticContainerModel.PutAccountSettingDefaultResponse>) -> ()) throws {
        if let putAccountSettingDefaultAsyncOverride = putAccountSettingDefaultAsyncOverride {
            return try putAccountSettingDefaultAsyncOverride(input, completion)
        }

        let result = PutAccountSettingDefaultResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the PutAccountSettingDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingDefaultSync(input: ElasticContainerModel.PutAccountSettingDefaultRequest) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse {
        if let putAccountSettingDefaultSyncOverride = putAccountSettingDefaultSyncOverride {
            return try putAccountSettingDefaultSyncOverride(input)
        }

        return PutAccountSettingDefaultResponse.__default
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
    public func putAttributesAsync(input: ElasticContainerModel.PutAttributesRequest, completion: @escaping (HTTPResult<ElasticContainerModel.PutAttributesResponse>) -> ()) throws {
        if let putAttributesAsyncOverride = putAttributesAsyncOverride {
            return try putAttributesAsyncOverride(input, completion)
        }

        let result = PutAttributesResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the PutAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributesSync(input: ElasticContainerModel.PutAttributesRequest) throws -> ElasticContainerModel.PutAttributesResponse {
        if let putAttributesSyncOverride = putAttributesSyncOverride {
            return try putAttributesSyncOverride(input)
        }

        return PutAttributesResponse.__default
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
    public func registerContainerInstanceAsync(input: ElasticContainerModel.RegisterContainerInstanceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.RegisterContainerInstanceResponse>) -> ()) throws {
        if let registerContainerInstanceAsyncOverride = registerContainerInstanceAsyncOverride {
            return try registerContainerInstanceAsyncOverride(input, completion)
        }

        let result = RegisterContainerInstanceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the RegisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerContainerInstanceSync(input: ElasticContainerModel.RegisterContainerInstanceRequest) throws -> ElasticContainerModel.RegisterContainerInstanceResponse {
        if let registerContainerInstanceSyncOverride = registerContainerInstanceSyncOverride {
            return try registerContainerInstanceSyncOverride(input)
        }

        return RegisterContainerInstanceResponse.__default
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
    public func registerTaskDefinitionAsync(input: ElasticContainerModel.RegisterTaskDefinitionRequest, completion: @escaping (HTTPResult<ElasticContainerModel.RegisterTaskDefinitionResponse>) -> ()) throws {
        if let registerTaskDefinitionAsyncOverride = registerTaskDefinitionAsyncOverride {
            return try registerTaskDefinitionAsyncOverride(input, completion)
        }

        let result = RegisterTaskDefinitionResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the RegisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerTaskDefinitionSync(input: ElasticContainerModel.RegisterTaskDefinitionRequest) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse {
        if let registerTaskDefinitionSyncOverride = registerTaskDefinitionSyncOverride {
            return try registerTaskDefinitionSyncOverride(input)
        }

        return RegisterTaskDefinitionResponse.__default
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
    public func runTaskAsync(input: ElasticContainerModel.RunTaskRequest, completion: @escaping (HTTPResult<ElasticContainerModel.RunTaskResponse>) -> ()) throws {
        if let runTaskAsyncOverride = runTaskAsyncOverride {
            return try runTaskAsyncOverride(input, completion)
        }

        let result = RunTaskResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the RunTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTaskSync(input: ElasticContainerModel.RunTaskRequest) throws -> ElasticContainerModel.RunTaskResponse {
        if let runTaskSyncOverride = runTaskSyncOverride {
            return try runTaskSyncOverride(input)
        }

        return RunTaskResponse.__default
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
    public func startTaskAsync(input: ElasticContainerModel.StartTaskRequest, completion: @escaping (HTTPResult<ElasticContainerModel.StartTaskResponse>) -> ()) throws {
        if let startTaskAsyncOverride = startTaskAsyncOverride {
            return try startTaskAsyncOverride(input, completion)
        }

        let result = StartTaskResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the StartTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func startTaskSync(input: ElasticContainerModel.StartTaskRequest) throws -> ElasticContainerModel.StartTaskResponse {
        if let startTaskSyncOverride = startTaskSyncOverride {
            return try startTaskSyncOverride(input)
        }

        return StartTaskResponse.__default
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
    public func stopTaskAsync(input: ElasticContainerModel.StopTaskRequest, completion: @escaping (HTTPResult<ElasticContainerModel.StopTaskResponse>) -> ()) throws {
        if let stopTaskAsyncOverride = stopTaskAsyncOverride {
            return try stopTaskAsyncOverride(input, completion)
        }

        let result = StopTaskResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the StopTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTaskSync(input: ElasticContainerModel.StopTaskRequest) throws -> ElasticContainerModel.StopTaskResponse {
        if let stopTaskSyncOverride = stopTaskSyncOverride {
            return try stopTaskSyncOverride(input)
        }

        return StopTaskResponse.__default
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
    public func submitContainerStateChangeAsync(input: ElasticContainerModel.SubmitContainerStateChangeRequest, completion: @escaping (HTTPResult<ElasticContainerModel.SubmitContainerStateChangeResponse>) -> ()) throws {
        if let submitContainerStateChangeAsyncOverride = submitContainerStateChangeAsyncOverride {
            return try submitContainerStateChangeAsyncOverride(input, completion)
        }

        let result = SubmitContainerStateChangeResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the SubmitContainerStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    public func submitContainerStateChangeSync(input: ElasticContainerModel.SubmitContainerStateChangeRequest) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse {
        if let submitContainerStateChangeSyncOverride = submitContainerStateChangeSyncOverride {
            return try submitContainerStateChangeSyncOverride(input)
        }

        return SubmitContainerStateChangeResponse.__default
    }

    /**
     Invokes the SubmitTaskStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
         - completion: The SubmitTaskStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitTaskStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    public func submitTaskStateChangeAsync(input: ElasticContainerModel.SubmitTaskStateChangeRequest, completion: @escaping (HTTPResult<ElasticContainerModel.SubmitTaskStateChangeResponse>) -> ()) throws {
        if let submitTaskStateChangeAsyncOverride = submitTaskStateChangeAsyncOverride {
            return try submitTaskStateChangeAsyncOverride(input, completion)
        }

        let result = SubmitTaskStateChangeResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the SubmitTaskStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    public func submitTaskStateChangeSync(input: ElasticContainerModel.SubmitTaskStateChangeRequest) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse {
        if let submitTaskStateChangeSyncOverride = submitTaskStateChangeSyncOverride {
            return try submitTaskStateChangeSyncOverride(input)
        }

        return SubmitTaskStateChangeResponse.__default
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
    public func tagResourceAsync(input: ElasticContainerModel.TagResourceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.TagResourceResponse>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        let result = TagResourceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResourceSync(input: ElasticContainerModel.TagResourceRequest) throws -> ElasticContainerModel.TagResourceResponse {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        return TagResourceResponse.__default
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
    public func untagResourceAsync(input: ElasticContainerModel.UntagResourceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.UntagResourceResponse>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        let result = UntagResourceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResourceSync(input: ElasticContainerModel.UntagResourceRequest) throws -> ElasticContainerModel.UntagResourceResponse {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        return UntagResourceResponse.__default
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
    public func updateContainerAgentAsync(input: ElasticContainerModel.UpdateContainerAgentRequest, completion: @escaping (HTTPResult<ElasticContainerModel.UpdateContainerAgentResponse>) -> ()) throws {
        if let updateContainerAgentAsyncOverride = updateContainerAgentAsyncOverride {
            return try updateContainerAgentAsyncOverride(input, completion)
        }

        let result = UpdateContainerAgentResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UpdateContainerAgent operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgentSync(input: ElasticContainerModel.UpdateContainerAgentRequest) throws -> ElasticContainerModel.UpdateContainerAgentResponse {
        if let updateContainerAgentSyncOverride = updateContainerAgentSyncOverride {
            return try updateContainerAgentSyncOverride(input)
        }

        return UpdateContainerAgentResponse.__default
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
    public func updateContainerInstancesStateAsync(input: ElasticContainerModel.UpdateContainerInstancesStateRequest, completion: @escaping (HTTPResult<ElasticContainerModel.UpdateContainerInstancesStateResponse>) -> ()) throws {
        if let updateContainerInstancesStateAsyncOverride = updateContainerInstancesStateAsyncOverride {
            return try updateContainerInstancesStateAsyncOverride(input, completion)
        }

        let result = UpdateContainerInstancesStateResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UpdateContainerInstancesState operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesStateSync(input: ElasticContainerModel.UpdateContainerInstancesStateRequest) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse {
        if let updateContainerInstancesStateSyncOverride = updateContainerInstancesStateSyncOverride {
            return try updateContainerInstancesStateSyncOverride(input)
        }

        return UpdateContainerInstancesStateResponse.__default
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
    public func updateServiceAsync(input: ElasticContainerModel.UpdateServiceRequest, completion: @escaping (HTTPResult<ElasticContainerModel.UpdateServiceResponse>) -> ()) throws {
        if let updateServiceAsyncOverride = updateServiceAsyncOverride {
            return try updateServiceAsyncOverride(input, completion)
        }

        let result = UpdateServiceResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UpdateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateServiceSync(input: ElasticContainerModel.UpdateServiceRequest) throws -> ElasticContainerModel.UpdateServiceResponse {
        if let updateServiceSyncOverride = updateServiceSyncOverride {
            return try updateServiceSyncOverride(input)
        }

        return UpdateServiceResponse.__default
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
         - completion: The UpdateServicePrimaryTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServicePrimaryTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSetAsync(input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, completion: @escaping (HTTPResult<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse>) -> ()) throws {
        if let updateServicePrimaryTaskSetAsyncOverride = updateServicePrimaryTaskSetAsyncOverride {
            return try updateServicePrimaryTaskSetAsyncOverride(input, completion)
        }

        let result = UpdateServicePrimaryTaskSetResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSetSync(input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse {
        if let updateServicePrimaryTaskSetSyncOverride = updateServicePrimaryTaskSetSyncOverride {
            return try updateServicePrimaryTaskSetSyncOverride(input)
        }

        return UpdateServicePrimaryTaskSetResponse.__default
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
    public func updateTaskSetAsync(input: ElasticContainerModel.UpdateTaskSetRequest, completion: @escaping (HTTPResult<ElasticContainerModel.UpdateTaskSetResponse>) -> ()) throws {
        if let updateTaskSetAsyncOverride = updateTaskSetAsyncOverride {
            return try updateTaskSetAsyncOverride(input, completion)
        }

        let result = UpdateTaskSetResponse.__default
        
        completion(.response(result))
    }

    /**
     Invokes the UpdateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSetSync(input: ElasticContainerModel.UpdateTaskSetRequest) throws -> ElasticContainerModel.UpdateTaskSetResponse {
        if let updateTaskSetSyncOverride = updateTaskSetSyncOverride {
            return try updateTaskSetSyncOverride(input)
        }

        return UpdateTaskSetResponse.__default
    }
}
