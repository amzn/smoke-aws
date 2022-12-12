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
// MockElasticContainerClientV2.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the ElasticContainer service by default returns the `__default` property of its return type.
 */
public struct MockElasticContainerClientV2: ElasticContainerClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let createCapacityProviderOverride: CreateCapacityProviderFunctionType?
    let createClusterOverride: CreateClusterFunctionType?
    let createServiceOverride: CreateServiceFunctionType?
    let createTaskSetOverride: CreateTaskSetFunctionType?
    let deleteAccountSettingOverride: DeleteAccountSettingFunctionType?
    let deleteAttributesOverride: DeleteAttributesFunctionType?
    let deleteCapacityProviderOverride: DeleteCapacityProviderFunctionType?
    let deleteClusterOverride: DeleteClusterFunctionType?
    let deleteServiceOverride: DeleteServiceFunctionType?
    let deleteTaskSetOverride: DeleteTaskSetFunctionType?
    let deregisterContainerInstanceOverride: DeregisterContainerInstanceFunctionType?
    let deregisterTaskDefinitionOverride: DeregisterTaskDefinitionFunctionType?
    let describeCapacityProvidersOverride: DescribeCapacityProvidersFunctionType?
    let describeClustersOverride: DescribeClustersFunctionType?
    let describeContainerInstancesOverride: DescribeContainerInstancesFunctionType?
    let describeServicesOverride: DescribeServicesFunctionType?
    let describeTaskDefinitionOverride: DescribeTaskDefinitionFunctionType?
    let describeTaskSetsOverride: DescribeTaskSetsFunctionType?
    let describeTasksOverride: DescribeTasksFunctionType?
    let discoverPollEndpointOverride: DiscoverPollEndpointFunctionType?
    let executeCommandOverride: ExecuteCommandFunctionType?
    let listAccountSettingsOverride: ListAccountSettingsFunctionType?
    let listAttributesOverride: ListAttributesFunctionType?
    let listClustersOverride: ListClustersFunctionType?
    let listContainerInstancesOverride: ListContainerInstancesFunctionType?
    let listServicesOverride: ListServicesFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let listTaskDefinitionFamiliesOverride: ListTaskDefinitionFamiliesFunctionType?
    let listTaskDefinitionsOverride: ListTaskDefinitionsFunctionType?
    let listTasksOverride: ListTasksFunctionType?
    let putAccountSettingOverride: PutAccountSettingFunctionType?
    let putAccountSettingDefaultOverride: PutAccountSettingDefaultFunctionType?
    let putAttributesOverride: PutAttributesFunctionType?
    let putClusterCapacityProvidersOverride: PutClusterCapacityProvidersFunctionType?
    let registerContainerInstanceOverride: RegisterContainerInstanceFunctionType?
    let registerTaskDefinitionOverride: RegisterTaskDefinitionFunctionType?
    let runTaskOverride: RunTaskFunctionType?
    let startTaskOverride: StartTaskFunctionType?
    let stopTaskOverride: StopTaskFunctionType?
    let submitAttachmentStateChangesOverride: SubmitAttachmentStateChangesFunctionType?
    let submitContainerStateChangeOverride: SubmitContainerStateChangeFunctionType?
    let submitTaskStateChangeOverride: SubmitTaskStateChangeFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let updateCapacityProviderOverride: UpdateCapacityProviderFunctionType?
    let updateClusterOverride: UpdateClusterFunctionType?
    let updateClusterSettingsOverride: UpdateClusterSettingsFunctionType?
    let updateContainerAgentOverride: UpdateContainerAgentFunctionType?
    let updateContainerInstancesStateOverride: UpdateContainerInstancesStateFunctionType?
    let updateServiceOverride: UpdateServiceFunctionType?
    let updateServicePrimaryTaskSetOverride: UpdateServicePrimaryTaskSetFunctionType?
    let updateTaskSetOverride: UpdateTaskSetFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            createCapacityProvider: CreateCapacityProviderFunctionType? = nil,
            createCluster: CreateClusterFunctionType? = nil,
            createService: CreateServiceFunctionType? = nil,
            createTaskSet: CreateTaskSetFunctionType? = nil,
            deleteAccountSetting: DeleteAccountSettingFunctionType? = nil,
            deleteAttributes: DeleteAttributesFunctionType? = nil,
            deleteCapacityProvider: DeleteCapacityProviderFunctionType? = nil,
            deleteCluster: DeleteClusterFunctionType? = nil,
            deleteService: DeleteServiceFunctionType? = nil,
            deleteTaskSet: DeleteTaskSetFunctionType? = nil,
            deregisterContainerInstance: DeregisterContainerInstanceFunctionType? = nil,
            deregisterTaskDefinition: DeregisterTaskDefinitionFunctionType? = nil,
            describeCapacityProviders: DescribeCapacityProvidersFunctionType? = nil,
            describeClusters: DescribeClustersFunctionType? = nil,
            describeContainerInstances: DescribeContainerInstancesFunctionType? = nil,
            describeServices: DescribeServicesFunctionType? = nil,
            describeTaskDefinition: DescribeTaskDefinitionFunctionType? = nil,
            describeTaskSets: DescribeTaskSetsFunctionType? = nil,
            describeTasks: DescribeTasksFunctionType? = nil,
            discoverPollEndpoint: DiscoverPollEndpointFunctionType? = nil,
            executeCommand: ExecuteCommandFunctionType? = nil,
            listAccountSettings: ListAccountSettingsFunctionType? = nil,
            listAttributes: ListAttributesFunctionType? = nil,
            listClusters: ListClustersFunctionType? = nil,
            listContainerInstances: ListContainerInstancesFunctionType? = nil,
            listServices: ListServicesFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            listTaskDefinitionFamilies: ListTaskDefinitionFamiliesFunctionType? = nil,
            listTaskDefinitions: ListTaskDefinitionsFunctionType? = nil,
            listTasks: ListTasksFunctionType? = nil,
            putAccountSetting: PutAccountSettingFunctionType? = nil,
            putAccountSettingDefault: PutAccountSettingDefaultFunctionType? = nil,
            putAttributes: PutAttributesFunctionType? = nil,
            putClusterCapacityProviders: PutClusterCapacityProvidersFunctionType? = nil,
            registerContainerInstance: RegisterContainerInstanceFunctionType? = nil,
            registerTaskDefinition: RegisterTaskDefinitionFunctionType? = nil,
            runTask: RunTaskFunctionType? = nil,
            startTask: StartTaskFunctionType? = nil,
            stopTask: StopTaskFunctionType? = nil,
            submitAttachmentStateChanges: SubmitAttachmentStateChangesFunctionType? = nil,
            submitContainerStateChange: SubmitContainerStateChangeFunctionType? = nil,
            submitTaskStateChange: SubmitTaskStateChangeFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            updateCapacityProvider: UpdateCapacityProviderFunctionType? = nil,
            updateCluster: UpdateClusterFunctionType? = nil,
            updateClusterSettings: UpdateClusterSettingsFunctionType? = nil,
            updateContainerAgent: UpdateContainerAgentFunctionType? = nil,
            updateContainerInstancesState: UpdateContainerInstancesStateFunctionType? = nil,
            updateService: UpdateServiceFunctionType? = nil,
            updateServicePrimaryTaskSet: UpdateServicePrimaryTaskSetFunctionType? = nil,
            updateTaskSet: UpdateTaskSetFunctionType? = nil) {
        self.createCapacityProviderOverride = createCapacityProvider
        self.createClusterOverride = createCluster
        self.createServiceOverride = createService
        self.createTaskSetOverride = createTaskSet
        self.deleteAccountSettingOverride = deleteAccountSetting
        self.deleteAttributesOverride = deleteAttributes
        self.deleteCapacityProviderOverride = deleteCapacityProvider
        self.deleteClusterOverride = deleteCluster
        self.deleteServiceOverride = deleteService
        self.deleteTaskSetOverride = deleteTaskSet
        self.deregisterContainerInstanceOverride = deregisterContainerInstance
        self.deregisterTaskDefinitionOverride = deregisterTaskDefinition
        self.describeCapacityProvidersOverride = describeCapacityProviders
        self.describeClustersOverride = describeClusters
        self.describeContainerInstancesOverride = describeContainerInstances
        self.describeServicesOverride = describeServices
        self.describeTaskDefinitionOverride = describeTaskDefinition
        self.describeTaskSetsOverride = describeTaskSets
        self.describeTasksOverride = describeTasks
        self.discoverPollEndpointOverride = discoverPollEndpoint
        self.executeCommandOverride = executeCommand
        self.listAccountSettingsOverride = listAccountSettings
        self.listAttributesOverride = listAttributes
        self.listClustersOverride = listClusters
        self.listContainerInstancesOverride = listContainerInstances
        self.listServicesOverride = listServices
        self.listTagsForResourceOverride = listTagsForResource
        self.listTaskDefinitionFamiliesOverride = listTaskDefinitionFamilies
        self.listTaskDefinitionsOverride = listTaskDefinitions
        self.listTasksOverride = listTasks
        self.putAccountSettingOverride = putAccountSetting
        self.putAccountSettingDefaultOverride = putAccountSettingDefault
        self.putAttributesOverride = putAttributes
        self.putClusterCapacityProvidersOverride = putClusterCapacityProviders
        self.registerContainerInstanceOverride = registerContainerInstance
        self.registerTaskDefinitionOverride = registerTaskDefinition
        self.runTaskOverride = runTask
        self.startTaskOverride = startTask
        self.stopTaskOverride = stopTask
        self.submitAttachmentStateChangesOverride = submitAttachmentStateChanges
        self.submitContainerStateChangeOverride = submitContainerStateChange
        self.submitTaskStateChangeOverride = submitTaskStateChange
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
        self.updateCapacityProviderOverride = updateCapacityProvider
        self.updateClusterOverride = updateCluster
        self.updateClusterSettingsOverride = updateClusterSettings
        self.updateContainerAgentOverride = updateContainerAgent
        self.updateContainerInstancesStateOverride = updateContainerInstancesState
        self.updateServiceOverride = updateService
        self.updateServicePrimaryTaskSetOverride = updateServicePrimaryTaskSet
        self.updateTaskSetOverride = updateTaskSet
    }

    /**
     Invokes the CreateCapacityProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    public func createCapacityProvider(
            input: ElasticContainerModel.CreateCapacityProviderRequest) async throws -> ElasticContainerModel.CreateCapacityProviderResponse {
        if let createCapacityProviderOverride = createCapacityProviderOverride {
            return try await createCapacityProviderOverride(input)
        }

        return CreateCapacityProviderResponse.__default
    }

    /**
     Invokes the CreateCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func createCluster(
            input: ElasticContainerModel.CreateClusterRequest) async throws -> ElasticContainerModel.CreateClusterResponse {
        if let createClusterOverride = createClusterOverride {
            return try await createClusterOverride(input)
        }

        return CreateClusterResponse.__default
    }

    /**
     Invokes the CreateService operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createService(
            input: ElasticContainerModel.CreateServiceRequest) async throws -> ElasticContainerModel.CreateServiceResponse {
        if let createServiceOverride = createServiceOverride {
            return try await createServiceOverride(input)
        }

        return CreateServiceResponse.__default
    }

    /**
     Invokes the CreateTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSet(
            input: ElasticContainerModel.CreateTaskSetRequest) async throws -> ElasticContainerModel.CreateTaskSetResponse {
        if let createTaskSetOverride = createTaskSetOverride {
            return try await createTaskSetOverride(input)
        }

        return CreateTaskSetResponse.__default
    }

    /**
     Invokes the DeleteAccountSetting operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deleteAccountSetting(
            input: ElasticContainerModel.DeleteAccountSettingRequest) async throws -> ElasticContainerModel.DeleteAccountSettingResponse {
        if let deleteAccountSettingOverride = deleteAccountSettingOverride {
            return try await deleteAccountSettingOverride(input)
        }

        return DeleteAccountSettingResponse.__default
    }

    /**
     Invokes the DeleteAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributes(
            input: ElasticContainerModel.DeleteAttributesRequest) async throws -> ElasticContainerModel.DeleteAttributesResponse {
        if let deleteAttributesOverride = deleteAttributesOverride {
            return try await deleteAttributesOverride(input)
        }

        return DeleteAttributesResponse.__default
    }

    /**
     Invokes the DeleteCapacityProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: The DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deleteCapacityProvider(
            input: ElasticContainerModel.DeleteCapacityProviderRequest) async throws -> ElasticContainerModel.DeleteCapacityProviderResponse {
        if let deleteCapacityProviderOverride = deleteCapacityProviderOverride {
            return try await deleteCapacityProviderOverride(input)
        }

        return DeleteCapacityProviderResponse.__default
    }

    /**
     Invokes the DeleteCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    public func deleteCluster(
            input: ElasticContainerModel.DeleteClusterRequest) async throws -> ElasticContainerModel.DeleteClusterResponse {
        if let deleteClusterOverride = deleteClusterOverride {
            return try await deleteClusterOverride(input)
        }

        return DeleteClusterResponse.__default
    }

    /**
     Invokes the DeleteService operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteService(
            input: ElasticContainerModel.DeleteServiceRequest) async throws -> ElasticContainerModel.DeleteServiceResponse {
        if let deleteServiceOverride = deleteServiceOverride {
            return try await deleteServiceOverride(input)
        }

        return DeleteServiceResponse.__default
    }

    /**
     Invokes the DeleteTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSet(
            input: ElasticContainerModel.DeleteTaskSetRequest) async throws -> ElasticContainerModel.DeleteTaskSetResponse {
        if let deleteTaskSetOverride = deleteTaskSetOverride {
            return try await deleteTaskSetOverride(input)
        }

        return DeleteTaskSetResponse.__default
    }

    /**
     Invokes the DeregisterContainerInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstance(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest) async throws -> ElasticContainerModel.DeregisterContainerInstanceResponse {
        if let deregisterContainerInstanceOverride = deregisterContainerInstanceOverride {
            return try await deregisterContainerInstanceOverride(input)
        }

        return DeregisterContainerInstanceResponse.__default
    }

    /**
     Invokes the DeregisterTaskDefinition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deregisterTaskDefinition(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest) async throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse {
        if let deregisterTaskDefinitionOverride = deregisterTaskDefinitionOverride {
            return try await deregisterTaskDefinitionOverride(input)
        }

        return DeregisterTaskDefinitionResponse.__default
    }

    /**
     Invokes the DescribeCapacityProviders operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeCapacityProviders(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest) async throws -> ElasticContainerModel.DescribeCapacityProvidersResponse {
        if let describeCapacityProvidersOverride = describeCapacityProvidersOverride {
            return try await describeCapacityProvidersOverride(input)
        }

        return DescribeCapacityProvidersResponse.__default
    }

    /**
     Invokes the DescribeClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeClusters(
            input: ElasticContainerModel.DescribeClustersRequest) async throws -> ElasticContainerModel.DescribeClustersResponse {
        if let describeClustersOverride = describeClustersOverride {
            return try await describeClustersOverride(input)
        }

        return DescribeClustersResponse.__default
    }

    /**
     Invokes the DescribeContainerInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstances(
            input: ElasticContainerModel.DescribeContainerInstancesRequest) async throws -> ElasticContainerModel.DescribeContainerInstancesResponse {
        if let describeContainerInstancesOverride = describeContainerInstancesOverride {
            return try await describeContainerInstancesOverride(input)
        }

        return DescribeContainerInstancesResponse.__default
    }

    /**
     Invokes the DescribeServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServices(
            input: ElasticContainerModel.DescribeServicesRequest) async throws -> ElasticContainerModel.DescribeServicesResponse {
        if let describeServicesOverride = describeServicesOverride {
            return try await describeServicesOverride(input)
        }

        return DescribeServicesResponse.__default
    }

    /**
     Invokes the DescribeTaskDefinition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeTaskDefinition(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest) async throws -> ElasticContainerModel.DescribeTaskDefinitionResponse {
        if let describeTaskDefinitionOverride = describeTaskDefinitionOverride {
            return try await describeTaskDefinitionOverride(input)
        }

        return DescribeTaskDefinitionResponse.__default
    }

    /**
     Invokes the DescribeTaskSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSets(
            input: ElasticContainerModel.DescribeTaskSetsRequest) async throws -> ElasticContainerModel.DescribeTaskSetsResponse {
        if let describeTaskSetsOverride = describeTaskSetsOverride {
            return try await describeTaskSetsOverride(input)
        }

        return DescribeTaskSetsResponse.__default
    }

    /**
     Invokes the DescribeTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasks(
            input: ElasticContainerModel.DescribeTasksRequest) async throws -> ElasticContainerModel.DescribeTasksResponse {
        if let describeTasksOverride = describeTasksOverride {
            return try await describeTasksOverride(input)
        }

        return DescribeTasksResponse.__default
    }

    /**
     Invokes the DiscoverPollEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func discoverPollEndpoint(
            input: ElasticContainerModel.DiscoverPollEndpointRequest) async throws -> ElasticContainerModel.DiscoverPollEndpointResponse {
        if let discoverPollEndpointOverride = discoverPollEndpointOverride {
            return try await discoverPollEndpointOverride(input)
        }

        return DiscoverPollEndpointResponse.__default
    }

    /**
     Invokes the ExecuteCommand operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteCommandRequest object being passed to this operation.
     - Returns: The ExecuteCommandResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, targetNotConnected.
     */
    public func executeCommand(
            input: ElasticContainerModel.ExecuteCommandRequest) async throws -> ElasticContainerModel.ExecuteCommandResponse {
        if let executeCommandOverride = executeCommandOverride {
            return try await executeCommandOverride(input)
        }

        return ExecuteCommandResponse.__default
    }

    /**
     Invokes the ListAccountSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listAccountSettings(
            input: ElasticContainerModel.ListAccountSettingsRequest) async throws -> ElasticContainerModel.ListAccountSettingsResponse {
        if let listAccountSettingsOverride = listAccountSettingsOverride {
            return try await listAccountSettingsOverride(input)
        }

        return ListAccountSettingsResponse.__default
    }

    /**
     Invokes the ListAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    public func listAttributes(
            input: ElasticContainerModel.ListAttributesRequest) async throws -> ElasticContainerModel.ListAttributesResponse {
        if let listAttributesOverride = listAttributesOverride {
            return try await listAttributesOverride(input)
        }

        return ListAttributesResponse.__default
    }

    /**
     Invokes the ListClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listClusters(
            input: ElasticContainerModel.ListClustersRequest) async throws -> ElasticContainerModel.ListClustersResponse {
        if let listClustersOverride = listClustersOverride {
            return try await listClustersOverride(input)
        }

        return ListClustersResponse.__default
    }

    /**
     Invokes the ListContainerInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstances(
            input: ElasticContainerModel.ListContainerInstancesRequest) async throws -> ElasticContainerModel.ListContainerInstancesResponse {
        if let listContainerInstancesOverride = listContainerInstancesOverride {
            return try await listContainerInstancesOverride(input)
        }

        return ListContainerInstancesResponse.__default
    }

    /**
     Invokes the ListServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listServices(
            input: ElasticContainerModel.ListServicesRequest) async throws -> ElasticContainerModel.ListServicesResponse {
        if let listServicesOverride = listServicesOverride {
            return try await listServicesOverride(input)
        }

        return ListServicesResponse.__default
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResource(
            input: ElasticContainerModel.ListTagsForResourceRequest) async throws -> ElasticContainerModel.ListTagsForResourceResponse {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        return ListTagsForResourceResponse.__default
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamilies(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) async throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse {
        if let listTaskDefinitionFamiliesOverride = listTaskDefinitionFamiliesOverride {
            return try await listTaskDefinitionFamiliesOverride(input)
        }

        return ListTaskDefinitionFamiliesResponse.__default
    }

    /**
     Invokes the ListTaskDefinitions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitions(
            input: ElasticContainerModel.ListTaskDefinitionsRequest) async throws -> ElasticContainerModel.ListTaskDefinitionsResponse {
        if let listTaskDefinitionsOverride = listTaskDefinitionsOverride {
            return try await listTaskDefinitionsOverride(input)
        }

        return ListTaskDefinitionsResponse.__default
    }

    /**
     Invokes the ListTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasks(
            input: ElasticContainerModel.ListTasksRequest) async throws -> ElasticContainerModel.ListTasksResponse {
        if let listTasksOverride = listTasksOverride {
            return try await listTasksOverride(input)
        }

        return ListTasksResponse.__default
    }

    /**
     Invokes the PutAccountSetting operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSetting(
            input: ElasticContainerModel.PutAccountSettingRequest) async throws -> ElasticContainerModel.PutAccountSettingResponse {
        if let putAccountSettingOverride = putAccountSettingOverride {
            return try await putAccountSettingOverride(input)
        }

        return PutAccountSettingResponse.__default
    }

    /**
     Invokes the PutAccountSettingDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingDefault(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest) async throws -> ElasticContainerModel.PutAccountSettingDefaultResponse {
        if let putAccountSettingDefaultOverride = putAccountSettingDefaultOverride {
            return try await putAccountSettingDefaultOverride(input)
        }

        return PutAccountSettingDefaultResponse.__default
    }

    /**
     Invokes the PutAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributes(
            input: ElasticContainerModel.PutAttributesRequest) async throws -> ElasticContainerModel.PutAttributesResponse {
        if let putAttributesOverride = putAttributesOverride {
            return try await putAttributesOverride(input)
        }

        return PutAttributesResponse.__default
    }

    /**
     Invokes the PutClusterCapacityProviders operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    public func putClusterCapacityProviders(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest) async throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse {
        if let putClusterCapacityProvidersOverride = putClusterCapacityProvidersOverride {
            return try await putClusterCapacityProvidersOverride(input)
        }

        return PutClusterCapacityProvidersResponse.__default
    }

    /**
     Invokes the RegisterContainerInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerContainerInstance(
            input: ElasticContainerModel.RegisterContainerInstanceRequest) async throws -> ElasticContainerModel.RegisterContainerInstanceResponse {
        if let registerContainerInstanceOverride = registerContainerInstanceOverride {
            return try await registerContainerInstanceOverride(input)
        }

        return RegisterContainerInstanceResponse.__default
    }

    /**
     Invokes the RegisterTaskDefinition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerTaskDefinition(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest) async throws -> ElasticContainerModel.RegisterTaskDefinitionResponse {
        if let registerTaskDefinitionOverride = registerTaskDefinitionOverride {
            return try await registerTaskDefinitionOverride(input)
        }

        return RegisterTaskDefinitionResponse.__default
    }

    /**
     Invokes the RunTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTask(
            input: ElasticContainerModel.RunTaskRequest) async throws -> ElasticContainerModel.RunTaskResponse {
        if let runTaskOverride = runTaskOverride {
            return try await runTaskOverride(input)
        }

        return RunTaskResponse.__default
    }

    /**
     Invokes the StartTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func startTask(
            input: ElasticContainerModel.StartTaskRequest) async throws -> ElasticContainerModel.StartTaskResponse {
        if let startTaskOverride = startTaskOverride {
            return try await startTaskOverride(input)
        }

        return StartTaskResponse.__default
    }

    /**
     Invokes the StopTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTask(
            input: ElasticContainerModel.StopTaskRequest) async throws -> ElasticContainerModel.StopTaskResponse {
        if let stopTaskOverride = stopTaskOverride {
            return try await stopTaskOverride(input)
        }

        return StopTaskResponse.__default
    }

    /**
     Invokes the SubmitAttachmentStateChanges operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    public func submitAttachmentStateChanges(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) async throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse {
        if let submitAttachmentStateChangesOverride = submitAttachmentStateChangesOverride {
            return try await submitAttachmentStateChangesOverride(input)
        }

        return SubmitAttachmentStateChangesResponse.__default
    }

    /**
     Invokes the SubmitContainerStateChange operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    public func submitContainerStateChange(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest) async throws -> ElasticContainerModel.SubmitContainerStateChangeResponse {
        if let submitContainerStateChangeOverride = submitContainerStateChangeOverride {
            return try await submitContainerStateChangeOverride(input)
        }

        return SubmitContainerStateChangeResponse.__default
    }

    /**
     Invokes the SubmitTaskStateChange operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    public func submitTaskStateChange(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest) async throws -> ElasticContainerModel.SubmitTaskStateChangeResponse {
        if let submitTaskStateChangeOverride = submitTaskStateChangeOverride {
            return try await submitTaskStateChangeOverride(input)
        }

        return SubmitTaskStateChangeResponse.__default
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResource(
            input: ElasticContainerModel.TagResourceRequest) async throws -> ElasticContainerModel.TagResourceResponse {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        return TagResourceResponse.__default
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResource(
            input: ElasticContainerModel.UntagResourceRequest) async throws -> ElasticContainerModel.UntagResourceResponse {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        return UntagResourceResponse.__default
    }

    /**
     Invokes the UpdateCapacityProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
     - Returns: The UpdateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func updateCapacityProvider(
            input: ElasticContainerModel.UpdateCapacityProviderRequest) async throws -> ElasticContainerModel.UpdateCapacityProviderResponse {
        if let updateCapacityProviderOverride = updateCapacityProviderOverride {
            return try await updateCapacityProviderOverride(input)
        }

        return UpdateCapacityProviderResponse.__default
    }

    /**
     Invokes the UpdateCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateClusterRequest object being passed to this operation.
     - Returns: The UpdateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateCluster(
            input: ElasticContainerModel.UpdateClusterRequest) async throws -> ElasticContainerModel.UpdateClusterResponse {
        if let updateClusterOverride = updateClusterOverride {
            return try await updateClusterOverride(input)
        }

        return UpdateClusterResponse.__default
    }

    /**
     Invokes the UpdateClusterSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateClusterSettings(
            input: ElasticContainerModel.UpdateClusterSettingsRequest) async throws -> ElasticContainerModel.UpdateClusterSettingsResponse {
        if let updateClusterSettingsOverride = updateClusterSettingsOverride {
            return try await updateClusterSettingsOverride(input)
        }

        return UpdateClusterSettingsResponse.__default
    }

    /**
     Invokes the UpdateContainerAgent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgent(
            input: ElasticContainerModel.UpdateContainerAgentRequest) async throws -> ElasticContainerModel.UpdateContainerAgentResponse {
        if let updateContainerAgentOverride = updateContainerAgentOverride {
            return try await updateContainerAgentOverride(input)
        }

        return UpdateContainerAgentResponse.__default
    }

    /**
     Invokes the UpdateContainerInstancesState operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesState(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest) async throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse {
        if let updateContainerInstancesStateOverride = updateContainerInstancesStateOverride {
            return try await updateContainerInstancesStateOverride(input)
        }

        return UpdateContainerInstancesStateResponse.__default
    }

    /**
     Invokes the UpdateService operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateService(
            input: ElasticContainerModel.UpdateServiceRequest) async throws -> ElasticContainerModel.UpdateServiceResponse {
        if let updateServiceOverride = updateServiceOverride {
            return try await updateServiceOverride(input)
        }

        return UpdateServiceResponse.__default
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSet(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) async throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse {
        if let updateServicePrimaryTaskSetOverride = updateServicePrimaryTaskSetOverride {
            return try await updateServicePrimaryTaskSetOverride(input)
        }

        return UpdateServicePrimaryTaskSetResponse.__default
    }

    /**
     Invokes the UpdateTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSet(
            input: ElasticContainerModel.UpdateTaskSetRequest) async throws -> ElasticContainerModel.UpdateTaskSetResponse {
        if let updateTaskSetOverride = updateTaskSetOverride {
            return try await updateTaskSetOverride(input)
        }

        return UpdateTaskSetResponse.__default
    }
#endif
}
