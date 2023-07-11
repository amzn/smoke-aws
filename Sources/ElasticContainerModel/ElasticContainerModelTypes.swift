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
// ElasticContainerModelTypes.swift
// ElasticContainerModel
//

import Foundation

/**
 Enumeration restricting the values of the AgentUpdateStatus field.
 */
public enum AgentUpdateStatus: String, Codable, CustomStringConvertible {
    case failed = "FAILED"
    case pending = "PENDING"
    case staged = "STAGED"
    case staging = "STAGING"
    case updated = "UPDATED"
    case updating = "UPDATING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AgentUpdateStatus = .failed
}

/**
 Enumeration restricting the values of the ApplicationProtocol field.
 */
public enum ApplicationProtocol: String, Codable, CustomStringConvertible {
    case grpc
    case http
    case http2

    public var description: String {
        return rawValue
    }
    
    public static let __default: ApplicationProtocol = .grpc
}

/**
 Enumeration restricting the values of the AssignPublicIp field.
 */
public enum AssignPublicIp: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AssignPublicIp = .disabled
}

/**
 Type definition for the AttachmentDetails field.
 */
public typealias AttachmentDetails = [KeyValuePair]

/**
 Type definition for the AttachmentStateChanges field.
 */
public typealias AttachmentStateChanges = [AttachmentStateChange]

/**
 Type definition for the Attachments field.
 */
public typealias Attachments = [Attachment]

/**
 Type definition for the Attributes field.
 */
public typealias Attributes = [Attribute]

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BoxedBoolean field.
 */
public typealias BoxedBoolean = Bool

/**
 Type definition for the BoxedInteger field.
 */
public typealias BoxedInteger = Int

/**
 Enumeration restricting the values of the CPUArchitecture field.
 */
public enum CPUArchitecture: String, Codable, CustomStringConvertible {
    case arm64 = "ARM64"
    case x8664 = "X86_64"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CPUArchitecture = .arm64
}

/**
 Enumeration restricting the values of the CapacityProviderField field.
 */
public enum CapacityProviderField: String, Codable, CustomStringConvertible {
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityProviderField = .tags
}

/**
 Type definition for the CapacityProviderFieldList field.
 */
public typealias CapacityProviderFieldList = [CapacityProviderField]

/**
 Enumeration restricting the values of the CapacityProviderStatus field.
 */
public enum CapacityProviderStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case inactive = "INACTIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityProviderStatus = .active
}

/**
 Type definition for the CapacityProviderStrategy field.
 */
public typealias CapacityProviderStrategy = [CapacityProviderStrategyItem]

/**
 Type definition for the CapacityProviderStrategyItemBase field.
 */
public typealias CapacityProviderStrategyItemBase = Int

/**
 Type definition for the CapacityProviderStrategyItemWeight field.
 */
public typealias CapacityProviderStrategyItemWeight = Int

/**
 Enumeration restricting the values of the CapacityProviderUpdateStatus field.
 */
public enum CapacityProviderUpdateStatus: String, Codable, CustomStringConvertible {
    case deleteComplete = "DELETE_COMPLETE"
    case deleteFailed = "DELETE_FAILED"
    case deleteInProgress = "DELETE_IN_PROGRESS"
    case updateComplete = "UPDATE_COMPLETE"
    case updateFailed = "UPDATE_FAILED"
    case updateInProgress = "UPDATE_IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityProviderUpdateStatus = .deleteComplete
}

/**
 Type definition for the CapacityProviders field.
 */
public typealias CapacityProviders = [CapacityProvider]

/**
 Enumeration restricting the values of the ClusterField field.
 */
public enum ClusterField: String, Codable, CustomStringConvertible {
    case attachments = "ATTACHMENTS"
    case configurations = "CONFIGURATIONS"
    case settings = "SETTINGS"
    case statistics = "STATISTICS"
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClusterField = .attachments
}

/**
 Type definition for the ClusterFieldList field.
 */
public typealias ClusterFieldList = [ClusterField]

/**
 Enumeration restricting the values of the ClusterSettingName field.
 */
public enum ClusterSettingName: String, Codable, CustomStringConvertible {
    case containerinsights = "containerInsights"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClusterSettingName = .containerinsights
}

/**
 Type definition for the ClusterSettings field.
 */
public typealias ClusterSettings = [ClusterSetting]

/**
 Type definition for the Clusters field.
 */
public typealias Clusters = [Cluster]

/**
 Enumeration restricting the values of the Compatibility field.
 */
public enum Compatibility: String, Codable, CustomStringConvertible {
    case ec2 = "EC2"
    case external = "EXTERNAL"
    case fargate = "FARGATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Compatibility = .ec2
}

/**
 Type definition for the CompatibilityList field.
 */
public typealias CompatibilityList = [Compatibility]

/**
 Enumeration restricting the values of the Connectivity field.
 */
public enum Connectivity: String, Codable, CustomStringConvertible {
    case connected = "CONNECTED"
    case disconnected = "DISCONNECTED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Connectivity = .connected
}

/**
 Enumeration restricting the values of the ContainerCondition field.
 */
public enum ContainerCondition: String, Codable, CustomStringConvertible {
    case complete = "COMPLETE"
    case healthy = "HEALTHY"
    case start = "START"
    case success = "SUCCESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContainerCondition = .complete
}

/**
 Type definition for the ContainerDefinitions field.
 */
public typealias ContainerDefinitions = [ContainerDefinition]

/**
 Type definition for the ContainerDependencies field.
 */
public typealias ContainerDependencies = [ContainerDependency]

/**
 Enumeration restricting the values of the ContainerInstanceField field.
 */
public enum ContainerInstanceField: String, Codable, CustomStringConvertible {
    case containerInstanceHealth = "CONTAINER_INSTANCE_HEALTH"
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContainerInstanceField = .containerInstanceHealth
}

/**
 Type definition for the ContainerInstanceFieldList field.
 */
public typealias ContainerInstanceFieldList = [ContainerInstanceField]

/**
 Enumeration restricting the values of the ContainerInstanceStatus field.
 */
public enum ContainerInstanceStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case deregistering = "DEREGISTERING"
    case draining = "DRAINING"
    case registering = "REGISTERING"
    case registrationFailed = "REGISTRATION_FAILED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContainerInstanceStatus = .active
}

/**
 Type definition for the ContainerInstances field.
 */
public typealias ContainerInstances = [ContainerInstance]

/**
 Type definition for the ContainerOverrides field.
 */
public typealias ContainerOverrides = [ContainerOverride]

/**
 Type definition for the ContainerStateChanges field.
 */
public typealias ContainerStateChanges = [ContainerStateChange]

/**
 Type definition for the Containers field.
 */
public typealias Containers = [Container]

/**
 Enumeration restricting the values of the DeploymentControllerType field.
 */
public enum DeploymentControllerType: String, Codable, CustomStringConvertible {
    case codeDeploy = "CODE_DEPLOY"
    case ecs = "ECS"
    case external = "EXTERNAL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeploymentControllerType = .codeDeploy
}

/**
 Enumeration restricting the values of the DeploymentRolloutState field.
 */
public enum DeploymentRolloutState: String, Codable, CustomStringConvertible {
    case completed = "COMPLETED"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeploymentRolloutState = .completed
}

/**
 Type definition for the Deployments field.
 */
public typealias Deployments = [Deployment]

/**
 Enumeration restricting the values of the DesiredStatus field.
 */
public enum DesiredStatus: String, Codable, CustomStringConvertible {
    case pending = "PENDING"
    case running = "RUNNING"
    case stopped = "STOPPED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DesiredStatus = .pending
}

/**
 Enumeration restricting the values of the DeviceCgroupPermission field.
 */
public enum DeviceCgroupPermission: String, Codable, CustomStringConvertible {
    case mknod
    case read
    case write

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeviceCgroupPermission = .mknod
}

/**
 Type definition for the DeviceCgroupPermissions field.
 */
public typealias DeviceCgroupPermissions = [DeviceCgroupPermission]

/**
 Type definition for the DevicesList field.
 */
public typealias DevicesList = [Device]

/**
 Type definition for the DockerLabelsMap field.
 */
public typealias DockerLabelsMap = [String: String]

/**
 Enumeration restricting the values of the EFSAuthorizationConfigIAM field.
 */
public enum EFSAuthorizationConfigIAM: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EFSAuthorizationConfigIAM = .disabled
}

/**
 Enumeration restricting the values of the EFSTransitEncryption field.
 */
public enum EFSTransitEncryption: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EFSTransitEncryption = .disabled
}

/**
 Enumeration restricting the values of the EnvironmentFileType field.
 */
public enum EnvironmentFileType: String, Codable, CustomStringConvertible {
    case s3

    public var description: String {
        return rawValue
    }
    
    public static let __default: EnvironmentFileType = .s3
}

/**
 Type definition for the EnvironmentFiles field.
 */
public typealias EnvironmentFiles = [EnvironmentFile]

/**
 Type definition for the EnvironmentVariables field.
 */
public typealias EnvironmentVariables = [KeyValuePair]

/**
 Enumeration restricting the values of the ExecuteCommandLogging field.
 */
public enum ExecuteCommandLogging: String, Codable, CustomStringConvertible {
    case `default` = "DEFAULT"
    case none = "NONE"
    case override = "OVERRIDE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExecuteCommandLogging = .`default`
}

/**
 Type definition for the Failures field.
 */
public typealias Failures = [Failure]

/**
 Type definition for the FirelensConfigurationOptionsMap field.
 */
public typealias FirelensConfigurationOptionsMap = [String: String]

/**
 Enumeration restricting the values of the FirelensConfigurationType field.
 */
public enum FirelensConfigurationType: String, Codable, CustomStringConvertible {
    case fluentbit
    case fluentd

    public var description: String {
        return rawValue
    }
    
    public static let __default: FirelensConfigurationType = .fluentbit
}

/**
 Type definition for the GpuIds field.
 */
public typealias GpuIds = [String]

/**
 Enumeration restricting the values of the HealthStatus field.
 */
public enum HealthStatus: String, Codable, CustomStringConvertible {
    case healthy = "HEALTHY"
    case unhealthy = "UNHEALTHY"
    case unknown = "UNKNOWN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: HealthStatus = .healthy
}

/**
 Type definition for the HostEntryList field.
 */
public typealias HostEntryList = [HostEntry]

/**
 Type definition for the InferenceAcceleratorOverrides field.
 */
public typealias InferenceAcceleratorOverrides = [InferenceAcceleratorOverride]

/**
 Type definition for the InferenceAccelerators field.
 */
public typealias InferenceAccelerators = [InferenceAccelerator]

/**
 Type definition for the InstanceHealthCheckResultList field.
 */
public typealias InstanceHealthCheckResultList = [InstanceHealthCheckResult]

/**
 Enumeration restricting the values of the InstanceHealthCheckState field.
 */
public enum InstanceHealthCheckState: String, Codable, CustomStringConvertible {
    case impaired = "IMPAIRED"
    case initializing = "INITIALIZING"
    case insufficientData = "INSUFFICIENT_DATA"
    case ok = "OK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceHealthCheckState = .impaired
}

/**
 Enumeration restricting the values of the InstanceHealthCheckType field.
 */
public enum InstanceHealthCheckType: String, Codable, CustomStringConvertible {
    case containerRuntime = "CONTAINER_RUNTIME"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceHealthCheckType = .containerRuntime
}

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Enumeration restricting the values of the IpcMode field.
 */
public enum IpcMode: String, Codable, CustomStringConvertible {
    case host
    case none
    case task

    public var description: String {
        return rawValue
    }
    
    public static let __default: IpcMode = .host
}

/**
 Enumeration restricting the values of the LaunchType field.
 */
public enum LaunchType: String, Codable, CustomStringConvertible {
    case ec2 = "EC2"
    case external = "EXTERNAL"
    case fargate = "FARGATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LaunchType = .ec2
}

/**
 Type definition for the LoadBalancers field.
 */
public typealias LoadBalancers = [LoadBalancer]

/**
 Type definition for the LogConfigurationOptionsMap field.
 */
public typealias LogConfigurationOptionsMap = [String: String]

/**
 Enumeration restricting the values of the LogDriver field.
 */
public enum LogDriver: String, Codable, CustomStringConvertible {
    case awsfirelens
    case awslogs
    case fluentd
    case gelf
    case journald
    case jsonFile = "json-file"
    case splunk
    case syslog

    public var description: String {
        return rawValue
    }
    
    public static let __default: LogDriver = .awsfirelens
}

/**
 Type definition for the Long field.
 */
public typealias Long = Int

/**
 Enumeration restricting the values of the ManagedAgentName field.
 */
public enum ManagedAgentName: String, Codable, CustomStringConvertible {
    case executecommandagent = "ExecuteCommandAgent"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ManagedAgentName = .executecommandagent
}

/**
 Type definition for the ManagedAgentStateChanges field.
 */
public typealias ManagedAgentStateChanges = [ManagedAgentStateChange]

/**
 Type definition for the ManagedAgents field.
 */
public typealias ManagedAgents = [ManagedAgent]

/**
 Type definition for the ManagedScalingInstanceWarmupPeriod field.
 */
public typealias ManagedScalingInstanceWarmupPeriod = Int

/**
 Enumeration restricting the values of the ManagedScalingStatus field.
 */
public enum ManagedScalingStatus: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ManagedScalingStatus = .disabled
}

/**
 Type definition for the ManagedScalingStepSize field.
 */
public typealias ManagedScalingStepSize = Int

/**
 Type definition for the ManagedScalingTargetCapacity field.
 */
public typealias ManagedScalingTargetCapacity = Int

/**
 Enumeration restricting the values of the ManagedTerminationProtection field.
 */
public enum ManagedTerminationProtection: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ManagedTerminationProtection = .disabled
}

/**
 Type definition for the MountPointList field.
 */
public typealias MountPointList = [MountPoint]

/**
 Type definition for the NetworkBindings field.
 */
public typealias NetworkBindings = [NetworkBinding]

/**
 Type definition for the NetworkInterfaces field.
 */
public typealias NetworkInterfaces = [NetworkInterface]

/**
 Enumeration restricting the values of the NetworkMode field.
 */
public enum NetworkMode: String, Codable, CustomStringConvertible {
    case awsvpc
    case bridge
    case host
    case none

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkMode = .awsvpc
}

/**
 Enumeration restricting the values of the OSFamily field.
 */
public enum OSFamily: String, Codable, CustomStringConvertible {
    case linux = "LINUX"
    case windowsServer2004Core = "WINDOWS_SERVER_2004_CORE"
    case windowsServer2016Full = "WINDOWS_SERVER_2016_FULL"
    case windowsServer2019Core = "WINDOWS_SERVER_2019_CORE"
    case windowsServer2019Full = "WINDOWS_SERVER_2019_FULL"
    case windowsServer2022Core = "WINDOWS_SERVER_2022_CORE"
    case windowsServer2022Full = "WINDOWS_SERVER_2022_FULL"
    case windowsServer20h2Core = "WINDOWS_SERVER_20H2_CORE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: OSFamily = .linux
}

/**
 Enumeration restricting the values of the PidMode field.
 */
public enum PidMode: String, Codable, CustomStringConvertible {
    case host
    case task

    public var description: String {
        return rawValue
    }
    
    public static let __default: PidMode = .host
}

/**
 Enumeration restricting the values of the PlacementConstraintType field.
 */
public enum PlacementConstraintType: String, Codable, CustomStringConvertible {
    case distinctinstance = "distinctInstance"
    case memberof = "memberOf"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementConstraintType = .distinctinstance
}

/**
 Type definition for the PlacementConstraints field.
 */
public typealias PlacementConstraints = [PlacementConstraint]

/**
 Type definition for the PlacementStrategies field.
 */
public typealias PlacementStrategies = [PlacementStrategy]

/**
 Enumeration restricting the values of the PlacementStrategyType field.
 */
public enum PlacementStrategyType: String, Codable, CustomStringConvertible {
    case binpack
    case random
    case spread

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementStrategyType = .binpack
}

/**
 Enumeration restricting the values of the PlatformDeviceType field.
 */
public enum PlatformDeviceType: String, Codable, CustomStringConvertible {
    case gpu = "GPU"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlatformDeviceType = .gpu
}

/**
 Type definition for the PlatformDevices field.
 */
public typealias PlatformDevices = [PlatformDevice]

/**
 Type definition for the PortMappingList field.
 */
public typealias PortMappingList = [PortMapping]

/**
 Type definition for the PortNumber field.
 */
public typealias PortNumber = Int

/**
 Enumeration restricting the values of the PropagateTags field.
 */
public enum PropagateTags: String, Codable, CustomStringConvertible {
    case none = "NONE"
    case service = "SERVICE"
    case taskDefinition = "TASK_DEFINITION"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PropagateTags = .none
}

/**
 Type definition for the ProtectedTasks field.
 */
public typealias ProtectedTasks = [ProtectedTask]

/**
 Type definition for the ProxyConfigurationProperties field.
 */
public typealias ProxyConfigurationProperties = [KeyValuePair]

/**
 Enumeration restricting the values of the ProxyConfigurationType field.
 */
public enum ProxyConfigurationType: String, Codable, CustomStringConvertible {
    case appmesh = "APPMESH"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ProxyConfigurationType = .appmesh
}

/**
 Type definition for the RequiresAttributes field.
 */
public typealias RequiresAttributes = [Attribute]

/**
 Type definition for the ResourceRequirements field.
 */
public typealias ResourceRequirements = [ResourceRequirement]

/**
 Enumeration restricting the values of the ResourceType field.
 */
public enum ResourceType: String, Codable, CustomStringConvertible {
    case gpu = "GPU"
    case inferenceaccelerator = "InferenceAccelerator"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceType = .gpu
}

/**
 Type definition for the Resources field.
 */
public typealias Resources = [Resource]

/**
 Enumeration restricting the values of the ScaleUnit field.
 */
public enum ScaleUnit: String, Codable, CustomStringConvertible {
    case percent = "PERCENT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ScaleUnit = .percent
}

/**
 Enumeration restricting the values of the SchedulingStrategy field.
 */
public enum SchedulingStrategy: String, Codable, CustomStringConvertible {
    case daemon = "DAEMON"
    case replica = "REPLICA"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SchedulingStrategy = .daemon
}

/**
 Enumeration restricting the values of the Scope field.
 */
public enum Scope: String, Codable, CustomStringConvertible {
    case shared
    case task

    public var description: String {
        return rawValue
    }
    
    public static let __default: Scope = .shared
}

/**
 Type definition for the SecretList field.
 */
public typealias SecretList = [Secret]

/**
 Type definition for the SensitiveString field.
 */
public typealias SensitiveString = String

/**
 Type definition for the ServiceConnectClientAliasList field.
 */
public typealias ServiceConnectClientAliasList = [ServiceConnectClientAlias]

/**
 Type definition for the ServiceConnectServiceList field.
 */
public typealias ServiceConnectServiceList = [ServiceConnectService]

/**
 Type definition for the ServiceConnectServiceResourceList field.
 */
public typealias ServiceConnectServiceResourceList = [ServiceConnectServiceResource]

/**
 Type definition for the ServiceEvents field.
 */
public typealias ServiceEvents = [ServiceEvent]

/**
 Enumeration restricting the values of the ServiceField field.
 */
public enum ServiceField: String, Codable, CustomStringConvertible {
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ServiceField = .tags
}

/**
 Type definition for the ServiceFieldList field.
 */
public typealias ServiceFieldList = [ServiceField]

/**
 Type definition for the ServiceRegistries field.
 */
public typealias ServiceRegistries = [ServiceRegistry]

/**
 Type definition for the Services field.
 */
public typealias Services = [Service]

/**
 Enumeration restricting the values of the SettingName field.
 */
public enum SettingName: String, Codable, CustomStringConvertible {
    case awsvpctrunking = "awsvpcTrunking"
    case containerinsights = "containerInsights"
    case containerinstancelongarnformat = "containerInstanceLongArnFormat"
    case fargatefipsmode = "fargateFIPSMode"
    case servicelongarnformat = "serviceLongArnFormat"
    case tagresourceauthorization = "tagResourceAuthorization"
    case tasklongarnformat = "taskLongArnFormat"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SettingName = .awsvpctrunking
}

/**
 Type definition for the Settings field.
 */
public typealias Settings = [Setting]

/**
 Enumeration restricting the values of the SortOrder field.
 */
public enum SortOrder: String, Codable, CustomStringConvertible {
    case asc = "ASC"
    case desc = "DESC"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SortOrder = .asc
}

/**
 Enumeration restricting the values of the StabilityStatus field.
 */
public enum StabilityStatus: String, Codable, CustomStringConvertible {
    case stabilizing = "STABILIZING"
    case steadyState = "STEADY_STATE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StabilityStatus = .stabilizing
}

/**
 Type definition for the Statistics field.
 */
public typealias Statistics = [KeyValuePair]

/**
 Type definition for the StringList field.
 */
public typealias StringList = [String]

/**
 Type definition for the StringMap field.
 */
public typealias StringMap = [String: String]

/**
 Type definition for the SystemControls field.
 */
public typealias SystemControls = [SystemControl]

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeys field.
 */
public typealias TagKeys = [TagKey]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the Tags field.
 */
public typealias Tags = [Tag]

/**
 Enumeration restricting the values of the TargetType field.
 */
public enum TargetType: String, Codable, CustomStringConvertible {
    case containerInstance = "container-instance"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TargetType = .containerInstance
}

/**
 Enumeration restricting the values of the TaskDefinitionFamilyStatus field.
 */
public enum TaskDefinitionFamilyStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case all = "ALL"
    case inactive = "INACTIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskDefinitionFamilyStatus = .active
}

/**
 Enumeration restricting the values of the TaskDefinitionField field.
 */
public enum TaskDefinitionField: String, Codable, CustomStringConvertible {
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskDefinitionField = .tags
}

/**
 Type definition for the TaskDefinitionFieldList field.
 */
public typealias TaskDefinitionFieldList = [TaskDefinitionField]

/**
 Type definition for the TaskDefinitionList field.
 */
public typealias TaskDefinitionList = [TaskDefinition]

/**
 Enumeration restricting the values of the TaskDefinitionPlacementConstraintType field.
 */
public enum TaskDefinitionPlacementConstraintType: String, Codable, CustomStringConvertible {
    case memberof = "memberOf"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskDefinitionPlacementConstraintType = .memberof
}

/**
 Type definition for the TaskDefinitionPlacementConstraints field.
 */
public typealias TaskDefinitionPlacementConstraints = [TaskDefinitionPlacementConstraint]

/**
 Enumeration restricting the values of the TaskDefinitionStatus field.
 */
public enum TaskDefinitionStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case deleteInProgress = "DELETE_IN_PROGRESS"
    case inactive = "INACTIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskDefinitionStatus = .active
}

/**
 Enumeration restricting the values of the TaskField field.
 */
public enum TaskField: String, Codable, CustomStringConvertible {
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskField = .tags
}

/**
 Type definition for the TaskFieldList field.
 */
public typealias TaskFieldList = [TaskField]

/**
 Enumeration restricting the values of the TaskSetField field.
 */
public enum TaskSetField: String, Codable, CustomStringConvertible {
    case tags = "TAGS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskSetField = .tags
}

/**
 Type definition for the TaskSetFieldList field.
 */
public typealias TaskSetFieldList = [TaskSetField]

/**
 Type definition for the TaskSets field.
 */
public typealias TaskSets = [TaskSet]

/**
 Enumeration restricting the values of the TaskStopCode field.
 */
public enum TaskStopCode: String, Codable, CustomStringConvertible {
    case essentialcontainerexited = "EssentialContainerExited"
    case serviceschedulerinitiated = "ServiceSchedulerInitiated"
    case spotinterruption = "SpotInterruption"
    case taskfailedtostart = "TaskFailedToStart"
    case terminationnotice = "TerminationNotice"
    case userinitiated = "UserInitiated"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskStopCode = .essentialcontainerexited
}

/**
 Type definition for the Tasks field.
 */
public typealias Tasks = [Task]

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = Double

/**
 Type definition for the TmpfsList field.
 */
public typealias TmpfsList = [Tmpfs]

/**
 Enumeration restricting the values of the TransportProtocol field.
 */
public enum TransportProtocol: String, Codable, CustomStringConvertible {
    case tcp
    case udp

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransportProtocol = .tcp
}

/**
 Type definition for the UlimitList field.
 */
public typealias UlimitList = [Ulimit]

/**
 Enumeration restricting the values of the UlimitName field.
 */
public enum UlimitName: String, Codable, CustomStringConvertible {
    case core
    case cpu
    case data
    case fsize
    case locks
    case memlock
    case msgqueue
    case nice
    case nofile
    case nproc
    case rss
    case rtprio
    case rttime
    case sigpending
    case stack

    public var description: String {
        return rawValue
    }
    
    public static let __default: UlimitName = .core
}

/**
 Type definition for the VolumeFromList field.
 */
public typealias VolumeFromList = [VolumeFrom]

/**
 Type definition for the VolumeList field.
 */
public typealias VolumeList = [Volume]

/**
 Validation for the CapacityProviderStrategyItemBase field.
*/
extension ElasticContainerModel.CapacityProviderStrategyItemBase {
    public func validateAsCapacityProviderStrategyItemBase() throws {
        if self < 0 {
            throw ElasticContainerError.validationError(reason: "The provided value to CapacityProviderStrategyItemBase violated the minimum range constraint.")
        }

        if self > 100000 {
            throw ElasticContainerError.validationError(reason: "The provided value to CapacityProviderStrategyItemBase violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the CapacityProviderStrategyItemWeight field.
*/
extension ElasticContainerModel.CapacityProviderStrategyItemWeight {
    public func validateAsCapacityProviderStrategyItemWeight() throws {
        if self < 0 {
            throw ElasticContainerError.validationError(reason: "The provided value to CapacityProviderStrategyItemWeight violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticContainerError.validationError(reason: "The provided value to CapacityProviderStrategyItemWeight violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ManagedScalingInstanceWarmupPeriod field.
*/
extension ElasticContainerModel.ManagedScalingInstanceWarmupPeriod {
    public func validateAsManagedScalingInstanceWarmupPeriod() throws {
        if self < 0 {
            throw ElasticContainerError.validationError(reason: "The provided value to ManagedScalingInstanceWarmupPeriod violated the minimum range constraint.")
        }

        if self > 10000 {
            throw ElasticContainerError.validationError(reason: "The provided value to ManagedScalingInstanceWarmupPeriod violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ManagedScalingStepSize field.
*/
extension ElasticContainerModel.ManagedScalingStepSize {
    public func validateAsManagedScalingStepSize() throws {
        if self < 1 {
            throw ElasticContainerError.validationError(reason: "The provided value to ManagedScalingStepSize violated the minimum range constraint.")
        }

        if self > 10000 {
            throw ElasticContainerError.validationError(reason: "The provided value to ManagedScalingStepSize violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ManagedScalingTargetCapacity field.
*/
extension ElasticContainerModel.ManagedScalingTargetCapacity {
    public func validateAsManagedScalingTargetCapacity() throws {
        if self < 1 {
            throw ElasticContainerError.validationError(reason: "The provided value to ManagedScalingTargetCapacity violated the minimum range constraint.")
        }

        if self > 100 {
            throw ElasticContainerError.validationError(reason: "The provided value to ManagedScalingTargetCapacity violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PortNumber field.
*/
extension ElasticContainerModel.PortNumber {
    public func validateAsPortNumber() throws {
        if self < 0 {
            throw ElasticContainerError.validationError(reason: "The provided value to PortNumber violated the minimum range constraint.")
        }

        if self > 65535 {
            throw ElasticContainerError.validationError(reason: "The provided value to PortNumber violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension ElasticContainerModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw ElasticContainerError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw ElasticContainerError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ElasticContainerError.validationError(
                    reason: "The provided value to TagKey violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension ElasticContainerModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 0 {
            throw ElasticContainerError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw ElasticContainerError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ElasticContainerError.validationError(
                    reason: "The provided value to TagValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Tags field.
*/
extension Array where Element == ElasticContainerModel.Tag {
    public func validateAsTags() throws {
        if self.count < 0 {
            throw ElasticContainerError.validationError(reason: "The provided value to Tags violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw ElasticContainerError.validationError(reason: "The provided value to Tags violated the maximum length constraint.")
        }
    }
}
