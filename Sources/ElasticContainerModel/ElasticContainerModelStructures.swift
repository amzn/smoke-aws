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
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// ElasticContainerModelStructures.swift
// ElasticContainerModel
//

import Foundation

public struct AccessDeniedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Attachment: Codable, Equatable {
    public var details: AttachmentDetails?
    public var id: String?
    public var status: String?
    public var type: String?

    public init(details: AttachmentDetails? = nil,
                id: String? = nil,
                status: String? = nil,
                type: String? = nil) {
        self.details = details
        self.id = id
        self.status = status
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case details
        case id
        case status
        case type
    }

    public func validate() throws {
    }
}

public struct AttachmentStateChange: Codable, Equatable {
    public var attachmentArn: String
    public var status: String

    public init(attachmentArn: String,
                status: String) {
        self.attachmentArn = attachmentArn
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case attachmentArn
        case status
    }

    public func validate() throws {
    }
}

public struct Attribute: Codable, Equatable {
    public var name: String
    public var targetId: String?
    public var targetType: TargetType?
    public var value: String?

    public init(name: String,
                targetId: String? = nil,
                targetType: TargetType? = nil,
                value: String? = nil) {
        self.name = name
        self.targetId = targetId
        self.targetType = targetType
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case targetId
        case targetType
        case value
    }

    public func validate() throws {
    }
}

public struct AttributeLimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AutoScalingGroupProvider: Codable, Equatable {
    public var autoScalingGroupArn: String
    public var managedScaling: ManagedScaling?
    public var managedTerminationProtection: ManagedTerminationProtection?

    public init(autoScalingGroupArn: String,
                managedScaling: ManagedScaling? = nil,
                managedTerminationProtection: ManagedTerminationProtection? = nil) {
        self.autoScalingGroupArn = autoScalingGroupArn
        self.managedScaling = managedScaling
        self.managedTerminationProtection = managedTerminationProtection
    }

    enum CodingKeys: String, CodingKey {
        case autoScalingGroupArn
        case managedScaling
        case managedTerminationProtection
    }

    public func validate() throws {
        try managedScaling?.validate()
    }
}

public struct AutoScalingGroupProviderUpdate: Codable, Equatable {
    public var managedScaling: ManagedScaling?
    public var managedTerminationProtection: ManagedTerminationProtection?

    public init(managedScaling: ManagedScaling? = nil,
                managedTerminationProtection: ManagedTerminationProtection? = nil) {
        self.managedScaling = managedScaling
        self.managedTerminationProtection = managedTerminationProtection
    }

    enum CodingKeys: String, CodingKey {
        case managedScaling
        case managedTerminationProtection
    }

    public func validate() throws {
        try managedScaling?.validate()
    }
}

public struct AwsVpcConfiguration: Codable, Equatable {
    public var assignPublicIp: AssignPublicIp?
    public var securityGroups: StringList?
    public var subnets: StringList

    public init(assignPublicIp: AssignPublicIp? = nil,
                securityGroups: StringList? = nil,
                subnets: StringList) {
        self.assignPublicIp = assignPublicIp
        self.securityGroups = securityGroups
        self.subnets = subnets
    }

    enum CodingKeys: String, CodingKey {
        case assignPublicIp
        case securityGroups
        case subnets
    }

    public func validate() throws {
    }
}

public struct BlockedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CapacityProvider: Codable, Equatable {
    public var autoScalingGroupProvider: AutoScalingGroupProvider?
    public var capacityProviderArn: String?
    public var name: String?
    public var status: CapacityProviderStatus?
    public var tags: Tags?
    public var updateStatus: CapacityProviderUpdateStatus?
    public var updateStatusReason: String?

    public init(autoScalingGroupProvider: AutoScalingGroupProvider? = nil,
                capacityProviderArn: String? = nil,
                name: String? = nil,
                status: CapacityProviderStatus? = nil,
                tags: Tags? = nil,
                updateStatus: CapacityProviderUpdateStatus? = nil,
                updateStatusReason: String? = nil) {
        self.autoScalingGroupProvider = autoScalingGroupProvider
        self.capacityProviderArn = capacityProviderArn
        self.name = name
        self.status = status
        self.tags = tags
        self.updateStatus = updateStatus
        self.updateStatusReason = updateStatusReason
    }

    enum CodingKeys: String, CodingKey {
        case autoScalingGroupProvider
        case capacityProviderArn
        case name
        case status
        case tags
        case updateStatus
        case updateStatusReason
    }

    public func validate() throws {
        try autoScalingGroupProvider?.validate()
        try tags?.validateAsTags()
    }
}

public struct CapacityProviderStrategyItem: Codable, Equatable {
    public var base: CapacityProviderStrategyItemBase?
    public var capacityProvider: String
    public var weight: CapacityProviderStrategyItemWeight?

    public init(base: CapacityProviderStrategyItemBase? = nil,
                capacityProvider: String,
                weight: CapacityProviderStrategyItemWeight? = nil) {
        self.base = base
        self.capacityProvider = capacityProvider
        self.weight = weight
    }

    enum CodingKeys: String, CodingKey {
        case base
        case capacityProvider
        case weight
    }

    public func validate() throws {
        try base?.validateAsCapacityProviderStrategyItemBase()
        try weight?.validateAsCapacityProviderStrategyItemWeight()
    }
}

public struct ClientException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Cluster: Codable, Equatable {
    public var activeServicesCount: Integer?
    public var attachments: Attachments?
    public var attachmentsStatus: String?
    public var capacityProviders: StringList?
    public var clusterArn: String?
    public var clusterName: String?
    public var configuration: ClusterConfiguration?
    public var defaultCapacityProviderStrategy: CapacityProviderStrategy?
    public var pendingTasksCount: Integer?
    public var registeredContainerInstancesCount: Integer?
    public var runningTasksCount: Integer?
    public var settings: ClusterSettings?
    public var statistics: Statistics?
    public var status: String?
    public var tags: Tags?

    public init(activeServicesCount: Integer? = nil,
                attachments: Attachments? = nil,
                attachmentsStatus: String? = nil,
                capacityProviders: StringList? = nil,
                clusterArn: String? = nil,
                clusterName: String? = nil,
                configuration: ClusterConfiguration? = nil,
                defaultCapacityProviderStrategy: CapacityProviderStrategy? = nil,
                pendingTasksCount: Integer? = nil,
                registeredContainerInstancesCount: Integer? = nil,
                runningTasksCount: Integer? = nil,
                settings: ClusterSettings? = nil,
                statistics: Statistics? = nil,
                status: String? = nil,
                tags: Tags? = nil) {
        self.activeServicesCount = activeServicesCount
        self.attachments = attachments
        self.attachmentsStatus = attachmentsStatus
        self.capacityProviders = capacityProviders
        self.clusterArn = clusterArn
        self.clusterName = clusterName
        self.configuration = configuration
        self.defaultCapacityProviderStrategy = defaultCapacityProviderStrategy
        self.pendingTasksCount = pendingTasksCount
        self.registeredContainerInstancesCount = registeredContainerInstancesCount
        self.runningTasksCount = runningTasksCount
        self.settings = settings
        self.statistics = statistics
        self.status = status
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case activeServicesCount
        case attachments
        case attachmentsStatus
        case capacityProviders
        case clusterArn
        case clusterName
        case configuration
        case defaultCapacityProviderStrategy
        case pendingTasksCount
        case registeredContainerInstancesCount
        case runningTasksCount
        case settings
        case statistics
        case status
        case tags
    }

    public func validate() throws {
        try configuration?.validate()
        try tags?.validateAsTags()
    }
}

public struct ClusterConfiguration: Codable, Equatable {
    public var executeCommandConfiguration: ExecuteCommandConfiguration?

    public init(executeCommandConfiguration: ExecuteCommandConfiguration? = nil) {
        self.executeCommandConfiguration = executeCommandConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case executeCommandConfiguration
    }

    public func validate() throws {
        try executeCommandConfiguration?.validate()
    }
}

public struct ClusterContainsContainerInstancesException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterContainsServicesException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterContainsTasksException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ClusterSetting: Codable, Equatable {
    public var name: ClusterSettingName?
    public var value: String?

    public init(name: ClusterSettingName? = nil,
                value: String? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
    }
}

public struct Container: Codable, Equatable {
    public var containerArn: String?
    public var cpu: String?
    public var exitCode: BoxedInteger?
    public var gpuIds: GpuIds?
    public var healthStatus: HealthStatus?
    public var image: String?
    public var imageDigest: String?
    public var lastStatus: String?
    public var managedAgents: ManagedAgents?
    public var memory: String?
    public var memoryReservation: String?
    public var name: String?
    public var networkBindings: NetworkBindings?
    public var networkInterfaces: NetworkInterfaces?
    public var reason: String?
    public var runtimeId: String?
    public var taskArn: String?

    public init(containerArn: String? = nil,
                cpu: String? = nil,
                exitCode: BoxedInteger? = nil,
                gpuIds: GpuIds? = nil,
                healthStatus: HealthStatus? = nil,
                image: String? = nil,
                imageDigest: String? = nil,
                lastStatus: String? = nil,
                managedAgents: ManagedAgents? = nil,
                memory: String? = nil,
                memoryReservation: String? = nil,
                name: String? = nil,
                networkBindings: NetworkBindings? = nil,
                networkInterfaces: NetworkInterfaces? = nil,
                reason: String? = nil,
                runtimeId: String? = nil,
                taskArn: String? = nil) {
        self.containerArn = containerArn
        self.cpu = cpu
        self.exitCode = exitCode
        self.gpuIds = gpuIds
        self.healthStatus = healthStatus
        self.image = image
        self.imageDigest = imageDigest
        self.lastStatus = lastStatus
        self.managedAgents = managedAgents
        self.memory = memory
        self.memoryReservation = memoryReservation
        self.name = name
        self.networkBindings = networkBindings
        self.networkInterfaces = networkInterfaces
        self.reason = reason
        self.runtimeId = runtimeId
        self.taskArn = taskArn
    }

    enum CodingKeys: String, CodingKey {
        case containerArn
        case cpu
        case exitCode
        case gpuIds
        case healthStatus
        case image
        case imageDigest
        case lastStatus
        case managedAgents
        case memory
        case memoryReservation
        case name
        case networkBindings
        case networkInterfaces
        case reason
        case runtimeId
        case taskArn
    }

    public func validate() throws {
    }
}

public struct ContainerDefinition: Codable, Equatable {
    public var command: StringList?
    public var cpu: Integer?
    public var dependsOn: ContainerDependencies?
    public var disableNetworking: BoxedBoolean?
    public var dnsSearchDomains: StringList?
    public var dnsServers: StringList?
    public var dockerLabels: DockerLabelsMap?
    public var dockerSecurityOptions: StringList?
    public var entryPoint: StringList?
    public var environment: EnvironmentVariables?
    public var environmentFiles: EnvironmentFiles?
    public var essential: BoxedBoolean?
    public var extraHosts: HostEntryList?
    public var firelensConfiguration: FirelensConfiguration?
    public var healthCheck: HealthCheck?
    public var hostname: String?
    public var image: String?
    public var interactive: BoxedBoolean?
    public var links: StringList?
    public var linuxParameters: LinuxParameters?
    public var logConfiguration: LogConfiguration?
    public var memory: BoxedInteger?
    public var memoryReservation: BoxedInteger?
    public var mountPoints: MountPointList?
    public var name: String?
    public var portMappings: PortMappingList?
    public var privileged: BoxedBoolean?
    public var pseudoTerminal: BoxedBoolean?
    public var readonlyRootFilesystem: BoxedBoolean?
    public var repositoryCredentials: RepositoryCredentials?
    public var resourceRequirements: ResourceRequirements?
    public var secrets: SecretList?
    public var startTimeout: BoxedInteger?
    public var stopTimeout: BoxedInteger?
    public var systemControls: SystemControls?
    public var ulimits: UlimitList?
    public var user: String?
    public var volumesFrom: VolumeFromList?
    public var workingDirectory: String?

    public init(command: StringList? = nil,
                cpu: Integer? = nil,
                dependsOn: ContainerDependencies? = nil,
                disableNetworking: BoxedBoolean? = nil,
                dnsSearchDomains: StringList? = nil,
                dnsServers: StringList? = nil,
                dockerLabels: DockerLabelsMap? = nil,
                dockerSecurityOptions: StringList? = nil,
                entryPoint: StringList? = nil,
                environment: EnvironmentVariables? = nil,
                environmentFiles: EnvironmentFiles? = nil,
                essential: BoxedBoolean? = nil,
                extraHosts: HostEntryList? = nil,
                firelensConfiguration: FirelensConfiguration? = nil,
                healthCheck: HealthCheck? = nil,
                hostname: String? = nil,
                image: String? = nil,
                interactive: BoxedBoolean? = nil,
                links: StringList? = nil,
                linuxParameters: LinuxParameters? = nil,
                logConfiguration: LogConfiguration? = nil,
                memory: BoxedInteger? = nil,
                memoryReservation: BoxedInteger? = nil,
                mountPoints: MountPointList? = nil,
                name: String? = nil,
                portMappings: PortMappingList? = nil,
                privileged: BoxedBoolean? = nil,
                pseudoTerminal: BoxedBoolean? = nil,
                readonlyRootFilesystem: BoxedBoolean? = nil,
                repositoryCredentials: RepositoryCredentials? = nil,
                resourceRequirements: ResourceRequirements? = nil,
                secrets: SecretList? = nil,
                startTimeout: BoxedInteger? = nil,
                stopTimeout: BoxedInteger? = nil,
                systemControls: SystemControls? = nil,
                ulimits: UlimitList? = nil,
                user: String? = nil,
                volumesFrom: VolumeFromList? = nil,
                workingDirectory: String? = nil) {
        self.command = command
        self.cpu = cpu
        self.dependsOn = dependsOn
        self.disableNetworking = disableNetworking
        self.dnsSearchDomains = dnsSearchDomains
        self.dnsServers = dnsServers
        self.dockerLabels = dockerLabels
        self.dockerSecurityOptions = dockerSecurityOptions
        self.entryPoint = entryPoint
        self.environment = environment
        self.environmentFiles = environmentFiles
        self.essential = essential
        self.extraHosts = extraHosts
        self.firelensConfiguration = firelensConfiguration
        self.healthCheck = healthCheck
        self.hostname = hostname
        self.image = image
        self.interactive = interactive
        self.links = links
        self.linuxParameters = linuxParameters
        self.logConfiguration = logConfiguration
        self.memory = memory
        self.memoryReservation = memoryReservation
        self.mountPoints = mountPoints
        self.name = name
        self.portMappings = portMappings
        self.privileged = privileged
        self.pseudoTerminal = pseudoTerminal
        self.readonlyRootFilesystem = readonlyRootFilesystem
        self.repositoryCredentials = repositoryCredentials
        self.resourceRequirements = resourceRequirements
        self.secrets = secrets
        self.startTimeout = startTimeout
        self.stopTimeout = stopTimeout
        self.systemControls = systemControls
        self.ulimits = ulimits
        self.user = user
        self.volumesFrom = volumesFrom
        self.workingDirectory = workingDirectory
    }

    enum CodingKeys: String, CodingKey {
        case command
        case cpu
        case dependsOn
        case disableNetworking
        case dnsSearchDomains
        case dnsServers
        case dockerLabels
        case dockerSecurityOptions
        case entryPoint
        case environment
        case environmentFiles
        case essential
        case extraHosts
        case firelensConfiguration
        case healthCheck
        case hostname
        case image
        case interactive
        case links
        case linuxParameters
        case logConfiguration
        case memory
        case memoryReservation
        case mountPoints
        case name
        case portMappings
        case privileged
        case pseudoTerminal
        case readonlyRootFilesystem
        case repositoryCredentials
        case resourceRequirements
        case secrets
        case startTimeout
        case stopTimeout
        case systemControls
        case ulimits
        case user
        case volumesFrom
        case workingDirectory
    }

    public func validate() throws {
        try firelensConfiguration?.validate()
        try healthCheck?.validate()
        try linuxParameters?.validate()
        try logConfiguration?.validate()
        try repositoryCredentials?.validate()
    }
}

public struct ContainerDependency: Codable, Equatable {
    public var condition: ContainerCondition
    public var containerName: String

    public init(condition: ContainerCondition,
                containerName: String) {
        self.condition = condition
        self.containerName = containerName
    }

    enum CodingKeys: String, CodingKey {
        case condition
        case containerName
    }

    public func validate() throws {
    }
}

public struct ContainerInstance: Codable, Equatable {
    public var agentConnected: Boolean?
    public var agentUpdateStatus: AgentUpdateStatus?
    public var attachments: Attachments?
    public var attributes: Attributes?
    public var capacityProviderName: String?
    public var containerInstanceArn: String?
    public var ec2InstanceId: String?
    public var healthStatus: ContainerInstanceHealthStatus?
    public var pendingTasksCount: Integer?
    public var registeredAt: Timestamp?
    public var registeredResources: Resources?
    public var remainingResources: Resources?
    public var runningTasksCount: Integer?
    public var status: String?
    public var statusReason: String?
    public var tags: Tags?
    public var version: Long?
    public var versionInfo: VersionInfo?

    public init(agentConnected: Boolean? = nil,
                agentUpdateStatus: AgentUpdateStatus? = nil,
                attachments: Attachments? = nil,
                attributes: Attributes? = nil,
                capacityProviderName: String? = nil,
                containerInstanceArn: String? = nil,
                ec2InstanceId: String? = nil,
                healthStatus: ContainerInstanceHealthStatus? = nil,
                pendingTasksCount: Integer? = nil,
                registeredAt: Timestamp? = nil,
                registeredResources: Resources? = nil,
                remainingResources: Resources? = nil,
                runningTasksCount: Integer? = nil,
                status: String? = nil,
                statusReason: String? = nil,
                tags: Tags? = nil,
                version: Long? = nil,
                versionInfo: VersionInfo? = nil) {
        self.agentConnected = agentConnected
        self.agentUpdateStatus = agentUpdateStatus
        self.attachments = attachments
        self.attributes = attributes
        self.capacityProviderName = capacityProviderName
        self.containerInstanceArn = containerInstanceArn
        self.ec2InstanceId = ec2InstanceId
        self.healthStatus = healthStatus
        self.pendingTasksCount = pendingTasksCount
        self.registeredAt = registeredAt
        self.registeredResources = registeredResources
        self.remainingResources = remainingResources
        self.runningTasksCount = runningTasksCount
        self.status = status
        self.statusReason = statusReason
        self.tags = tags
        self.version = version
        self.versionInfo = versionInfo
    }

    enum CodingKeys: String, CodingKey {
        case agentConnected
        case agentUpdateStatus
        case attachments
        case attributes
        case capacityProviderName
        case containerInstanceArn
        case ec2InstanceId
        case healthStatus
        case pendingTasksCount
        case registeredAt
        case registeredResources
        case remainingResources
        case runningTasksCount
        case status
        case statusReason
        case tags
        case version
        case versionInfo
    }

    public func validate() throws {
        try healthStatus?.validate()
        try tags?.validateAsTags()
        try versionInfo?.validate()
    }
}

public struct ContainerInstanceHealthStatus: Codable, Equatable {
    public var details: InstanceHealthCheckResultList?
    public var overallStatus: InstanceHealthCheckState?

    public init(details: InstanceHealthCheckResultList? = nil,
                overallStatus: InstanceHealthCheckState? = nil) {
        self.details = details
        self.overallStatus = overallStatus
    }

    enum CodingKeys: String, CodingKey {
        case details
        case overallStatus
    }

    public func validate() throws {
    }
}

public struct ContainerOverride: Codable, Equatable {
    public var command: StringList?
    public var cpu: BoxedInteger?
    public var environment: EnvironmentVariables?
    public var environmentFiles: EnvironmentFiles?
    public var memory: BoxedInteger?
    public var memoryReservation: BoxedInteger?
    public var name: String?
    public var resourceRequirements: ResourceRequirements?

    public init(command: StringList? = nil,
                cpu: BoxedInteger? = nil,
                environment: EnvironmentVariables? = nil,
                environmentFiles: EnvironmentFiles? = nil,
                memory: BoxedInteger? = nil,
                memoryReservation: BoxedInteger? = nil,
                name: String? = nil,
                resourceRequirements: ResourceRequirements? = nil) {
        self.command = command
        self.cpu = cpu
        self.environment = environment
        self.environmentFiles = environmentFiles
        self.memory = memory
        self.memoryReservation = memoryReservation
        self.name = name
        self.resourceRequirements = resourceRequirements
    }

    enum CodingKeys: String, CodingKey {
        case command
        case cpu
        case environment
        case environmentFiles
        case memory
        case memoryReservation
        case name
        case resourceRequirements
    }

    public func validate() throws {
    }
}

public struct ContainerStateChange: Codable, Equatable {
    public var containerName: String?
    public var exitCode: BoxedInteger?
    public var imageDigest: String?
    public var networkBindings: NetworkBindings?
    public var reason: String?
    public var runtimeId: String?
    public var status: String?

    public init(containerName: String? = nil,
                exitCode: BoxedInteger? = nil,
                imageDigest: String? = nil,
                networkBindings: NetworkBindings? = nil,
                reason: String? = nil,
                runtimeId: String? = nil,
                status: String? = nil) {
        self.containerName = containerName
        self.exitCode = exitCode
        self.imageDigest = imageDigest
        self.networkBindings = networkBindings
        self.reason = reason
        self.runtimeId = runtimeId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case exitCode
        case imageDigest
        case networkBindings
        case reason
        case runtimeId
        case status
    }

    public func validate() throws {
    }
}

public struct CreateCapacityProviderRequest: Codable, Equatable {
    public var autoScalingGroupProvider: AutoScalingGroupProvider
    public var name: String
    public var tags: Tags?

    public init(autoScalingGroupProvider: AutoScalingGroupProvider,
                name: String,
                tags: Tags? = nil) {
        self.autoScalingGroupProvider = autoScalingGroupProvider
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case autoScalingGroupProvider
        case name
        case tags
    }

    public func validate() throws {
        try autoScalingGroupProvider.validate()
        try tags?.validateAsTags()
    }
}

public struct CreateCapacityProviderResponse: Codable, Equatable {
    public var capacityProvider: CapacityProvider?

    public init(capacityProvider: CapacityProvider? = nil) {
        self.capacityProvider = capacityProvider
    }

    enum CodingKeys: String, CodingKey {
        case capacityProvider
    }

    public func validate() throws {
        try capacityProvider?.validate()
    }
}

public struct CreateClusterRequest: Codable, Equatable {
    public var capacityProviders: StringList?
    public var clusterName: String?
    public var configuration: ClusterConfiguration?
    public var defaultCapacityProviderStrategy: CapacityProviderStrategy?
    public var settings: ClusterSettings?
    public var tags: Tags?

    public init(capacityProviders: StringList? = nil,
                clusterName: String? = nil,
                configuration: ClusterConfiguration? = nil,
                defaultCapacityProviderStrategy: CapacityProviderStrategy? = nil,
                settings: ClusterSettings? = nil,
                tags: Tags? = nil) {
        self.capacityProviders = capacityProviders
        self.clusterName = clusterName
        self.configuration = configuration
        self.defaultCapacityProviderStrategy = defaultCapacityProviderStrategy
        self.settings = settings
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviders
        case clusterName
        case configuration
        case defaultCapacityProviderStrategy
        case settings
        case tags
    }

    public func validate() throws {
        try configuration?.validate()
        try tags?.validateAsTags()
    }
}

public struct CreateClusterResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct CreateServiceRequest: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var clientToken: String?
    public var cluster: String?
    public var deploymentConfiguration: DeploymentConfiguration?
    public var deploymentController: DeploymentController?
    public var desiredCount: BoxedInteger?
    public var enableECSManagedTags: Boolean?
    public var enableExecuteCommand: Boolean?
    public var healthCheckGracePeriodSeconds: BoxedInteger?
    public var launchType: LaunchType?
    public var loadBalancers: LoadBalancers?
    public var networkConfiguration: NetworkConfiguration?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: String?
    public var propagateTags: PropagateTags?
    public var role: String?
    public var schedulingStrategy: SchedulingStrategy?
    public var serviceName: String
    public var serviceRegistries: ServiceRegistries?
    public var tags: Tags?
    public var taskDefinition: String?

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                clientToken: String? = nil,
                cluster: String? = nil,
                deploymentConfiguration: DeploymentConfiguration? = nil,
                deploymentController: DeploymentController? = nil,
                desiredCount: BoxedInteger? = nil,
                enableECSManagedTags: Boolean? = nil,
                enableExecuteCommand: Boolean? = nil,
                healthCheckGracePeriodSeconds: BoxedInteger? = nil,
                launchType: LaunchType? = nil,
                loadBalancers: LoadBalancers? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: String? = nil,
                propagateTags: PropagateTags? = nil,
                role: String? = nil,
                schedulingStrategy: SchedulingStrategy? = nil,
                serviceName: String,
                serviceRegistries: ServiceRegistries? = nil,
                tags: Tags? = nil,
                taskDefinition: String? = nil) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.clientToken = clientToken
        self.cluster = cluster
        self.deploymentConfiguration = deploymentConfiguration
        self.deploymentController = deploymentController
        self.desiredCount = desiredCount
        self.enableECSManagedTags = enableECSManagedTags
        self.enableExecuteCommand = enableExecuteCommand
        self.healthCheckGracePeriodSeconds = healthCheckGracePeriodSeconds
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.propagateTags = propagateTags
        self.role = role
        self.schedulingStrategy = schedulingStrategy
        self.serviceName = serviceName
        self.serviceRegistries = serviceRegistries
        self.tags = tags
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case clientToken
        case cluster
        case deploymentConfiguration
        case deploymentController
        case desiredCount
        case enableECSManagedTags
        case enableExecuteCommand
        case healthCheckGracePeriodSeconds
        case launchType
        case loadBalancers
        case networkConfiguration
        case placementConstraints
        case placementStrategy
        case platformVersion
        case propagateTags
        case role
        case schedulingStrategy
        case serviceName
        case serviceRegistries
        case tags
        case taskDefinition
    }

    public func validate() throws {
        try deploymentConfiguration?.validate()
        try deploymentController?.validate()
        try networkConfiguration?.validate()
        try tags?.validateAsTags()
    }
}

public struct CreateServiceResponse: Codable, Equatable {
    public var service: Service?

    public init(service: Service? = nil) {
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case service
    }

    public func validate() throws {
        try service?.validate()
    }
}

public struct CreateTaskSetRequest: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var clientToken: String?
    public var cluster: String
    public var externalId: String?
    public var launchType: LaunchType?
    public var loadBalancers: LoadBalancers?
    public var networkConfiguration: NetworkConfiguration?
    public var platformVersion: String?
    public var scale: Scale?
    public var service: String
    public var serviceRegistries: ServiceRegistries?
    public var tags: Tags?
    public var taskDefinition: String

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                clientToken: String? = nil,
                cluster: String,
                externalId: String? = nil,
                launchType: LaunchType? = nil,
                loadBalancers: LoadBalancers? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                platformVersion: String? = nil,
                scale: Scale? = nil,
                service: String,
                serviceRegistries: ServiceRegistries? = nil,
                tags: Tags? = nil,
                taskDefinition: String) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.clientToken = clientToken
        self.cluster = cluster
        self.externalId = externalId
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.platformVersion = platformVersion
        self.scale = scale
        self.service = service
        self.serviceRegistries = serviceRegistries
        self.tags = tags
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case clientToken
        case cluster
        case externalId
        case launchType
        case loadBalancers
        case networkConfiguration
        case platformVersion
        case scale
        case service
        case serviceRegistries
        case tags
        case taskDefinition
    }

    public func validate() throws {
        try networkConfiguration?.validate()
        try scale?.validate()
        try tags?.validateAsTags()
    }
}

public struct CreateTaskSetResponse: Codable, Equatable {
    public var taskSet: TaskSet?

    public init(taskSet: TaskSet? = nil) {
        self.taskSet = taskSet
    }

    enum CodingKeys: String, CodingKey {
        case taskSet
    }

    public func validate() throws {
        try taskSet?.validate()
    }
}

public struct DeleteAccountSettingRequest: Codable, Equatable {
    public var name: SettingName
    public var principalArn: String?

    public init(name: SettingName,
                principalArn: String? = nil) {
        self.name = name
        self.principalArn = principalArn
    }

    enum CodingKeys: String, CodingKey {
        case name
        case principalArn
    }

    public func validate() throws {
    }
}

public struct DeleteAccountSettingResponse: Codable, Equatable {
    public var setting: Setting?

    public init(setting: Setting? = nil) {
        self.setting = setting
    }

    enum CodingKeys: String, CodingKey {
        case setting
    }

    public func validate() throws {
        try setting?.validate()
    }
}

public struct DeleteAttributesRequest: Codable, Equatable {
    public var attributes: Attributes
    public var cluster: String?

    public init(attributes: Attributes,
                cluster: String? = nil) {
        self.attributes = attributes
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case cluster
    }

    public func validate() throws {
    }
}

public struct DeleteAttributesResponse: Codable, Equatable {
    public var attributes: Attributes?

    public init(attributes: Attributes? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct DeleteCapacityProviderRequest: Codable, Equatable {
    public var capacityProvider: String

    public init(capacityProvider: String) {
        self.capacityProvider = capacityProvider
    }

    enum CodingKeys: String, CodingKey {
        case capacityProvider
    }

    public func validate() throws {
    }
}

public struct DeleteCapacityProviderResponse: Codable, Equatable {
    public var capacityProvider: CapacityProvider?

    public init(capacityProvider: CapacityProvider? = nil) {
        self.capacityProvider = capacityProvider
    }

    enum CodingKeys: String, CodingKey {
        case capacityProvider
    }

    public func validate() throws {
        try capacityProvider?.validate()
    }
}

public struct DeleteClusterRequest: Codable, Equatable {
    public var cluster: String

    public init(cluster: String) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
    }
}

public struct DeleteClusterResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct DeleteServiceRequest: Codable, Equatable {
    public var cluster: String?
    public var force: BoxedBoolean?
    public var service: String

    public init(cluster: String? = nil,
                force: BoxedBoolean? = nil,
                service: String) {
        self.cluster = cluster
        self.force = force
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case force
        case service
    }

    public func validate() throws {
    }
}

public struct DeleteServiceResponse: Codable, Equatable {
    public var service: Service?

    public init(service: Service? = nil) {
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case service
    }

    public func validate() throws {
        try service?.validate()
    }
}

public struct DeleteTaskSetRequest: Codable, Equatable {
    public var cluster: String
    public var force: BoxedBoolean?
    public var service: String
    public var taskSet: String

    public init(cluster: String,
                force: BoxedBoolean? = nil,
                service: String,
                taskSet: String) {
        self.cluster = cluster
        self.force = force
        self.service = service
        self.taskSet = taskSet
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case force
        case service
        case taskSet
    }

    public func validate() throws {
    }
}

public struct DeleteTaskSetResponse: Codable, Equatable {
    public var taskSet: TaskSet?

    public init(taskSet: TaskSet? = nil) {
        self.taskSet = taskSet
    }

    enum CodingKeys: String, CodingKey {
        case taskSet
    }

    public func validate() throws {
        try taskSet?.validate()
    }
}

public struct Deployment: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var createdAt: Timestamp?
    public var desiredCount: Integer?
    public var failedTasks: Integer?
    public var id: String?
    public var launchType: LaunchType?
    public var networkConfiguration: NetworkConfiguration?
    public var pendingCount: Integer?
    public var platformFamily: String?
    public var platformVersion: String?
    public var rolloutState: DeploymentRolloutState?
    public var rolloutStateReason: String?
    public var runningCount: Integer?
    public var status: String?
    public var taskDefinition: String?
    public var updatedAt: Timestamp?

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                createdAt: Timestamp? = nil,
                desiredCount: Integer? = nil,
                failedTasks: Integer? = nil,
                id: String? = nil,
                launchType: LaunchType? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                pendingCount: Integer? = nil,
                platformFamily: String? = nil,
                platformVersion: String? = nil,
                rolloutState: DeploymentRolloutState? = nil,
                rolloutStateReason: String? = nil,
                runningCount: Integer? = nil,
                status: String? = nil,
                taskDefinition: String? = nil,
                updatedAt: Timestamp? = nil) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.createdAt = createdAt
        self.desiredCount = desiredCount
        self.failedTasks = failedTasks
        self.id = id
        self.launchType = launchType
        self.networkConfiguration = networkConfiguration
        self.pendingCount = pendingCount
        self.platformFamily = platformFamily
        self.platformVersion = platformVersion
        self.rolloutState = rolloutState
        self.rolloutStateReason = rolloutStateReason
        self.runningCount = runningCount
        self.status = status
        self.taskDefinition = taskDefinition
        self.updatedAt = updatedAt
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case createdAt
        case desiredCount
        case failedTasks
        case id
        case launchType
        case networkConfiguration
        case pendingCount
        case platformFamily
        case platformVersion
        case rolloutState
        case rolloutStateReason
        case runningCount
        case status
        case taskDefinition
        case updatedAt
    }

    public func validate() throws {
        try networkConfiguration?.validate()
    }
}

public struct DeploymentCircuitBreaker: Codable, Equatable {
    public var enable: Boolean
    public var rollback: Boolean

    public init(enable: Boolean,
                rollback: Boolean) {
        self.enable = enable
        self.rollback = rollback
    }

    enum CodingKeys: String, CodingKey {
        case enable
        case rollback
    }

    public func validate() throws {
    }
}

public struct DeploymentConfiguration: Codable, Equatable {
    public var deploymentCircuitBreaker: DeploymentCircuitBreaker?
    public var maximumPercent: BoxedInteger?
    public var minimumHealthyPercent: BoxedInteger?

    public init(deploymentCircuitBreaker: DeploymentCircuitBreaker? = nil,
                maximumPercent: BoxedInteger? = nil,
                minimumHealthyPercent: BoxedInteger? = nil) {
        self.deploymentCircuitBreaker = deploymentCircuitBreaker
        self.maximumPercent = maximumPercent
        self.minimumHealthyPercent = minimumHealthyPercent
    }

    enum CodingKeys: String, CodingKey {
        case deploymentCircuitBreaker
        case maximumPercent
        case minimumHealthyPercent
    }

    public func validate() throws {
        try deploymentCircuitBreaker?.validate()
    }
}

public struct DeploymentController: Codable, Equatable {
    public var type: DeploymentControllerType

    public init(type: DeploymentControllerType) {
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case type
    }

    public func validate() throws {
    }
}

public struct DeregisterContainerInstanceRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String
    public var force: BoxedBoolean?

    public init(cluster: String? = nil,
                containerInstance: String,
                force: BoxedBoolean? = nil) {
        self.cluster = cluster
        self.containerInstance = containerInstance
        self.force = force
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
        case force
    }

    public func validate() throws {
    }
}

public struct DeregisterContainerInstanceResponse: Codable, Equatable {
    public var containerInstance: ContainerInstance?

    public init(containerInstance: ContainerInstance? = nil) {
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case containerInstance
    }

    public func validate() throws {
        try containerInstance?.validate()
    }
}

public struct DeregisterTaskDefinitionRequest: Codable, Equatable {
    public var taskDefinition: String

    public init(taskDefinition: String) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
    }
}

public struct DeregisterTaskDefinitionResponse: Codable, Equatable {
    public var taskDefinition: TaskDefinition?

    public init(taskDefinition: TaskDefinition? = nil) {
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case taskDefinition
    }

    public func validate() throws {
        try taskDefinition?.validate()
    }
}

public struct DescribeCapacityProvidersRequest: Codable, Equatable {
    public var capacityProviders: StringList?
    public var include: CapacityProviderFieldList?
    public var maxResults: BoxedInteger?
    public var nextToken: String?

    public init(capacityProviders: StringList? = nil,
                include: CapacityProviderFieldList? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil) {
        self.capacityProviders = capacityProviders
        self.include = include
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviders
        case include
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeCapacityProvidersResponse: Codable, Equatable {
    public var capacityProviders: CapacityProviders?
    public var failures: Failures?
    public var nextToken: String?

    public init(capacityProviders: CapacityProviders? = nil,
                failures: Failures? = nil,
                nextToken: String? = nil) {
        self.capacityProviders = capacityProviders
        self.failures = failures
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviders
        case failures
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeClustersRequest: Codable, Equatable {
    public var clusters: StringList?
    public var include: ClusterFieldList?

    public init(clusters: StringList? = nil,
                include: ClusterFieldList? = nil) {
        self.clusters = clusters
        self.include = include
    }

    enum CodingKeys: String, CodingKey {
        case clusters
        case include
    }

    public func validate() throws {
    }
}

public struct DescribeClustersResponse: Codable, Equatable {
    public var clusters: Clusters?
    public var failures: Failures?

    public init(clusters: Clusters? = nil,
                failures: Failures? = nil) {
        self.clusters = clusters
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case clusters
        case failures
    }

    public func validate() throws {
    }
}

public struct DescribeContainerInstancesRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstances: StringList
    public var include: ContainerInstanceFieldList?

    public init(cluster: String? = nil,
                containerInstances: StringList,
                include: ContainerInstanceFieldList? = nil) {
        self.cluster = cluster
        self.containerInstances = containerInstances
        self.include = include
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
        case include
    }

    public func validate() throws {
    }
}

public struct DescribeContainerInstancesResponse: Codable, Equatable {
    public var containerInstances: ContainerInstances?
    public var failures: Failures?

    public init(containerInstances: ContainerInstances? = nil,
                failures: Failures? = nil) {
        self.containerInstances = containerInstances
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case containerInstances
        case failures
    }

    public func validate() throws {
    }
}

public struct DescribeServicesRequest: Codable, Equatable {
    public var cluster: String?
    public var include: ServiceFieldList?
    public var services: StringList

    public init(cluster: String? = nil,
                include: ServiceFieldList? = nil,
                services: StringList) {
        self.cluster = cluster
        self.include = include
        self.services = services
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case include
        case services
    }

    public func validate() throws {
    }
}

public struct DescribeServicesResponse: Codable, Equatable {
    public var failures: Failures?
    public var services: Services?

    public init(failures: Failures? = nil,
                services: Services? = nil) {
        self.failures = failures
        self.services = services
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case services
    }

    public func validate() throws {
    }
}

public struct DescribeTaskDefinitionRequest: Codable, Equatable {
    public var include: TaskDefinitionFieldList?
    public var taskDefinition: String

    public init(include: TaskDefinitionFieldList? = nil,
                taskDefinition: String) {
        self.include = include
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case include
        case taskDefinition
    }

    public func validate() throws {
    }
}

public struct DescribeTaskDefinitionResponse: Codable, Equatable {
    public var tags: Tags?
    public var taskDefinition: TaskDefinition?

    public init(tags: Tags? = nil,
                taskDefinition: TaskDefinition? = nil) {
        self.tags = tags
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case tags
        case taskDefinition
    }

    public func validate() throws {
        try tags?.validateAsTags()
        try taskDefinition?.validate()
    }
}

public struct DescribeTaskSetsRequest: Codable, Equatable {
    public var cluster: String
    public var include: TaskSetFieldList?
    public var service: String
    public var taskSets: StringList?

    public init(cluster: String,
                include: TaskSetFieldList? = nil,
                service: String,
                taskSets: StringList? = nil) {
        self.cluster = cluster
        self.include = include
        self.service = service
        self.taskSets = taskSets
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case include
        case service
        case taskSets
    }

    public func validate() throws {
    }
}

public struct DescribeTaskSetsResponse: Codable, Equatable {
    public var failures: Failures?
    public var taskSets: TaskSets?

    public init(failures: Failures? = nil,
                taskSets: TaskSets? = nil) {
        self.failures = failures
        self.taskSets = taskSets
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case taskSets
    }

    public func validate() throws {
    }
}

public struct DescribeTasksRequest: Codable, Equatable {
    public var cluster: String?
    public var include: TaskFieldList?
    public var tasks: StringList

    public init(cluster: String? = nil,
                include: TaskFieldList? = nil,
                tasks: StringList) {
        self.cluster = cluster
        self.include = include
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case include
        case tasks
    }

    public func validate() throws {
    }
}

public struct DescribeTasksResponse: Codable, Equatable {
    public var failures: Failures?
    public var tasks: Tasks?

    public init(failures: Failures? = nil,
                tasks: Tasks? = nil) {
        self.failures = failures
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case tasks
    }

    public func validate() throws {
    }
}

public struct Device: Codable, Equatable {
    public var containerPath: String?
    public var hostPath: String
    public var permissions: DeviceCgroupPermissions?

    public init(containerPath: String? = nil,
                hostPath: String,
                permissions: DeviceCgroupPermissions? = nil) {
        self.containerPath = containerPath
        self.hostPath = hostPath
        self.permissions = permissions
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case hostPath
        case permissions
    }

    public func validate() throws {
    }
}

public struct DiscoverPollEndpointRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String?

    public init(cluster: String? = nil,
                containerInstance: String? = nil) {
        self.cluster = cluster
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
    }

    public func validate() throws {
    }
}

public struct DiscoverPollEndpointResponse: Codable, Equatable {
    public var endpoint: String?
    public var telemetryEndpoint: String?

    public init(endpoint: String? = nil,
                telemetryEndpoint: String? = nil) {
        self.endpoint = endpoint
        self.telemetryEndpoint = telemetryEndpoint
    }

    enum CodingKeys: String, CodingKey {
        case endpoint
        case telemetryEndpoint
    }

    public func validate() throws {
    }
}

public struct DockerVolumeConfiguration: Codable, Equatable {
    public var autoprovision: BoxedBoolean?
    public var driver: String?
    public var driverOpts: StringMap?
    public var labels: StringMap?
    public var scope: Scope?

    public init(autoprovision: BoxedBoolean? = nil,
                driver: String? = nil,
                driverOpts: StringMap? = nil,
                labels: StringMap? = nil,
                scope: Scope? = nil) {
        self.autoprovision = autoprovision
        self.driver = driver
        self.driverOpts = driverOpts
        self.labels = labels
        self.scope = scope
    }

    enum CodingKeys: String, CodingKey {
        case autoprovision
        case driver
        case driverOpts
        case labels
        case scope
    }

    public func validate() throws {
    }
}

public struct EFSAuthorizationConfig: Codable, Equatable {
    public var accessPointId: String?
    public var iam: EFSAuthorizationConfigIAM?

    public init(accessPointId: String? = nil,
                iam: EFSAuthorizationConfigIAM? = nil) {
        self.accessPointId = accessPointId
        self.iam = iam
    }

    enum CodingKeys: String, CodingKey {
        case accessPointId
        case iam
    }

    public func validate() throws {
    }
}

public struct EFSVolumeConfiguration: Codable, Equatable {
    public var authorizationConfig: EFSAuthorizationConfig?
    public var fileSystemId: String
    public var rootDirectory: String?
    public var transitEncryption: EFSTransitEncryption?
    public var transitEncryptionPort: BoxedInteger?

    public init(authorizationConfig: EFSAuthorizationConfig? = nil,
                fileSystemId: String,
                rootDirectory: String? = nil,
                transitEncryption: EFSTransitEncryption? = nil,
                transitEncryptionPort: BoxedInteger? = nil) {
        self.authorizationConfig = authorizationConfig
        self.fileSystemId = fileSystemId
        self.rootDirectory = rootDirectory
        self.transitEncryption = transitEncryption
        self.transitEncryptionPort = transitEncryptionPort
    }

    enum CodingKeys: String, CodingKey {
        case authorizationConfig
        case fileSystemId
        case rootDirectory
        case transitEncryption
        case transitEncryptionPort
    }

    public func validate() throws {
        try authorizationConfig?.validate()
    }
}

public struct EnvironmentFile: Codable, Equatable {
    public var type: EnvironmentFileType
    public var value: String

    public init(type: EnvironmentFileType,
                value: String) {
        self.type = type
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case type
        case value
    }

    public func validate() throws {
    }
}

public struct EphemeralStorage: Codable, Equatable {
    public var sizeInGiB: Integer

    public init(sizeInGiB: Integer) {
        self.sizeInGiB = sizeInGiB
    }

    enum CodingKeys: String, CodingKey {
        case sizeInGiB
    }

    public func validate() throws {
    }
}

public struct ExecuteCommandConfiguration: Codable, Equatable {
    public var kmsKeyId: String?
    public var logConfiguration: ExecuteCommandLogConfiguration?
    public var logging: ExecuteCommandLogging?

    public init(kmsKeyId: String? = nil,
                logConfiguration: ExecuteCommandLogConfiguration? = nil,
                logging: ExecuteCommandLogging? = nil) {
        self.kmsKeyId = kmsKeyId
        self.logConfiguration = logConfiguration
        self.logging = logging
    }

    enum CodingKeys: String, CodingKey {
        case kmsKeyId
        case logConfiguration
        case logging
    }

    public func validate() throws {
        try logConfiguration?.validate()
    }
}

public struct ExecuteCommandLogConfiguration: Codable, Equatable {
    public var cloudWatchEncryptionEnabled: Boolean?
    public var cloudWatchLogGroupName: String?
    public var s3BucketName: String?
    public var s3EncryptionEnabled: Boolean?
    public var s3KeyPrefix: String?

    public init(cloudWatchEncryptionEnabled: Boolean? = nil,
                cloudWatchLogGroupName: String? = nil,
                s3BucketName: String? = nil,
                s3EncryptionEnabled: Boolean? = nil,
                s3KeyPrefix: String? = nil) {
        self.cloudWatchEncryptionEnabled = cloudWatchEncryptionEnabled
        self.cloudWatchLogGroupName = cloudWatchLogGroupName
        self.s3BucketName = s3BucketName
        self.s3EncryptionEnabled = s3EncryptionEnabled
        self.s3KeyPrefix = s3KeyPrefix
    }

    enum CodingKeys: String, CodingKey {
        case cloudWatchEncryptionEnabled
        case cloudWatchLogGroupName
        case s3BucketName
        case s3EncryptionEnabled
        case s3KeyPrefix
    }

    public func validate() throws {
    }
}

public struct ExecuteCommandRequest: Codable, Equatable {
    public var cluster: String?
    public var command: String
    public var container: String?
    public var interactive: Boolean
    public var task: String

    public init(cluster: String? = nil,
                command: String,
                container: String? = nil,
                interactive: Boolean,
                task: String) {
        self.cluster = cluster
        self.command = command
        self.container = container
        self.interactive = interactive
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case command
        case container
        case interactive
        case task
    }

    public func validate() throws {
    }
}

public struct ExecuteCommandResponse: Codable, Equatable {
    public var clusterArn: String?
    public var containerArn: String?
    public var containerName: String?
    public var interactive: Boolean?
    public var session: Session?
    public var taskArn: String?

    public init(clusterArn: String? = nil,
                containerArn: String? = nil,
                containerName: String? = nil,
                interactive: Boolean? = nil,
                session: Session? = nil,
                taskArn: String? = nil) {
        self.clusterArn = clusterArn
        self.containerArn = containerArn
        self.containerName = containerName
        self.interactive = interactive
        self.session = session
        self.taskArn = taskArn
    }

    enum CodingKeys: String, CodingKey {
        case clusterArn
        case containerArn
        case containerName
        case interactive
        case session
        case taskArn
    }

    public func validate() throws {
        try session?.validate()
    }
}

public struct FSxWindowsFileServerAuthorizationConfig: Codable, Equatable {
    public var credentialsParameter: String
    public var domain: String

    public init(credentialsParameter: String,
                domain: String) {
        self.credentialsParameter = credentialsParameter
        self.domain = domain
    }

    enum CodingKeys: String, CodingKey {
        case credentialsParameter
        case domain
    }

    public func validate() throws {
    }
}

public struct FSxWindowsFileServerVolumeConfiguration: Codable, Equatable {
    public var authorizationConfig: FSxWindowsFileServerAuthorizationConfig
    public var fileSystemId: String
    public var rootDirectory: String

    public init(authorizationConfig: FSxWindowsFileServerAuthorizationConfig,
                fileSystemId: String,
                rootDirectory: String) {
        self.authorizationConfig = authorizationConfig
        self.fileSystemId = fileSystemId
        self.rootDirectory = rootDirectory
    }

    enum CodingKeys: String, CodingKey {
        case authorizationConfig
        case fileSystemId
        case rootDirectory
    }

    public func validate() throws {
        try authorizationConfig.validate()
    }
}

public struct Failure: Codable, Equatable {
    public var arn: String?
    public var detail: String?
    public var reason: String?

    public init(arn: String? = nil,
                detail: String? = nil,
                reason: String? = nil) {
        self.arn = arn
        self.detail = detail
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case detail
        case reason
    }

    public func validate() throws {
    }
}

public struct FirelensConfiguration: Codable, Equatable {
    public var options: FirelensConfigurationOptionsMap?
    public var type: FirelensConfigurationType

    public init(options: FirelensConfigurationOptionsMap? = nil,
                type: FirelensConfigurationType) {
        self.options = options
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case options
        case type
    }

    public func validate() throws {
    }
}

public struct HealthCheck: Codable, Equatable {
    public var command: StringList
    public var interval: BoxedInteger?
    public var retries: BoxedInteger?
    public var startPeriod: BoxedInteger?
    public var timeout: BoxedInteger?

    public init(command: StringList,
                interval: BoxedInteger? = nil,
                retries: BoxedInteger? = nil,
                startPeriod: BoxedInteger? = nil,
                timeout: BoxedInteger? = nil) {
        self.command = command
        self.interval = interval
        self.retries = retries
        self.startPeriod = startPeriod
        self.timeout = timeout
    }

    enum CodingKeys: String, CodingKey {
        case command
        case interval
        case retries
        case startPeriod
        case timeout
    }

    public func validate() throws {
    }
}

public struct HostEntry: Codable, Equatable {
    public var hostname: String
    public var ipAddress: String

    public init(hostname: String,
                ipAddress: String) {
        self.hostname = hostname
        self.ipAddress = ipAddress
    }

    enum CodingKeys: String, CodingKey {
        case hostname
        case ipAddress
    }

    public func validate() throws {
    }
}

public struct HostVolumeProperties: Codable, Equatable {
    public var sourcePath: String?

    public init(sourcePath: String? = nil) {
        self.sourcePath = sourcePath
    }

    enum CodingKeys: String, CodingKey {
        case sourcePath
    }

    public func validate() throws {
    }
}

public struct InferenceAccelerator: Codable, Equatable {
    public var deviceName: String
    public var deviceType: String

    public init(deviceName: String,
                deviceType: String) {
        self.deviceName = deviceName
        self.deviceType = deviceType
    }

    enum CodingKeys: String, CodingKey {
        case deviceName
        case deviceType
    }

    public func validate() throws {
    }
}

public struct InferenceAcceleratorOverride: Codable, Equatable {
    public var deviceName: String?
    public var deviceType: String?

    public init(deviceName: String? = nil,
                deviceType: String? = nil) {
        self.deviceName = deviceName
        self.deviceType = deviceType
    }

    enum CodingKeys: String, CodingKey {
        case deviceName
        case deviceType
    }

    public func validate() throws {
    }
}

public struct InstanceHealthCheckResult: Codable, Equatable {
    public var lastStatusChange: Timestamp?
    public var lastUpdated: Timestamp?
    public var status: InstanceHealthCheckState?
    public var type: InstanceHealthCheckType?

    public init(lastStatusChange: Timestamp? = nil,
                lastUpdated: Timestamp? = nil,
                status: InstanceHealthCheckState? = nil,
                type: InstanceHealthCheckType? = nil) {
        self.lastStatusChange = lastStatusChange
        self.lastUpdated = lastUpdated
        self.status = status
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case lastStatusChange
        case lastUpdated
        case status
        case type
    }

    public func validate() throws {
    }
}

public struct InvalidParameterException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct KernelCapabilities: Codable, Equatable {
    public var add: StringList?
    public var drop: StringList?

    public init(add: StringList? = nil,
                drop: StringList? = nil) {
        self.add = add
        self.drop = drop
    }

    enum CodingKeys: String, CodingKey {
        case add
        case drop
    }

    public func validate() throws {
    }
}

public struct KeyValuePair: Codable, Equatable {
    public var name: String?
    public var value: String?

    public init(name: String? = nil,
                value: String? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
    }
}

public struct LimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct LinuxParameters: Codable, Equatable {
    public var capabilities: KernelCapabilities?
    public var devices: DevicesList?
    public var initProcessEnabled: BoxedBoolean?
    public var maxSwap: BoxedInteger?
    public var sharedMemorySize: BoxedInteger?
    public var swappiness: BoxedInteger?
    public var tmpfs: TmpfsList?

    public init(capabilities: KernelCapabilities? = nil,
                devices: DevicesList? = nil,
                initProcessEnabled: BoxedBoolean? = nil,
                maxSwap: BoxedInteger? = nil,
                sharedMemorySize: BoxedInteger? = nil,
                swappiness: BoxedInteger? = nil,
                tmpfs: TmpfsList? = nil) {
        self.capabilities = capabilities
        self.devices = devices
        self.initProcessEnabled = initProcessEnabled
        self.maxSwap = maxSwap
        self.sharedMemorySize = sharedMemorySize
        self.swappiness = swappiness
        self.tmpfs = tmpfs
    }

    enum CodingKeys: String, CodingKey {
        case capabilities
        case devices
        case initProcessEnabled
        case maxSwap
        case sharedMemorySize
        case swappiness
        case tmpfs
    }

    public func validate() throws {
        try capabilities?.validate()
    }
}

public struct ListAccountSettingsRequest: Codable, Equatable {
    public var effectiveSettings: Boolean?
    public var maxResults: Integer?
    public var name: SettingName?
    public var nextToken: String?
    public var principalArn: String?
    public var value: String?

    public init(effectiveSettings: Boolean? = nil,
                maxResults: Integer? = nil,
                name: SettingName? = nil,
                nextToken: String? = nil,
                principalArn: String? = nil,
                value: String? = nil) {
        self.effectiveSettings = effectiveSettings
        self.maxResults = maxResults
        self.name = name
        self.nextToken = nextToken
        self.principalArn = principalArn
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case effectiveSettings
        case maxResults
        case name
        case nextToken
        case principalArn
        case value
    }

    public func validate() throws {
    }
}

public struct ListAccountSettingsResponse: Codable, Equatable {
    public var nextToken: String?
    public var settings: Settings?

    public init(nextToken: String? = nil,
                settings: Settings? = nil) {
        self.nextToken = nextToken
        self.settings = settings
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case settings
    }

    public func validate() throws {
    }
}

public struct ListAttributesRequest: Codable, Equatable {
    public var attributeName: String?
    public var attributeValue: String?
    public var cluster: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var targetType: TargetType

    public init(attributeName: String? = nil,
                attributeValue: String? = nil,
                cluster: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                targetType: TargetType) {
        self.attributeName = attributeName
        self.attributeValue = attributeValue
        self.cluster = cluster
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.targetType = targetType
    }

    enum CodingKeys: String, CodingKey {
        case attributeName
        case attributeValue
        case cluster
        case maxResults
        case nextToken
        case targetType
    }

    public func validate() throws {
    }
}

public struct ListAttributesResponse: Codable, Equatable {
    public var attributes: Attributes?
    public var nextToken: String?

    public init(attributes: Attributes? = nil,
                nextToken: String? = nil) {
        self.attributes = attributes
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListClustersRequest: Codable, Equatable {
    public var maxResults: BoxedInteger?
    public var nextToken: String?

    public init(maxResults: BoxedInteger? = nil,
                nextToken: String? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListClustersResponse: Codable, Equatable {
    public var clusterArns: StringList?
    public var nextToken: String?

    public init(clusterArns: StringList? = nil,
                nextToken: String? = nil) {
        self.clusterArns = clusterArns
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case clusterArns
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListContainerInstancesRequest: Codable, Equatable {
    public var cluster: String?
    public var filter: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var status: ContainerInstanceStatus?

    public init(cluster: String? = nil,
                filter: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                status: ContainerInstanceStatus? = nil) {
        self.cluster = cluster
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case filter
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
    }
}

public struct ListContainerInstancesResponse: Codable, Equatable {
    public var containerInstanceArns: StringList?
    public var nextToken: String?

    public init(containerInstanceArns: StringList? = nil,
                nextToken: String? = nil) {
        self.containerInstanceArns = containerInstanceArns
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case containerInstanceArns
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListServicesRequest: Codable, Equatable {
    public var cluster: String?
    public var launchType: LaunchType?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var schedulingStrategy: SchedulingStrategy?

    public init(cluster: String? = nil,
                launchType: LaunchType? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                schedulingStrategy: SchedulingStrategy? = nil) {
        self.cluster = cluster
        self.launchType = launchType
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.schedulingStrategy = schedulingStrategy
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case launchType
        case maxResults
        case nextToken
        case schedulingStrategy
    }

    public func validate() throws {
    }
}

public struct ListServicesResponse: Codable, Equatable {
    public var nextToken: String?
    public var serviceArns: StringList?

    public init(nextToken: String? = nil,
                serviceArns: StringList? = nil) {
        self.nextToken = nextToken
        self.serviceArns = serviceArns
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case serviceArns
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceRequest: Codable, Equatable {
    public var resourceArn: String

    public init(resourceArn: String) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceResponse: Codable, Equatable {
    public var tags: Tags?

    public init(tags: Tags? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags
    }

    public func validate() throws {
        try tags?.validateAsTags()
    }
}

public struct ListTaskDefinitionFamiliesRequest: Codable, Equatable {
    public var familyPrefix: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var status: TaskDefinitionFamilyStatus?

    public init(familyPrefix: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                status: TaskDefinitionFamilyStatus? = nil) {
        self.familyPrefix = familyPrefix
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case familyPrefix
        case maxResults
        case nextToken
        case status
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionFamiliesResponse: Codable, Equatable {
    public var families: StringList?
    public var nextToken: String?

    public init(families: StringList? = nil,
                nextToken: String? = nil) {
        self.families = families
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case families
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionsRequest: Codable, Equatable {
    public var familyPrefix: String?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var sort: SortOrder?
    public var status: TaskDefinitionStatus?

    public init(familyPrefix: String? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                sort: SortOrder? = nil,
                status: TaskDefinitionStatus? = nil) {
        self.familyPrefix = familyPrefix
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sort = sort
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case familyPrefix
        case maxResults
        case nextToken
        case sort
        case status
    }

    public func validate() throws {
    }
}

public struct ListTaskDefinitionsResponse: Codable, Equatable {
    public var nextToken: String?
    public var taskDefinitionArns: StringList?

    public init(nextToken: String? = nil,
                taskDefinitionArns: StringList? = nil) {
        self.nextToken = nextToken
        self.taskDefinitionArns = taskDefinitionArns
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case taskDefinitionArns
    }

    public func validate() throws {
    }
}

public struct ListTasksRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String?
    public var desiredStatus: DesiredStatus?
    public var family: String?
    public var launchType: LaunchType?
    public var maxResults: BoxedInteger?
    public var nextToken: String?
    public var serviceName: String?
    public var startedBy: String?

    public init(cluster: String? = nil,
                containerInstance: String? = nil,
                desiredStatus: DesiredStatus? = nil,
                family: String? = nil,
                launchType: LaunchType? = nil,
                maxResults: BoxedInteger? = nil,
                nextToken: String? = nil,
                serviceName: String? = nil,
                startedBy: String? = nil) {
        self.cluster = cluster
        self.containerInstance = containerInstance
        self.desiredStatus = desiredStatus
        self.family = family
        self.launchType = launchType
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceName = serviceName
        self.startedBy = startedBy
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
        case desiredStatus
        case family
        case launchType
        case maxResults
        case nextToken
        case serviceName
        case startedBy
    }

    public func validate() throws {
    }
}

public struct ListTasksResponse: Codable, Equatable {
    public var nextToken: String?
    public var taskArns: StringList?

    public init(nextToken: String? = nil,
                taskArns: StringList? = nil) {
        self.nextToken = nextToken
        self.taskArns = taskArns
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case taskArns
    }

    public func validate() throws {
    }
}

public struct LoadBalancer: Codable, Equatable {
    public var containerName: String?
    public var containerPort: BoxedInteger?
    public var loadBalancerName: String?
    public var targetGroupArn: String?

    public init(containerName: String? = nil,
                containerPort: BoxedInteger? = nil,
                loadBalancerName: String? = nil,
                targetGroupArn: String? = nil) {
        self.containerName = containerName
        self.containerPort = containerPort
        self.loadBalancerName = loadBalancerName
        self.targetGroupArn = targetGroupArn
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case containerPort
        case loadBalancerName
        case targetGroupArn
    }

    public func validate() throws {
    }
}

public struct LogConfiguration: Codable, Equatable {
    public var logDriver: LogDriver
    public var options: LogConfigurationOptionsMap?
    public var secretOptions: SecretList?

    public init(logDriver: LogDriver,
                options: LogConfigurationOptionsMap? = nil,
                secretOptions: SecretList? = nil) {
        self.logDriver = logDriver
        self.options = options
        self.secretOptions = secretOptions
    }

    enum CodingKeys: String, CodingKey {
        case logDriver
        case options
        case secretOptions
    }

    public func validate() throws {
    }
}

public struct ManagedAgent: Codable, Equatable {
    public var lastStartedAt: Timestamp?
    public var lastStatus: String?
    public var name: ManagedAgentName?
    public var reason: String?

    public init(lastStartedAt: Timestamp? = nil,
                lastStatus: String? = nil,
                name: ManagedAgentName? = nil,
                reason: String? = nil) {
        self.lastStartedAt = lastStartedAt
        self.lastStatus = lastStatus
        self.name = name
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case lastStartedAt
        case lastStatus
        case name
        case reason
    }

    public func validate() throws {
    }
}

public struct ManagedAgentStateChange: Codable, Equatable {
    public var containerName: String
    public var managedAgentName: ManagedAgentName
    public var reason: String?
    public var status: String

    public init(containerName: String,
                managedAgentName: ManagedAgentName,
                reason: String? = nil,
                status: String) {
        self.containerName = containerName
        self.managedAgentName = managedAgentName
        self.reason = reason
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case managedAgentName
        case reason
        case status
    }

    public func validate() throws {
    }
}

public struct ManagedScaling: Codable, Equatable {
    public var instanceWarmupPeriod: ManagedScalingInstanceWarmupPeriod?
    public var maximumScalingStepSize: ManagedScalingStepSize?
    public var minimumScalingStepSize: ManagedScalingStepSize?
    public var status: ManagedScalingStatus?
    public var targetCapacity: ManagedScalingTargetCapacity?

    public init(instanceWarmupPeriod: ManagedScalingInstanceWarmupPeriod? = nil,
                maximumScalingStepSize: ManagedScalingStepSize? = nil,
                minimumScalingStepSize: ManagedScalingStepSize? = nil,
                status: ManagedScalingStatus? = nil,
                targetCapacity: ManagedScalingTargetCapacity? = nil) {
        self.instanceWarmupPeriod = instanceWarmupPeriod
        self.maximumScalingStepSize = maximumScalingStepSize
        self.minimumScalingStepSize = minimumScalingStepSize
        self.status = status
        self.targetCapacity = targetCapacity
    }

    enum CodingKeys: String, CodingKey {
        case instanceWarmupPeriod
        case maximumScalingStepSize
        case minimumScalingStepSize
        case status
        case targetCapacity
    }

    public func validate() throws {
        try instanceWarmupPeriod?.validateAsManagedScalingInstanceWarmupPeriod()
        try maximumScalingStepSize?.validateAsManagedScalingStepSize()
        try minimumScalingStepSize?.validateAsManagedScalingStepSize()
        try targetCapacity?.validateAsManagedScalingTargetCapacity()
    }
}

public struct MissingVersionException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct MountPoint: Codable, Equatable {
    public var containerPath: String?
    public var readOnly: BoxedBoolean?
    public var sourceVolume: String?

    public init(containerPath: String? = nil,
                readOnly: BoxedBoolean? = nil,
                sourceVolume: String? = nil) {
        self.containerPath = containerPath
        self.readOnly = readOnly
        self.sourceVolume = sourceVolume
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case readOnly
        case sourceVolume
    }

    public func validate() throws {
    }
}

public struct NetworkBinding: Codable, Equatable {
    public var bindIP: String?
    public var containerPort: BoxedInteger?
    public var hostPort: BoxedInteger?
    public var `protocol`: TransportProtocol?

    public init(bindIP: String? = nil,
                containerPort: BoxedInteger? = nil,
                hostPort: BoxedInteger? = nil,
                `protocol`: TransportProtocol? = nil) {
        self.bindIP = bindIP
        self.containerPort = containerPort
        self.hostPort = hostPort
        self.`protocol` = `protocol`
    }

    enum CodingKeys: String, CodingKey {
        case bindIP
        case containerPort
        case hostPort
        case `protocol` = "protocol"
    }

    public func validate() throws {
    }
}

public struct NetworkConfiguration: Codable, Equatable {
    public var awsvpcConfiguration: AwsVpcConfiguration?

    public init(awsvpcConfiguration: AwsVpcConfiguration? = nil) {
        self.awsvpcConfiguration = awsvpcConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case awsvpcConfiguration
    }

    public func validate() throws {
        try awsvpcConfiguration?.validate()
    }
}

public struct NetworkInterface: Codable, Equatable {
    public var attachmentId: String?
    public var ipv6Address: String?
    public var privateIpv4Address: String?

    public init(attachmentId: String? = nil,
                ipv6Address: String? = nil,
                privateIpv4Address: String? = nil) {
        self.attachmentId = attachmentId
        self.ipv6Address = ipv6Address
        self.privateIpv4Address = privateIpv4Address
    }

    enum CodingKeys: String, CodingKey {
        case attachmentId
        case ipv6Address
        case privateIpv4Address
    }

    public func validate() throws {
    }
}

public struct NoUpdateAvailableException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PlacementConstraint: Codable, Equatable {
    public var expression: String?
    public var type: PlacementConstraintType?

    public init(expression: String? = nil,
                type: PlacementConstraintType? = nil) {
        self.expression = expression
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case expression
        case type
    }

    public func validate() throws {
    }
}

public struct PlacementStrategy: Codable, Equatable {
    public var field: String?
    public var type: PlacementStrategyType?

    public init(field: String? = nil,
                type: PlacementStrategyType? = nil) {
        self.field = field
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case field
        case type
    }

    public func validate() throws {
    }
}

public struct PlatformDevice: Codable, Equatable {
    public var id: String
    public var type: PlatformDeviceType

    public init(id: String,
                type: PlatformDeviceType) {
        self.id = id
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case id
        case type
    }

    public func validate() throws {
    }
}

public struct PlatformTaskDefinitionIncompatibilityException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PlatformUnknownException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PortMapping: Codable, Equatable {
    public var containerPort: BoxedInteger?
    public var hostPort: BoxedInteger?
    public var `protocol`: TransportProtocol?

    public init(containerPort: BoxedInteger? = nil,
                hostPort: BoxedInteger? = nil,
                `protocol`: TransportProtocol? = nil) {
        self.containerPort = containerPort
        self.hostPort = hostPort
        self.`protocol` = `protocol`
    }

    enum CodingKeys: String, CodingKey {
        case containerPort
        case hostPort
        case `protocol` = "protocol"
    }

    public func validate() throws {
    }
}

public struct ProxyConfiguration: Codable, Equatable {
    public var containerName: String
    public var properties: ProxyConfigurationProperties?
    public var type: ProxyConfigurationType?

    public init(containerName: String,
                properties: ProxyConfigurationProperties? = nil,
                type: ProxyConfigurationType? = nil) {
        self.containerName = containerName
        self.properties = properties
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case properties
        case type
    }

    public func validate() throws {
    }
}

public struct PutAccountSettingDefaultRequest: Codable, Equatable {
    public var name: SettingName
    public var value: String

    public init(name: SettingName,
                value: String) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
    }
}

public struct PutAccountSettingDefaultResponse: Codable, Equatable {
    public var setting: Setting?

    public init(setting: Setting? = nil) {
        self.setting = setting
    }

    enum CodingKeys: String, CodingKey {
        case setting
    }

    public func validate() throws {
        try setting?.validate()
    }
}

public struct PutAccountSettingRequest: Codable, Equatable {
    public var name: SettingName
    public var principalArn: String?
    public var value: String

    public init(name: SettingName,
                principalArn: String? = nil,
                value: String) {
        self.name = name
        self.principalArn = principalArn
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case principalArn
        case value
    }

    public func validate() throws {
    }
}

public struct PutAccountSettingResponse: Codable, Equatable {
    public var setting: Setting?

    public init(setting: Setting? = nil) {
        self.setting = setting
    }

    enum CodingKeys: String, CodingKey {
        case setting
    }

    public func validate() throws {
        try setting?.validate()
    }
}

public struct PutAttributesRequest: Codable, Equatable {
    public var attributes: Attributes
    public var cluster: String?

    public init(attributes: Attributes,
                cluster: String? = nil) {
        self.attributes = attributes
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case cluster
    }

    public func validate() throws {
    }
}

public struct PutAttributesResponse: Codable, Equatable {
    public var attributes: Attributes?

    public init(attributes: Attributes? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct PutClusterCapacityProvidersRequest: Codable, Equatable {
    public var capacityProviders: StringList
    public var cluster: String
    public var defaultCapacityProviderStrategy: CapacityProviderStrategy

    public init(capacityProviders: StringList,
                cluster: String,
                defaultCapacityProviderStrategy: CapacityProviderStrategy) {
        self.capacityProviders = capacityProviders
        self.cluster = cluster
        self.defaultCapacityProviderStrategy = defaultCapacityProviderStrategy
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviders
        case cluster
        case defaultCapacityProviderStrategy
    }

    public func validate() throws {
    }
}

public struct PutClusterCapacityProvidersResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct RegisterContainerInstanceRequest: Codable, Equatable {
    public var attributes: Attributes?
    public var cluster: String?
    public var containerInstanceArn: String?
    public var instanceIdentityDocument: String?
    public var instanceIdentityDocumentSignature: String?
    public var platformDevices: PlatformDevices?
    public var tags: Tags?
    public var totalResources: Resources?
    public var versionInfo: VersionInfo?

    public init(attributes: Attributes? = nil,
                cluster: String? = nil,
                containerInstanceArn: String? = nil,
                instanceIdentityDocument: String? = nil,
                instanceIdentityDocumentSignature: String? = nil,
                platformDevices: PlatformDevices? = nil,
                tags: Tags? = nil,
                totalResources: Resources? = nil,
                versionInfo: VersionInfo? = nil) {
        self.attributes = attributes
        self.cluster = cluster
        self.containerInstanceArn = containerInstanceArn
        self.instanceIdentityDocument = instanceIdentityDocument
        self.instanceIdentityDocumentSignature = instanceIdentityDocumentSignature
        self.platformDevices = platformDevices
        self.tags = tags
        self.totalResources = totalResources
        self.versionInfo = versionInfo
    }

    enum CodingKeys: String, CodingKey {
        case attributes
        case cluster
        case containerInstanceArn
        case instanceIdentityDocument
        case instanceIdentityDocumentSignature
        case platformDevices
        case tags
        case totalResources
        case versionInfo
    }

    public func validate() throws {
        try tags?.validateAsTags()
        try versionInfo?.validate()
    }
}

public struct RegisterContainerInstanceResponse: Codable, Equatable {
    public var containerInstance: ContainerInstance?

    public init(containerInstance: ContainerInstance? = nil) {
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case containerInstance
    }

    public func validate() throws {
        try containerInstance?.validate()
    }
}

public struct RegisterTaskDefinitionRequest: Codable, Equatable {
    public var containerDefinitions: ContainerDefinitions
    public var cpu: String?
    public var ephemeralStorage: EphemeralStorage?
    public var executionRoleArn: String?
    public var family: String
    public var inferenceAccelerators: InferenceAccelerators?
    public var ipcMode: IpcMode?
    public var memory: String?
    public var networkMode: NetworkMode?
    public var pidMode: PidMode?
    public var placementConstraints: TaskDefinitionPlacementConstraints?
    public var proxyConfiguration: ProxyConfiguration?
    public var requiresCompatibilities: CompatibilityList?
    public var runtimePlatform: RuntimePlatform?
    public var tags: Tags?
    public var taskRoleArn: String?
    public var volumes: VolumeList?

    public init(containerDefinitions: ContainerDefinitions,
                cpu: String? = nil,
                ephemeralStorage: EphemeralStorage? = nil,
                executionRoleArn: String? = nil,
                family: String,
                inferenceAccelerators: InferenceAccelerators? = nil,
                ipcMode: IpcMode? = nil,
                memory: String? = nil,
                networkMode: NetworkMode? = nil,
                pidMode: PidMode? = nil,
                placementConstraints: TaskDefinitionPlacementConstraints? = nil,
                proxyConfiguration: ProxyConfiguration? = nil,
                requiresCompatibilities: CompatibilityList? = nil,
                runtimePlatform: RuntimePlatform? = nil,
                tags: Tags? = nil,
                taskRoleArn: String? = nil,
                volumes: VolumeList? = nil) {
        self.containerDefinitions = containerDefinitions
        self.cpu = cpu
        self.ephemeralStorage = ephemeralStorage
        self.executionRoleArn = executionRoleArn
        self.family = family
        self.inferenceAccelerators = inferenceAccelerators
        self.ipcMode = ipcMode
        self.memory = memory
        self.networkMode = networkMode
        self.pidMode = pidMode
        self.placementConstraints = placementConstraints
        self.proxyConfiguration = proxyConfiguration
        self.requiresCompatibilities = requiresCompatibilities
        self.runtimePlatform = runtimePlatform
        self.tags = tags
        self.taskRoleArn = taskRoleArn
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case containerDefinitions
        case cpu
        case ephemeralStorage
        case executionRoleArn
        case family
        case inferenceAccelerators
        case ipcMode
        case memory
        case networkMode
        case pidMode
        case placementConstraints
        case proxyConfiguration
        case requiresCompatibilities
        case runtimePlatform
        case tags
        case taskRoleArn
        case volumes
    }

    public func validate() throws {
        try ephemeralStorage?.validate()
        try proxyConfiguration?.validate()
        try runtimePlatform?.validate()
        try tags?.validateAsTags()
    }
}

public struct RegisterTaskDefinitionResponse: Codable, Equatable {
    public var tags: Tags?
    public var taskDefinition: TaskDefinition?

    public init(tags: Tags? = nil,
                taskDefinition: TaskDefinition? = nil) {
        self.tags = tags
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case tags
        case taskDefinition
    }

    public func validate() throws {
        try tags?.validateAsTags()
        try taskDefinition?.validate()
    }
}

public struct RepositoryCredentials: Codable, Equatable {
    public var credentialsParameter: String

    public init(credentialsParameter: String) {
        self.credentialsParameter = credentialsParameter
    }

    enum CodingKeys: String, CodingKey {
        case credentialsParameter
    }

    public func validate() throws {
    }
}

public struct Resource: Codable, Equatable {
    public var doubleValue: Double?
    public var integerValue: Integer?
    public var longValue: Long?
    public var name: String?
    public var stringSetValue: StringList?
    public var type: String?

    public init(doubleValue: Double? = nil,
                integerValue: Integer? = nil,
                longValue: Long? = nil,
                name: String? = nil,
                stringSetValue: StringList? = nil,
                type: String? = nil) {
        self.doubleValue = doubleValue
        self.integerValue = integerValue
        self.longValue = longValue
        self.name = name
        self.stringSetValue = stringSetValue
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case doubleValue
        case integerValue
        case longValue
        case name
        case stringSetValue
        case type
    }

    public func validate() throws {
    }
}

public struct ResourceInUseException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ResourceNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ResourceRequirement: Codable, Equatable {
    public var type: ResourceType
    public var value: String

    public init(type: ResourceType,
                value: String) {
        self.type = type
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case type
        case value
    }

    public func validate() throws {
    }
}

public struct RunTaskRequest: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var cluster: String?
    public var count: BoxedInteger?
    public var enableECSManagedTags: Boolean?
    public var enableExecuteCommand: Boolean?
    public var group: String?
    public var launchType: LaunchType?
    public var networkConfiguration: NetworkConfiguration?
    public var overrides: TaskOverride?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: String?
    public var propagateTags: PropagateTags?
    public var referenceId: String?
    public var startedBy: String?
    public var tags: Tags?
    public var taskDefinition: String

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                cluster: String? = nil,
                count: BoxedInteger? = nil,
                enableECSManagedTags: Boolean? = nil,
                enableExecuteCommand: Boolean? = nil,
                group: String? = nil,
                launchType: LaunchType? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                overrides: TaskOverride? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: String? = nil,
                propagateTags: PropagateTags? = nil,
                referenceId: String? = nil,
                startedBy: String? = nil,
                tags: Tags? = nil,
                taskDefinition: String) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.cluster = cluster
        self.count = count
        self.enableECSManagedTags = enableECSManagedTags
        self.enableExecuteCommand = enableExecuteCommand
        self.group = group
        self.launchType = launchType
        self.networkConfiguration = networkConfiguration
        self.overrides = overrides
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.propagateTags = propagateTags
        self.referenceId = referenceId
        self.startedBy = startedBy
        self.tags = tags
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case cluster
        case count
        case enableECSManagedTags
        case enableExecuteCommand
        case group
        case launchType
        case networkConfiguration
        case overrides
        case placementConstraints
        case placementStrategy
        case platformVersion
        case propagateTags
        case referenceId
        case startedBy
        case tags
        case taskDefinition
    }

    public func validate() throws {
        try networkConfiguration?.validate()
        try overrides?.validate()
        try tags?.validateAsTags()
    }
}

public struct RunTaskResponse: Codable, Equatable {
    public var failures: Failures?
    public var tasks: Tasks?

    public init(failures: Failures? = nil,
                tasks: Tasks? = nil) {
        self.failures = failures
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case tasks
    }

    public func validate() throws {
    }
}

public struct RuntimePlatform: Codable, Equatable {
    public var cpuArchitecture: CPUArchitecture?
    public var operatingSystemFamily: OSFamily?

    public init(cpuArchitecture: CPUArchitecture? = nil,
                operatingSystemFamily: OSFamily? = nil) {
        self.cpuArchitecture = cpuArchitecture
        self.operatingSystemFamily = operatingSystemFamily
    }

    enum CodingKeys: String, CodingKey {
        case cpuArchitecture
        case operatingSystemFamily
    }

    public func validate() throws {
    }
}

public struct Scale: Codable, Equatable {
    public var unit: ScaleUnit?
    public var value: Double?

    public init(unit: ScaleUnit? = nil,
                value: Double? = nil) {
        self.unit = unit
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case unit
        case value
    }

    public func validate() throws {
    }
}

public struct Secret: Codable, Equatable {
    public var name: String
    public var valueFrom: String

    public init(name: String,
                valueFrom: String) {
        self.name = name
        self.valueFrom = valueFrom
    }

    enum CodingKeys: String, CodingKey {
        case name
        case valueFrom
    }

    public func validate() throws {
    }
}

public struct ServerException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct Service: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var clusterArn: String?
    public var createdAt: Timestamp?
    public var createdBy: String?
    public var deploymentConfiguration: DeploymentConfiguration?
    public var deploymentController: DeploymentController?
    public var deployments: Deployments?
    public var desiredCount: Integer?
    public var enableECSManagedTags: Boolean?
    public var enableExecuteCommand: Boolean?
    public var events: ServiceEvents?
    public var healthCheckGracePeriodSeconds: BoxedInteger?
    public var launchType: LaunchType?
    public var loadBalancers: LoadBalancers?
    public var networkConfiguration: NetworkConfiguration?
    public var pendingCount: Integer?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformFamily: String?
    public var platformVersion: String?
    public var propagateTags: PropagateTags?
    public var roleArn: String?
    public var runningCount: Integer?
    public var schedulingStrategy: SchedulingStrategy?
    public var serviceArn: String?
    public var serviceName: String?
    public var serviceRegistries: ServiceRegistries?
    public var status: String?
    public var tags: Tags?
    public var taskDefinition: String?
    public var taskSets: TaskSets?

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                clusterArn: String? = nil,
                createdAt: Timestamp? = nil,
                createdBy: String? = nil,
                deploymentConfiguration: DeploymentConfiguration? = nil,
                deploymentController: DeploymentController? = nil,
                deployments: Deployments? = nil,
                desiredCount: Integer? = nil,
                enableECSManagedTags: Boolean? = nil,
                enableExecuteCommand: Boolean? = nil,
                events: ServiceEvents? = nil,
                healthCheckGracePeriodSeconds: BoxedInteger? = nil,
                launchType: LaunchType? = nil,
                loadBalancers: LoadBalancers? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                pendingCount: Integer? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformFamily: String? = nil,
                platformVersion: String? = nil,
                propagateTags: PropagateTags? = nil,
                roleArn: String? = nil,
                runningCount: Integer? = nil,
                schedulingStrategy: SchedulingStrategy? = nil,
                serviceArn: String? = nil,
                serviceName: String? = nil,
                serviceRegistries: ServiceRegistries? = nil,
                status: String? = nil,
                tags: Tags? = nil,
                taskDefinition: String? = nil,
                taskSets: TaskSets? = nil) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.clusterArn = clusterArn
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.deploymentConfiguration = deploymentConfiguration
        self.deploymentController = deploymentController
        self.deployments = deployments
        self.desiredCount = desiredCount
        self.enableECSManagedTags = enableECSManagedTags
        self.enableExecuteCommand = enableExecuteCommand
        self.events = events
        self.healthCheckGracePeriodSeconds = healthCheckGracePeriodSeconds
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.pendingCount = pendingCount
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformFamily = platformFamily
        self.platformVersion = platformVersion
        self.propagateTags = propagateTags
        self.roleArn = roleArn
        self.runningCount = runningCount
        self.schedulingStrategy = schedulingStrategy
        self.serviceArn = serviceArn
        self.serviceName = serviceName
        self.serviceRegistries = serviceRegistries
        self.status = status
        self.tags = tags
        self.taskDefinition = taskDefinition
        self.taskSets = taskSets
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case clusterArn
        case createdAt
        case createdBy
        case deploymentConfiguration
        case deploymentController
        case deployments
        case desiredCount
        case enableECSManagedTags
        case enableExecuteCommand
        case events
        case healthCheckGracePeriodSeconds
        case launchType
        case loadBalancers
        case networkConfiguration
        case pendingCount
        case placementConstraints
        case placementStrategy
        case platformFamily
        case platformVersion
        case propagateTags
        case roleArn
        case runningCount
        case schedulingStrategy
        case serviceArn
        case serviceName
        case serviceRegistries
        case status
        case tags
        case taskDefinition
        case taskSets
    }

    public func validate() throws {
        try deploymentConfiguration?.validate()
        try deploymentController?.validate()
        try networkConfiguration?.validate()
        try tags?.validateAsTags()
    }
}

public struct ServiceEvent: Codable, Equatable {
    public var createdAt: Timestamp?
    public var id: String?
    public var message: String?

    public init(createdAt: Timestamp? = nil,
                id: String? = nil,
                message: String? = nil) {
        self.createdAt = createdAt
        self.id = id
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case createdAt
        case id
        case message
    }

    public func validate() throws {
    }
}

public struct ServiceNotActiveException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ServiceNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ServiceRegistry: Codable, Equatable {
    public var containerName: String?
    public var containerPort: BoxedInteger?
    public var port: BoxedInteger?
    public var registryArn: String?

    public init(containerName: String? = nil,
                containerPort: BoxedInteger? = nil,
                port: BoxedInteger? = nil,
                registryArn: String? = nil) {
        self.containerName = containerName
        self.containerPort = containerPort
        self.port = port
        self.registryArn = registryArn
    }

    enum CodingKeys: String, CodingKey {
        case containerName
        case containerPort
        case port
        case registryArn
    }

    public func validate() throws {
    }
}

public struct Session: Codable, Equatable {
    public var sessionId: String?
    public var streamUrl: String?
    public var tokenValue: SensitiveString?

    public init(sessionId: String? = nil,
                streamUrl: String? = nil,
                tokenValue: SensitiveString? = nil) {
        self.sessionId = sessionId
        self.streamUrl = streamUrl
        self.tokenValue = tokenValue
    }

    enum CodingKeys: String, CodingKey {
        case sessionId
        case streamUrl
        case tokenValue
    }

    public func validate() throws {
    }
}

public struct Setting: Codable, Equatable {
    public var name: SettingName?
    public var principalArn: String?
    public var value: String?

    public init(name: SettingName? = nil,
                principalArn: String? = nil,
                value: String? = nil) {
        self.name = name
        self.principalArn = principalArn
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case principalArn
        case value
    }

    public func validate() throws {
    }
}

public struct StartTaskRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstances: StringList
    public var enableECSManagedTags: Boolean?
    public var enableExecuteCommand: Boolean?
    public var group: String?
    public var networkConfiguration: NetworkConfiguration?
    public var overrides: TaskOverride?
    public var propagateTags: PropagateTags?
    public var referenceId: String?
    public var startedBy: String?
    public var tags: Tags?
    public var taskDefinition: String

    public init(cluster: String? = nil,
                containerInstances: StringList,
                enableECSManagedTags: Boolean? = nil,
                enableExecuteCommand: Boolean? = nil,
                group: String? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                overrides: TaskOverride? = nil,
                propagateTags: PropagateTags? = nil,
                referenceId: String? = nil,
                startedBy: String? = nil,
                tags: Tags? = nil,
                taskDefinition: String) {
        self.cluster = cluster
        self.containerInstances = containerInstances
        self.enableECSManagedTags = enableECSManagedTags
        self.enableExecuteCommand = enableExecuteCommand
        self.group = group
        self.networkConfiguration = networkConfiguration
        self.overrides = overrides
        self.propagateTags = propagateTags
        self.referenceId = referenceId
        self.startedBy = startedBy
        self.tags = tags
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
        case enableECSManagedTags
        case enableExecuteCommand
        case group
        case networkConfiguration
        case overrides
        case propagateTags
        case referenceId
        case startedBy
        case tags
        case taskDefinition
    }

    public func validate() throws {
        try networkConfiguration?.validate()
        try overrides?.validate()
        try tags?.validateAsTags()
    }
}

public struct StartTaskResponse: Codable, Equatable {
    public var failures: Failures?
    public var tasks: Tasks?

    public init(failures: Failures? = nil,
                tasks: Tasks? = nil) {
        self.failures = failures
        self.tasks = tasks
    }

    enum CodingKeys: String, CodingKey {
        case failures
        case tasks
    }

    public func validate() throws {
    }
}

public struct StopTaskRequest: Codable, Equatable {
    public var cluster: String?
    public var reason: String?
    public var task: String

    public init(cluster: String? = nil,
                reason: String? = nil,
                task: String) {
        self.cluster = cluster
        self.reason = reason
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case reason
        case task
    }

    public func validate() throws {
    }
}

public struct StopTaskResponse: Codable, Equatable {
    public var task: Task?

    public init(task: Task? = nil) {
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case task
    }

    public func validate() throws {
        try task?.validate()
    }
}

public struct SubmitAttachmentStateChangesRequest: Codable, Equatable {
    public var attachments: AttachmentStateChanges
    public var cluster: String?

    public init(attachments: AttachmentStateChanges,
                cluster: String? = nil) {
        self.attachments = attachments
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case attachments
        case cluster
    }

    public func validate() throws {
    }
}

public struct SubmitAttachmentStateChangesResponse: Codable, Equatable {
    public var acknowledgment: String?

    public init(acknowledgment: String? = nil) {
        self.acknowledgment = acknowledgment
    }

    enum CodingKeys: String, CodingKey {
        case acknowledgment
    }

    public func validate() throws {
    }
}

public struct SubmitContainerStateChangeRequest: Codable, Equatable {
    public var cluster: String?
    public var containerName: String?
    public var exitCode: BoxedInteger?
    public var networkBindings: NetworkBindings?
    public var reason: String?
    public var runtimeId: String?
    public var status: String?
    public var task: String?

    public init(cluster: String? = nil,
                containerName: String? = nil,
                exitCode: BoxedInteger? = nil,
                networkBindings: NetworkBindings? = nil,
                reason: String? = nil,
                runtimeId: String? = nil,
                status: String? = nil,
                task: String? = nil) {
        self.cluster = cluster
        self.containerName = containerName
        self.exitCode = exitCode
        self.networkBindings = networkBindings
        self.reason = reason
        self.runtimeId = runtimeId
        self.status = status
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerName
        case exitCode
        case networkBindings
        case reason
        case runtimeId
        case status
        case task
    }

    public func validate() throws {
    }
}

public struct SubmitContainerStateChangeResponse: Codable, Equatable {
    public var acknowledgment: String?

    public init(acknowledgment: String? = nil) {
        self.acknowledgment = acknowledgment
    }

    enum CodingKeys: String, CodingKey {
        case acknowledgment
    }

    public func validate() throws {
    }
}

public struct SubmitTaskStateChangeRequest: Codable, Equatable {
    public var attachments: AttachmentStateChanges?
    public var cluster: String?
    public var containers: ContainerStateChanges?
    public var executionStoppedAt: Timestamp?
    public var managedAgents: ManagedAgentStateChanges?
    public var pullStartedAt: Timestamp?
    public var pullStoppedAt: Timestamp?
    public var reason: String?
    public var status: String?
    public var task: String?

    public init(attachments: AttachmentStateChanges? = nil,
                cluster: String? = nil,
                containers: ContainerStateChanges? = nil,
                executionStoppedAt: Timestamp? = nil,
                managedAgents: ManagedAgentStateChanges? = nil,
                pullStartedAt: Timestamp? = nil,
                pullStoppedAt: Timestamp? = nil,
                reason: String? = nil,
                status: String? = nil,
                task: String? = nil) {
        self.attachments = attachments
        self.cluster = cluster
        self.containers = containers
        self.executionStoppedAt = executionStoppedAt
        self.managedAgents = managedAgents
        self.pullStartedAt = pullStartedAt
        self.pullStoppedAt = pullStoppedAt
        self.reason = reason
        self.status = status
        self.task = task
    }

    enum CodingKeys: String, CodingKey {
        case attachments
        case cluster
        case containers
        case executionStoppedAt
        case managedAgents
        case pullStartedAt
        case pullStoppedAt
        case reason
        case status
        case task
    }

    public func validate() throws {
    }
}

public struct SubmitTaskStateChangeResponse: Codable, Equatable {
    public var acknowledgment: String?

    public init(acknowledgment: String? = nil) {
        self.acknowledgment = acknowledgment
    }

    enum CodingKeys: String, CodingKey {
        case acknowledgment
    }

    public func validate() throws {
    }
}

public struct SystemControl: Codable, Equatable {
    public var namespace: String?
    public var value: String?

    public init(namespace: String? = nil,
                value: String? = nil) {
        self.namespace = namespace
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case namespace
        case value
    }

    public func validate() throws {
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKey?
    public var value: TagValue?

    public init(key: TagKey? = nil,
                value: TagValue? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case value
    }

    public func validate() throws {
        try key?.validateAsTagKey()
        try value?.validateAsTagValue()
    }
}

public struct TagResourceRequest: Codable, Equatable {
    public var resourceArn: String
    public var tags: Tags

    public init(resourceArn: String,
                tags: Tags) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tags
    }

    public func validate() throws {
        try tags.validateAsTags()
    }
}

public struct TagResourceResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TargetNotConnectedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TargetNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Task: Codable, Equatable {
    public var attachments: Attachments?
    public var attributes: Attributes?
    public var availabilityZone: String?
    public var capacityProviderName: String?
    public var clusterArn: String?
    public var connectivity: Connectivity?
    public var connectivityAt: Timestamp?
    public var containerInstanceArn: String?
    public var containers: Containers?
    public var cpu: String?
    public var createdAt: Timestamp?
    public var desiredStatus: String?
    public var enableExecuteCommand: Boolean?
    public var ephemeralStorage: EphemeralStorage?
    public var executionStoppedAt: Timestamp?
    public var group: String?
    public var healthStatus: HealthStatus?
    public var inferenceAccelerators: InferenceAccelerators?
    public var lastStatus: String?
    public var launchType: LaunchType?
    public var memory: String?
    public var overrides: TaskOverride?
    public var platformFamily: String?
    public var platformVersion: String?
    public var pullStartedAt: Timestamp?
    public var pullStoppedAt: Timestamp?
    public var startedAt: Timestamp?
    public var startedBy: String?
    public var stopCode: TaskStopCode?
    public var stoppedAt: Timestamp?
    public var stoppedReason: String?
    public var stoppingAt: Timestamp?
    public var tags: Tags?
    public var taskArn: String?
    public var taskDefinitionArn: String?
    public var version: Long?

    public init(attachments: Attachments? = nil,
                attributes: Attributes? = nil,
                availabilityZone: String? = nil,
                capacityProviderName: String? = nil,
                clusterArn: String? = nil,
                connectivity: Connectivity? = nil,
                connectivityAt: Timestamp? = nil,
                containerInstanceArn: String? = nil,
                containers: Containers? = nil,
                cpu: String? = nil,
                createdAt: Timestamp? = nil,
                desiredStatus: String? = nil,
                enableExecuteCommand: Boolean? = nil,
                ephemeralStorage: EphemeralStorage? = nil,
                executionStoppedAt: Timestamp? = nil,
                group: String? = nil,
                healthStatus: HealthStatus? = nil,
                inferenceAccelerators: InferenceAccelerators? = nil,
                lastStatus: String? = nil,
                launchType: LaunchType? = nil,
                memory: String? = nil,
                overrides: TaskOverride? = nil,
                platformFamily: String? = nil,
                platformVersion: String? = nil,
                pullStartedAt: Timestamp? = nil,
                pullStoppedAt: Timestamp? = nil,
                startedAt: Timestamp? = nil,
                startedBy: String? = nil,
                stopCode: TaskStopCode? = nil,
                stoppedAt: Timestamp? = nil,
                stoppedReason: String? = nil,
                stoppingAt: Timestamp? = nil,
                tags: Tags? = nil,
                taskArn: String? = nil,
                taskDefinitionArn: String? = nil,
                version: Long? = nil) {
        self.attachments = attachments
        self.attributes = attributes
        self.availabilityZone = availabilityZone
        self.capacityProviderName = capacityProviderName
        self.clusterArn = clusterArn
        self.connectivity = connectivity
        self.connectivityAt = connectivityAt
        self.containerInstanceArn = containerInstanceArn
        self.containers = containers
        self.cpu = cpu
        self.createdAt = createdAt
        self.desiredStatus = desiredStatus
        self.enableExecuteCommand = enableExecuteCommand
        self.ephemeralStorage = ephemeralStorage
        self.executionStoppedAt = executionStoppedAt
        self.group = group
        self.healthStatus = healthStatus
        self.inferenceAccelerators = inferenceAccelerators
        self.lastStatus = lastStatus
        self.launchType = launchType
        self.memory = memory
        self.overrides = overrides
        self.platformFamily = platformFamily
        self.platformVersion = platformVersion
        self.pullStartedAt = pullStartedAt
        self.pullStoppedAt = pullStoppedAt
        self.startedAt = startedAt
        self.startedBy = startedBy
        self.stopCode = stopCode
        self.stoppedAt = stoppedAt
        self.stoppedReason = stoppedReason
        self.stoppingAt = stoppingAt
        self.tags = tags
        self.taskArn = taskArn
        self.taskDefinitionArn = taskDefinitionArn
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case attachments
        case attributes
        case availabilityZone
        case capacityProviderName
        case clusterArn
        case connectivity
        case connectivityAt
        case containerInstanceArn
        case containers
        case cpu
        case createdAt
        case desiredStatus
        case enableExecuteCommand
        case ephemeralStorage
        case executionStoppedAt
        case group
        case healthStatus
        case inferenceAccelerators
        case lastStatus
        case launchType
        case memory
        case overrides
        case platformFamily
        case platformVersion
        case pullStartedAt
        case pullStoppedAt
        case startedAt
        case startedBy
        case stopCode
        case stoppedAt
        case stoppedReason
        case stoppingAt
        case tags
        case taskArn
        case taskDefinitionArn
        case version
    }

    public func validate() throws {
        try ephemeralStorage?.validate()
        try overrides?.validate()
        try tags?.validateAsTags()
    }
}

public struct TaskDefinition: Codable, Equatable {
    public var compatibilities: CompatibilityList?
    public var containerDefinitions: ContainerDefinitions?
    public var cpu: String?
    public var deregisteredAt: Timestamp?
    public var ephemeralStorage: EphemeralStorage?
    public var executionRoleArn: String?
    public var family: String?
    public var inferenceAccelerators: InferenceAccelerators?
    public var ipcMode: IpcMode?
    public var memory: String?
    public var networkMode: NetworkMode?
    public var pidMode: PidMode?
    public var placementConstraints: TaskDefinitionPlacementConstraints?
    public var proxyConfiguration: ProxyConfiguration?
    public var registeredAt: Timestamp?
    public var registeredBy: String?
    public var requiresAttributes: RequiresAttributes?
    public var requiresCompatibilities: CompatibilityList?
    public var revision: Integer?
    public var runtimePlatform: RuntimePlatform?
    public var status: TaskDefinitionStatus?
    public var taskDefinitionArn: String?
    public var taskRoleArn: String?
    public var volumes: VolumeList?

    public init(compatibilities: CompatibilityList? = nil,
                containerDefinitions: ContainerDefinitions? = nil,
                cpu: String? = nil,
                deregisteredAt: Timestamp? = nil,
                ephemeralStorage: EphemeralStorage? = nil,
                executionRoleArn: String? = nil,
                family: String? = nil,
                inferenceAccelerators: InferenceAccelerators? = nil,
                ipcMode: IpcMode? = nil,
                memory: String? = nil,
                networkMode: NetworkMode? = nil,
                pidMode: PidMode? = nil,
                placementConstraints: TaskDefinitionPlacementConstraints? = nil,
                proxyConfiguration: ProxyConfiguration? = nil,
                registeredAt: Timestamp? = nil,
                registeredBy: String? = nil,
                requiresAttributes: RequiresAttributes? = nil,
                requiresCompatibilities: CompatibilityList? = nil,
                revision: Integer? = nil,
                runtimePlatform: RuntimePlatform? = nil,
                status: TaskDefinitionStatus? = nil,
                taskDefinitionArn: String? = nil,
                taskRoleArn: String? = nil,
                volumes: VolumeList? = nil) {
        self.compatibilities = compatibilities
        self.containerDefinitions = containerDefinitions
        self.cpu = cpu
        self.deregisteredAt = deregisteredAt
        self.ephemeralStorage = ephemeralStorage
        self.executionRoleArn = executionRoleArn
        self.family = family
        self.inferenceAccelerators = inferenceAccelerators
        self.ipcMode = ipcMode
        self.memory = memory
        self.networkMode = networkMode
        self.pidMode = pidMode
        self.placementConstraints = placementConstraints
        self.proxyConfiguration = proxyConfiguration
        self.registeredAt = registeredAt
        self.registeredBy = registeredBy
        self.requiresAttributes = requiresAttributes
        self.requiresCompatibilities = requiresCompatibilities
        self.revision = revision
        self.runtimePlatform = runtimePlatform
        self.status = status
        self.taskDefinitionArn = taskDefinitionArn
        self.taskRoleArn = taskRoleArn
        self.volumes = volumes
    }

    enum CodingKeys: String, CodingKey {
        case compatibilities
        case containerDefinitions
        case cpu
        case deregisteredAt
        case ephemeralStorage
        case executionRoleArn
        case family
        case inferenceAccelerators
        case ipcMode
        case memory
        case networkMode
        case pidMode
        case placementConstraints
        case proxyConfiguration
        case registeredAt
        case registeredBy
        case requiresAttributes
        case requiresCompatibilities
        case revision
        case runtimePlatform
        case status
        case taskDefinitionArn
        case taskRoleArn
        case volumes
    }

    public func validate() throws {
        try ephemeralStorage?.validate()
        try proxyConfiguration?.validate()
        try runtimePlatform?.validate()
    }
}

public struct TaskDefinitionPlacementConstraint: Codable, Equatable {
    public var expression: String?
    public var type: TaskDefinitionPlacementConstraintType?

    public init(expression: String? = nil,
                type: TaskDefinitionPlacementConstraintType? = nil) {
        self.expression = expression
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case expression
        case type
    }

    public func validate() throws {
    }
}

public struct TaskOverride: Codable, Equatable {
    public var containerOverrides: ContainerOverrides?
    public var cpu: String?
    public var ephemeralStorage: EphemeralStorage?
    public var executionRoleArn: String?
    public var inferenceAcceleratorOverrides: InferenceAcceleratorOverrides?
    public var memory: String?
    public var taskRoleArn: String?

    public init(containerOverrides: ContainerOverrides? = nil,
                cpu: String? = nil,
                ephemeralStorage: EphemeralStorage? = nil,
                executionRoleArn: String? = nil,
                inferenceAcceleratorOverrides: InferenceAcceleratorOverrides? = nil,
                memory: String? = nil,
                taskRoleArn: String? = nil) {
        self.containerOverrides = containerOverrides
        self.cpu = cpu
        self.ephemeralStorage = ephemeralStorage
        self.executionRoleArn = executionRoleArn
        self.inferenceAcceleratorOverrides = inferenceAcceleratorOverrides
        self.memory = memory
        self.taskRoleArn = taskRoleArn
    }

    enum CodingKeys: String, CodingKey {
        case containerOverrides
        case cpu
        case ephemeralStorage
        case executionRoleArn
        case inferenceAcceleratorOverrides
        case memory
        case taskRoleArn
    }

    public func validate() throws {
        try ephemeralStorage?.validate()
    }
}

public struct TaskSet: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var clusterArn: String?
    public var computedDesiredCount: Integer?
    public var createdAt: Timestamp?
    public var externalId: String?
    public var id: String?
    public var launchType: LaunchType?
    public var loadBalancers: LoadBalancers?
    public var networkConfiguration: NetworkConfiguration?
    public var pendingCount: Integer?
    public var platformFamily: String?
    public var platformVersion: String?
    public var runningCount: Integer?
    public var scale: Scale?
    public var serviceArn: String?
    public var serviceRegistries: ServiceRegistries?
    public var stabilityStatus: StabilityStatus?
    public var stabilityStatusAt: Timestamp?
    public var startedBy: String?
    public var status: String?
    public var tags: Tags?
    public var taskDefinition: String?
    public var taskSetArn: String?
    public var updatedAt: Timestamp?

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                clusterArn: String? = nil,
                computedDesiredCount: Integer? = nil,
                createdAt: Timestamp? = nil,
                externalId: String? = nil,
                id: String? = nil,
                launchType: LaunchType? = nil,
                loadBalancers: LoadBalancers? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                pendingCount: Integer? = nil,
                platformFamily: String? = nil,
                platformVersion: String? = nil,
                runningCount: Integer? = nil,
                scale: Scale? = nil,
                serviceArn: String? = nil,
                serviceRegistries: ServiceRegistries? = nil,
                stabilityStatus: StabilityStatus? = nil,
                stabilityStatusAt: Timestamp? = nil,
                startedBy: String? = nil,
                status: String? = nil,
                tags: Tags? = nil,
                taskDefinition: String? = nil,
                taskSetArn: String? = nil,
                updatedAt: Timestamp? = nil) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.clusterArn = clusterArn
        self.computedDesiredCount = computedDesiredCount
        self.createdAt = createdAt
        self.externalId = externalId
        self.id = id
        self.launchType = launchType
        self.loadBalancers = loadBalancers
        self.networkConfiguration = networkConfiguration
        self.pendingCount = pendingCount
        self.platformFamily = platformFamily
        self.platformVersion = platformVersion
        self.runningCount = runningCount
        self.scale = scale
        self.serviceArn = serviceArn
        self.serviceRegistries = serviceRegistries
        self.stabilityStatus = stabilityStatus
        self.stabilityStatusAt = stabilityStatusAt
        self.startedBy = startedBy
        self.status = status
        self.tags = tags
        self.taskDefinition = taskDefinition
        self.taskSetArn = taskSetArn
        self.updatedAt = updatedAt
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case clusterArn
        case computedDesiredCount
        case createdAt
        case externalId
        case id
        case launchType
        case loadBalancers
        case networkConfiguration
        case pendingCount
        case platformFamily
        case platformVersion
        case runningCount
        case scale
        case serviceArn
        case serviceRegistries
        case stabilityStatus
        case stabilityStatusAt
        case startedBy
        case status
        case tags
        case taskDefinition
        case taskSetArn
        case updatedAt
    }

    public func validate() throws {
        try networkConfiguration?.validate()
        try scale?.validate()
        try tags?.validateAsTags()
    }
}

public struct TaskSetNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Tmpfs: Codable, Equatable {
    public var containerPath: String
    public var mountOptions: StringList?
    public var size: Integer

    public init(containerPath: String,
                mountOptions: StringList? = nil,
                size: Integer) {
        self.containerPath = containerPath
        self.mountOptions = mountOptions
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case containerPath
        case mountOptions
        case size
    }

    public func validate() throws {
    }
}

public struct Ulimit: Codable, Equatable {
    public var hardLimit: Integer
    public var name: UlimitName
    public var softLimit: Integer

    public init(hardLimit: Integer,
                name: UlimitName,
                softLimit: Integer) {
        self.hardLimit = hardLimit
        self.name = name
        self.softLimit = softLimit
    }

    enum CodingKeys: String, CodingKey {
        case hardLimit
        case name
        case softLimit
    }

    public func validate() throws {
    }
}

public struct UnsupportedFeatureException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UntagResourceRequest: Codable, Equatable {
    public var resourceArn: String
    public var tagKeys: TagKeys

    public init(resourceArn: String,
                tagKeys: TagKeys) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tagKeys
    }

    public func validate() throws {
    }
}

public struct UntagResourceResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateCapacityProviderRequest: Codable, Equatable {
    public var autoScalingGroupProvider: AutoScalingGroupProviderUpdate
    public var name: String

    public init(autoScalingGroupProvider: AutoScalingGroupProviderUpdate,
                name: String) {
        self.autoScalingGroupProvider = autoScalingGroupProvider
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case autoScalingGroupProvider
        case name
    }

    public func validate() throws {
        try autoScalingGroupProvider.validate()
    }
}

public struct UpdateCapacityProviderResponse: Codable, Equatable {
    public var capacityProvider: CapacityProvider?

    public init(capacityProvider: CapacityProvider? = nil) {
        self.capacityProvider = capacityProvider
    }

    enum CodingKeys: String, CodingKey {
        case capacityProvider
    }

    public func validate() throws {
        try capacityProvider?.validate()
    }
}

public struct UpdateClusterRequest: Codable, Equatable {
    public var cluster: String
    public var configuration: ClusterConfiguration?
    public var settings: ClusterSettings?

    public init(cluster: String,
                configuration: ClusterConfiguration? = nil,
                settings: ClusterSettings? = nil) {
        self.cluster = cluster
        self.configuration = configuration
        self.settings = settings
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case configuration
        case settings
    }

    public func validate() throws {
        try configuration?.validate()
    }
}

public struct UpdateClusterResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct UpdateClusterSettingsRequest: Codable, Equatable {
    public var cluster: String
    public var settings: ClusterSettings

    public init(cluster: String,
                settings: ClusterSettings) {
        self.cluster = cluster
        self.settings = settings
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case settings
    }

    public func validate() throws {
    }
}

public struct UpdateClusterSettingsResponse: Codable, Equatable {
    public var cluster: Cluster?

    public init(cluster: Cluster? = nil) {
        self.cluster = cluster
    }

    enum CodingKeys: String, CodingKey {
        case cluster
    }

    public func validate() throws {
        try cluster?.validate()
    }
}

public struct UpdateContainerAgentRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstance: String

    public init(cluster: String? = nil,
                containerInstance: String) {
        self.cluster = cluster
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
    }

    public func validate() throws {
    }
}

public struct UpdateContainerAgentResponse: Codable, Equatable {
    public var containerInstance: ContainerInstance?

    public init(containerInstance: ContainerInstance? = nil) {
        self.containerInstance = containerInstance
    }

    enum CodingKeys: String, CodingKey {
        case containerInstance
    }

    public func validate() throws {
        try containerInstance?.validate()
    }
}

public struct UpdateContainerInstancesStateRequest: Codable, Equatable {
    public var cluster: String?
    public var containerInstances: StringList
    public var status: ContainerInstanceStatus

    public init(cluster: String? = nil,
                containerInstances: StringList,
                status: ContainerInstanceStatus) {
        self.cluster = cluster
        self.containerInstances = containerInstances
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstances
        case status
    }

    public func validate() throws {
    }
}

public struct UpdateContainerInstancesStateResponse: Codable, Equatable {
    public var containerInstances: ContainerInstances?
    public var failures: Failures?

    public init(containerInstances: ContainerInstances? = nil,
                failures: Failures? = nil) {
        self.containerInstances = containerInstances
        self.failures = failures
    }

    enum CodingKeys: String, CodingKey {
        case containerInstances
        case failures
    }

    public func validate() throws {
    }
}

public struct UpdateInProgressException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateServicePrimaryTaskSetRequest: Codable, Equatable {
    public var cluster: String
    public var primaryTaskSet: String
    public var service: String

    public init(cluster: String,
                primaryTaskSet: String,
                service: String) {
        self.cluster = cluster
        self.primaryTaskSet = primaryTaskSet
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case primaryTaskSet
        case service
    }

    public func validate() throws {
    }
}

public struct UpdateServicePrimaryTaskSetResponse: Codable, Equatable {
    public var taskSet: TaskSet?

    public init(taskSet: TaskSet? = nil) {
        self.taskSet = taskSet
    }

    enum CodingKeys: String, CodingKey {
        case taskSet
    }

    public func validate() throws {
        try taskSet?.validate()
    }
}

public struct UpdateServiceRequest: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var cluster: String?
    public var deploymentConfiguration: DeploymentConfiguration?
    public var desiredCount: BoxedInteger?
    public var enableExecuteCommand: BoxedBoolean?
    public var forceNewDeployment: Boolean?
    public var healthCheckGracePeriodSeconds: BoxedInteger?
    public var networkConfiguration: NetworkConfiguration?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: String?
    public var service: String
    public var taskDefinition: String?

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                cluster: String? = nil,
                deploymentConfiguration: DeploymentConfiguration? = nil,
                desiredCount: BoxedInteger? = nil,
                enableExecuteCommand: BoxedBoolean? = nil,
                forceNewDeployment: Boolean? = nil,
                healthCheckGracePeriodSeconds: BoxedInteger? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: String? = nil,
                service: String,
                taskDefinition: String? = nil) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.cluster = cluster
        self.deploymentConfiguration = deploymentConfiguration
        self.desiredCount = desiredCount
        self.enableExecuteCommand = enableExecuteCommand
        self.forceNewDeployment = forceNewDeployment
        self.healthCheckGracePeriodSeconds = healthCheckGracePeriodSeconds
        self.networkConfiguration = networkConfiguration
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.service = service
        self.taskDefinition = taskDefinition
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy
        case cluster
        case deploymentConfiguration
        case desiredCount
        case enableExecuteCommand
        case forceNewDeployment
        case healthCheckGracePeriodSeconds
        case networkConfiguration
        case placementConstraints
        case placementStrategy
        case platformVersion
        case service
        case taskDefinition
    }

    public func validate() throws {
        try deploymentConfiguration?.validate()
        try networkConfiguration?.validate()
    }
}

public struct UpdateServiceResponse: Codable, Equatable {
    public var service: Service?

    public init(service: Service? = nil) {
        self.service = service
    }

    enum CodingKeys: String, CodingKey {
        case service
    }

    public func validate() throws {
        try service?.validate()
    }
}

public struct UpdateTaskSetRequest: Codable, Equatable {
    public var cluster: String
    public var scale: Scale
    public var service: String
    public var taskSet: String

    public init(cluster: String,
                scale: Scale,
                service: String,
                taskSet: String) {
        self.cluster = cluster
        self.scale = scale
        self.service = service
        self.taskSet = taskSet
    }

    enum CodingKeys: String, CodingKey {
        case cluster
        case scale
        case service
        case taskSet
    }

    public func validate() throws {
        try scale.validate()
    }
}

public struct UpdateTaskSetResponse: Codable, Equatable {
    public var taskSet: TaskSet?

    public init(taskSet: TaskSet? = nil) {
        self.taskSet = taskSet
    }

    enum CodingKeys: String, CodingKey {
        case taskSet
    }

    public func validate() throws {
        try taskSet?.validate()
    }
}

public struct VersionInfo: Codable, Equatable {
    public var agentHash: String?
    public var agentVersion: String?
    public var dockerVersion: String?

    public init(agentHash: String? = nil,
                agentVersion: String? = nil,
                dockerVersion: String? = nil) {
        self.agentHash = agentHash
        self.agentVersion = agentVersion
        self.dockerVersion = dockerVersion
    }

    enum CodingKeys: String, CodingKey {
        case agentHash
        case agentVersion
        case dockerVersion
    }

    public func validate() throws {
    }
}

public struct Volume: Codable, Equatable {
    public var dockerVolumeConfiguration: DockerVolumeConfiguration?
    public var efsVolumeConfiguration: EFSVolumeConfiguration?
    public var fsxWindowsFileServerVolumeConfiguration: FSxWindowsFileServerVolumeConfiguration?
    public var host: HostVolumeProperties?
    public var name: String?

    public init(dockerVolumeConfiguration: DockerVolumeConfiguration? = nil,
                efsVolumeConfiguration: EFSVolumeConfiguration? = nil,
                fsxWindowsFileServerVolumeConfiguration: FSxWindowsFileServerVolumeConfiguration? = nil,
                host: HostVolumeProperties? = nil,
                name: String? = nil) {
        self.dockerVolumeConfiguration = dockerVolumeConfiguration
        self.efsVolumeConfiguration = efsVolumeConfiguration
        self.fsxWindowsFileServerVolumeConfiguration = fsxWindowsFileServerVolumeConfiguration
        self.host = host
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case dockerVolumeConfiguration
        case efsVolumeConfiguration
        case fsxWindowsFileServerVolumeConfiguration
        case host
        case name
    }

    public func validate() throws {
        try dockerVolumeConfiguration?.validate()
        try efsVolumeConfiguration?.validate()
        try fsxWindowsFileServerVolumeConfiguration?.validate()
        try host?.validate()
    }
}

public struct VolumeFrom: Codable, Equatable {
    public var readOnly: BoxedBoolean?
    public var sourceContainer: String?

    public init(readOnly: BoxedBoolean? = nil,
                sourceContainer: String? = nil) {
        self.readOnly = readOnly
        self.sourceContainer = sourceContainer
    }

    enum CodingKeys: String, CodingKey {
        case readOnly
        case sourceContainer
    }

    public func validate() throws {
    }
}
