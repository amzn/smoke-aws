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
// ElasticContainerClientProtocolV2.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ElasticContainer service.
 */
public protocol ElasticContainerClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias CreateCapacityProviderFunctionType = (
            _ input: ElasticContainerModel.CreateCapacityProviderRequest) async throws -> ElasticContainerModel.CreateCapacityProviderResponse
    typealias CreateClusterFunctionType = (
            _ input: ElasticContainerModel.CreateClusterRequest) async throws -> ElasticContainerModel.CreateClusterResponse
    typealias CreateServiceFunctionType = (
            _ input: ElasticContainerModel.CreateServiceRequest) async throws -> ElasticContainerModel.CreateServiceResponse
    typealias CreateTaskSetFunctionType = (
            _ input: ElasticContainerModel.CreateTaskSetRequest) async throws -> ElasticContainerModel.CreateTaskSetResponse
    typealias DeleteAccountSettingFunctionType = (
            _ input: ElasticContainerModel.DeleteAccountSettingRequest) async throws -> ElasticContainerModel.DeleteAccountSettingResponse
    typealias DeleteAttributesFunctionType = (
            _ input: ElasticContainerModel.DeleteAttributesRequest) async throws -> ElasticContainerModel.DeleteAttributesResponse
    typealias DeleteCapacityProviderFunctionType = (
            _ input: ElasticContainerModel.DeleteCapacityProviderRequest) async throws -> ElasticContainerModel.DeleteCapacityProviderResponse
    typealias DeleteClusterFunctionType = (
            _ input: ElasticContainerModel.DeleteClusterRequest) async throws -> ElasticContainerModel.DeleteClusterResponse
    typealias DeleteServiceFunctionType = (
            _ input: ElasticContainerModel.DeleteServiceRequest) async throws -> ElasticContainerModel.DeleteServiceResponse
    typealias DeleteTaskSetFunctionType = (
            _ input: ElasticContainerModel.DeleteTaskSetRequest) async throws -> ElasticContainerModel.DeleteTaskSetResponse
    typealias DeregisterContainerInstanceFunctionType = (
            _ input: ElasticContainerModel.DeregisterContainerInstanceRequest) async throws -> ElasticContainerModel.DeregisterContainerInstanceResponse
    typealias DeregisterTaskDefinitionFunctionType = (
            _ input: ElasticContainerModel.DeregisterTaskDefinitionRequest) async throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse
    typealias DescribeCapacityProvidersFunctionType = (
            _ input: ElasticContainerModel.DescribeCapacityProvidersRequest) async throws -> ElasticContainerModel.DescribeCapacityProvidersResponse
    typealias DescribeClustersFunctionType = (
            _ input: ElasticContainerModel.DescribeClustersRequest) async throws -> ElasticContainerModel.DescribeClustersResponse
    typealias DescribeContainerInstancesFunctionType = (
            _ input: ElasticContainerModel.DescribeContainerInstancesRequest) async throws -> ElasticContainerModel.DescribeContainerInstancesResponse
    typealias DescribeServicesFunctionType = (
            _ input: ElasticContainerModel.DescribeServicesRequest) async throws -> ElasticContainerModel.DescribeServicesResponse
    typealias DescribeTaskDefinitionFunctionType = (
            _ input: ElasticContainerModel.DescribeTaskDefinitionRequest) async throws -> ElasticContainerModel.DescribeTaskDefinitionResponse
    typealias DescribeTaskSetsFunctionType = (
            _ input: ElasticContainerModel.DescribeTaskSetsRequest) async throws -> ElasticContainerModel.DescribeTaskSetsResponse
    typealias DescribeTasksFunctionType = (
            _ input: ElasticContainerModel.DescribeTasksRequest) async throws -> ElasticContainerModel.DescribeTasksResponse
    typealias DiscoverPollEndpointFunctionType = (
            _ input: ElasticContainerModel.DiscoverPollEndpointRequest) async throws -> ElasticContainerModel.DiscoverPollEndpointResponse
    typealias ExecuteCommandFunctionType = (
            _ input: ElasticContainerModel.ExecuteCommandRequest) async throws -> ElasticContainerModel.ExecuteCommandResponse
    typealias ListAccountSettingsFunctionType = (
            _ input: ElasticContainerModel.ListAccountSettingsRequest) async throws -> ElasticContainerModel.ListAccountSettingsResponse
    typealias ListAttributesFunctionType = (
            _ input: ElasticContainerModel.ListAttributesRequest) async throws -> ElasticContainerModel.ListAttributesResponse
    typealias ListClustersFunctionType = (
            _ input: ElasticContainerModel.ListClustersRequest) async throws -> ElasticContainerModel.ListClustersResponse
    typealias ListContainerInstancesFunctionType = (
            _ input: ElasticContainerModel.ListContainerInstancesRequest) async throws -> ElasticContainerModel.ListContainerInstancesResponse
    typealias ListServicesFunctionType = (
            _ input: ElasticContainerModel.ListServicesRequest) async throws -> ElasticContainerModel.ListServicesResponse
    typealias ListTagsForResourceFunctionType = (
            _ input: ElasticContainerModel.ListTagsForResourceRequest) async throws -> ElasticContainerModel.ListTagsForResourceResponse
    typealias ListTaskDefinitionFamiliesFunctionType = (
            _ input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) async throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse
    typealias ListTaskDefinitionsFunctionType = (
            _ input: ElasticContainerModel.ListTaskDefinitionsRequest) async throws -> ElasticContainerModel.ListTaskDefinitionsResponse
    typealias ListTasksFunctionType = (
            _ input: ElasticContainerModel.ListTasksRequest) async throws -> ElasticContainerModel.ListTasksResponse
    typealias PutAccountSettingFunctionType = (
            _ input: ElasticContainerModel.PutAccountSettingRequest) async throws -> ElasticContainerModel.PutAccountSettingResponse
    typealias PutAccountSettingDefaultFunctionType = (
            _ input: ElasticContainerModel.PutAccountSettingDefaultRequest) async throws -> ElasticContainerModel.PutAccountSettingDefaultResponse
    typealias PutAttributesFunctionType = (
            _ input: ElasticContainerModel.PutAttributesRequest) async throws -> ElasticContainerModel.PutAttributesResponse
    typealias PutClusterCapacityProvidersFunctionType = (
            _ input: ElasticContainerModel.PutClusterCapacityProvidersRequest) async throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse
    typealias RegisterContainerInstanceFunctionType = (
            _ input: ElasticContainerModel.RegisterContainerInstanceRequest) async throws -> ElasticContainerModel.RegisterContainerInstanceResponse
    typealias RegisterTaskDefinitionFunctionType = (
            _ input: ElasticContainerModel.RegisterTaskDefinitionRequest) async throws -> ElasticContainerModel.RegisterTaskDefinitionResponse
    typealias RunTaskFunctionType = (
            _ input: ElasticContainerModel.RunTaskRequest) async throws -> ElasticContainerModel.RunTaskResponse
    typealias StartTaskFunctionType = (
            _ input: ElasticContainerModel.StartTaskRequest) async throws -> ElasticContainerModel.StartTaskResponse
    typealias StopTaskFunctionType = (
            _ input: ElasticContainerModel.StopTaskRequest) async throws -> ElasticContainerModel.StopTaskResponse
    typealias SubmitAttachmentStateChangesFunctionType = (
            _ input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) async throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse
    typealias SubmitContainerStateChangeFunctionType = (
            _ input: ElasticContainerModel.SubmitContainerStateChangeRequest) async throws -> ElasticContainerModel.SubmitContainerStateChangeResponse
    typealias SubmitTaskStateChangeFunctionType = (
            _ input: ElasticContainerModel.SubmitTaskStateChangeRequest) async throws -> ElasticContainerModel.SubmitTaskStateChangeResponse
    typealias TagResourceFunctionType = (
            _ input: ElasticContainerModel.TagResourceRequest) async throws -> ElasticContainerModel.TagResourceResponse
    typealias UntagResourceFunctionType = (
            _ input: ElasticContainerModel.UntagResourceRequest) async throws -> ElasticContainerModel.UntagResourceResponse
    typealias UpdateCapacityProviderFunctionType = (
            _ input: ElasticContainerModel.UpdateCapacityProviderRequest) async throws -> ElasticContainerModel.UpdateCapacityProviderResponse
    typealias UpdateClusterFunctionType = (
            _ input: ElasticContainerModel.UpdateClusterRequest) async throws -> ElasticContainerModel.UpdateClusterResponse
    typealias UpdateClusterSettingsFunctionType = (
            _ input: ElasticContainerModel.UpdateClusterSettingsRequest) async throws -> ElasticContainerModel.UpdateClusterSettingsResponse
    typealias UpdateContainerAgentFunctionType = (
            _ input: ElasticContainerModel.UpdateContainerAgentRequest) async throws -> ElasticContainerModel.UpdateContainerAgentResponse
    typealias UpdateContainerInstancesStateFunctionType = (
            _ input: ElasticContainerModel.UpdateContainerInstancesStateRequest) async throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse
    typealias UpdateServiceFunctionType = (
            _ input: ElasticContainerModel.UpdateServiceRequest) async throws -> ElasticContainerModel.UpdateServiceResponse
    typealias UpdateServicePrimaryTaskSetFunctionType = (
            _ input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) async throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse
    typealias UpdateTaskSetFunctionType = (
            _ input: ElasticContainerModel.UpdateTaskSetRequest) async throws -> ElasticContainerModel.UpdateTaskSetResponse

    /**
     Invokes the CreateCapacityProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    func createCapacityProvider(
            input: ElasticContainerModel.CreateCapacityProviderRequest) async throws -> ElasticContainerModel.CreateCapacityProviderResponse

    /**
     Invokes the CreateCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func createCluster(
            input: ElasticContainerModel.CreateClusterRequest) async throws -> ElasticContainerModel.CreateClusterResponse

    /**
     Invokes the CreateService operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createService(
            input: ElasticContainerModel.CreateServiceRequest) async throws -> ElasticContainerModel.CreateServiceResponse

    /**
     Invokes the CreateTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSet(
            input: ElasticContainerModel.CreateTaskSetRequest) async throws -> ElasticContainerModel.CreateTaskSetResponse

    /**
     Invokes the DeleteAccountSetting operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteAccountSetting(
            input: ElasticContainerModel.DeleteAccountSettingRequest) async throws -> ElasticContainerModel.DeleteAccountSettingResponse

    /**
     Invokes the DeleteAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributes(
            input: ElasticContainerModel.DeleteAttributesRequest) async throws -> ElasticContainerModel.DeleteAttributesResponse

    /**
     Invokes the DeleteCapacityProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: The DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteCapacityProvider(
            input: ElasticContainerModel.DeleteCapacityProviderRequest) async throws -> ElasticContainerModel.DeleteCapacityProviderResponse

    /**
     Invokes the DeleteCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteCluster(
            input: ElasticContainerModel.DeleteClusterRequest) async throws -> ElasticContainerModel.DeleteClusterResponse

    /**
     Invokes the DeleteService operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteService(
            input: ElasticContainerModel.DeleteServiceRequest) async throws -> ElasticContainerModel.DeleteServiceResponse

    /**
     Invokes the DeleteTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSet(
            input: ElasticContainerModel.DeleteTaskSetRequest) async throws -> ElasticContainerModel.DeleteTaskSetResponse

    /**
     Invokes the DeregisterContainerInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstance(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest) async throws -> ElasticContainerModel.DeregisterContainerInstanceResponse

    /**
     Invokes the DeregisterTaskDefinition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deregisterTaskDefinition(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest) async throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse

    /**
     Invokes the DescribeCapacityProviders operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeCapacityProviders(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest) async throws -> ElasticContainerModel.DescribeCapacityProvidersResponse

    /**
     Invokes the DescribeClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeClusters(
            input: ElasticContainerModel.DescribeClustersRequest) async throws -> ElasticContainerModel.DescribeClustersResponse

    /**
     Invokes the DescribeContainerInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstances(
            input: ElasticContainerModel.DescribeContainerInstancesRequest) async throws -> ElasticContainerModel.DescribeContainerInstancesResponse

    /**
     Invokes the DescribeServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeServices(
            input: ElasticContainerModel.DescribeServicesRequest) async throws -> ElasticContainerModel.DescribeServicesResponse

    /**
     Invokes the DescribeTaskDefinition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeTaskDefinition(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest) async throws -> ElasticContainerModel.DescribeTaskDefinitionResponse

    /**
     Invokes the DescribeTaskSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSets(
            input: ElasticContainerModel.DescribeTaskSetsRequest) async throws -> ElasticContainerModel.DescribeTaskSetsResponse

    /**
     Invokes the DescribeTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasks(
            input: ElasticContainerModel.DescribeTasksRequest) async throws -> ElasticContainerModel.DescribeTasksResponse

    /**
     Invokes the DiscoverPollEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func discoverPollEndpoint(
            input: ElasticContainerModel.DiscoverPollEndpointRequest) async throws -> ElasticContainerModel.DiscoverPollEndpointResponse

    /**
     Invokes the ExecuteCommand operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteCommandRequest object being passed to this operation.
     - Returns: The ExecuteCommandResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, targetNotConnected.
     */
    func executeCommand(
            input: ElasticContainerModel.ExecuteCommandRequest) async throws -> ElasticContainerModel.ExecuteCommandResponse

    /**
     Invokes the ListAccountSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listAccountSettings(
            input: ElasticContainerModel.ListAccountSettingsRequest) async throws -> ElasticContainerModel.ListAccountSettingsResponse

    /**
     Invokes the ListAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    func listAttributes(
            input: ElasticContainerModel.ListAttributesRequest) async throws -> ElasticContainerModel.ListAttributesResponse

    /**
     Invokes the ListClusters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listClusters(
            input: ElasticContainerModel.ListClustersRequest) async throws -> ElasticContainerModel.ListClustersResponse

    /**
     Invokes the ListContainerInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstances(
            input: ElasticContainerModel.ListContainerInstancesRequest) async throws -> ElasticContainerModel.ListContainerInstancesResponse

    /**
     Invokes the ListServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listServices(
            input: ElasticContainerModel.ListServicesRequest) async throws -> ElasticContainerModel.ListServicesResponse

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResource(
            input: ElasticContainerModel.ListTagsForResourceRequest) async throws -> ElasticContainerModel.ListTagsForResourceResponse

    /**
     Invokes the ListTaskDefinitionFamilies operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitionFamilies(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) async throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse

    /**
     Invokes the ListTaskDefinitions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitions(
            input: ElasticContainerModel.ListTaskDefinitionsRequest) async throws -> ElasticContainerModel.ListTaskDefinitionsResponse

    /**
     Invokes the ListTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasks(
            input: ElasticContainerModel.ListTasksRequest) async throws -> ElasticContainerModel.ListTasksResponse

    /**
     Invokes the PutAccountSetting operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSetting(
            input: ElasticContainerModel.PutAccountSettingRequest) async throws -> ElasticContainerModel.PutAccountSettingResponse

    /**
     Invokes the PutAccountSettingDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSettingDefault(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest) async throws -> ElasticContainerModel.PutAccountSettingDefaultResponse

    /**
     Invokes the PutAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributes(
            input: ElasticContainerModel.PutAttributesRequest) async throws -> ElasticContainerModel.PutAttributesResponse

    /**
     Invokes the PutClusterCapacityProviders operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProviders(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest) async throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse

    /**
     Invokes the RegisterContainerInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerContainerInstance(
            input: ElasticContainerModel.RegisterContainerInstanceRequest) async throws -> ElasticContainerModel.RegisterContainerInstanceResponse

    /**
     Invokes the RegisterTaskDefinition operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerTaskDefinition(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest) async throws -> ElasticContainerModel.RegisterTaskDefinitionResponse

    /**
     Invokes the RunTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTask(
            input: ElasticContainerModel.RunTaskRequest) async throws -> ElasticContainerModel.RunTaskResponse

    /**
     Invokes the StartTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func startTask(
            input: ElasticContainerModel.StartTaskRequest) async throws -> ElasticContainerModel.StartTaskResponse

    /**
     Invokes the StopTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func stopTask(
            input: ElasticContainerModel.StopTaskRequest) async throws -> ElasticContainerModel.StopTaskResponse

    /**
     Invokes the SubmitAttachmentStateChanges operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChanges(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) async throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse

    /**
     Invokes the SubmitContainerStateChange operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    func submitContainerStateChange(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest) async throws -> ElasticContainerModel.SubmitContainerStateChangeResponse

    /**
     Invokes the SubmitTaskStateChange operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChange(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest) async throws -> ElasticContainerModel.SubmitTaskStateChangeResponse

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResource(
            input: ElasticContainerModel.TagResourceRequest) async throws -> ElasticContainerModel.TagResourceResponse

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResource(
            input: ElasticContainerModel.UntagResourceRequest) async throws -> ElasticContainerModel.UntagResourceResponse

    /**
     Invokes the UpdateCapacityProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
     - Returns: The UpdateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func updateCapacityProvider(
            input: ElasticContainerModel.UpdateCapacityProviderRequest) async throws -> ElasticContainerModel.UpdateCapacityProviderResponse

    /**
     Invokes the UpdateCluster operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateClusterRequest object being passed to this operation.
     - Returns: The UpdateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateCluster(
            input: ElasticContainerModel.UpdateClusterRequest) async throws -> ElasticContainerModel.UpdateClusterResponse

    /**
     Invokes the UpdateClusterSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettings(
            input: ElasticContainerModel.UpdateClusterSettingsRequest) async throws -> ElasticContainerModel.UpdateClusterSettingsResponse

    /**
     Invokes the UpdateContainerAgent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgent(
            input: ElasticContainerModel.UpdateContainerAgentRequest) async throws -> ElasticContainerModel.UpdateContainerAgentResponse

    /**
     Invokes the UpdateContainerInstancesState operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesState(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest) async throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse

    /**
     Invokes the UpdateService operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateService(
            input: ElasticContainerModel.UpdateServiceRequest) async throws -> ElasticContainerModel.UpdateServiceResponse

    /**
     Invokes the UpdateServicePrimaryTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSet(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) async throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse

    /**
     Invokes the UpdateTaskSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSet(
            input: ElasticContainerModel.UpdateTaskSetRequest) async throws -> ElasticContainerModel.UpdateTaskSetResponse
#endif
}
