// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// AWSElasticContainerClient.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum ElasticContainerClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

/**
 AWS Client for the ElasticContainer service.
 */
public struct AWSElasticContainerClient: ElasticContainerClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "ecs",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "AmazonEC2ContainerServiceV20141113",
                connectionTimeoutSeconds: Int = 10) {
        let clientDelegate = JSONAWSHttpClientDelegate<ElasticContainerError>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createCluster.rawValue,
                    target: target)
        
        let requestInput = CreateClusterOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createCluster.rawValue,
                    target: target)
        
        let requestInput = CreateClusterOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createService.rawValue,
                    target: target)
        
        let requestInput = CreateServiceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createService.rawValue,
                    target: target)
        
        let requestInput = CreateServiceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteAttributes.rawValue,
                    target: target)
        
        let requestInput = DeleteAttributesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteAttributes.rawValue,
                    target: target)
        
        let requestInput = DeleteAttributesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteCluster.rawValue,
                    target: target)
        
        let requestInput = DeleteClusterOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteCluster.rawValue,
                    target: target)
        
        let requestInput = DeleteClusterOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteService.rawValue,
                    target: target)
        
        let requestInput = DeleteServiceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteService.rawValue,
                    target: target)
        
        let requestInput = DeleteServiceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterContainerInstance.rawValue,
                    target: target)
        
        let requestInput = DeregisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterContainerInstance.rawValue,
                    target: target)
        
        let requestInput = DeregisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterTaskDefinition.rawValue,
                    target: target)
        
        let requestInput = DeregisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterTaskDefinition.rawValue,
                    target: target)
        
        let requestInput = DeregisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeClusters.rawValue,
                    target: target)
        
        let requestInput = DescribeClustersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeClusters.rawValue,
                    target: target)
        
        let requestInput = DescribeClustersOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeContainerInstances.rawValue,
                    target: target)
        
        let requestInput = DescribeContainerInstancesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeContainerInstances.rawValue,
                    target: target)
        
        let requestInput = DescribeContainerInstancesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeServices.rawValue,
                    target: target)
        
        let requestInput = DescribeServicesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeServices.rawValue,
                    target: target)
        
        let requestInput = DescribeServicesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTaskDefinition.rawValue,
                    target: target)
        
        let requestInput = DescribeTaskDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTaskDefinition.rawValue,
                    target: target)
        
        let requestInput = DescribeTaskDefinitionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTasks.rawValue,
                    target: target)
        
        let requestInput = DescribeTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTasks.rawValue,
                    target: target)
        
        let requestInput = DescribeTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.discoverPollEndpoint.rawValue,
                    target: target)
        
        let requestInput = DiscoverPollEndpointOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.discoverPollEndpoint.rawValue,
                    target: target)
        
        let requestInput = DiscoverPollEndpointOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listAttributes.rawValue,
                    target: target)
        
        let requestInput = ListAttributesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listAttributes.rawValue,
                    target: target)
        
        let requestInput = ListAttributesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listClusters.rawValue,
                    target: target)
        
        let requestInput = ListClustersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listClusters.rawValue,
                    target: target)
        
        let requestInput = ListClustersOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listContainerInstances.rawValue,
                    target: target)
        
        let requestInput = ListContainerInstancesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listContainerInstances.rawValue,
                    target: target)
        
        let requestInput = ListContainerInstancesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listServices.rawValue,
                    target: target)
        
        let requestInput = ListServicesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listServices.rawValue,
                    target: target)
        
        let requestInput = ListServicesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitionFamilies.rawValue,
                    target: target)
        
        let requestInput = ListTaskDefinitionFamiliesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitionFamilies.rawValue,
                    target: target)
        
        let requestInput = ListTaskDefinitionFamiliesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitions.rawValue,
                    target: target)
        
        let requestInput = ListTaskDefinitionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitions.rawValue,
                    target: target)
        
        let requestInput = ListTaskDefinitionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTasks.rawValue,
                    target: target)
        
        let requestInput = ListTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTasks.rawValue,
                    target: target)
        
        let requestInput = ListTasksOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAttributes.rawValue,
                    target: target)
        
        let requestInput = PutAttributesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAttributes.rawValue,
                    target: target)
        
        let requestInput = PutAttributesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerContainerInstance.rawValue,
                    target: target)
        
        let requestInput = RegisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerContainerInstance.rawValue,
                    target: target)
        
        let requestInput = RegisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerTaskDefinition.rawValue,
                    target: target)
        
        let requestInput = RegisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerTaskDefinition.rawValue,
                    target: target)
        
        let requestInput = RegisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.runTask.rawValue,
                    target: target)
        
        let requestInput = RunTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.runTask.rawValue,
                    target: target)
        
        let requestInput = RunTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.startTask.rawValue,
                    target: target)
        
        let requestInput = StartTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.startTask.rawValue,
                    target: target)
        
        let requestInput = StartTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.stopTask.rawValue,
                    target: target)
        
        let requestInput = StopTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.stopTask.rawValue,
                    target: target)
        
        let requestInput = StopTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitContainerStateChange.rawValue,
                    target: target)
        
        let requestInput = SubmitContainerStateChangeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitContainerStateChange.rawValue,
                    target: target)
        
        let requestInput = SubmitContainerStateChangeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitTaskStateChange.rawValue,
                    target: target)
        
        let requestInput = SubmitTaskStateChangeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitTaskStateChange.rawValue,
                    target: target)
        
        let requestInput = SubmitTaskStateChangeOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerAgent.rawValue,
                    target: target)
        
        let requestInput = UpdateContainerAgentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerAgent.rawValue,
                    target: target)
        
        let requestInput = UpdateContainerAgentOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerInstancesState.rawValue,
                    target: target)
        
        let requestInput = UpdateContainerInstancesStateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerInstancesState.rawValue,
                    target: target)
        
        let requestInput = UpdateContainerInstancesStateOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateService.rawValue,
                    target: target)
        
        let requestInput = UpdateServiceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate)
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
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateService.rawValue,
                    target: target)
        
        let requestInput = UpdateServiceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate)
    }
}
