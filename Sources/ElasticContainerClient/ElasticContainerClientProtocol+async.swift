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
// ElasticContainerClientProtocol+async.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the ElasticContainerClientProtocol type.
 */
public extension ElasticContainerClientProtocol {

    /**
     Invokes the CreateCapacityProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    func createCapacityProvider(input: ElasticContainerModel.CreateCapacityProviderRequest) async throws
     -> ElasticContainerModel.CreateCapacityProviderResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createCapacityProviderAsync(input: input) { result in
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
     Invokes the CreateCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func createCluster(input: ElasticContainerModel.CreateClusterRequest) async throws
     -> ElasticContainerModel.CreateClusterResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createClusterAsync(input: input) { result in
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
     Invokes the CreateService operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createService(input: ElasticContainerModel.CreateServiceRequest) async throws
     -> ElasticContainerModel.CreateServiceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createServiceAsync(input: input) { result in
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
     Invokes the CreateTaskSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSet(input: ElasticContainerModel.CreateTaskSetRequest) async throws
     -> ElasticContainerModel.CreateTaskSetResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createTaskSetAsync(input: input) { result in
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
     Invokes the DeleteAccountSetting operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteAccountSetting(input: ElasticContainerModel.DeleteAccountSettingRequest) async throws
     -> ElasticContainerModel.DeleteAccountSettingResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteAccountSettingAsync(input: input) { result in
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
     Invokes the DeleteAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributes(input: ElasticContainerModel.DeleteAttributesRequest) async throws
     -> ElasticContainerModel.DeleteAttributesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteAttributesAsync(input: input) { result in
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
     Invokes the DeleteCapacityProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: The DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deleteCapacityProvider(input: ElasticContainerModel.DeleteCapacityProviderRequest) async throws
     -> ElasticContainerModel.DeleteCapacityProviderResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteCapacityProviderAsync(input: input) { result in
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
     Invokes the DeleteCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteCluster(input: ElasticContainerModel.DeleteClusterRequest) async throws
     -> ElasticContainerModel.DeleteClusterResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteClusterAsync(input: input) { result in
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
     Invokes the DeleteService operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteService(input: ElasticContainerModel.DeleteServiceRequest) async throws
     -> ElasticContainerModel.DeleteServiceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteServiceAsync(input: input) { result in
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
     Invokes the DeleteTaskSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSet(input: ElasticContainerModel.DeleteTaskSetRequest) async throws
     -> ElasticContainerModel.DeleteTaskSetResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteTaskSetAsync(input: input) { result in
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
     Invokes the DeregisterContainerInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstance(input: ElasticContainerModel.DeregisterContainerInstanceRequest) async throws
     -> ElasticContainerModel.DeregisterContainerInstanceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deregisterContainerInstanceAsync(input: input) { result in
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
     Invokes the DeregisterTaskDefinition operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func deregisterTaskDefinition(input: ElasticContainerModel.DeregisterTaskDefinitionRequest) async throws
     -> ElasticContainerModel.DeregisterTaskDefinitionResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deregisterTaskDefinitionAsync(input: input) { result in
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
     Invokes the DescribeCapacityProviders operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeCapacityProviders(input: ElasticContainerModel.DescribeCapacityProvidersRequest) async throws
     -> ElasticContainerModel.DescribeCapacityProvidersResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeCapacityProvidersAsync(input: input) { result in
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
     Invokes the DescribeClusters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeClusters(input: ElasticContainerModel.DescribeClustersRequest) async throws
     -> ElasticContainerModel.DescribeClustersResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeClustersAsync(input: input) { result in
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
     Invokes the DescribeContainerInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstances(input: ElasticContainerModel.DescribeContainerInstancesRequest) async throws
     -> ElasticContainerModel.DescribeContainerInstancesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeContainerInstancesAsync(input: input) { result in
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
     Invokes the DescribeServices operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeServices(input: ElasticContainerModel.DescribeServicesRequest) async throws
     -> ElasticContainerModel.DescribeServicesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeServicesAsync(input: input) { result in
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
     Invokes the DescribeTaskDefinition operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func describeTaskDefinition(input: ElasticContainerModel.DescribeTaskDefinitionRequest) async throws
     -> ElasticContainerModel.DescribeTaskDefinitionResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeTaskDefinitionAsync(input: input) { result in
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
     Invokes the DescribeTaskSets operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSets(input: ElasticContainerModel.DescribeTaskSetsRequest) async throws
     -> ElasticContainerModel.DescribeTaskSetsResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeTaskSetsAsync(input: input) { result in
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
     Invokes the DescribeTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasks(input: ElasticContainerModel.DescribeTasksRequest) async throws
     -> ElasticContainerModel.DescribeTasksResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeTasksAsync(input: input) { result in
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
     Invokes the DiscoverPollEndpoint operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    func discoverPollEndpoint(input: ElasticContainerModel.DiscoverPollEndpointRequest) async throws
     -> ElasticContainerModel.DiscoverPollEndpointResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try discoverPollEndpointAsync(input: input) { result in
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
     Invokes the ExecuteCommand operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExecuteCommandRequest object being passed to this operation.
     - Returns: The ExecuteCommandResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, targetNotConnected.
     */
    func executeCommand(input: ElasticContainerModel.ExecuteCommandRequest) async throws
     -> ElasticContainerModel.ExecuteCommandResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try executeCommandAsync(input: input) { result in
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
     Invokes the ListAccountSettings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listAccountSettings(input: ElasticContainerModel.ListAccountSettingsRequest) async throws
     -> ElasticContainerModel.ListAccountSettingsResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listAccountSettingsAsync(input: input) { result in
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
     Invokes the ListAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    func listAttributes(input: ElasticContainerModel.ListAttributesRequest) async throws
     -> ElasticContainerModel.ListAttributesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listAttributesAsync(input: input) { result in
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
     Invokes the ListClusters operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listClusters(input: ElasticContainerModel.ListClustersRequest) async throws
     -> ElasticContainerModel.ListClustersResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listClustersAsync(input: input) { result in
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
     Invokes the ListContainerInstances operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstances(input: ElasticContainerModel.ListContainerInstancesRequest) async throws
     -> ElasticContainerModel.ListContainerInstancesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listContainerInstancesAsync(input: input) { result in
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
     Invokes the ListServices operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listServices(input: ElasticContainerModel.ListServicesRequest) async throws
     -> ElasticContainerModel.ListServicesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listServicesAsync(input: input) { result in
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
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResource(input: ElasticContainerModel.ListTagsForResourceRequest) async throws
     -> ElasticContainerModel.ListTagsForResourceResponse {
        return try await withUnsafeThrowingContinuation { cont in
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
     Invokes the ListTaskDefinitionFamilies operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitionFamilies(input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) async throws
     -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTaskDefinitionFamiliesAsync(input: input) { result in
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
     Invokes the ListTaskDefinitions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func listTaskDefinitions(input: ElasticContainerModel.ListTaskDefinitionsRequest) async throws
     -> ElasticContainerModel.ListTaskDefinitionsResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTaskDefinitionsAsync(input: input) { result in
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
     Invokes the ListTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasks(input: ElasticContainerModel.ListTasksRequest) async throws
     -> ElasticContainerModel.ListTasksResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTasksAsync(input: input) { result in
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
     Invokes the PutAccountSetting operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSetting(input: ElasticContainerModel.PutAccountSettingRequest) async throws
     -> ElasticContainerModel.PutAccountSettingResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putAccountSettingAsync(input: input) { result in
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
     Invokes the PutAccountSettingDefault operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func putAccountSettingDefault(input: ElasticContainerModel.PutAccountSettingDefaultRequest) async throws
     -> ElasticContainerModel.PutAccountSettingDefaultResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putAccountSettingDefaultAsync(input: input) { result in
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
     Invokes the PutAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributes(input: ElasticContainerModel.PutAttributesRequest) async throws
     -> ElasticContainerModel.PutAttributesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putAttributesAsync(input: input) { result in
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
     Invokes the PutClusterCapacityProviders operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProviders(input: ElasticContainerModel.PutClusterCapacityProvidersRequest) async throws
     -> ElasticContainerModel.PutClusterCapacityProvidersResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putClusterCapacityProvidersAsync(input: input) { result in
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
     Invokes the RegisterContainerInstance operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerContainerInstance(input: ElasticContainerModel.RegisterContainerInstanceRequest) async throws
     -> ElasticContainerModel.RegisterContainerInstanceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try registerContainerInstanceAsync(input: input) { result in
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
     Invokes the RegisterTaskDefinition operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func registerTaskDefinition(input: ElasticContainerModel.RegisterTaskDefinitionRequest) async throws
     -> ElasticContainerModel.RegisterTaskDefinitionResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try registerTaskDefinitionAsync(input: input) { result in
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
     Invokes the RunTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTask(input: ElasticContainerModel.RunTaskRequest) async throws
     -> ElasticContainerModel.RunTaskResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try runTaskAsync(input: input) { result in
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
     Invokes the StartTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func startTask(input: ElasticContainerModel.StartTaskRequest) async throws
     -> ElasticContainerModel.StartTaskResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startTaskAsync(input: input) { result in
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
     Invokes the StopTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func stopTask(input: ElasticContainerModel.StopTaskRequest) async throws
     -> ElasticContainerModel.StopTaskResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try stopTaskAsync(input: input) { result in
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
     Invokes the SubmitAttachmentStateChanges operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChanges(input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) async throws
     -> ElasticContainerModel.SubmitAttachmentStateChangesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try submitAttachmentStateChangesAsync(input: input) { result in
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
     Invokes the SubmitContainerStateChange operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    func submitContainerStateChange(input: ElasticContainerModel.SubmitContainerStateChangeRequest) async throws
     -> ElasticContainerModel.SubmitContainerStateChangeResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try submitContainerStateChangeAsync(input: input) { result in
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
     Invokes the SubmitTaskStateChange operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChange(input: ElasticContainerModel.SubmitTaskStateChangeRequest) async throws
     -> ElasticContainerModel.SubmitTaskStateChangeResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try submitTaskStateChangeAsync(input: input) { result in
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
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResource(input: ElasticContainerModel.TagResourceRequest) async throws
     -> ElasticContainerModel.TagResourceResponse {
        return try await withUnsafeThrowingContinuation { cont in
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
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResource(input: ElasticContainerModel.UntagResourceRequest) async throws
     -> ElasticContainerModel.UntagResourceResponse {
        return try await withUnsafeThrowingContinuation { cont in
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

    /**
     Invokes the UpdateCapacityProvider operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
     - Returns: The UpdateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    func updateCapacityProvider(input: ElasticContainerModel.UpdateCapacityProviderRequest) async throws
     -> ElasticContainerModel.UpdateCapacityProviderResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateCapacityProviderAsync(input: input) { result in
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
     Invokes the UpdateCluster operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateClusterRequest object being passed to this operation.
     - Returns: The UpdateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateCluster(input: ElasticContainerModel.UpdateClusterRequest) async throws
     -> ElasticContainerModel.UpdateClusterResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateClusterAsync(input: input) { result in
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
     Invokes the UpdateClusterSettings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettings(input: ElasticContainerModel.UpdateClusterSettingsRequest) async throws
     -> ElasticContainerModel.UpdateClusterSettingsResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateClusterSettingsAsync(input: input) { result in
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
     Invokes the UpdateContainerAgent operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgent(input: ElasticContainerModel.UpdateContainerAgentRequest) async throws
     -> ElasticContainerModel.UpdateContainerAgentResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateContainerAgentAsync(input: input) { result in
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
     Invokes the UpdateContainerInstancesState operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesState(input: ElasticContainerModel.UpdateContainerInstancesStateRequest) async throws
     -> ElasticContainerModel.UpdateContainerInstancesStateResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateContainerInstancesStateAsync(input: input) { result in
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
     Invokes the UpdateService operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateService(input: ElasticContainerModel.UpdateServiceRequest) async throws
     -> ElasticContainerModel.UpdateServiceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateServiceAsync(input: input) { result in
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
     Invokes the UpdateServicePrimaryTaskSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSet(input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) async throws
     -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateServicePrimaryTaskSetAsync(input: input) { result in
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
     Invokes the UpdateTaskSet operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSet(input: ElasticContainerModel.UpdateTaskSetRequest) async throws
     -> ElasticContainerModel.UpdateTaskSetResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateTaskSetAsync(input: input) { result in
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
