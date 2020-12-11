// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// -- Generated Code; do not edit --
//
// ElasticContainerModelDefaultInstances.swift
// ElasticContainerModel
//

import Foundation

public extension AccessDeniedException {
    /**
     Default instance of the AccessDeniedException structure.
     */
    static let __default: ElasticContainerModel.AccessDeniedException = {
        let defaultInstance = ElasticContainerModel.AccessDeniedException()

        return defaultInstance
    }()
}

public extension Attachment {
    /**
     Default instance of the Attachment structure.
     */
    static let __default: ElasticContainerModel.Attachment = {
        let defaultInstance = ElasticContainerModel.Attachment(
            details: nil,
            id: nil,
            status: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension AttachmentStateChange {
    /**
     Default instance of the AttachmentStateChange structure.
     */
    static let __default: ElasticContainerModel.AttachmentStateChange = {
        let defaultInstance = ElasticContainerModel.AttachmentStateChange(
            attachmentArn: "value",
            status: "value")

        return defaultInstance
    }()
}

public extension Attribute {
    /**
     Default instance of the Attribute structure.
     */
    static let __default: ElasticContainerModel.Attribute = {
        let defaultInstance = ElasticContainerModel.Attribute(
            name: "value",
            targetId: nil,
            targetType: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension AttributeLimitExceededException {
    /**
     Default instance of the AttributeLimitExceededException structure.
     */
    static let __default: ElasticContainerModel.AttributeLimitExceededException = {
        let defaultInstance = ElasticContainerModel.AttributeLimitExceededException()

        return defaultInstance
    }()
}

public extension AutoScalingGroupProvider {
    /**
     Default instance of the AutoScalingGroupProvider structure.
     */
    static let __default: ElasticContainerModel.AutoScalingGroupProvider = {
        let defaultInstance = ElasticContainerModel.AutoScalingGroupProvider(
            autoScalingGroupArn: "value",
            managedScaling: nil,
            managedTerminationProtection: nil)

        return defaultInstance
    }()
}

public extension AutoScalingGroupProviderUpdate {
    /**
     Default instance of the AutoScalingGroupProviderUpdate structure.
     */
    static let __default: ElasticContainerModel.AutoScalingGroupProviderUpdate = {
        let defaultInstance = ElasticContainerModel.AutoScalingGroupProviderUpdate(
            managedScaling: nil,
            managedTerminationProtection: nil)

        return defaultInstance
    }()
}

public extension AwsVpcConfiguration {
    /**
     Default instance of the AwsVpcConfiguration structure.
     */
    static let __default: ElasticContainerModel.AwsVpcConfiguration = {
        let defaultInstance = ElasticContainerModel.AwsVpcConfiguration(
            assignPublicIp: nil,
            securityGroups: nil,
            subnets: [])

        return defaultInstance
    }()
}

public extension BlockedException {
    /**
     Default instance of the BlockedException structure.
     */
    static let __default: ElasticContainerModel.BlockedException = {
        let defaultInstance = ElasticContainerModel.BlockedException()

        return defaultInstance
    }()
}

public extension CapacityProvider {
    /**
     Default instance of the CapacityProvider structure.
     */
    static let __default: ElasticContainerModel.CapacityProvider = {
        let defaultInstance = ElasticContainerModel.CapacityProvider(
            autoScalingGroupProvider: nil,
            capacityProviderArn: nil,
            name: nil,
            status: nil,
            tags: nil,
            updateStatus: nil,
            updateStatusReason: nil)

        return defaultInstance
    }()
}

public extension CapacityProviderStrategyItem {
    /**
     Default instance of the CapacityProviderStrategyItem structure.
     */
    static let __default: ElasticContainerModel.CapacityProviderStrategyItem = {
        let defaultInstance = ElasticContainerModel.CapacityProviderStrategyItem(
            base: nil,
            capacityProvider: "value",
            weight: nil)

        return defaultInstance
    }()
}

public extension ClientException {
    /**
     Default instance of the ClientException structure.
     */
    static let __default: ElasticContainerModel.ClientException = {
        let defaultInstance = ElasticContainerModel.ClientException(
            message: nil)

        return defaultInstance
    }()
}

public extension Cluster {
    /**
     Default instance of the Cluster structure.
     */
    static let __default: ElasticContainerModel.Cluster = {
        let defaultInstance = ElasticContainerModel.Cluster(
            activeServicesCount: nil,
            attachments: nil,
            attachmentsStatus: nil,
            capacityProviders: nil,
            clusterArn: nil,
            clusterName: nil,
            defaultCapacityProviderStrategy: nil,
            pendingTasksCount: nil,
            registeredContainerInstancesCount: nil,
            runningTasksCount: nil,
            settings: nil,
            statistics: nil,
            status: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension ClusterContainsContainerInstancesException {
    /**
     Default instance of the ClusterContainsContainerInstancesException structure.
     */
    static let __default: ElasticContainerModel.ClusterContainsContainerInstancesException = {
        let defaultInstance = ElasticContainerModel.ClusterContainsContainerInstancesException()

        return defaultInstance
    }()
}

public extension ClusterContainsServicesException {
    /**
     Default instance of the ClusterContainsServicesException structure.
     */
    static let __default: ElasticContainerModel.ClusterContainsServicesException = {
        let defaultInstance = ElasticContainerModel.ClusterContainsServicesException()

        return defaultInstance
    }()
}

public extension ClusterContainsTasksException {
    /**
     Default instance of the ClusterContainsTasksException structure.
     */
    static let __default: ElasticContainerModel.ClusterContainsTasksException = {
        let defaultInstance = ElasticContainerModel.ClusterContainsTasksException()

        return defaultInstance
    }()
}

public extension ClusterNotFoundException {
    /**
     Default instance of the ClusterNotFoundException structure.
     */
    static let __default: ElasticContainerModel.ClusterNotFoundException = {
        let defaultInstance = ElasticContainerModel.ClusterNotFoundException()

        return defaultInstance
    }()
}

public extension ClusterSetting {
    /**
     Default instance of the ClusterSetting structure.
     */
    static let __default: ElasticContainerModel.ClusterSetting = {
        let defaultInstance = ElasticContainerModel.ClusterSetting(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension Container {
    /**
     Default instance of the Container structure.
     */
    static let __default: ElasticContainerModel.Container = {
        let defaultInstance = ElasticContainerModel.Container(
            containerArn: nil,
            cpu: nil,
            exitCode: nil,
            gpuIds: nil,
            healthStatus: nil,
            image: nil,
            imageDigest: nil,
            lastStatus: nil,
            memory: nil,
            memoryReservation: nil,
            name: nil,
            networkBindings: nil,
            networkInterfaces: nil,
            reason: nil,
            runtimeId: nil,
            taskArn: nil)

        return defaultInstance
    }()
}

public extension ContainerDefinition {
    /**
     Default instance of the ContainerDefinition structure.
     */
    static let __default: ElasticContainerModel.ContainerDefinition = {
        let defaultInstance = ElasticContainerModel.ContainerDefinition(
            command: nil,
            cpu: nil,
            dependsOn: nil,
            disableNetworking: nil,
            dnsSearchDomains: nil,
            dnsServers: nil,
            dockerLabels: nil,
            dockerSecurityOptions: nil,
            entryPoint: nil,
            environment: nil,
            environmentFiles: nil,
            essential: nil,
            extraHosts: nil,
            firelensConfiguration: nil,
            healthCheck: nil,
            hostname: nil,
            image: nil,
            interactive: nil,
            links: nil,
            linuxParameters: nil,
            logConfiguration: nil,
            memory: nil,
            memoryReservation: nil,
            mountPoints: nil,
            name: nil,
            portMappings: nil,
            privileged: nil,
            pseudoTerminal: nil,
            readonlyRootFilesystem: nil,
            repositoryCredentials: nil,
            resourceRequirements: nil,
            secrets: nil,
            startTimeout: nil,
            stopTimeout: nil,
            systemControls: nil,
            ulimits: nil,
            user: nil,
            volumesFrom: nil,
            workingDirectory: nil)

        return defaultInstance
    }()
}

public extension ContainerDependency {
    /**
     Default instance of the ContainerDependency structure.
     */
    static let __default: ElasticContainerModel.ContainerDependency = {
        let defaultInstance = ElasticContainerModel.ContainerDependency(
            condition: .__default,
            containerName: "value")

        return defaultInstance
    }()
}

public extension ContainerInstance {
    /**
     Default instance of the ContainerInstance structure.
     */
    static let __default: ElasticContainerModel.ContainerInstance = {
        let defaultInstance = ElasticContainerModel.ContainerInstance(
            agentConnected: nil,
            agentUpdateStatus: nil,
            attachments: nil,
            attributes: nil,
            capacityProviderName: nil,
            containerInstanceArn: nil,
            ec2InstanceId: nil,
            pendingTasksCount: nil,
            registeredAt: nil,
            registeredResources: nil,
            remainingResources: nil,
            runningTasksCount: nil,
            status: nil,
            statusReason: nil,
            tags: nil,
            version: nil,
            versionInfo: nil)

        return defaultInstance
    }()
}

public extension ContainerOverride {
    /**
     Default instance of the ContainerOverride structure.
     */
    static let __default: ElasticContainerModel.ContainerOverride = {
        let defaultInstance = ElasticContainerModel.ContainerOverride(
            command: nil,
            cpu: nil,
            environment: nil,
            environmentFiles: nil,
            memory: nil,
            memoryReservation: nil,
            name: nil,
            resourceRequirements: nil)

        return defaultInstance
    }()
}

public extension ContainerStateChange {
    /**
     Default instance of the ContainerStateChange structure.
     */
    static let __default: ElasticContainerModel.ContainerStateChange = {
        let defaultInstance = ElasticContainerModel.ContainerStateChange(
            containerName: nil,
            exitCode: nil,
            imageDigest: nil,
            networkBindings: nil,
            reason: nil,
            runtimeId: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension CreateCapacityProviderRequest {
    /**
     Default instance of the CreateCapacityProviderRequest structure.
     */
    static let __default: ElasticContainerModel.CreateCapacityProviderRequest = {
        let defaultInstance = ElasticContainerModel.CreateCapacityProviderRequest(
            autoScalingGroupProvider: AutoScalingGroupProvider.__default,
            name: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateCapacityProviderResponse {
    /**
     Default instance of the CreateCapacityProviderResponse structure.
     */
    static let __default: ElasticContainerModel.CreateCapacityProviderResponse = {
        let defaultInstance = ElasticContainerModel.CreateCapacityProviderResponse(
            capacityProvider: nil)

        return defaultInstance
    }()
}

public extension CreateClusterRequest {
    /**
     Default instance of the CreateClusterRequest structure.
     */
    static let __default: ElasticContainerModel.CreateClusterRequest = {
        let defaultInstance = ElasticContainerModel.CreateClusterRequest(
            capacityProviders: nil,
            clusterName: nil,
            defaultCapacityProviderStrategy: nil,
            settings: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateClusterResponse {
    /**
     Default instance of the CreateClusterResponse structure.
     */
    static let __default: ElasticContainerModel.CreateClusterResponse = {
        let defaultInstance = ElasticContainerModel.CreateClusterResponse(
            cluster: nil)

        return defaultInstance
    }()
}

public extension CreateServiceRequest {
    /**
     Default instance of the CreateServiceRequest structure.
     */
    static let __default: ElasticContainerModel.CreateServiceRequest = {
        let defaultInstance = ElasticContainerModel.CreateServiceRequest(
            capacityProviderStrategy: nil,
            clientToken: nil,
            cluster: nil,
            deploymentConfiguration: nil,
            deploymentController: nil,
            desiredCount: nil,
            enableECSManagedTags: nil,
            healthCheckGracePeriodSeconds: nil,
            launchType: nil,
            loadBalancers: nil,
            networkConfiguration: nil,
            placementConstraints: nil,
            placementStrategy: nil,
            platformVersion: nil,
            propagateTags: nil,
            role: nil,
            schedulingStrategy: nil,
            serviceName: "value",
            serviceRegistries: nil,
            tags: nil,
            taskDefinition: nil)

        return defaultInstance
    }()
}

public extension CreateServiceResponse {
    /**
     Default instance of the CreateServiceResponse structure.
     */
    static let __default: ElasticContainerModel.CreateServiceResponse = {
        let defaultInstance = ElasticContainerModel.CreateServiceResponse(
            service: nil)

        return defaultInstance
    }()
}

public extension CreateTaskSetRequest {
    /**
     Default instance of the CreateTaskSetRequest structure.
     */
    static let __default: ElasticContainerModel.CreateTaskSetRequest = {
        let defaultInstance = ElasticContainerModel.CreateTaskSetRequest(
            capacityProviderStrategy: nil,
            clientToken: nil,
            cluster: "value",
            externalId: nil,
            launchType: nil,
            loadBalancers: nil,
            networkConfiguration: nil,
            platformVersion: nil,
            scale: nil,
            service: "value",
            serviceRegistries: nil,
            tags: nil,
            taskDefinition: "value")

        return defaultInstance
    }()
}

public extension CreateTaskSetResponse {
    /**
     Default instance of the CreateTaskSetResponse structure.
     */
    static let __default: ElasticContainerModel.CreateTaskSetResponse = {
        let defaultInstance = ElasticContainerModel.CreateTaskSetResponse(
            taskSet: nil)

        return defaultInstance
    }()
}

public extension DeleteAccountSettingRequest {
    /**
     Default instance of the DeleteAccountSettingRequest structure.
     */
    static let __default: ElasticContainerModel.DeleteAccountSettingRequest = {
        let defaultInstance = ElasticContainerModel.DeleteAccountSettingRequest(
            name: .__default,
            principalArn: nil)

        return defaultInstance
    }()
}

public extension DeleteAccountSettingResponse {
    /**
     Default instance of the DeleteAccountSettingResponse structure.
     */
    static let __default: ElasticContainerModel.DeleteAccountSettingResponse = {
        let defaultInstance = ElasticContainerModel.DeleteAccountSettingResponse(
            setting: nil)

        return defaultInstance
    }()
}

public extension DeleteAttributesRequest {
    /**
     Default instance of the DeleteAttributesRequest structure.
     */
    static let __default: ElasticContainerModel.DeleteAttributesRequest = {
        let defaultInstance = ElasticContainerModel.DeleteAttributesRequest(
            attributes: [],
            cluster: nil)

        return defaultInstance
    }()
}

public extension DeleteAttributesResponse {
    /**
     Default instance of the DeleteAttributesResponse structure.
     */
    static let __default: ElasticContainerModel.DeleteAttributesResponse = {
        let defaultInstance = ElasticContainerModel.DeleteAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension DeleteCapacityProviderRequest {
    /**
     Default instance of the DeleteCapacityProviderRequest structure.
     */
    static let __default: ElasticContainerModel.DeleteCapacityProviderRequest = {
        let defaultInstance = ElasticContainerModel.DeleteCapacityProviderRequest(
            capacityProvider: "value")

        return defaultInstance
    }()
}

public extension DeleteCapacityProviderResponse {
    /**
     Default instance of the DeleteCapacityProviderResponse structure.
     */
    static let __default: ElasticContainerModel.DeleteCapacityProviderResponse = {
        let defaultInstance = ElasticContainerModel.DeleteCapacityProviderResponse(
            capacityProvider: nil)

        return defaultInstance
    }()
}

public extension DeleteClusterRequest {
    /**
     Default instance of the DeleteClusterRequest structure.
     */
    static let __default: ElasticContainerModel.DeleteClusterRequest = {
        let defaultInstance = ElasticContainerModel.DeleteClusterRequest(
            cluster: "value")

        return defaultInstance
    }()
}

public extension DeleteClusterResponse {
    /**
     Default instance of the DeleteClusterResponse structure.
     */
    static let __default: ElasticContainerModel.DeleteClusterResponse = {
        let defaultInstance = ElasticContainerModel.DeleteClusterResponse(
            cluster: nil)

        return defaultInstance
    }()
}

public extension DeleteServiceRequest {
    /**
     Default instance of the DeleteServiceRequest structure.
     */
    static let __default: ElasticContainerModel.DeleteServiceRequest = {
        let defaultInstance = ElasticContainerModel.DeleteServiceRequest(
            cluster: nil,
            force: nil,
            service: "value")

        return defaultInstance
    }()
}

public extension DeleteServiceResponse {
    /**
     Default instance of the DeleteServiceResponse structure.
     */
    static let __default: ElasticContainerModel.DeleteServiceResponse = {
        let defaultInstance = ElasticContainerModel.DeleteServiceResponse(
            service: nil)

        return defaultInstance
    }()
}

public extension DeleteTaskSetRequest {
    /**
     Default instance of the DeleteTaskSetRequest structure.
     */
    static let __default: ElasticContainerModel.DeleteTaskSetRequest = {
        let defaultInstance = ElasticContainerModel.DeleteTaskSetRequest(
            cluster: "value",
            force: nil,
            service: "value",
            taskSet: "value")

        return defaultInstance
    }()
}

public extension DeleteTaskSetResponse {
    /**
     Default instance of the DeleteTaskSetResponse structure.
     */
    static let __default: ElasticContainerModel.DeleteTaskSetResponse = {
        let defaultInstance = ElasticContainerModel.DeleteTaskSetResponse(
            taskSet: nil)

        return defaultInstance
    }()
}

public extension Deployment {
    /**
     Default instance of the Deployment structure.
     */
    static let __default: ElasticContainerModel.Deployment = {
        let defaultInstance = ElasticContainerModel.Deployment(
            capacityProviderStrategy: nil,
            createdAt: nil,
            desiredCount: nil,
            failedTasks: nil,
            id: nil,
            launchType: nil,
            networkConfiguration: nil,
            pendingCount: nil,
            platformVersion: nil,
            rolloutState: nil,
            rolloutStateReason: nil,
            runningCount: nil,
            status: nil,
            taskDefinition: nil,
            updatedAt: nil)

        return defaultInstance
    }()
}

public extension DeploymentCircuitBreaker {
    /**
     Default instance of the DeploymentCircuitBreaker structure.
     */
    static let __default: ElasticContainerModel.DeploymentCircuitBreaker = {
        let defaultInstance = ElasticContainerModel.DeploymentCircuitBreaker(
            enable: false,
            rollback: false)

        return defaultInstance
    }()
}

public extension DeploymentConfiguration {
    /**
     Default instance of the DeploymentConfiguration structure.
     */
    static let __default: ElasticContainerModel.DeploymentConfiguration = {
        let defaultInstance = ElasticContainerModel.DeploymentConfiguration(
            deploymentCircuitBreaker: nil,
            maximumPercent: nil,
            minimumHealthyPercent: nil)

        return defaultInstance
    }()
}

public extension DeploymentController {
    /**
     Default instance of the DeploymentController structure.
     */
    static let __default: ElasticContainerModel.DeploymentController = {
        let defaultInstance = ElasticContainerModel.DeploymentController(
            type: .__default)

        return defaultInstance
    }()
}

public extension DeregisterContainerInstanceRequest {
    /**
     Default instance of the DeregisterContainerInstanceRequest structure.
     */
    static let __default: ElasticContainerModel.DeregisterContainerInstanceRequest = {
        let defaultInstance = ElasticContainerModel.DeregisterContainerInstanceRequest(
            cluster: nil,
            containerInstance: "value",
            force: nil)

        return defaultInstance
    }()
}

public extension DeregisterContainerInstanceResponse {
    /**
     Default instance of the DeregisterContainerInstanceResponse structure.
     */
    static let __default: ElasticContainerModel.DeregisterContainerInstanceResponse = {
        let defaultInstance = ElasticContainerModel.DeregisterContainerInstanceResponse(
            containerInstance: nil)

        return defaultInstance
    }()
}

public extension DeregisterTaskDefinitionRequest {
    /**
     Default instance of the DeregisterTaskDefinitionRequest structure.
     */
    static let __default: ElasticContainerModel.DeregisterTaskDefinitionRequest = {
        let defaultInstance = ElasticContainerModel.DeregisterTaskDefinitionRequest(
            taskDefinition: "value")

        return defaultInstance
    }()
}

public extension DeregisterTaskDefinitionResponse {
    /**
     Default instance of the DeregisterTaskDefinitionResponse structure.
     */
    static let __default: ElasticContainerModel.DeregisterTaskDefinitionResponse = {
        let defaultInstance = ElasticContainerModel.DeregisterTaskDefinitionResponse(
            taskDefinition: nil)

        return defaultInstance
    }()
}

public extension DescribeCapacityProvidersRequest {
    /**
     Default instance of the DescribeCapacityProvidersRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeCapacityProvidersRequest = {
        let defaultInstance = ElasticContainerModel.DescribeCapacityProvidersRequest(
            capacityProviders: nil,
            include: nil,
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeCapacityProvidersResponse {
    /**
     Default instance of the DescribeCapacityProvidersResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeCapacityProvidersResponse = {
        let defaultInstance = ElasticContainerModel.DescribeCapacityProvidersResponse(
            capacityProviders: nil,
            failures: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeClustersRequest {
    /**
     Default instance of the DescribeClustersRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeClustersRequest = {
        let defaultInstance = ElasticContainerModel.DescribeClustersRequest(
            clusters: nil,
            include: nil)

        return defaultInstance
    }()
}

public extension DescribeClustersResponse {
    /**
     Default instance of the DescribeClustersResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeClustersResponse = {
        let defaultInstance = ElasticContainerModel.DescribeClustersResponse(
            clusters: nil,
            failures: nil)

        return defaultInstance
    }()
}

public extension DescribeContainerInstancesRequest {
    /**
     Default instance of the DescribeContainerInstancesRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeContainerInstancesRequest = {
        let defaultInstance = ElasticContainerModel.DescribeContainerInstancesRequest(
            cluster: nil,
            containerInstances: [],
            include: nil)

        return defaultInstance
    }()
}

public extension DescribeContainerInstancesResponse {
    /**
     Default instance of the DescribeContainerInstancesResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeContainerInstancesResponse = {
        let defaultInstance = ElasticContainerModel.DescribeContainerInstancesResponse(
            containerInstances: nil,
            failures: nil)

        return defaultInstance
    }()
}

public extension DescribeServicesRequest {
    /**
     Default instance of the DescribeServicesRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeServicesRequest = {
        let defaultInstance = ElasticContainerModel.DescribeServicesRequest(
            cluster: nil,
            include: nil,
            services: [])

        return defaultInstance
    }()
}

public extension DescribeServicesResponse {
    /**
     Default instance of the DescribeServicesResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeServicesResponse = {
        let defaultInstance = ElasticContainerModel.DescribeServicesResponse(
            failures: nil,
            services: nil)

        return defaultInstance
    }()
}

public extension DescribeTaskDefinitionRequest {
    /**
     Default instance of the DescribeTaskDefinitionRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeTaskDefinitionRequest = {
        let defaultInstance = ElasticContainerModel.DescribeTaskDefinitionRequest(
            include: nil,
            taskDefinition: "value")

        return defaultInstance
    }()
}

public extension DescribeTaskDefinitionResponse {
    /**
     Default instance of the DescribeTaskDefinitionResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeTaskDefinitionResponse = {
        let defaultInstance = ElasticContainerModel.DescribeTaskDefinitionResponse(
            tags: nil,
            taskDefinition: nil)

        return defaultInstance
    }()
}

public extension DescribeTaskSetsRequest {
    /**
     Default instance of the DescribeTaskSetsRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeTaskSetsRequest = {
        let defaultInstance = ElasticContainerModel.DescribeTaskSetsRequest(
            cluster: "value",
            include: nil,
            service: "value",
            taskSets: nil)

        return defaultInstance
    }()
}

public extension DescribeTaskSetsResponse {
    /**
     Default instance of the DescribeTaskSetsResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeTaskSetsResponse = {
        let defaultInstance = ElasticContainerModel.DescribeTaskSetsResponse(
            failures: nil,
            taskSets: nil)

        return defaultInstance
    }()
}

public extension DescribeTasksRequest {
    /**
     Default instance of the DescribeTasksRequest structure.
     */
    static let __default: ElasticContainerModel.DescribeTasksRequest = {
        let defaultInstance = ElasticContainerModel.DescribeTasksRequest(
            cluster: nil,
            include: nil,
            tasks: [])

        return defaultInstance
    }()
}

public extension DescribeTasksResponse {
    /**
     Default instance of the DescribeTasksResponse structure.
     */
    static let __default: ElasticContainerModel.DescribeTasksResponse = {
        let defaultInstance = ElasticContainerModel.DescribeTasksResponse(
            failures: nil,
            tasks: nil)

        return defaultInstance
    }()
}

public extension Device {
    /**
     Default instance of the Device structure.
     */
    static let __default: ElasticContainerModel.Device = {
        let defaultInstance = ElasticContainerModel.Device(
            containerPath: nil,
            hostPath: "value",
            permissions: nil)

        return defaultInstance
    }()
}

public extension DiscoverPollEndpointRequest {
    /**
     Default instance of the DiscoverPollEndpointRequest structure.
     */
    static let __default: ElasticContainerModel.DiscoverPollEndpointRequest = {
        let defaultInstance = ElasticContainerModel.DiscoverPollEndpointRequest(
            cluster: nil,
            containerInstance: nil)

        return defaultInstance
    }()
}

public extension DiscoverPollEndpointResponse {
    /**
     Default instance of the DiscoverPollEndpointResponse structure.
     */
    static let __default: ElasticContainerModel.DiscoverPollEndpointResponse = {
        let defaultInstance = ElasticContainerModel.DiscoverPollEndpointResponse(
            endpoint: nil,
            telemetryEndpoint: nil)

        return defaultInstance
    }()
}

public extension DockerVolumeConfiguration {
    /**
     Default instance of the DockerVolumeConfiguration structure.
     */
    static let __default: ElasticContainerModel.DockerVolumeConfiguration = {
        let defaultInstance = ElasticContainerModel.DockerVolumeConfiguration(
            autoprovision: nil,
            driver: nil,
            driverOpts: nil,
            labels: nil,
            scope: nil)

        return defaultInstance
    }()
}

public extension EFSAuthorizationConfig {
    /**
     Default instance of the EFSAuthorizationConfig structure.
     */
    static let __default: ElasticContainerModel.EFSAuthorizationConfig = {
        let defaultInstance = ElasticContainerModel.EFSAuthorizationConfig(
            accessPointId: nil,
            iam: nil)

        return defaultInstance
    }()
}

public extension EFSVolumeConfiguration {
    /**
     Default instance of the EFSVolumeConfiguration structure.
     */
    static let __default: ElasticContainerModel.EFSVolumeConfiguration = {
        let defaultInstance = ElasticContainerModel.EFSVolumeConfiguration(
            authorizationConfig: nil,
            fileSystemId: "value",
            rootDirectory: nil,
            transitEncryption: nil,
            transitEncryptionPort: nil)

        return defaultInstance
    }()
}

public extension EnvironmentFile {
    /**
     Default instance of the EnvironmentFile structure.
     */
    static let __default: ElasticContainerModel.EnvironmentFile = {
        let defaultInstance = ElasticContainerModel.EnvironmentFile(
            type: .__default,
            value: "value")

        return defaultInstance
    }()
}

public extension FSxWindowsFileServerAuthorizationConfig {
    /**
     Default instance of the FSxWindowsFileServerAuthorizationConfig structure.
     */
    static let __default: ElasticContainerModel.FSxWindowsFileServerAuthorizationConfig = {
        let defaultInstance = ElasticContainerModel.FSxWindowsFileServerAuthorizationConfig(
            credentialsParameter: "value",
            domain: "value")

        return defaultInstance
    }()
}

public extension FSxWindowsFileServerVolumeConfiguration {
    /**
     Default instance of the FSxWindowsFileServerVolumeConfiguration structure.
     */
    static let __default: ElasticContainerModel.FSxWindowsFileServerVolumeConfiguration = {
        let defaultInstance = ElasticContainerModel.FSxWindowsFileServerVolumeConfiguration(
            authorizationConfig: FSxWindowsFileServerAuthorizationConfig.__default,
            fileSystemId: "value",
            rootDirectory: "value")

        return defaultInstance
    }()
}

public extension Failure {
    /**
     Default instance of the Failure structure.
     */
    static let __default: ElasticContainerModel.Failure = {
        let defaultInstance = ElasticContainerModel.Failure(
            arn: nil,
            detail: nil,
            reason: nil)

        return defaultInstance
    }()
}

public extension FirelensConfiguration {
    /**
     Default instance of the FirelensConfiguration structure.
     */
    static let __default: ElasticContainerModel.FirelensConfiguration = {
        let defaultInstance = ElasticContainerModel.FirelensConfiguration(
            options: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension HealthCheck {
    /**
     Default instance of the HealthCheck structure.
     */
    static let __default: ElasticContainerModel.HealthCheck = {
        let defaultInstance = ElasticContainerModel.HealthCheck(
            command: [],
            interval: nil,
            retries: nil,
            startPeriod: nil,
            timeout: nil)

        return defaultInstance
    }()
}

public extension HostEntry {
    /**
     Default instance of the HostEntry structure.
     */
    static let __default: ElasticContainerModel.HostEntry = {
        let defaultInstance = ElasticContainerModel.HostEntry(
            hostname: "value",
            ipAddress: "value")

        return defaultInstance
    }()
}

public extension HostVolumeProperties {
    /**
     Default instance of the HostVolumeProperties structure.
     */
    static let __default: ElasticContainerModel.HostVolumeProperties = {
        let defaultInstance = ElasticContainerModel.HostVolumeProperties(
            sourcePath: nil)

        return defaultInstance
    }()
}

public extension InferenceAccelerator {
    /**
     Default instance of the InferenceAccelerator structure.
     */
    static let __default: ElasticContainerModel.InferenceAccelerator = {
        let defaultInstance = ElasticContainerModel.InferenceAccelerator(
            deviceName: "value",
            deviceType: "value")

        return defaultInstance
    }()
}

public extension InferenceAcceleratorOverride {
    /**
     Default instance of the InferenceAcceleratorOverride structure.
     */
    static let __default: ElasticContainerModel.InferenceAcceleratorOverride = {
        let defaultInstance = ElasticContainerModel.InferenceAcceleratorOverride(
            deviceName: nil,
            deviceType: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterException {
    /**
     Default instance of the InvalidParameterException structure.
     */
    static let __default: ElasticContainerModel.InvalidParameterException = {
        let defaultInstance = ElasticContainerModel.InvalidParameterException()

        return defaultInstance
    }()
}

public extension KernelCapabilities {
    /**
     Default instance of the KernelCapabilities structure.
     */
    static let __default: ElasticContainerModel.KernelCapabilities = {
        let defaultInstance = ElasticContainerModel.KernelCapabilities(
            add: nil,
            drop: nil)

        return defaultInstance
    }()
}

public extension KeyValuePair {
    /**
     Default instance of the KeyValuePair structure.
     */
    static let __default: ElasticContainerModel.KeyValuePair = {
        let defaultInstance = ElasticContainerModel.KeyValuePair(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension LimitExceededException {
    /**
     Default instance of the LimitExceededException structure.
     */
    static let __default: ElasticContainerModel.LimitExceededException = {
        let defaultInstance = ElasticContainerModel.LimitExceededException()

        return defaultInstance
    }()
}

public extension LinuxParameters {
    /**
     Default instance of the LinuxParameters structure.
     */
    static let __default: ElasticContainerModel.LinuxParameters = {
        let defaultInstance = ElasticContainerModel.LinuxParameters(
            capabilities: nil,
            devices: nil,
            initProcessEnabled: nil,
            maxSwap: nil,
            sharedMemorySize: nil,
            swappiness: nil,
            tmpfs: nil)

        return defaultInstance
    }()
}

public extension ListAccountSettingsRequest {
    /**
     Default instance of the ListAccountSettingsRequest structure.
     */
    static let __default: ElasticContainerModel.ListAccountSettingsRequest = {
        let defaultInstance = ElasticContainerModel.ListAccountSettingsRequest(
            effectiveSettings: nil,
            maxResults: nil,
            name: nil,
            nextToken: nil,
            principalArn: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension ListAccountSettingsResponse {
    /**
     Default instance of the ListAccountSettingsResponse structure.
     */
    static let __default: ElasticContainerModel.ListAccountSettingsResponse = {
        let defaultInstance = ElasticContainerModel.ListAccountSettingsResponse(
            nextToken: nil,
            settings: nil)

        return defaultInstance
    }()
}

public extension ListAttributesRequest {
    /**
     Default instance of the ListAttributesRequest structure.
     */
    static let __default: ElasticContainerModel.ListAttributesRequest = {
        let defaultInstance = ElasticContainerModel.ListAttributesRequest(
            attributeName: nil,
            attributeValue: nil,
            cluster: nil,
            maxResults: nil,
            nextToken: nil,
            targetType: .__default)

        return defaultInstance
    }()
}

public extension ListAttributesResponse {
    /**
     Default instance of the ListAttributesResponse structure.
     */
    static let __default: ElasticContainerModel.ListAttributesResponse = {
        let defaultInstance = ElasticContainerModel.ListAttributesResponse(
            attributes: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListClustersRequest {
    /**
     Default instance of the ListClustersRequest structure.
     */
    static let __default: ElasticContainerModel.ListClustersRequest = {
        let defaultInstance = ElasticContainerModel.ListClustersRequest(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListClustersResponse {
    /**
     Default instance of the ListClustersResponse structure.
     */
    static let __default: ElasticContainerModel.ListClustersResponse = {
        let defaultInstance = ElasticContainerModel.ListClustersResponse(
            clusterArns: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListContainerInstancesRequest {
    /**
     Default instance of the ListContainerInstancesRequest structure.
     */
    static let __default: ElasticContainerModel.ListContainerInstancesRequest = {
        let defaultInstance = ElasticContainerModel.ListContainerInstancesRequest(
            cluster: nil,
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListContainerInstancesResponse {
    /**
     Default instance of the ListContainerInstancesResponse structure.
     */
    static let __default: ElasticContainerModel.ListContainerInstancesResponse = {
        let defaultInstance = ElasticContainerModel.ListContainerInstancesResponse(
            containerInstanceArns: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListServicesRequest {
    /**
     Default instance of the ListServicesRequest structure.
     */
    static let __default: ElasticContainerModel.ListServicesRequest = {
        let defaultInstance = ElasticContainerModel.ListServicesRequest(
            cluster: nil,
            launchType: nil,
            maxResults: nil,
            nextToken: nil,
            schedulingStrategy: nil)

        return defaultInstance
    }()
}

public extension ListServicesResponse {
    /**
     Default instance of the ListServicesResponse structure.
     */
    static let __default: ElasticContainerModel.ListServicesResponse = {
        let defaultInstance = ElasticContainerModel.ListServicesResponse(
            nextToken: nil,
            serviceArns: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceRequest {
    /**
     Default instance of the ListTagsForResourceRequest structure.
     */
    static let __default: ElasticContainerModel.ListTagsForResourceRequest = {
        let defaultInstance = ElasticContainerModel.ListTagsForResourceRequest(
            resourceArn: "value")

        return defaultInstance
    }()
}

public extension ListTagsForResourceResponse {
    /**
     Default instance of the ListTagsForResourceResponse structure.
     */
    static let __default: ElasticContainerModel.ListTagsForResourceResponse = {
        let defaultInstance = ElasticContainerModel.ListTagsForResourceResponse(
            tags: nil)

        return defaultInstance
    }()
}

public extension ListTaskDefinitionFamiliesRequest {
    /**
     Default instance of the ListTaskDefinitionFamiliesRequest structure.
     */
    static let __default: ElasticContainerModel.ListTaskDefinitionFamiliesRequest = {
        let defaultInstance = ElasticContainerModel.ListTaskDefinitionFamiliesRequest(
            familyPrefix: nil,
            maxResults: nil,
            nextToken: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListTaskDefinitionFamiliesResponse {
    /**
     Default instance of the ListTaskDefinitionFamiliesResponse structure.
     */
    static let __default: ElasticContainerModel.ListTaskDefinitionFamiliesResponse = {
        let defaultInstance = ElasticContainerModel.ListTaskDefinitionFamiliesResponse(
            families: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListTaskDefinitionsRequest {
    /**
     Default instance of the ListTaskDefinitionsRequest structure.
     */
    static let __default: ElasticContainerModel.ListTaskDefinitionsRequest = {
        let defaultInstance = ElasticContainerModel.ListTaskDefinitionsRequest(
            familyPrefix: nil,
            maxResults: nil,
            nextToken: nil,
            sort: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension ListTaskDefinitionsResponse {
    /**
     Default instance of the ListTaskDefinitionsResponse structure.
     */
    static let __default: ElasticContainerModel.ListTaskDefinitionsResponse = {
        let defaultInstance = ElasticContainerModel.ListTaskDefinitionsResponse(
            nextToken: nil,
            taskDefinitionArns: nil)

        return defaultInstance
    }()
}

public extension ListTasksRequest {
    /**
     Default instance of the ListTasksRequest structure.
     */
    static let __default: ElasticContainerModel.ListTasksRequest = {
        let defaultInstance = ElasticContainerModel.ListTasksRequest(
            cluster: nil,
            containerInstance: nil,
            desiredStatus: nil,
            family: nil,
            launchType: nil,
            maxResults: nil,
            nextToken: nil,
            serviceName: nil,
            startedBy: nil)

        return defaultInstance
    }()
}

public extension ListTasksResponse {
    /**
     Default instance of the ListTasksResponse structure.
     */
    static let __default: ElasticContainerModel.ListTasksResponse = {
        let defaultInstance = ElasticContainerModel.ListTasksResponse(
            nextToken: nil,
            taskArns: nil)

        return defaultInstance
    }()
}

public extension LoadBalancer {
    /**
     Default instance of the LoadBalancer structure.
     */
    static let __default: ElasticContainerModel.LoadBalancer = {
        let defaultInstance = ElasticContainerModel.LoadBalancer(
            containerName: nil,
            containerPort: nil,
            loadBalancerName: nil,
            targetGroupArn: nil)

        return defaultInstance
    }()
}

public extension LogConfiguration {
    /**
     Default instance of the LogConfiguration structure.
     */
    static let __default: ElasticContainerModel.LogConfiguration = {
        let defaultInstance = ElasticContainerModel.LogConfiguration(
            logDriver: .__default,
            options: nil,
            secretOptions: nil)

        return defaultInstance
    }()
}

public extension ManagedScaling {
    /**
     Default instance of the ManagedScaling structure.
     */
    static let __default: ElasticContainerModel.ManagedScaling = {
        let defaultInstance = ElasticContainerModel.ManagedScaling(
            instanceWarmupPeriod: nil,
            maximumScalingStepSize: nil,
            minimumScalingStepSize: nil,
            status: nil,
            targetCapacity: nil)

        return defaultInstance
    }()
}

public extension MissingVersionException {
    /**
     Default instance of the MissingVersionException structure.
     */
    static let __default: ElasticContainerModel.MissingVersionException = {
        let defaultInstance = ElasticContainerModel.MissingVersionException()

        return defaultInstance
    }()
}

public extension MountPoint {
    /**
     Default instance of the MountPoint structure.
     */
    static let __default: ElasticContainerModel.MountPoint = {
        let defaultInstance = ElasticContainerModel.MountPoint(
            containerPath: nil,
            readOnly: nil,
            sourceVolume: nil)

        return defaultInstance
    }()
}

public extension NetworkBinding {
    /**
     Default instance of the NetworkBinding structure.
     */
    static let __default: ElasticContainerModel.NetworkBinding = {
        let defaultInstance = ElasticContainerModel.NetworkBinding(
            bindIP: nil,
            containerPort: nil,
            hostPort: nil,
            protocol: nil)

        return defaultInstance
    }()
}

public extension NetworkConfiguration {
    /**
     Default instance of the NetworkConfiguration structure.
     */
    static let __default: ElasticContainerModel.NetworkConfiguration = {
        let defaultInstance = ElasticContainerModel.NetworkConfiguration(
            awsvpcConfiguration: nil)

        return defaultInstance
    }()
}

public extension NetworkInterface {
    /**
     Default instance of the NetworkInterface structure.
     */
    static let __default: ElasticContainerModel.NetworkInterface = {
        let defaultInstance = ElasticContainerModel.NetworkInterface(
            attachmentId: nil,
            ipv6Address: nil,
            privateIpv4Address: nil)

        return defaultInstance
    }()
}

public extension NoUpdateAvailableException {
    /**
     Default instance of the NoUpdateAvailableException structure.
     */
    static let __default: ElasticContainerModel.NoUpdateAvailableException = {
        let defaultInstance = ElasticContainerModel.NoUpdateAvailableException()

        return defaultInstance
    }()
}

public extension PlacementConstraint {
    /**
     Default instance of the PlacementConstraint structure.
     */
    static let __default: ElasticContainerModel.PlacementConstraint = {
        let defaultInstance = ElasticContainerModel.PlacementConstraint(
            expression: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension PlacementStrategy {
    /**
     Default instance of the PlacementStrategy structure.
     */
    static let __default: ElasticContainerModel.PlacementStrategy = {
        let defaultInstance = ElasticContainerModel.PlacementStrategy(
            field: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension PlatformDevice {
    /**
     Default instance of the PlatformDevice structure.
     */
    static let __default: ElasticContainerModel.PlatformDevice = {
        let defaultInstance = ElasticContainerModel.PlatformDevice(
            id: "value",
            type: .__default)

        return defaultInstance
    }()
}

public extension PlatformTaskDefinitionIncompatibilityException {
    /**
     Default instance of the PlatformTaskDefinitionIncompatibilityException structure.
     */
    static let __default: ElasticContainerModel.PlatformTaskDefinitionIncompatibilityException = {
        let defaultInstance = ElasticContainerModel.PlatformTaskDefinitionIncompatibilityException()

        return defaultInstance
    }()
}

public extension PlatformUnknownException {
    /**
     Default instance of the PlatformUnknownException structure.
     */
    static let __default: ElasticContainerModel.PlatformUnknownException = {
        let defaultInstance = ElasticContainerModel.PlatformUnknownException()

        return defaultInstance
    }()
}

public extension PortMapping {
    /**
     Default instance of the PortMapping structure.
     */
    static let __default: ElasticContainerModel.PortMapping = {
        let defaultInstance = ElasticContainerModel.PortMapping(
            containerPort: nil,
            hostPort: nil,
            protocol: nil)

        return defaultInstance
    }()
}

public extension ProxyConfiguration {
    /**
     Default instance of the ProxyConfiguration structure.
     */
    static let __default: ElasticContainerModel.ProxyConfiguration = {
        let defaultInstance = ElasticContainerModel.ProxyConfiguration(
            containerName: "value",
            properties: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension PutAccountSettingDefaultRequest {
    /**
     Default instance of the PutAccountSettingDefaultRequest structure.
     */
    static let __default: ElasticContainerModel.PutAccountSettingDefaultRequest = {
        let defaultInstance = ElasticContainerModel.PutAccountSettingDefaultRequest(
            name: .__default,
            value: "value")

        return defaultInstance
    }()
}

public extension PutAccountSettingDefaultResponse {
    /**
     Default instance of the PutAccountSettingDefaultResponse structure.
     */
    static let __default: ElasticContainerModel.PutAccountSettingDefaultResponse = {
        let defaultInstance = ElasticContainerModel.PutAccountSettingDefaultResponse(
            setting: nil)

        return defaultInstance
    }()
}

public extension PutAccountSettingRequest {
    /**
     Default instance of the PutAccountSettingRequest structure.
     */
    static let __default: ElasticContainerModel.PutAccountSettingRequest = {
        let defaultInstance = ElasticContainerModel.PutAccountSettingRequest(
            name: .__default,
            principalArn: nil,
            value: "value")

        return defaultInstance
    }()
}

public extension PutAccountSettingResponse {
    /**
     Default instance of the PutAccountSettingResponse structure.
     */
    static let __default: ElasticContainerModel.PutAccountSettingResponse = {
        let defaultInstance = ElasticContainerModel.PutAccountSettingResponse(
            setting: nil)

        return defaultInstance
    }()
}

public extension PutAttributesRequest {
    /**
     Default instance of the PutAttributesRequest structure.
     */
    static let __default: ElasticContainerModel.PutAttributesRequest = {
        let defaultInstance = ElasticContainerModel.PutAttributesRequest(
            attributes: [],
            cluster: nil)

        return defaultInstance
    }()
}

public extension PutAttributesResponse {
    /**
     Default instance of the PutAttributesResponse structure.
     */
    static let __default: ElasticContainerModel.PutAttributesResponse = {
        let defaultInstance = ElasticContainerModel.PutAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension PutClusterCapacityProvidersRequest {
    /**
     Default instance of the PutClusterCapacityProvidersRequest structure.
     */
    static let __default: ElasticContainerModel.PutClusterCapacityProvidersRequest = {
        let defaultInstance = ElasticContainerModel.PutClusterCapacityProvidersRequest(
            capacityProviders: [],
            cluster: "value",
            defaultCapacityProviderStrategy: [])

        return defaultInstance
    }()
}

public extension PutClusterCapacityProvidersResponse {
    /**
     Default instance of the PutClusterCapacityProvidersResponse structure.
     */
    static let __default: ElasticContainerModel.PutClusterCapacityProvidersResponse = {
        let defaultInstance = ElasticContainerModel.PutClusterCapacityProvidersResponse(
            cluster: nil)

        return defaultInstance
    }()
}

public extension RegisterContainerInstanceRequest {
    /**
     Default instance of the RegisterContainerInstanceRequest structure.
     */
    static let __default: ElasticContainerModel.RegisterContainerInstanceRequest = {
        let defaultInstance = ElasticContainerModel.RegisterContainerInstanceRequest(
            attributes: nil,
            cluster: nil,
            containerInstanceArn: nil,
            instanceIdentityDocument: nil,
            instanceIdentityDocumentSignature: nil,
            platformDevices: nil,
            tags: nil,
            totalResources: nil,
            versionInfo: nil)

        return defaultInstance
    }()
}

public extension RegisterContainerInstanceResponse {
    /**
     Default instance of the RegisterContainerInstanceResponse structure.
     */
    static let __default: ElasticContainerModel.RegisterContainerInstanceResponse = {
        let defaultInstance = ElasticContainerModel.RegisterContainerInstanceResponse(
            containerInstance: nil)

        return defaultInstance
    }()
}

public extension RegisterTaskDefinitionRequest {
    /**
     Default instance of the RegisterTaskDefinitionRequest structure.
     */
    static let __default: ElasticContainerModel.RegisterTaskDefinitionRequest = {
        let defaultInstance = ElasticContainerModel.RegisterTaskDefinitionRequest(
            containerDefinitions: [],
            cpu: nil,
            executionRoleArn: nil,
            family: "value",
            inferenceAccelerators: nil,
            ipcMode: nil,
            memory: nil,
            networkMode: nil,
            pidMode: nil,
            placementConstraints: nil,
            proxyConfiguration: nil,
            requiresCompatibilities: nil,
            tags: nil,
            taskRoleArn: nil,
            volumes: nil)

        return defaultInstance
    }()
}

public extension RegisterTaskDefinitionResponse {
    /**
     Default instance of the RegisterTaskDefinitionResponse structure.
     */
    static let __default: ElasticContainerModel.RegisterTaskDefinitionResponse = {
        let defaultInstance = ElasticContainerModel.RegisterTaskDefinitionResponse(
            tags: nil,
            taskDefinition: nil)

        return defaultInstance
    }()
}

public extension RepositoryCredentials {
    /**
     Default instance of the RepositoryCredentials structure.
     */
    static let __default: ElasticContainerModel.RepositoryCredentials = {
        let defaultInstance = ElasticContainerModel.RepositoryCredentials(
            credentialsParameter: "value")

        return defaultInstance
    }()
}

public extension Resource {
    /**
     Default instance of the Resource structure.
     */
    static let __default: ElasticContainerModel.Resource = {
        let defaultInstance = ElasticContainerModel.Resource(
            doubleValue: nil,
            integerValue: nil,
            longValue: nil,
            name: nil,
            stringSetValue: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ResourceInUseException {
    /**
     Default instance of the ResourceInUseException structure.
     */
    static let __default: ElasticContainerModel.ResourceInUseException = {
        let defaultInstance = ElasticContainerModel.ResourceInUseException()

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: ElasticContainerModel.ResourceNotFoundException = {
        let defaultInstance = ElasticContainerModel.ResourceNotFoundException()

        return defaultInstance
    }()
}

public extension ResourceRequirement {
    /**
     Default instance of the ResourceRequirement structure.
     */
    static let __default: ElasticContainerModel.ResourceRequirement = {
        let defaultInstance = ElasticContainerModel.ResourceRequirement(
            type: .__default,
            value: "value")

        return defaultInstance
    }()
}

public extension RunTaskRequest {
    /**
     Default instance of the RunTaskRequest structure.
     */
    static let __default: ElasticContainerModel.RunTaskRequest = {
        let defaultInstance = ElasticContainerModel.RunTaskRequest(
            capacityProviderStrategy: nil,
            cluster: nil,
            count: nil,
            enableECSManagedTags: nil,
            group: nil,
            launchType: nil,
            networkConfiguration: nil,
            overrides: nil,
            placementConstraints: nil,
            placementStrategy: nil,
            platformVersion: nil,
            propagateTags: nil,
            referenceId: nil,
            startedBy: nil,
            tags: nil,
            taskDefinition: "value")

        return defaultInstance
    }()
}

public extension RunTaskResponse {
    /**
     Default instance of the RunTaskResponse structure.
     */
    static let __default: ElasticContainerModel.RunTaskResponse = {
        let defaultInstance = ElasticContainerModel.RunTaskResponse(
            failures: nil,
            tasks: nil)

        return defaultInstance
    }()
}

public extension Scale {
    /**
     Default instance of the Scale structure.
     */
    static let __default: ElasticContainerModel.Scale = {
        let defaultInstance = ElasticContainerModel.Scale(
            unit: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension Secret {
    /**
     Default instance of the Secret structure.
     */
    static let __default: ElasticContainerModel.Secret = {
        let defaultInstance = ElasticContainerModel.Secret(
            name: "value",
            valueFrom: "value")

        return defaultInstance
    }()
}

public extension ServerException {
    /**
     Default instance of the ServerException structure.
     */
    static let __default: ElasticContainerModel.ServerException = {
        let defaultInstance = ElasticContainerModel.ServerException(
            message: nil)

        return defaultInstance
    }()
}

public extension Service {
    /**
     Default instance of the Service structure.
     */
    static let __default: ElasticContainerModel.Service = {
        let defaultInstance = ElasticContainerModel.Service(
            capacityProviderStrategy: nil,
            clusterArn: nil,
            createdAt: nil,
            createdBy: nil,
            deploymentConfiguration: nil,
            deploymentController: nil,
            deployments: nil,
            desiredCount: nil,
            enableECSManagedTags: nil,
            events: nil,
            healthCheckGracePeriodSeconds: nil,
            launchType: nil,
            loadBalancers: nil,
            networkConfiguration: nil,
            pendingCount: nil,
            placementConstraints: nil,
            placementStrategy: nil,
            platformVersion: nil,
            propagateTags: nil,
            roleArn: nil,
            runningCount: nil,
            schedulingStrategy: nil,
            serviceArn: nil,
            serviceName: nil,
            serviceRegistries: nil,
            status: nil,
            tags: nil,
            taskDefinition: nil,
            taskSets: nil)

        return defaultInstance
    }()
}

public extension ServiceEvent {
    /**
     Default instance of the ServiceEvent structure.
     */
    static let __default: ElasticContainerModel.ServiceEvent = {
        let defaultInstance = ElasticContainerModel.ServiceEvent(
            createdAt: nil,
            id: nil,
            message: nil)

        return defaultInstance
    }()
}

public extension ServiceNotActiveException {
    /**
     Default instance of the ServiceNotActiveException structure.
     */
    static let __default: ElasticContainerModel.ServiceNotActiveException = {
        let defaultInstance = ElasticContainerModel.ServiceNotActiveException()

        return defaultInstance
    }()
}

public extension ServiceNotFoundException {
    /**
     Default instance of the ServiceNotFoundException structure.
     */
    static let __default: ElasticContainerModel.ServiceNotFoundException = {
        let defaultInstance = ElasticContainerModel.ServiceNotFoundException()

        return defaultInstance
    }()
}

public extension ServiceRegistry {
    /**
     Default instance of the ServiceRegistry structure.
     */
    static let __default: ElasticContainerModel.ServiceRegistry = {
        let defaultInstance = ElasticContainerModel.ServiceRegistry(
            containerName: nil,
            containerPort: nil,
            port: nil,
            registryArn: nil)

        return defaultInstance
    }()
}

public extension Setting {
    /**
     Default instance of the Setting structure.
     */
    static let __default: ElasticContainerModel.Setting = {
        let defaultInstance = ElasticContainerModel.Setting(
            name: nil,
            principalArn: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension StartTaskRequest {
    /**
     Default instance of the StartTaskRequest structure.
     */
    static let __default: ElasticContainerModel.StartTaskRequest = {
        let defaultInstance = ElasticContainerModel.StartTaskRequest(
            cluster: nil,
            containerInstances: [],
            enableECSManagedTags: nil,
            group: nil,
            networkConfiguration: nil,
            overrides: nil,
            propagateTags: nil,
            referenceId: nil,
            startedBy: nil,
            tags: nil,
            taskDefinition: "value")

        return defaultInstance
    }()
}

public extension StartTaskResponse {
    /**
     Default instance of the StartTaskResponse structure.
     */
    static let __default: ElasticContainerModel.StartTaskResponse = {
        let defaultInstance = ElasticContainerModel.StartTaskResponse(
            failures: nil,
            tasks: nil)

        return defaultInstance
    }()
}

public extension StopTaskRequest {
    /**
     Default instance of the StopTaskRequest structure.
     */
    static let __default: ElasticContainerModel.StopTaskRequest = {
        let defaultInstance = ElasticContainerModel.StopTaskRequest(
            cluster: nil,
            reason: nil,
            task: "value")

        return defaultInstance
    }()
}

public extension StopTaskResponse {
    /**
     Default instance of the StopTaskResponse structure.
     */
    static let __default: ElasticContainerModel.StopTaskResponse = {
        let defaultInstance = ElasticContainerModel.StopTaskResponse(
            task: nil)

        return defaultInstance
    }()
}

public extension SubmitAttachmentStateChangesRequest {
    /**
     Default instance of the SubmitAttachmentStateChangesRequest structure.
     */
    static let __default: ElasticContainerModel.SubmitAttachmentStateChangesRequest = {
        let defaultInstance = ElasticContainerModel.SubmitAttachmentStateChangesRequest(
            attachments: [],
            cluster: nil)

        return defaultInstance
    }()
}

public extension SubmitAttachmentStateChangesResponse {
    /**
     Default instance of the SubmitAttachmentStateChangesResponse structure.
     */
    static let __default: ElasticContainerModel.SubmitAttachmentStateChangesResponse = {
        let defaultInstance = ElasticContainerModel.SubmitAttachmentStateChangesResponse(
            acknowledgment: nil)

        return defaultInstance
    }()
}

public extension SubmitContainerStateChangeRequest {
    /**
     Default instance of the SubmitContainerStateChangeRequest structure.
     */
    static let __default: ElasticContainerModel.SubmitContainerStateChangeRequest = {
        let defaultInstance = ElasticContainerModel.SubmitContainerStateChangeRequest(
            cluster: nil,
            containerName: nil,
            exitCode: nil,
            networkBindings: nil,
            reason: nil,
            runtimeId: nil,
            status: nil,
            task: nil)

        return defaultInstance
    }()
}

public extension SubmitContainerStateChangeResponse {
    /**
     Default instance of the SubmitContainerStateChangeResponse structure.
     */
    static let __default: ElasticContainerModel.SubmitContainerStateChangeResponse = {
        let defaultInstance = ElasticContainerModel.SubmitContainerStateChangeResponse(
            acknowledgment: nil)

        return defaultInstance
    }()
}

public extension SubmitTaskStateChangeRequest {
    /**
     Default instance of the SubmitTaskStateChangeRequest structure.
     */
    static let __default: ElasticContainerModel.SubmitTaskStateChangeRequest = {
        let defaultInstance = ElasticContainerModel.SubmitTaskStateChangeRequest(
            attachments: nil,
            cluster: nil,
            containers: nil,
            executionStoppedAt: nil,
            pullStartedAt: nil,
            pullStoppedAt: nil,
            reason: nil,
            status: nil,
            task: nil)

        return defaultInstance
    }()
}

public extension SubmitTaskStateChangeResponse {
    /**
     Default instance of the SubmitTaskStateChangeResponse structure.
     */
    static let __default: ElasticContainerModel.SubmitTaskStateChangeResponse = {
        let defaultInstance = ElasticContainerModel.SubmitTaskStateChangeResponse(
            acknowledgment: nil)

        return defaultInstance
    }()
}

public extension SystemControl {
    /**
     Default instance of the SystemControl structure.
     */
    static let __default: ElasticContainerModel.SystemControl = {
        let defaultInstance = ElasticContainerModel.SystemControl(
            namespace: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: ElasticContainerModel.Tag = {
        let defaultInstance = ElasticContainerModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagResourceRequest {
    /**
     Default instance of the TagResourceRequest structure.
     */
    static let __default: ElasticContainerModel.TagResourceRequest = {
        let defaultInstance = ElasticContainerModel.TagResourceRequest(
            resourceArn: "value",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceResponse {
    /**
     Default instance of the TagResourceResponse structure.
     */
    static let __default: ElasticContainerModel.TagResourceResponse = {
        let defaultInstance = ElasticContainerModel.TagResourceResponse()

        return defaultInstance
    }()
}

public extension TargetNotFoundException {
    /**
     Default instance of the TargetNotFoundException structure.
     */
    static let __default: ElasticContainerModel.TargetNotFoundException = {
        let defaultInstance = ElasticContainerModel.TargetNotFoundException()

        return defaultInstance
    }()
}

public extension Task {
    /**
     Default instance of the Task structure.
     */
    static let __default: ElasticContainerModel.Task = {
        let defaultInstance = ElasticContainerModel.Task(
            attachments: nil,
            attributes: nil,
            availabilityZone: nil,
            capacityProviderName: nil,
            clusterArn: nil,
            connectivity: nil,
            connectivityAt: nil,
            containerInstanceArn: nil,
            containers: nil,
            cpu: nil,
            createdAt: nil,
            desiredStatus: nil,
            executionStoppedAt: nil,
            group: nil,
            healthStatus: nil,
            inferenceAccelerators: nil,
            lastStatus: nil,
            launchType: nil,
            memory: nil,
            overrides: nil,
            platformVersion: nil,
            pullStartedAt: nil,
            pullStoppedAt: nil,
            startedAt: nil,
            startedBy: nil,
            stopCode: nil,
            stoppedAt: nil,
            stoppedReason: nil,
            stoppingAt: nil,
            tags: nil,
            taskArn: nil,
            taskDefinitionArn: nil,
            version: nil)

        return defaultInstance
    }()
}

public extension TaskDefinition {
    /**
     Default instance of the TaskDefinition structure.
     */
    static let __default: ElasticContainerModel.TaskDefinition = {
        let defaultInstance = ElasticContainerModel.TaskDefinition(
            compatibilities: nil,
            containerDefinitions: nil,
            cpu: nil,
            executionRoleArn: nil,
            family: nil,
            inferenceAccelerators: nil,
            ipcMode: nil,
            memory: nil,
            networkMode: nil,
            pidMode: nil,
            placementConstraints: nil,
            proxyConfiguration: nil,
            requiresAttributes: nil,
            requiresCompatibilities: nil,
            revision: nil,
            status: nil,
            taskDefinitionArn: nil,
            taskRoleArn: nil,
            volumes: nil)

        return defaultInstance
    }()
}

public extension TaskDefinitionPlacementConstraint {
    /**
     Default instance of the TaskDefinitionPlacementConstraint structure.
     */
    static let __default: ElasticContainerModel.TaskDefinitionPlacementConstraint = {
        let defaultInstance = ElasticContainerModel.TaskDefinitionPlacementConstraint(
            expression: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension TaskOverride {
    /**
     Default instance of the TaskOverride structure.
     */
    static let __default: ElasticContainerModel.TaskOverride = {
        let defaultInstance = ElasticContainerModel.TaskOverride(
            containerOverrides: nil,
            cpu: nil,
            executionRoleArn: nil,
            inferenceAcceleratorOverrides: nil,
            memory: nil,
            taskRoleArn: nil)

        return defaultInstance
    }()
}

public extension TaskSet {
    /**
     Default instance of the TaskSet structure.
     */
    static let __default: ElasticContainerModel.TaskSet = {
        let defaultInstance = ElasticContainerModel.TaskSet(
            capacityProviderStrategy: nil,
            clusterArn: nil,
            computedDesiredCount: nil,
            createdAt: nil,
            externalId: nil,
            id: nil,
            launchType: nil,
            loadBalancers: nil,
            networkConfiguration: nil,
            pendingCount: nil,
            platformVersion: nil,
            runningCount: nil,
            scale: nil,
            serviceArn: nil,
            serviceRegistries: nil,
            stabilityStatus: nil,
            stabilityStatusAt: nil,
            startedBy: nil,
            status: nil,
            tags: nil,
            taskDefinition: nil,
            taskSetArn: nil,
            updatedAt: nil)

        return defaultInstance
    }()
}

public extension TaskSetNotFoundException {
    /**
     Default instance of the TaskSetNotFoundException structure.
     */
    static let __default: ElasticContainerModel.TaskSetNotFoundException = {
        let defaultInstance = ElasticContainerModel.TaskSetNotFoundException()

        return defaultInstance
    }()
}

public extension Tmpfs {
    /**
     Default instance of the Tmpfs structure.
     */
    static let __default: ElasticContainerModel.Tmpfs = {
        let defaultInstance = ElasticContainerModel.Tmpfs(
            containerPath: "value",
            mountOptions: nil,
            size: 0)

        return defaultInstance
    }()
}

public extension Ulimit {
    /**
     Default instance of the Ulimit structure.
     */
    static let __default: ElasticContainerModel.Ulimit = {
        let defaultInstance = ElasticContainerModel.Ulimit(
            hardLimit: 0,
            name: .__default,
            softLimit: 0)

        return defaultInstance
    }()
}

public extension UnsupportedFeatureException {
    /**
     Default instance of the UnsupportedFeatureException structure.
     */
    static let __default: ElasticContainerModel.UnsupportedFeatureException = {
        let defaultInstance = ElasticContainerModel.UnsupportedFeatureException()

        return defaultInstance
    }()
}

public extension UntagResourceRequest {
    /**
     Default instance of the UntagResourceRequest structure.
     */
    static let __default: ElasticContainerModel.UntagResourceRequest = {
        let defaultInstance = ElasticContainerModel.UntagResourceRequest(
            resourceArn: "value",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceResponse {
    /**
     Default instance of the UntagResourceResponse structure.
     */
    static let __default: ElasticContainerModel.UntagResourceResponse = {
        let defaultInstance = ElasticContainerModel.UntagResourceResponse()

        return defaultInstance
    }()
}

public extension UpdateCapacityProviderRequest {
    /**
     Default instance of the UpdateCapacityProviderRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateCapacityProviderRequest = {
        let defaultInstance = ElasticContainerModel.UpdateCapacityProviderRequest(
            autoScalingGroupProvider: AutoScalingGroupProviderUpdate.__default,
            name: "value")

        return defaultInstance
    }()
}

public extension UpdateCapacityProviderResponse {
    /**
     Default instance of the UpdateCapacityProviderResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateCapacityProviderResponse = {
        let defaultInstance = ElasticContainerModel.UpdateCapacityProviderResponse(
            capacityProvider: nil)

        return defaultInstance
    }()
}

public extension UpdateClusterSettingsRequest {
    /**
     Default instance of the UpdateClusterSettingsRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateClusterSettingsRequest = {
        let defaultInstance = ElasticContainerModel.UpdateClusterSettingsRequest(
            cluster: "value",
            settings: [])

        return defaultInstance
    }()
}

public extension UpdateClusterSettingsResponse {
    /**
     Default instance of the UpdateClusterSettingsResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateClusterSettingsResponse = {
        let defaultInstance = ElasticContainerModel.UpdateClusterSettingsResponse(
            cluster: nil)

        return defaultInstance
    }()
}

public extension UpdateContainerAgentRequest {
    /**
     Default instance of the UpdateContainerAgentRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateContainerAgentRequest = {
        let defaultInstance = ElasticContainerModel.UpdateContainerAgentRequest(
            cluster: nil,
            containerInstance: "value")

        return defaultInstance
    }()
}

public extension UpdateContainerAgentResponse {
    /**
     Default instance of the UpdateContainerAgentResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateContainerAgentResponse = {
        let defaultInstance = ElasticContainerModel.UpdateContainerAgentResponse(
            containerInstance: nil)

        return defaultInstance
    }()
}

public extension UpdateContainerInstancesStateRequest {
    /**
     Default instance of the UpdateContainerInstancesStateRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateContainerInstancesStateRequest = {
        let defaultInstance = ElasticContainerModel.UpdateContainerInstancesStateRequest(
            cluster: nil,
            containerInstances: [],
            status: .__default)

        return defaultInstance
    }()
}

public extension UpdateContainerInstancesStateResponse {
    /**
     Default instance of the UpdateContainerInstancesStateResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateContainerInstancesStateResponse = {
        let defaultInstance = ElasticContainerModel.UpdateContainerInstancesStateResponse(
            containerInstances: nil,
            failures: nil)

        return defaultInstance
    }()
}

public extension UpdateInProgressException {
    /**
     Default instance of the UpdateInProgressException structure.
     */
    static let __default: ElasticContainerModel.UpdateInProgressException = {
        let defaultInstance = ElasticContainerModel.UpdateInProgressException()

        return defaultInstance
    }()
}

public extension UpdateServicePrimaryTaskSetRequest {
    /**
     Default instance of the UpdateServicePrimaryTaskSetRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest = {
        let defaultInstance = ElasticContainerModel.UpdateServicePrimaryTaskSetRequest(
            cluster: "value",
            primaryTaskSet: "value",
            service: "value")

        return defaultInstance
    }()
}

public extension UpdateServicePrimaryTaskSetResponse {
    /**
     Default instance of the UpdateServicePrimaryTaskSetResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateServicePrimaryTaskSetResponse = {
        let defaultInstance = ElasticContainerModel.UpdateServicePrimaryTaskSetResponse(
            taskSet: nil)

        return defaultInstance
    }()
}

public extension UpdateServiceRequest {
    /**
     Default instance of the UpdateServiceRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateServiceRequest = {
        let defaultInstance = ElasticContainerModel.UpdateServiceRequest(
            capacityProviderStrategy: nil,
            cluster: nil,
            deploymentConfiguration: nil,
            desiredCount: nil,
            forceNewDeployment: nil,
            healthCheckGracePeriodSeconds: nil,
            networkConfiguration: nil,
            placementConstraints: nil,
            placementStrategy: nil,
            platformVersion: nil,
            service: "value",
            taskDefinition: nil)

        return defaultInstance
    }()
}

public extension UpdateServiceResponse {
    /**
     Default instance of the UpdateServiceResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateServiceResponse = {
        let defaultInstance = ElasticContainerModel.UpdateServiceResponse(
            service: nil)

        return defaultInstance
    }()
}

public extension UpdateTaskSetRequest {
    /**
     Default instance of the UpdateTaskSetRequest structure.
     */
    static let __default: ElasticContainerModel.UpdateTaskSetRequest = {
        let defaultInstance = ElasticContainerModel.UpdateTaskSetRequest(
            cluster: "value",
            scale: Scale.__default,
            service: "value",
            taskSet: "value")

        return defaultInstance
    }()
}

public extension UpdateTaskSetResponse {
    /**
     Default instance of the UpdateTaskSetResponse structure.
     */
    static let __default: ElasticContainerModel.UpdateTaskSetResponse = {
        let defaultInstance = ElasticContainerModel.UpdateTaskSetResponse(
            taskSet: nil)

        return defaultInstance
    }()
}

public extension VersionInfo {
    /**
     Default instance of the VersionInfo structure.
     */
    static let __default: ElasticContainerModel.VersionInfo = {
        let defaultInstance = ElasticContainerModel.VersionInfo(
            agentHash: nil,
            agentVersion: nil,
            dockerVersion: nil)

        return defaultInstance
    }()
}

public extension Volume {
    /**
     Default instance of the Volume structure.
     */
    static let __default: ElasticContainerModel.Volume = {
        let defaultInstance = ElasticContainerModel.Volume(
            dockerVolumeConfiguration: nil,
            efsVolumeConfiguration: nil,
            fsxWindowsFileServerVolumeConfiguration: nil,
            host: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension VolumeFrom {
    /**
     Default instance of the VolumeFrom structure.
     */
    static let __default: ElasticContainerModel.VolumeFrom = {
        let defaultInstance = ElasticContainerModel.VolumeFrom(
            readOnly: nil,
            sourceContainer: nil)

        return defaultInstance
    }()
}
