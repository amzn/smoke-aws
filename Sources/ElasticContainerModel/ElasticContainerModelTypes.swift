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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
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
 Enumeration restricting the values of the ClusterField field.
 */
public enum ClusterField: String, Codable, CustomStringConvertible {
    case statistics = "STATISTICS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClusterField = .statistics
}

/**
 Type definition for the ClusterFieldList field.
 */
public typealias ClusterFieldList = [ClusterField]

/**
 Type definition for the Clusters field.
 */
public typealias Clusters = [Cluster]

/**
 Enumeration restricting the values of the Compatibility field.
 */
public enum Compatibility: String, Codable, CustomStringConvertible {
    case ec2 = "EC2"
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
 Type definition for the ContainerDefinitions field.
 */
public typealias ContainerDefinitions = [ContainerDefinition]

/**
 Enumeration restricting the values of the ContainerInstanceStatus field.
 */
public enum ContainerInstanceStatus: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case draining = "DRAINING"

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
 Type definition for the EnvironmentVariables field.
 */
public typealias EnvironmentVariables = [KeyValuePair]

/**
 Type definition for the Failures field.
 */
public typealias Failures = [Failure]

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
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Enumeration restricting the values of the LaunchType field.
 */
public enum LaunchType: String, Codable, CustomStringConvertible {
    case ec2 = "EC2"
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
    
    public static let __default: LogDriver = .awslogs
}

/**
 Type definition for the Long field.
 */
public typealias Long = Int

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
 Type definition for the PortMappingList field.
 */
public typealias PortMappingList = [PortMapping]

/**
 Type definition for the RequiresAttributes field.
 */
public typealias RequiresAttributes = [Attribute]

/**
 Type definition for the Resources field.
 */
public typealias Resources = [Resource]

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
 Type definition for the ServiceEvents field.
 */
public typealias ServiceEvents = [ServiceEvent]

/**
 Type definition for the ServiceRegistries field.
 */
public typealias ServiceRegistries = [ServiceRegistry]

/**
 Type definition for the Services field.
 */
public typealias Services = [Service]

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
    case inactive = "INACTIVE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TaskDefinitionStatus = .active
}

/**
 Type definition for the Tasks field.
 */
public typealias Tasks = [Task]

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = String

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
