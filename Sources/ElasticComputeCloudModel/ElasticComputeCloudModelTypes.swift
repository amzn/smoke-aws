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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// ElasticComputeCloudModelTypes.swift
// ElasticComputeCloudModel
//

import Foundation

/**
 Type definition for the AccountAttributeList field.
 */
public typealias AccountAttributeList = [AccountAttribute]

/**
 Enumeration restricting the values of the AccountAttributeName field.
 */
public enum AccountAttributeName: String, Codable, CustomStringConvertible {
    case defaultVpc = "default-vpc"
    case supportedPlatforms = "supported-platforms"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AccountAttributeName = .defaultVpc
}

/**
 Type definition for the AccountAttributeNameStringList field.
 */
public typealias AccountAttributeNameStringList = [AccountAttributeName]

/**
 Type definition for the AccountAttributeValueList field.
 */
public typealias AccountAttributeValueList = [AccountAttributeValue]

/**
 Type definition for the ActiveInstanceSet field.
 */
public typealias ActiveInstanceSet = [ActiveInstance]

/**
 Enumeration restricting the values of the ActivityStatus field.
 */
public enum ActivityStatus: String, Codable, CustomStringConvertible {
    case error
    case fulfilled
    case pendingFulfillment = "pending_fulfillment"
    case pendingTermination = "pending_termination"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActivityStatus = .error
}

/**
 Type definition for the AddressList field.
 */
public typealias AddressList = [Address]

/**
 Enumeration restricting the values of the Affinity field.
 */
public enum Affinity: String, Codable, CustomStringConvertible {
    case `default` = "default"
    case host

    public var description: String {
        return rawValue
    }
    
    public static let __default: Affinity = .`default`
}

/**
 Type definition for the AllocationIdList field.
 */
public typealias AllocationIdList = [String]

/**
 Enumeration restricting the values of the AllocationState field.
 */
public enum AllocationState: String, Codable, CustomStringConvertible {
    case available
    case permanentFailure = "permanent-failure"
    case released
    case releasedPermanentFailure = "released-permanent-failure"
    case underAssessment = "under-assessment"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AllocationState = .available
}

/**
 Enumeration restricting the values of the AllocationStrategy field.
 */
public enum AllocationStrategy: String, Codable, CustomStringConvertible {
    case diversified
    case lowestprice = "lowestPrice"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AllocationStrategy = .diversified
}

/**
 Type definition for the AllowedPrincipalSet field.
 */
public typealias AllowedPrincipalSet = [AllowedPrincipal]

/**
 Enumeration restricting the values of the ArchitectureValues field.
 */
public enum ArchitectureValues: String, Codable, CustomStringConvertible {
    case arm64
    case i386
    case x8664 = "x86_64"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArchitectureValues = .arm64
}

/**
 Enumeration restricting the values of the AssociatedNetworkType field.
 */
public enum AssociatedNetworkType: String, Codable, CustomStringConvertible {
    case vpc

    public var description: String {
        return rawValue
    }
    
    public static let __default: AssociatedNetworkType = .vpc
}

/**
 Type definition for the AssociatedTargetNetworkSet field.
 */
public typealias AssociatedTargetNetworkSet = [AssociatedTargetNetwork]

/**
 Type definition for the AssociationIdList field.
 */
public typealias AssociationIdList = [String]

/**
 Enumeration restricting the values of the AssociationStatusCode field.
 */
public enum AssociationStatusCode: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case associationFailed = "association-failed"
    case disassociated
    case disassociating

    public var description: String {
        return rawValue
    }
    
    public static let __default: AssociationStatusCode = .associated
}

/**
 Enumeration restricting the values of the AttachmentStatus field.
 */
public enum AttachmentStatus: String, Codable, CustomStringConvertible {
    case attached
    case attaching
    case detached
    case detaching

    public var description: String {
        return rawValue
    }
    
    public static let __default: AttachmentStatus = .attached
}

/**
 Type definition for the AuthorizationRuleSet field.
 */
public typealias AuthorizationRuleSet = [AuthorizationRule]

/**
 Enumeration restricting the values of the AutoAcceptSharedAttachmentsValue field.
 */
public enum AutoAcceptSharedAttachmentsValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: AutoAcceptSharedAttachmentsValue = .disable
}

/**
 Enumeration restricting the values of the AutoPlacement field.
 */
public enum AutoPlacement: String, Codable, CustomStringConvertible {
    case off
    case on

    public var description: String {
        return rawValue
    }
    
    public static let __default: AutoPlacement = .off
}

/**
 Type definition for the AvailabilityZoneList field.
 */
public typealias AvailabilityZoneList = [AvailabilityZone]

/**
 Type definition for the AvailabilityZoneMessageList field.
 */
public typealias AvailabilityZoneMessageList = [AvailabilityZoneMessage]

/**
 Enumeration restricting the values of the AvailabilityZoneState field.
 */
public enum AvailabilityZoneState: String, Codable, CustomStringConvertible {
    case available
    case impaired
    case information
    case unavailable

    public var description: String {
        return rawValue
    }
    
    public static let __default: AvailabilityZoneState = .available
}

/**
 Type definition for the AvailableInstanceCapacityList field.
 */
public typealias AvailableInstanceCapacityList = [InstanceCapacity]

/**
 Enumeration restricting the values of the BatchState field.
 */
public enum BatchState: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case cancelledRunning = "cancelled_running"
    case cancelledTerminating = "cancelled_terminating"
    case failed
    case modifying
    case submitted

    public var description: String {
        return rawValue
    }
    
    public static let __default: BatchState = .active
}

/**
 Type definition for the BillingProductList field.
 */
public typealias BillingProductList = [String]

/**
 Type definition for the Blob field.
 */
public typealias Blob = Data

/**
 Type definition for the BlockDeviceMappingList field.
 */
public typealias BlockDeviceMappingList = [BlockDeviceMapping]

/**
 Type definition for the BlockDeviceMappingRequestList field.
 */
public typealias BlockDeviceMappingRequestList = [BlockDeviceMapping]

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BundleIdStringList field.
 */
public typealias BundleIdStringList = [String]

/**
 Type definition for the BundleTaskList field.
 */
public typealias BundleTaskList = [BundleTask]

/**
 Enumeration restricting the values of the BundleTaskState field.
 */
public enum BundleTaskState: String, Codable, CustomStringConvertible {
    case bundling
    case cancelling
    case complete
    case failed
    case pending
    case storing
    case waitingForShutdown = "waiting-for-shutdown"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BundleTaskState = .bundling
}

/**
 Type definition for the ByoipCidrSet field.
 */
public typealias ByoipCidrSet = [ByoipCidr]

/**
 Enumeration restricting the values of the ByoipCidrState field.
 */
public enum ByoipCidrState: String, Codable, CustomStringConvertible {
    case advertised
    case deprovisioned
    case failedDeprovision = "failed-deprovision"
    case failedProvision = "failed-provision"
    case pendingDeprovision = "pending-deprovision"
    case pendingProvision = "pending-provision"
    case provisioned

    public var description: String {
        return rawValue
    }
    
    public static let __default: ByoipCidrState = .advertised
}

/**
 Enumeration restricting the values of the CancelBatchErrorCode field.
 */
public enum CancelBatchErrorCode: String, Codable, CustomStringConvertible {
    case fleetrequestiddoesnotexist = "fleetRequestIdDoesNotExist"
    case fleetrequestidmalformed = "fleetRequestIdMalformed"
    case fleetrequestnotincancellablestate = "fleetRequestNotInCancellableState"
    case unexpectederror = "unexpectedError"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CancelBatchErrorCode = .fleetrequestiddoesnotexist
}

/**
 Type definition for the CancelSpotFleetRequestsErrorSet field.
 */
public typealias CancelSpotFleetRequestsErrorSet = [CancelSpotFleetRequestsErrorItem]

/**
 Type definition for the CancelSpotFleetRequestsSuccessSet field.
 */
public typealias CancelSpotFleetRequestsSuccessSet = [CancelSpotFleetRequestsSuccessItem]

/**
 Enumeration restricting the values of the CancelSpotInstanceRequestState field.
 */
public enum CancelSpotInstanceRequestState: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case closed
    case completed
    case open

    public var description: String {
        return rawValue
    }
    
    public static let __default: CancelSpotInstanceRequestState = .active
}

/**
 Type definition for the CancelledSpotInstanceRequestList field.
 */
public typealias CancelledSpotInstanceRequestList = [CancelledSpotInstanceRequest]

/**
 Type definition for the CapacityReservationIdSet field.
 */
public typealias CapacityReservationIdSet = [String]

/**
 Enumeration restricting the values of the CapacityReservationInstancePlatform field.
 */
public enum CapacityReservationInstancePlatform: String, Codable, CustomStringConvertible {
    case linuxWithSqlServerEnterprise = "Linux with SQL Server Enterprise"
    case linuxWithSqlServerStandard = "Linux with SQL Server Standard"
    case linuxWithSqlServerWeb = "Linux with SQL Server Web"
    case linuxUnix = "Linux/UNIX"
    case redHatEnterpriseLinux = "Red Hat Enterprise Linux"
    case suseLinux = "SUSE Linux"
    case windows = "Windows"
    case windowsWithSqlServer = "Windows with SQL Server"
    case windowsWithSqlServerEnterprise = "Windows with SQL Server Enterprise"
    case windowsWithSqlServerStandard = "Windows with SQL Server Standard"
    case windowsWithSqlServerWeb = "Windows with SQL Server Web"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityReservationInstancePlatform = .linuxWithSqlServerEnterprise
}

/**
 Enumeration restricting the values of the CapacityReservationPreference field.
 */
public enum CapacityReservationPreference: String, Codable, CustomStringConvertible {
    case none
    case open

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityReservationPreference = .none
}

/**
 Type definition for the CapacityReservationSet field.
 */
public typealias CapacityReservationSet = [CapacityReservation]

/**
 Enumeration restricting the values of the CapacityReservationState field.
 */
public enum CapacityReservationState: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case expired
    case failed
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityReservationState = .active
}

/**
 Enumeration restricting the values of the CapacityReservationTenancy field.
 */
public enum CapacityReservationTenancy: String, Codable, CustomStringConvertible {
    case dedicated
    case `default` = "default"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CapacityReservationTenancy = .dedicated
}

/**
 Type definition for the CidrBlockSet field.
 */
public typealias CidrBlockSet = [CidrBlock]

/**
 Type definition for the ClassicLinkDnsSupportList field.
 */
public typealias ClassicLinkDnsSupportList = [ClassicLinkDnsSupport]

/**
 Type definition for the ClassicLinkInstanceList field.
 */
public typealias ClassicLinkInstanceList = [ClassicLinkInstance]

/**
 Type definition for the ClassicLoadBalancers field.
 */
public typealias ClassicLoadBalancers = [ClassicLoadBalancer]

/**
 Enumeration restricting the values of the ClientCertificateRevocationListStatusCode field.
 */
public enum ClientCertificateRevocationListStatusCode: String, Codable, CustomStringConvertible {
    case active
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientCertificateRevocationListStatusCode = .active
}

/**
 Type definition for the ClientVpnAuthenticationList field.
 */
public typealias ClientVpnAuthenticationList = [ClientVpnAuthentication]

/**
 Type definition for the ClientVpnAuthenticationRequestList field.
 */
public typealias ClientVpnAuthenticationRequestList = [ClientVpnAuthenticationRequest]

/**
 Enumeration restricting the values of the ClientVpnAuthenticationType field.
 */
public enum ClientVpnAuthenticationType: String, Codable, CustomStringConvertible {
    case certificateAuthentication = "certificate-authentication"
    case directoryServiceAuthentication = "directory-service-authentication"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientVpnAuthenticationType = .certificateAuthentication
}

/**
 Enumeration restricting the values of the ClientVpnAuthorizationRuleStatusCode field.
 */
public enum ClientVpnAuthorizationRuleStatusCode: String, Codable, CustomStringConvertible {
    case active
    case authorizing
    case failed
    case revoking

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientVpnAuthorizationRuleStatusCode = .active
}

/**
 Type definition for the ClientVpnConnectionSet field.
 */
public typealias ClientVpnConnectionSet = [ClientVpnConnection]

/**
 Enumeration restricting the values of the ClientVpnConnectionStatusCode field.
 */
public enum ClientVpnConnectionStatusCode: String, Codable, CustomStringConvertible {
    case active
    case failedToTerminate = "failed-to-terminate"
    case terminated
    case terminating

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientVpnConnectionStatusCode = .active
}

/**
 Enumeration restricting the values of the ClientVpnEndpointStatusCode field.
 */
public enum ClientVpnEndpointStatusCode: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pendingAssociate = "pending-associate"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientVpnEndpointStatusCode = .available
}

/**
 Type definition for the ClientVpnRouteSet field.
 */
public typealias ClientVpnRouteSet = [ClientVpnRoute]

/**
 Enumeration restricting the values of the ClientVpnRouteStatusCode field.
 */
public enum ClientVpnRouteStatusCode: String, Codable, CustomStringConvertible {
    case active
    case creating
    case deleting
    case failed

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientVpnRouteStatusCode = .active
}

/**
 Type definition for the ClientVpnSecurityGroupIdSet field.
 */
public typealias ClientVpnSecurityGroupIdSet = [String]

/**
 Type definition for the ConnectionNotificationSet field.
 */
public typealias ConnectionNotificationSet = [ConnectionNotification]

/**
 Enumeration restricting the values of the ConnectionNotificationState field.
 */
public enum ConnectionNotificationState: String, Codable, CustomStringConvertible {
    case disabled = "Disabled"
    case enabled = "Enabled"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ConnectionNotificationState = .disabled
}

/**
 Enumeration restricting the values of the ConnectionNotificationType field.
 */
public enum ConnectionNotificationType: String, Codable, CustomStringConvertible {
    case topic = "Topic"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ConnectionNotificationType = .topic
}

/**
 Enumeration restricting the values of the ContainerFormat field.
 */
public enum ContainerFormat: String, Codable, CustomStringConvertible {
    case ova

    public var description: String {
        return rawValue
    }
    
    public static let __default: ContainerFormat = .ova
}

/**
 Type definition for the ConversionIdStringList field.
 */
public typealias ConversionIdStringList = [String]

/**
 Enumeration restricting the values of the ConversionTaskState field.
 */
public enum ConversionTaskState: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case cancelling
    case completed

    public var description: String {
        return rawValue
    }
    
    public static let __default: ConversionTaskState = .active
}

/**
 Type definition for the CreateFleetErrorsSet field.
 */
public typealias CreateFleetErrorsSet = [CreateFleetError]

/**
 Type definition for the CreateFleetInstancesSet field.
 */
public typealias CreateFleetInstancesSet = [CreateFleetInstance]

/**
 Type definition for the CreateVolumePermissionList field.
 */
public typealias CreateVolumePermissionList = [CreateVolumePermission]

/**
 Enumeration restricting the values of the CurrencyCodeValues field.
 */
public enum CurrencyCodeValues: String, Codable, CustomStringConvertible {
    case usd = "USD"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CurrencyCodeValues = .usd
}

/**
 Type definition for the CustomerGatewayIdStringList field.
 */
public typealias CustomerGatewayIdStringList = [String]

/**
 Type definition for the CustomerGatewayList field.
 */
public typealias CustomerGatewayList = [CustomerGateway]

/**
 Enumeration restricting the values of the DatafeedSubscriptionState field.
 */
public enum DatafeedSubscriptionState: String, Codable, CustomStringConvertible {
    case active = "Active"
    case inactive = "Inactive"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DatafeedSubscriptionState = .active
}

/**
 Type definition for the DateTime field.
 */
public typealias DateTime = String

/**
 Enumeration restricting the values of the DefaultRouteTableAssociationValue field.
 */
public enum DefaultRouteTableAssociationValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: DefaultRouteTableAssociationValue = .disable
}

/**
 Enumeration restricting the values of the DefaultRouteTablePropagationValue field.
 */
public enum DefaultRouteTablePropagationValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: DefaultRouteTablePropagationValue = .disable
}

/**
 Enumeration restricting the values of the DefaultTargetCapacityType field.
 */
public enum DefaultTargetCapacityType: String, Codable, CustomStringConvertible {
    case onDemand = "on-demand"
    case spot

    public var description: String {
        return rawValue
    }
    
    public static let __default: DefaultTargetCapacityType = .onDemand
}

/**
 Enumeration restricting the values of the DeleteFleetErrorCode field.
 */
public enum DeleteFleetErrorCode: String, Codable, CustomStringConvertible {
    case fleetiddoesnotexist = "fleetIdDoesNotExist"
    case fleetidmalformed = "fleetIdMalformed"
    case fleetnotindeletablestate = "fleetNotInDeletableState"
    case unexpectederror = "unexpectedError"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeleteFleetErrorCode = .fleetiddoesnotexist
}

/**
 Type definition for the DeleteFleetErrorSet field.
 */
public typealias DeleteFleetErrorSet = [DeleteFleetErrorItem]

/**
 Type definition for the DeleteFleetSuccessSet field.
 */
public typealias DeleteFleetSuccessSet = [DeleteFleetSuccessItem]

/**
 Type definition for the DeleteLaunchTemplateVersionsResponseErrorSet field.
 */
public typealias DeleteLaunchTemplateVersionsResponseErrorSet = [DeleteLaunchTemplateVersionsResponseErrorItem]

/**
 Type definition for the DeleteLaunchTemplateVersionsResponseSuccessSet field.
 */
public typealias DeleteLaunchTemplateVersionsResponseSuccessSet = [DeleteLaunchTemplateVersionsResponseSuccessItem]

/**
 Type definition for the DescribeConversionTaskList field.
 */
public typealias DescribeConversionTaskList = [ConversionTask]

/**
 Type definition for the DescribeFleetsErrorSet field.
 */
public typealias DescribeFleetsErrorSet = [DescribeFleetError]

/**
 Type definition for the DescribeFleetsInstancesSet field.
 */
public typealias DescribeFleetsInstancesSet = [DescribeFleetsInstances]

/**
 Type definition for the DescribeVpcPeeringConnectionsMaxResults field.
 */
public typealias DescribeVpcPeeringConnectionsMaxResults = Int

/**
 Enumeration restricting the values of the DeviceType field.
 */
public enum DeviceType: String, Codable, CustomStringConvertible {
    case ebs
    case instanceStore = "instance-store"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeviceType = .ebs
}

/**
 Type definition for the DhcpConfigurationList field.
 */
public typealias DhcpConfigurationList = [DhcpConfiguration]

/**
 Type definition for the DhcpConfigurationValueList field.
 */
public typealias DhcpConfigurationValueList = [AttributeValue]

/**
 Type definition for the DhcpOptionsIdStringList field.
 */
public typealias DhcpOptionsIdStringList = [String]

/**
 Type definition for the DhcpOptionsList field.
 */
public typealias DhcpOptionsList = [DhcpOptions]

/**
 Enumeration restricting the values of the DiskImageFormat field.
 */
public enum DiskImageFormat: String, Codable, CustomStringConvertible {
    case raw = "RAW"
    case vhd = "VHD"
    case vmdk = "VMDK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DiskImageFormat = .raw
}

/**
 Type definition for the DiskImageList field.
 */
public typealias DiskImageList = [DiskImage]

/**
 Type definition for the DnsEntrySet field.
 */
public typealias DnsEntrySet = [DnsEntry]

/**
 Enumeration restricting the values of the DnsSupportValue field.
 */
public enum DnsSupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: DnsSupportValue = .disable
}

/**
 Enumeration restricting the values of the DomainType field.
 */
public enum DomainType: String, Codable, CustomStringConvertible {
    case standard
    case vpc

    public var description: String {
        return rawValue
    }
    
    public static let __default: DomainType = .standard
}

/**
 Type definition for the EgressOnlyInternetGatewayId field.
 */
public typealias EgressOnlyInternetGatewayId = String

/**
 Type definition for the EgressOnlyInternetGatewayIdList field.
 */
public typealias EgressOnlyInternetGatewayIdList = [EgressOnlyInternetGatewayId]

/**
 Type definition for the EgressOnlyInternetGatewayList field.
 */
public typealias EgressOnlyInternetGatewayList = [EgressOnlyInternetGateway]

/**
 Type definition for the ElasticGpuAssociationList field.
 */
public typealias ElasticGpuAssociationList = [ElasticGpuAssociation]

/**
 Type definition for the ElasticGpuIdSet field.
 */
public typealias ElasticGpuIdSet = [String]

/**
 Type definition for the ElasticGpuSet field.
 */
public typealias ElasticGpuSet = [ElasticGpus]

/**
 Type definition for the ElasticGpuSpecificationList field.
 */
public typealias ElasticGpuSpecificationList = [ElasticGpuSpecification]

/**
 Type definition for the ElasticGpuSpecificationResponseList field.
 */
public typealias ElasticGpuSpecificationResponseList = [ElasticGpuSpecificationResponse]

/**
 Type definition for the ElasticGpuSpecifications field.
 */
public typealias ElasticGpuSpecifications = [ElasticGpuSpecification]

/**
 Enumeration restricting the values of the ElasticGpuState field.
 */
public enum ElasticGpuState: String, Codable, CustomStringConvertible {
    case attached = "ATTACHED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ElasticGpuState = .attached
}

/**
 Enumeration restricting the values of the ElasticGpuStatus field.
 */
public enum ElasticGpuStatus: String, Codable, CustomStringConvertible {
    case impaired = "IMPAIRED"
    case ok = "OK"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ElasticGpuStatus = .impaired
}

/**
 Type definition for the ElasticInferenceAcceleratorAssociationList field.
 */
public typealias ElasticInferenceAcceleratorAssociationList = [ElasticInferenceAcceleratorAssociation]

/**
 Type definition for the ElasticInferenceAccelerators field.
 */
public typealias ElasticInferenceAccelerators = [ElasticInferenceAccelerator]

/**
 Enumeration restricting the values of the EndDateType field.
 */
public enum EndDateType: String, Codable, CustomStringConvertible {
    case limited
    case unlimited

    public var description: String {
        return rawValue
    }
    
    public static let __default: EndDateType = .limited
}

/**
 Type definition for the EndpointSet field.
 */
public typealias EndpointSet = [ClientVpnEndpoint]

/**
 Enumeration restricting the values of the EventCode field.
 */
public enum EventCode: String, Codable, CustomStringConvertible {
    case instanceReboot = "instance-reboot"
    case instanceRetirement = "instance-retirement"
    case instanceStop = "instance-stop"
    case systemMaintenance = "system-maintenance"
    case systemReboot = "system-reboot"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EventCode = .instanceReboot
}

/**
 Enumeration restricting the values of the EventType field.
 */
public enum EventType: String, Codable, CustomStringConvertible {
    case error
    case fleetrequestchange = "fleetRequestChange"
    case instancechange = "instanceChange"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EventType = .error
}

/**
 Enumeration restricting the values of the ExcessCapacityTerminationPolicy field.
 */
public enum ExcessCapacityTerminationPolicy: String, Codable, CustomStringConvertible {
    case `default` = "default"
    case notermination = "noTermination"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExcessCapacityTerminationPolicy = .`default`
}

/**
 Type definition for the ExecutableByStringList field.
 */
public typealias ExecutableByStringList = [String]

/**
 Enumeration restricting the values of the ExportEnvironment field.
 */
public enum ExportEnvironment: String, Codable, CustomStringConvertible {
    case citrix
    case microsoft
    case vmware

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExportEnvironment = .citrix
}

/**
 Type definition for the ExportTaskIdStringList field.
 */
public typealias ExportTaskIdStringList = [String]

/**
 Type definition for the ExportTaskList field.
 */
public typealias ExportTaskList = [ExportTask]

/**
 Enumeration restricting the values of the ExportTaskState field.
 */
public enum ExportTaskState: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case cancelling
    case completed

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExportTaskState = .active
}

/**
 Type definition for the FilterList field.
 */
public typealias FilterList = [Filter]

/**
 Enumeration restricting the values of the FleetActivityStatus field.
 */
public enum FleetActivityStatus: String, Codable, CustomStringConvertible {
    case error
    case fulfilled
    case pendingFulfillment = "pending-fulfillment"
    case pendingTermination = "pending-termination"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetActivityStatus = .error
}

/**
 Enumeration restricting the values of the FleetEventType field.
 */
public enum FleetEventType: String, Codable, CustomStringConvertible {
    case fleetChange = "fleet-change"
    case instanceChange = "instance-change"
    case serviceError = "service-error"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetEventType = .fleetChange
}

/**
 Enumeration restricting the values of the FleetExcessCapacityTerminationPolicy field.
 */
public enum FleetExcessCapacityTerminationPolicy: String, Codable, CustomStringConvertible {
    case noTermination = "no-termination"
    case termination

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetExcessCapacityTerminationPolicy = .noTermination
}

/**
 Type definition for the FleetIdSet field.
 */
public typealias FleetIdSet = [FleetIdentifier]

/**
 Type definition for the FleetIdentifier field.
 */
public typealias FleetIdentifier = String

/**
 Type definition for the FleetLaunchTemplateConfigList field.
 */
public typealias FleetLaunchTemplateConfigList = [FleetLaunchTemplateConfig]

/**
 Type definition for the FleetLaunchTemplateConfigListRequest field.
 */
public typealias FleetLaunchTemplateConfigListRequest = [FleetLaunchTemplateConfigRequest]

/**
 Type definition for the FleetLaunchTemplateOverridesList field.
 */
public typealias FleetLaunchTemplateOverridesList = [FleetLaunchTemplateOverrides]

/**
 Type definition for the FleetLaunchTemplateOverridesListRequest field.
 */
public typealias FleetLaunchTemplateOverridesListRequest = [FleetLaunchTemplateOverridesRequest]

/**
 Enumeration restricting the values of the FleetOnDemandAllocationStrategy field.
 */
public enum FleetOnDemandAllocationStrategy: String, Codable, CustomStringConvertible {
    case lowestPrice = "lowest-price"
    case prioritized

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetOnDemandAllocationStrategy = .lowestPrice
}

/**
 Type definition for the FleetSet field.
 */
public typealias FleetSet = [FleetData]

/**
 Enumeration restricting the values of the FleetStateCode field.
 */
public enum FleetStateCode: String, Codable, CustomStringConvertible {
    case active
    case deleted
    case deletedRunning = "deleted-running"
    case deletedTerminating = "deleted-terminating"
    case failed
    case modifying
    case submitted

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetStateCode = .active
}

/**
 Enumeration restricting the values of the FleetType field.
 */
public enum FleetType: String, Codable, CustomStringConvertible {
    case instant
    case maintain
    case request

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetType = .instant
}

/**
 Type definition for the Float field.
 */
public typealias Float = Double

/**
 Type definition for the FlowLogSet field.
 */
public typealias FlowLogSet = [FlowLog]

/**
 Enumeration restricting the values of the FlowLogsResourceType field.
 */
public enum FlowLogsResourceType: String, Codable, CustomStringConvertible {
    case networkinterface = "NetworkInterface"
    case subnet = "Subnet"
    case vpc = "VPC"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FlowLogsResourceType = .networkinterface
}

/**
 Enumeration restricting the values of the FpgaImageAttributeName field.
 */
public enum FpgaImageAttributeName: String, Codable, CustomStringConvertible {
    case description
    case loadpermission = "loadPermission"
    case name
    case productcodes = "productCodes"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FpgaImageAttributeName = .description
}

/**
 Type definition for the FpgaImageIdList field.
 */
public typealias FpgaImageIdList = [String]

/**
 Type definition for the FpgaImageList field.
 */
public typealias FpgaImageList = [FpgaImage]

/**
 Enumeration restricting the values of the FpgaImageStateCode field.
 */
public enum FpgaImageStateCode: String, Codable, CustomStringConvertible {
    case available
    case failed
    case pending
    case unavailable

    public var description: String {
        return rawValue
    }
    
    public static let __default: FpgaImageStateCode = .available
}

/**
 Enumeration restricting the values of the GatewayType field.
 */
public enum GatewayType: String, Codable, CustomStringConvertible {
    case ipsec1 = "ipsec.1"

    public var description: String {
        return rawValue
    }
    
    public static let __default: GatewayType = .ipsec1
}

/**
 Type definition for the GroupIdStringList field.
 */
public typealias GroupIdStringList = [String]

/**
 Type definition for the GroupIdentifierList field.
 */
public typealias GroupIdentifierList = [GroupIdentifier]

/**
 Type definition for the GroupIdentifierSet field.
 */
public typealias GroupIdentifierSet = [SecurityGroupIdentifier]

/**
 Type definition for the GroupIds field.
 */
public typealias GroupIds = [String]

/**
 Type definition for the GroupNameStringList field.
 */
public typealias GroupNameStringList = [String]

/**
 Type definition for the HistoryRecordSet field.
 */
public typealias HistoryRecordSet = [HistoryRecordEntry]

/**
 Type definition for the HistoryRecords field.
 */
public typealias HistoryRecords = [HistoryRecord]

/**
 Type definition for the HostInstanceList field.
 */
public typealias HostInstanceList = [HostInstance]

/**
 Type definition for the HostList field.
 */
public typealias HostList = [Host]

/**
 Type definition for the HostOfferingSet field.
 */
public typealias HostOfferingSet = [HostOffering]

/**
 Type definition for the HostReservationIdSet field.
 */
public typealias HostReservationIdSet = [String]

/**
 Type definition for the HostReservationSet field.
 */
public typealias HostReservationSet = [HostReservation]

/**
 Enumeration restricting the values of the HostTenancy field.
 */
public enum HostTenancy: String, Codable, CustomStringConvertible {
    case dedicated
    case host

    public var description: String {
        return rawValue
    }
    
    public static let __default: HostTenancy = .dedicated
}

/**
 Enumeration restricting the values of the HypervisorType field.
 */
public enum HypervisorType: String, Codable, CustomStringConvertible {
    case ovm
    case xen

    public var description: String {
        return rawValue
    }
    
    public static let __default: HypervisorType = .ovm
}

/**
 Type definition for the IamInstanceProfileAssociationSet field.
 */
public typealias IamInstanceProfileAssociationSet = [IamInstanceProfileAssociation]

/**
 Enumeration restricting the values of the IamInstanceProfileAssociationState field.
 */
public enum IamInstanceProfileAssociationState: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case disassociated
    case disassociating

    public var description: String {
        return rawValue
    }
    
    public static let __default: IamInstanceProfileAssociationState = .associated
}

/**
 Type definition for the IdFormatList field.
 */
public typealias IdFormatList = [IdFormat]

/**
 Enumeration restricting the values of the ImageAttributeName field.
 */
public enum ImageAttributeName: String, Codable, CustomStringConvertible {
    case blockdevicemapping = "blockDeviceMapping"
    case description
    case kernel
    case launchpermission = "launchPermission"
    case productcodes = "productCodes"
    case ramdisk
    case sriovnetsupport = "sriovNetSupport"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImageAttributeName = .blockdevicemapping
}

/**
 Type definition for the ImageDiskContainerList field.
 */
public typealias ImageDiskContainerList = [ImageDiskContainer]

/**
 Type definition for the ImageIdStringList field.
 */
public typealias ImageIdStringList = [String]

/**
 Type definition for the ImageList field.
 */
public typealias ImageList = [Image]

/**
 Enumeration restricting the values of the ImageState field.
 */
public enum ImageState: String, Codable, CustomStringConvertible {
    case available
    case deregistered
    case error
    case failed
    case invalid
    case pending
    case transient

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImageState = .available
}

/**
 Enumeration restricting the values of the ImageTypeValues field.
 */
public enum ImageTypeValues: String, Codable, CustomStringConvertible {
    case kernel
    case machine
    case ramdisk

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImageTypeValues = .kernel
}

/**
 Type definition for the ImportImageTaskList field.
 */
public typealias ImportImageTaskList = [ImportImageTask]

/**
 Type definition for the ImportInstanceVolumeDetailSet field.
 */
public typealias ImportInstanceVolumeDetailSet = [ImportInstanceVolumeDetailItem]

/**
 Type definition for the ImportSnapshotTaskList field.
 */
public typealias ImportSnapshotTaskList = [ImportSnapshotTask]

/**
 Type definition for the ImportTaskIdList field.
 */
public typealias ImportTaskIdList = [String]

/**
 Enumeration restricting the values of the InstanceAttributeName field.
 */
public enum InstanceAttributeName: String, Codable, CustomStringConvertible {
    case blockdevicemapping = "blockDeviceMapping"
    case disableapitermination = "disableApiTermination"
    case ebsoptimized = "ebsOptimized"
    case enasupport = "enaSupport"
    case groupset = "groupSet"
    case instanceinitiatedshutdownbehavior = "instanceInitiatedShutdownBehavior"
    case instancetype = "instanceType"
    case kernel
    case productcodes = "productCodes"
    case ramdisk
    case rootdevicename = "rootDeviceName"
    case sourcedestcheck = "sourceDestCheck"
    case sriovnetsupport = "sriovNetSupport"
    case userdata = "userData"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceAttributeName = .blockdevicemapping
}

/**
 Type definition for the InstanceBlockDeviceMappingList field.
 */
public typealias InstanceBlockDeviceMappingList = [InstanceBlockDeviceMapping]

/**
 Type definition for the InstanceBlockDeviceMappingSpecificationList field.
 */
public typealias InstanceBlockDeviceMappingSpecificationList = [InstanceBlockDeviceMappingSpecification]

/**
 Type definition for the InstanceCountList field.
 */
public typealias InstanceCountList = [InstanceCount]

/**
 Type definition for the InstanceCreditSpecificationList field.
 */
public typealias InstanceCreditSpecificationList = [InstanceCreditSpecification]

/**
 Type definition for the InstanceCreditSpecificationListRequest field.
 */
public typealias InstanceCreditSpecificationListRequest = [InstanceCreditSpecificationRequest]

/**
 Enumeration restricting the values of the InstanceHealthStatus field.
 */
public enum InstanceHealthStatus: String, Codable, CustomStringConvertible {
    case healthy
    case unhealthy

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceHealthStatus = .healthy
}

/**
 Type definition for the InstanceId field.
 */
public typealias InstanceId = String

/**
 Type definition for the InstanceIdSet field.
 */
public typealias InstanceIdSet = [String]

/**
 Type definition for the InstanceIdStringList field.
 */
public typealias InstanceIdStringList = [String]

/**
 Type definition for the InstanceIdsSet field.
 */
public typealias InstanceIdsSet = [InstanceId]

/**
 Enumeration restricting the values of the InstanceInterruptionBehavior field.
 */
public enum InstanceInterruptionBehavior: String, Codable, CustomStringConvertible {
    case hibernate
    case stop
    case terminate

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceInterruptionBehavior = .hibernate
}

/**
 Type definition for the InstanceIpv6AddressList field.
 */
public typealias InstanceIpv6AddressList = [InstanceIpv6Address]

/**
 Type definition for the InstanceIpv6AddressListRequest field.
 */
public typealias InstanceIpv6AddressListRequest = [InstanceIpv6AddressRequest]

/**
 Enumeration restricting the values of the InstanceLifecycle field.
 */
public enum InstanceLifecycle: String, Codable, CustomStringConvertible {
    case onDemand = "on-demand"
    case spot

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceLifecycle = .onDemand
}

/**
 Enumeration restricting the values of the InstanceLifecycleType field.
 */
public enum InstanceLifecycleType: String, Codable, CustomStringConvertible {
    case scheduled
    case spot

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceLifecycleType = .scheduled
}

/**
 Type definition for the InstanceList field.
 */
public typealias InstanceList = [Instance]

/**
 Enumeration restricting the values of the InstanceMatchCriteria field.
 */
public enum InstanceMatchCriteria: String, Codable, CustomStringConvertible {
    case open
    case targeted

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceMatchCriteria = .open
}

/**
 Type definition for the InstanceMonitoringList field.
 */
public typealias InstanceMonitoringList = [InstanceMonitoring]

/**
 Type definition for the InstanceNetworkInterfaceList field.
 */
public typealias InstanceNetworkInterfaceList = [InstanceNetworkInterface]

/**
 Type definition for the InstanceNetworkInterfaceSpecificationList field.
 */
public typealias InstanceNetworkInterfaceSpecificationList = [InstanceNetworkInterfaceSpecification]

/**
 Type definition for the InstancePrivateIpAddressList field.
 */
public typealias InstancePrivateIpAddressList = [InstancePrivateIpAddress]

/**
 Type definition for the InstanceStateChangeList field.
 */
public typealias InstanceStateChangeList = [InstanceStateChange]

/**
 Enumeration restricting the values of the InstanceStateName field.
 */
public enum InstanceStateName: String, Codable, CustomStringConvertible {
    case pending
    case running
    case shuttingDown = "shutting-down"
    case stopped
    case stopping
    case terminated

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceStateName = .pending
}

/**
 Type definition for the InstanceStatusDetailsList field.
 */
public typealias InstanceStatusDetailsList = [InstanceStatusDetails]

/**
 Type definition for the InstanceStatusEventList field.
 */
public typealias InstanceStatusEventList = [InstanceStatusEvent]

/**
 Type definition for the InstanceStatusList field.
 */
public typealias InstanceStatusList = [InstanceStatus]

/**
 Enumeration restricting the values of the InstanceType field.
 */
public enum InstanceType: String, Codable, CustomStringConvertible {
    case a12xlarge = "a1.2xlarge"
    case a14xlarge = "a1.4xlarge"
    case a1Large = "a1.large"
    case a1Medium = "a1.medium"
    case a1Xlarge = "a1.xlarge"
    case c1Medium = "c1.medium"
    case c1Xlarge = "c1.xlarge"
    case c32xlarge = "c3.2xlarge"
    case c34xlarge = "c3.4xlarge"
    case c38xlarge = "c3.8xlarge"
    case c3Large = "c3.large"
    case c3Xlarge = "c3.xlarge"
    case c42xlarge = "c4.2xlarge"
    case c44xlarge = "c4.4xlarge"
    case c48xlarge = "c4.8xlarge"
    case c4Large = "c4.large"
    case c4Xlarge = "c4.xlarge"
    case c518xlarge = "c5.18xlarge"
    case c52xlarge = "c5.2xlarge"
    case c54xlarge = "c5.4xlarge"
    case c59xlarge = "c5.9xlarge"
    case c5Large = "c5.large"
    case c5Xlarge = "c5.xlarge"
    case c5d18xlarge = "c5d.18xlarge"
    case c5d2xlarge = "c5d.2xlarge"
    case c5d4xlarge = "c5d.4xlarge"
    case c5d9xlarge = "c5d.9xlarge"
    case c5dLarge = "c5d.large"
    case c5dXlarge = "c5d.xlarge"
    case c5n18xlarge = "c5n.18xlarge"
    case c5n2xlarge = "c5n.2xlarge"
    case c5n4xlarge = "c5n.4xlarge"
    case c5n9xlarge = "c5n.9xlarge"
    case c5nLarge = "c5n.large"
    case c5nXlarge = "c5n.xlarge"
    case cc14xlarge = "cc1.4xlarge"
    case cc28xlarge = "cc2.8xlarge"
    case cg14xlarge = "cg1.4xlarge"
    case cr18xlarge = "cr1.8xlarge"
    case d22xlarge = "d2.2xlarge"
    case d24xlarge = "d2.4xlarge"
    case d28xlarge = "d2.8xlarge"
    case d2Xlarge = "d2.xlarge"
    case f116xlarge = "f1.16xlarge"
    case f12xlarge = "f1.2xlarge"
    case f14xlarge = "f1.4xlarge"
    case g22xlarge = "g2.2xlarge"
    case g28xlarge = "g2.8xlarge"
    case g316xlarge = "g3.16xlarge"
    case g34xlarge = "g3.4xlarge"
    case g38xlarge = "g3.8xlarge"
    case g3sXlarge = "g3s.xlarge"
    case h116xlarge = "h1.16xlarge"
    case h12xlarge = "h1.2xlarge"
    case h14xlarge = "h1.4xlarge"
    case h18xlarge = "h1.8xlarge"
    case hi14xlarge = "hi1.4xlarge"
    case hs18xlarge = "hs1.8xlarge"
    case i22xlarge = "i2.2xlarge"
    case i24xlarge = "i2.4xlarge"
    case i28xlarge = "i2.8xlarge"
    case i2Xlarge = "i2.xlarge"
    case i316xlarge = "i3.16xlarge"
    case i32xlarge = "i3.2xlarge"
    case i34xlarge = "i3.4xlarge"
    case i38xlarge = "i3.8xlarge"
    case i3Large = "i3.large"
    case i3Metal = "i3.metal"
    case i3Xlarge = "i3.xlarge"
    case m1Large = "m1.large"
    case m1Medium = "m1.medium"
    case m1Small = "m1.small"
    case m1Xlarge = "m1.xlarge"
    case m22xlarge = "m2.2xlarge"
    case m24xlarge = "m2.4xlarge"
    case m2Xlarge = "m2.xlarge"
    case m32xlarge = "m3.2xlarge"
    case m3Large = "m3.large"
    case m3Medium = "m3.medium"
    case m3Xlarge = "m3.xlarge"
    case m410xlarge = "m4.10xlarge"
    case m416xlarge = "m4.16xlarge"
    case m42xlarge = "m4.2xlarge"
    case m44xlarge = "m4.4xlarge"
    case m4Large = "m4.large"
    case m4Xlarge = "m4.xlarge"
    case m512xlarge = "m5.12xlarge"
    case m524xlarge = "m5.24xlarge"
    case m52xlarge = "m5.2xlarge"
    case m54xlarge = "m5.4xlarge"
    case m5Large = "m5.large"
    case m5Metal = "m5.metal"
    case m5Xlarge = "m5.xlarge"
    case m5a12xlarge = "m5a.12xlarge"
    case m5a24xlarge = "m5a.24xlarge"
    case m5a2xlarge = "m5a.2xlarge"
    case m5a4xlarge = "m5a.4xlarge"
    case m5aLarge = "m5a.large"
    case m5aXlarge = "m5a.xlarge"
    case m5d12xlarge = "m5d.12xlarge"
    case m5d24xlarge = "m5d.24xlarge"
    case m5d2xlarge = "m5d.2xlarge"
    case m5d4xlarge = "m5d.4xlarge"
    case m5dLarge = "m5d.large"
    case m5dMetal = "m5d.metal"
    case m5dXlarge = "m5d.xlarge"
    case p216xlarge = "p2.16xlarge"
    case p28xlarge = "p2.8xlarge"
    case p2Xlarge = "p2.xlarge"
    case p316xlarge = "p3.16xlarge"
    case p32xlarge = "p3.2xlarge"
    case p38xlarge = "p3.8xlarge"
    case p3dn24xlarge = "p3dn.24xlarge"
    case r32xlarge = "r3.2xlarge"
    case r34xlarge = "r3.4xlarge"
    case r38xlarge = "r3.8xlarge"
    case r3Large = "r3.large"
    case r3Xlarge = "r3.xlarge"
    case r416xlarge = "r4.16xlarge"
    case r42xlarge = "r4.2xlarge"
    case r44xlarge = "r4.4xlarge"
    case r48xlarge = "r4.8xlarge"
    case r4Large = "r4.large"
    case r4Xlarge = "r4.xlarge"
    case r512xlarge = "r5.12xlarge"
    case r524xlarge = "r5.24xlarge"
    case r52xlarge = "r5.2xlarge"
    case r54xlarge = "r5.4xlarge"
    case r5Large = "r5.large"
    case r5Metal = "r5.metal"
    case r5Xlarge = "r5.xlarge"
    case r5a12xlarge = "r5a.12xlarge"
    case r5a24xlarge = "r5a.24xlarge"
    case r5a2xlarge = "r5a.2xlarge"
    case r5a4xlarge = "r5a.4xlarge"
    case r5aLarge = "r5a.large"
    case r5aXlarge = "r5a.xlarge"
    case r5d12xlarge = "r5d.12xlarge"
    case r5d24xlarge = "r5d.24xlarge"
    case r5d2xlarge = "r5d.2xlarge"
    case r5d4xlarge = "r5d.4xlarge"
    case r5dLarge = "r5d.large"
    case r5dMetal = "r5d.metal"
    case r5dXlarge = "r5d.xlarge"
    case t1Micro = "t1.micro"
    case t22xlarge = "t2.2xlarge"
    case t2Large = "t2.large"
    case t2Medium = "t2.medium"
    case t2Micro = "t2.micro"
    case t2Nano = "t2.nano"
    case t2Small = "t2.small"
    case t2Xlarge = "t2.xlarge"
    case t32xlarge = "t3.2xlarge"
    case t3Large = "t3.large"
    case t3Medium = "t3.medium"
    case t3Micro = "t3.micro"
    case t3Nano = "t3.nano"
    case t3Small = "t3.small"
    case t3Xlarge = "t3.xlarge"
    case u12tb1Metal = "u-12tb1.metal"
    case u6tb1Metal = "u-6tb1.metal"
    case u9tb1Metal = "u-9tb1.metal"
    case x116xlarge = "x1.16xlarge"
    case x132xlarge = "x1.32xlarge"
    case x1e16xlarge = "x1e.16xlarge"
    case x1e2xlarge = "x1e.2xlarge"
    case x1e32xlarge = "x1e.32xlarge"
    case x1e4xlarge = "x1e.4xlarge"
    case x1e8xlarge = "x1e.8xlarge"
    case x1eXlarge = "x1e.xlarge"
    case z1d12xlarge = "z1d.12xlarge"
    case z1d2xlarge = "z1d.2xlarge"
    case z1d3xlarge = "z1d.3xlarge"
    case z1d6xlarge = "z1d.6xlarge"
    case z1dLarge = "z1d.large"
    case z1dMetal = "z1d.metal"
    case z1dXlarge = "z1d.xlarge"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceType = .a12xlarge
}

/**
 Type definition for the InstanceTypeList field.
 */
public typealias InstanceTypeList = [InstanceType]

/**
 Type definition for the Integer field.
 */
public typealias Integer = Int

/**
 Enumeration restricting the values of the InterfacePermissionType field.
 */
public enum InterfacePermissionType: String, Codable, CustomStringConvertible {
    case eipAssociate = "EIP-ASSOCIATE"
    case instanceAttach = "INSTANCE-ATTACH"

    public var description: String {
        return rawValue
    }
    
    public static let __default: InterfacePermissionType = .eipAssociate
}

/**
 Type definition for the InternetGatewayAttachmentList field.
 */
public typealias InternetGatewayAttachmentList = [InternetGatewayAttachment]

/**
 Type definition for the InternetGatewayList field.
 */
public typealias InternetGatewayList = [InternetGateway]

/**
 Type definition for the IpPermissionList field.
 */
public typealias IpPermissionList = [IpPermission]

/**
 Type definition for the IpRangeList field.
 */
public typealias IpRangeList = [IpRange]

/**
 Type definition for the IpRanges field.
 */
public typealias IpRanges = [String]

/**
 Type definition for the Ipv6Address field.
 */
public typealias Ipv6Address = String

/**
 Type definition for the Ipv6AddressList field.
 */
public typealias Ipv6AddressList = [String]

/**
 Type definition for the Ipv6CidrBlockSet field.
 */
public typealias Ipv6CidrBlockSet = [Ipv6CidrBlock]

/**
 Type definition for the Ipv6RangeList field.
 */
public typealias Ipv6RangeList = [Ipv6Range]

/**
 Enumeration restricting the values of the Ipv6SupportValue field.
 */
public enum Ipv6SupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: Ipv6SupportValue = .disable
}

/**
 Type definition for the KeyNameStringList field.
 */
public typealias KeyNameStringList = [String]

/**
 Type definition for the KeyPairList field.
 */
public typealias KeyPairList = [KeyPairInfo]

/**
 Type definition for the LaunchPermissionList field.
 */
public typealias LaunchPermissionList = [LaunchPermission]

/**
 Type definition for the LaunchSpecsList field.
 */
public typealias LaunchSpecsList = [SpotFleetLaunchSpecification]

/**
 Type definition for the LaunchTemplateBlockDeviceMappingList field.
 */
public typealias LaunchTemplateBlockDeviceMappingList = [LaunchTemplateBlockDeviceMapping]

/**
 Type definition for the LaunchTemplateBlockDeviceMappingRequestList field.
 */
public typealias LaunchTemplateBlockDeviceMappingRequestList = [LaunchTemplateBlockDeviceMappingRequest]

/**
 Type definition for the LaunchTemplateConfigList field.
 */
public typealias LaunchTemplateConfigList = [LaunchTemplateConfig]

/**
 Type definition for the LaunchTemplateElasticInferenceAcceleratorList field.
 */
public typealias LaunchTemplateElasticInferenceAcceleratorList = [LaunchTemplateElasticInferenceAccelerator]

/**
 Type definition for the LaunchTemplateElasticInferenceAcceleratorResponseList field.
 */
public typealias LaunchTemplateElasticInferenceAcceleratorResponseList = [LaunchTemplateElasticInferenceAcceleratorResponse]

/**
 Enumeration restricting the values of the LaunchTemplateErrorCode field.
 */
public enum LaunchTemplateErrorCode: String, Codable, CustomStringConvertible {
    case launchtemplateiddoesnotexist = "launchTemplateIdDoesNotExist"
    case launchtemplateidmalformed = "launchTemplateIdMalformed"
    case launchtemplatenamedoesnotexist = "launchTemplateNameDoesNotExist"
    case launchtemplatenamemalformed = "launchTemplateNameMalformed"
    case launchtemplateversiondoesnotexist = "launchTemplateVersionDoesNotExist"
    case unexpectederror = "unexpectedError"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LaunchTemplateErrorCode = .launchtemplateiddoesnotexist
}

/**
 Type definition for the LaunchTemplateInstanceNetworkInterfaceSpecificationList field.
 */
public typealias LaunchTemplateInstanceNetworkInterfaceSpecificationList = [LaunchTemplateInstanceNetworkInterfaceSpecification]

/**
 Type definition for the LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList field.
 */
public typealias LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList = [LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]

/**
 Type definition for the LaunchTemplateLicenseList field.
 */
public typealias LaunchTemplateLicenseList = [LaunchTemplateLicenseConfiguration]

/**
 Type definition for the LaunchTemplateLicenseSpecificationListRequest field.
 */
public typealias LaunchTemplateLicenseSpecificationListRequest = [LaunchTemplateLicenseConfigurationRequest]

/**
 Type definition for the LaunchTemplateName field.
 */
public typealias LaunchTemplateName = String

/**
 Type definition for the LaunchTemplateNameStringList field.
 */
public typealias LaunchTemplateNameStringList = [LaunchTemplateName]

/**
 Type definition for the LaunchTemplateOverridesList field.
 */
public typealias LaunchTemplateOverridesList = [LaunchTemplateOverrides]

/**
 Type definition for the LaunchTemplateSet field.
 */
public typealias LaunchTemplateSet = [LaunchTemplate]

/**
 Type definition for the LaunchTemplateTagSpecificationList field.
 */
public typealias LaunchTemplateTagSpecificationList = [LaunchTemplateTagSpecification]

/**
 Type definition for the LaunchTemplateTagSpecificationRequestList field.
 */
public typealias LaunchTemplateTagSpecificationRequestList = [LaunchTemplateTagSpecificationRequest]

/**
 Type definition for the LaunchTemplateVersionSet field.
 */
public typealias LaunchTemplateVersionSet = [LaunchTemplateVersion]

/**
 Type definition for the LicenseList field.
 */
public typealias LicenseList = [LicenseConfiguration]

/**
 Type definition for the LicenseSpecificationListRequest field.
 */
public typealias LicenseSpecificationListRequest = [LicenseConfigurationRequest]

/**
 Enumeration restricting the values of the ListingState field.
 */
public enum ListingState: String, Codable, CustomStringConvertible {
    case available
    case cancelled
    case pending
    case sold

    public var description: String {
        return rawValue
    }
    
    public static let __default: ListingState = .available
}

/**
 Enumeration restricting the values of the ListingStatus field.
 */
public enum ListingStatus: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case closed
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: ListingStatus = .active
}

/**
 Type definition for the LoadPermissionList field.
 */
public typealias LoadPermissionList = [LoadPermission]

/**
 Type definition for the LoadPermissionListRequest field.
 */
public typealias LoadPermissionListRequest = [LoadPermissionRequest]

/**
 Enumeration restricting the values of the LogDestinationType field.
 */
public enum LogDestinationType: String, Codable, CustomStringConvertible {
    case cloudWatchLogs = "cloud-watch-logs"
    case s3

    public var description: String {
        return rawValue
    }
    
    public static let __default: LogDestinationType = .cloudWatchLogs
}

/**
 Type definition for the Long field.
 */
public typealias Long = Int

/**
 Enumeration restricting the values of the MarketType field.
 */
public enum MarketType: String, Codable, CustomStringConvertible {
    case spot

    public var description: String {
        return rawValue
    }
    
    public static let __default: MarketType = .spot
}

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Enumeration restricting the values of the MonitoringState field.
 */
public enum MonitoringState: String, Codable, CustomStringConvertible {
    case disabled
    case disabling
    case enabled
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: MonitoringState = .disabled
}

/**
 Enumeration restricting the values of the MoveStatus field.
 */
public enum MoveStatus: String, Codable, CustomStringConvertible {
    case movingtovpc = "movingToVpc"
    case restoringtoclassic = "restoringToClassic"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MoveStatus = .movingtovpc
}

/**
 Type definition for the MovingAddressStatusSet field.
 */
public typealias MovingAddressStatusSet = [MovingAddressStatus]

/**
 Type definition for the NatGatewayAddressList field.
 */
public typealias NatGatewayAddressList = [NatGatewayAddress]

/**
 Type definition for the NatGatewayList field.
 */
public typealias NatGatewayList = [NatGateway]

/**
 Enumeration restricting the values of the NatGatewayState field.
 */
public enum NatGatewayState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case failed
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: NatGatewayState = .available
}

/**
 Type definition for the NetworkAclAssociationList field.
 */
public typealias NetworkAclAssociationList = [NetworkAclAssociation]

/**
 Type definition for the NetworkAclEntryList field.
 */
public typealias NetworkAclEntryList = [NetworkAclEntry]

/**
 Type definition for the NetworkAclList field.
 */
public typealias NetworkAclList = [NetworkAcl]

/**
 Enumeration restricting the values of the NetworkInterfaceAttribute field.
 */
public enum NetworkInterfaceAttribute: String, Codable, CustomStringConvertible {
    case attachment
    case description
    case groupset = "groupSet"
    case sourcedestcheck = "sourceDestCheck"

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkInterfaceAttribute = .attachment
}

/**
 Type definition for the NetworkInterfaceIdList field.
 */
public typealias NetworkInterfaceIdList = [String]

/**
 Type definition for the NetworkInterfaceIpv6AddressesList field.
 */
public typealias NetworkInterfaceIpv6AddressesList = [NetworkInterfaceIpv6Address]

/**
 Type definition for the NetworkInterfaceList field.
 */
public typealias NetworkInterfaceList = [NetworkInterface]

/**
 Type definition for the NetworkInterfacePermissionIdList field.
 */
public typealias NetworkInterfacePermissionIdList = [String]

/**
 Type definition for the NetworkInterfacePermissionList field.
 */
public typealias NetworkInterfacePermissionList = [NetworkInterfacePermission]

/**
 Enumeration restricting the values of the NetworkInterfacePermissionStateCode field.
 */
public enum NetworkInterfacePermissionStateCode: String, Codable, CustomStringConvertible {
    case granted
    case pending
    case revoked
    case revoking

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkInterfacePermissionStateCode = .granted
}

/**
 Type definition for the NetworkInterfacePrivateIpAddressList field.
 */
public typealias NetworkInterfacePrivateIpAddressList = [NetworkInterfacePrivateIpAddress]

/**
 Enumeration restricting the values of the NetworkInterfaceStatus field.
 */
public enum NetworkInterfaceStatus: String, Codable, CustomStringConvertible {
    case associated
    case attaching
    case available
    case detaching
    case inUse = "in-use"

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkInterfaceStatus = .associated
}

/**
 Enumeration restricting the values of the NetworkInterfaceType field.
 */
public enum NetworkInterfaceType: String, Codable, CustomStringConvertible {
    case interface
    case natgateway = "natGateway"

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkInterfaceType = .interface
}

/**
 Type definition for the NewDhcpConfigurationList field.
 */
public typealias NewDhcpConfigurationList = [NewDhcpConfiguration]

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the OccurrenceDayRequestSet field.
 */
public typealias OccurrenceDayRequestSet = [Integer]

/**
 Type definition for the OccurrenceDaySet field.
 */
public typealias OccurrenceDaySet = [Integer]

/**
 Enumeration restricting the values of the OfferingClassType field.
 */
public enum OfferingClassType: String, Codable, CustomStringConvertible {
    case convertible
    case standard

    public var description: String {
        return rawValue
    }
    
    public static let __default: OfferingClassType = .convertible
}

/**
 Enumeration restricting the values of the OfferingTypeValues field.
 */
public enum OfferingTypeValues: String, Codable, CustomStringConvertible {
    case allUpfront = "All Upfront"
    case heavyUtilization = "Heavy Utilization"
    case lightUtilization = "Light Utilization"
    case mediumUtilization = "Medium Utilization"
    case noUpfront = "No Upfront"
    case partialUpfront = "Partial Upfront"

    public var description: String {
        return rawValue
    }
    
    public static let __default: OfferingTypeValues = .allUpfront
}

/**
 Enumeration restricting the values of the OnDemandAllocationStrategy field.
 */
public enum OnDemandAllocationStrategy: String, Codable, CustomStringConvertible {
    case lowestprice = "lowestPrice"
    case prioritized

    public var description: String {
        return rawValue
    }
    
    public static let __default: OnDemandAllocationStrategy = .lowestprice
}

/**
 Enumeration restricting the values of the OperationType field.
 */
public enum OperationType: String, Codable, CustomStringConvertible {
    case add
    case remove

    public var description: String {
        return rawValue
    }
    
    public static let __default: OperationType = .add
}

/**
 Type definition for the OwnerStringList field.
 */
public typealias OwnerStringList = [String]

/**
 Enumeration restricting the values of the PaymentOption field.
 */
public enum PaymentOption: String, Codable, CustomStringConvertible {
    case allupfront = "AllUpfront"
    case noupfront = "NoUpfront"
    case partialupfront = "PartialUpfront"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PaymentOption = .allupfront
}

/**
 Enumeration restricting the values of the PermissionGroup field.
 */
public enum PermissionGroup: String, Codable, CustomStringConvertible {
    case all

    public var description: String {
        return rawValue
    }
    
    public static let __default: PermissionGroup = .all
}

/**
 Type definition for the PlacementGroupList field.
 */
public typealias PlacementGroupList = [PlacementGroup]

/**
 Enumeration restricting the values of the PlacementGroupState field.
 */
public enum PlacementGroupState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementGroupState = .available
}

/**
 Type definition for the PlacementGroupStringList field.
 */
public typealias PlacementGroupStringList = [String]

/**
 Enumeration restricting the values of the PlacementStrategy field.
 */
public enum PlacementStrategy: String, Codable, CustomStringConvertible {
    case cluster
    case partition
    case spread

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementStrategy = .cluster
}

/**
 Enumeration restricting the values of the PlatformValues field.
 */
public enum PlatformValues: String, Codable, CustomStringConvertible {
    case windows = "Windows"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlatformValues = .windows
}

/**
 Type definition for the PoolMaxResults field.
 */
public typealias PoolMaxResults = Int

/**
 Type definition for the PrefixListIdList field.
 */
public typealias PrefixListIdList = [PrefixListId]

/**
 Type definition for the PrefixListIdSet field.
 */
public typealias PrefixListIdSet = [String]

/**
 Type definition for the PrefixListSet field.
 */
public typealias PrefixListSet = [PrefixList]

/**
 Type definition for the PriceScheduleList field.
 */
public typealias PriceScheduleList = [PriceSchedule]

/**
 Type definition for the PriceScheduleSpecificationList field.
 */
public typealias PriceScheduleSpecificationList = [PriceScheduleSpecification]

/**
 Type definition for the PricingDetailsList field.
 */
public typealias PricingDetailsList = [PricingDetail]

/**
 Type definition for the PrincipalIdFormatList field.
 */
public typealias PrincipalIdFormatList = [PrincipalIdFormat]

/**
 Enumeration restricting the values of the PrincipalType field.
 */
public enum PrincipalType: String, Codable, CustomStringConvertible {
    case account = "Account"
    case all = "All"
    case organizationunit = "OrganizationUnit"
    case role = "Role"
    case service = "Service"
    case user = "User"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PrincipalType = .account
}

/**
 Type definition for the PrivateIpAddressConfigSet field.
 */
public typealias PrivateIpAddressConfigSet = [ScheduledInstancesPrivateIpAddressConfig]

/**
 Type definition for the PrivateIpAddressSpecificationList field.
 */
public typealias PrivateIpAddressSpecificationList = [PrivateIpAddressSpecification]

/**
 Type definition for the PrivateIpAddressStringList field.
 */
public typealias PrivateIpAddressStringList = [String]

/**
 Type definition for the ProductCodeList field.
 */
public typealias ProductCodeList = [ProductCode]

/**
 Type definition for the ProductCodeStringList field.
 */
public typealias ProductCodeStringList = [String]

/**
 Enumeration restricting the values of the ProductCodeValues field.
 */
public enum ProductCodeValues: String, Codable, CustomStringConvertible {
    case devpay
    case marketplace

    public var description: String {
        return rawValue
    }
    
    public static let __default: ProductCodeValues = .devpay
}

/**
 Type definition for the ProductDescriptionList field.
 */
public typealias ProductDescriptionList = [String]

/**
 Type definition for the PropagatingVgwList field.
 */
public typealias PropagatingVgwList = [PropagatingVgw]

/**
 Type definition for the PublicIpStringList field.
 */
public typealias PublicIpStringList = [String]

/**
 Type definition for the PublicIpv4PoolRangeSet field.
 */
public typealias PublicIpv4PoolRangeSet = [PublicIpv4PoolRange]

/**
 Type definition for the PublicIpv4PoolSet field.
 */
public typealias PublicIpv4PoolSet = [PublicIpv4Pool]

/**
 Type definition for the PurchaseRequestSet field.
 */
public typealias PurchaseRequestSet = [PurchaseRequest]

/**
 Type definition for the PurchaseSet field.
 */
public typealias PurchaseSet = [Purchase]

/**
 Type definition for the PurchasedScheduledInstanceSet field.
 */
public typealias PurchasedScheduledInstanceSet = [ScheduledInstance]

/**
 Enumeration restricting the values of the RIProductDescription field.
 */
public enum RIProductDescription: String, Codable, CustomStringConvertible {
    case linuxUnix = "Linux/UNIX"
    case linuxUnixAmazonVpc = "Linux/UNIX (Amazon VPC)"
    case windows = "Windows"
    case windowsAmazonVpc = "Windows (Amazon VPC)"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RIProductDescription = .linuxUnix
}

/**
 Type definition for the ReasonCodesList field.
 */
public typealias ReasonCodesList = [ReportInstanceReasonCodes]

/**
 Enumeration restricting the values of the RecurringChargeFrequency field.
 */
public enum RecurringChargeFrequency: String, Codable, CustomStringConvertible {
    case hourly = "Hourly"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RecurringChargeFrequency = .hourly
}

/**
 Type definition for the RecurringChargesList field.
 */
public typealias RecurringChargesList = [RecurringCharge]

/**
 Type definition for the RegionList field.
 */
public typealias RegionList = [Region]

/**
 Type definition for the RegionNameStringList field.
 */
public typealias RegionNameStringList = [String]

/**
 Enumeration restricting the values of the ReportInstanceReasonCodes field.
 */
public enum ReportInstanceReasonCodes: String, Codable, CustomStringConvertible {
    case instanceStuckInState = "instance-stuck-in-state"
    case notAcceptingCredentials = "not-accepting-credentials"
    case other
    case passwordNotAvailable = "password-not-available"
    case performanceEbsVolume = "performance-ebs-volume"
    case performanceInstanceStore = "performance-instance-store"
    case performanceNetwork = "performance-network"
    case performanceOther = "performance-other"
    case unresponsive

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportInstanceReasonCodes = .instanceStuckInState
}

/**
 Enumeration restricting the values of the ReportStatusType field.
 */
public enum ReportStatusType: String, Codable, CustomStringConvertible {
    case impaired
    case ok

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportStatusType = .impaired
}

/**
 Type definition for the RequestHostIdList field.
 */
public typealias RequestHostIdList = [String]

/**
 Type definition for the RequestHostIdSet field.
 */
public typealias RequestHostIdSet = [String]

/**
 Type definition for the ReservationList field.
 */
public typealias ReservationList = [Reservation]

/**
 Enumeration restricting the values of the ReservationState field.
 */
public enum ReservationState: String, Codable, CustomStringConvertible {
    case active
    case paymentFailed = "payment-failed"
    case paymentPending = "payment-pending"
    case retired

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReservationState = .active
}

/**
 Type definition for the ReservedInstanceIdSet field.
 */
public typealias ReservedInstanceIdSet = [String]

/**
 Type definition for the ReservedInstanceReservationValueSet field.
 */
public typealias ReservedInstanceReservationValueSet = [ReservedInstanceReservationValue]

/**
 Enumeration restricting the values of the ReservedInstanceState field.
 */
public enum ReservedInstanceState: String, Codable, CustomStringConvertible {
    case active
    case paymentFailed = "payment-failed"
    case paymentPending = "payment-pending"
    case retired

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReservedInstanceState = .active
}

/**
 Type definition for the ReservedInstancesConfigurationList field.
 */
public typealias ReservedInstancesConfigurationList = [ReservedInstancesConfiguration]

/**
 Type definition for the ReservedInstancesIdStringList field.
 */
public typealias ReservedInstancesIdStringList = [String]

/**
 Type definition for the ReservedInstancesList field.
 */
public typealias ReservedInstancesList = [ReservedInstances]

/**
 Type definition for the ReservedInstancesListingList field.
 */
public typealias ReservedInstancesListingList = [ReservedInstancesListing]

/**
 Type definition for the ReservedInstancesModificationIdStringList field.
 */
public typealias ReservedInstancesModificationIdStringList = [String]

/**
 Type definition for the ReservedInstancesModificationList field.
 */
public typealias ReservedInstancesModificationList = [ReservedInstancesModification]

/**
 Type definition for the ReservedInstancesModificationResultList field.
 */
public typealias ReservedInstancesModificationResultList = [ReservedInstancesModificationResult]

/**
 Type definition for the ReservedInstancesOfferingIdStringList field.
 */
public typealias ReservedInstancesOfferingIdStringList = [String]

/**
 Type definition for the ReservedInstancesOfferingList field.
 */
public typealias ReservedInstancesOfferingList = [ReservedInstancesOffering]

/**
 Type definition for the ReservedIntancesIds field.
 */
public typealias ReservedIntancesIds = [ReservedInstancesId]

/**
 Enumeration restricting the values of the ResetFpgaImageAttributeName field.
 */
public enum ResetFpgaImageAttributeName: String, Codable, CustomStringConvertible {
    case loadpermission = "loadPermission"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResetFpgaImageAttributeName = .loadpermission
}

/**
 Enumeration restricting the values of the ResetImageAttributeName field.
 */
public enum ResetImageAttributeName: String, Codable, CustomStringConvertible {
    case launchpermission = "launchPermission"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResetImageAttributeName = .launchpermission
}

/**
 Type definition for the ResourceIdList field.
 */
public typealias ResourceIdList = [String]

/**
 Type definition for the ResourceList field.
 */
public typealias ResourceList = [String]

/**
 Enumeration restricting the values of the ResourceType field.
 */
public enum ResourceType: String, Codable, CustomStringConvertible {
    case clientVpnEndpoint = "client-vpn-endpoint"
    case customerGateway = "customer-gateway"
    case dedicatedHost = "dedicated-host"
    case dhcpOptions = "dhcp-options"
    case elasticIp = "elastic-ip"
    case fleet
    case fpgaImage = "fpga-image"
    case image
    case instance
    case internetGateway = "internet-gateway"
    case launchTemplate = "launch-template"
    case natgateway
    case networkAcl = "network-acl"
    case networkInterface = "network-interface"
    case reservedInstances = "reserved-instances"
    case routeTable = "route-table"
    case securityGroup = "security-group"
    case snapshot
    case spotInstancesRequest = "spot-instances-request"
    case subnet
    case transitGateway = "transit-gateway"
    case transitGatewayAttachment = "transit-gateway-attachment"
    case transitGatewayRouteTable = "transit-gateway-route-table"
    case volume
    case vpc
    case vpcPeeringConnection = "vpc-peering-connection"
    case vpnConnection = "vpn-connection"
    case vpnGateway = "vpn-gateway"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ResourceType = .clientVpnEndpoint
}

/**
 Type definition for the ResponseHostIdList field.
 */
public typealias ResponseHostIdList = [String]

/**
 Type definition for the ResponseHostIdSet field.
 */
public typealias ResponseHostIdSet = [String]

/**
 Type definition for the RestorableByStringList field.
 */
public typealias RestorableByStringList = [String]

/**
 Type definition for the RouteList field.
 */
public typealias RouteList = [Route]

/**
 Enumeration restricting the values of the RouteOrigin field.
 */
public enum RouteOrigin: String, Codable, CustomStringConvertible {
    case createroute = "CreateRoute"
    case createroutetable = "CreateRouteTable"
    case enablevgwroutepropagation = "EnableVgwRoutePropagation"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RouteOrigin = .createroute
}

/**
 Enumeration restricting the values of the RouteState field.
 */
public enum RouteState: String, Codable, CustomStringConvertible {
    case active
    case blackhole

    public var description: String {
        return rawValue
    }
    
    public static let __default: RouteState = .active
}

/**
 Type definition for the RouteTableAssociationList field.
 */
public typealias RouteTableAssociationList = [RouteTableAssociation]

/**
 Type definition for the RouteTableList field.
 */
public typealias RouteTableList = [RouteTable]

/**
 Enumeration restricting the values of the RuleAction field.
 */
public enum RuleAction: String, Codable, CustomStringConvertible {
    case allow
    case deny

    public var description: String {
        return rawValue
    }
    
    public static let __default: RuleAction = .allow
}

/**
 Type definition for the ScheduledInstanceAvailabilitySet field.
 */
public typealias ScheduledInstanceAvailabilitySet = [ScheduledInstanceAvailability]

/**
 Type definition for the ScheduledInstanceIdRequestSet field.
 */
public typealias ScheduledInstanceIdRequestSet = [String]

/**
 Type definition for the ScheduledInstanceSet field.
 */
public typealias ScheduledInstanceSet = [ScheduledInstance]

/**
 Type definition for the ScheduledInstancesBlockDeviceMappingSet field.
 */
public typealias ScheduledInstancesBlockDeviceMappingSet = [ScheduledInstancesBlockDeviceMapping]

/**
 Type definition for the ScheduledInstancesIpv6AddressList field.
 */
public typealias ScheduledInstancesIpv6AddressList = [ScheduledInstancesIpv6Address]

/**
 Type definition for the ScheduledInstancesNetworkInterfaceSet field.
 */
public typealias ScheduledInstancesNetworkInterfaceSet = [ScheduledInstancesNetworkInterface]

/**
 Type definition for the ScheduledInstancesSecurityGroupIdSet field.
 */
public typealias ScheduledInstancesSecurityGroupIdSet = [String]

/**
 Type definition for the SecurityGroupIdStringList field.
 */
public typealias SecurityGroupIdStringList = [String]

/**
 Type definition for the SecurityGroupList field.
 */
public typealias SecurityGroupList = [SecurityGroup]

/**
 Type definition for the SecurityGroupReferences field.
 */
public typealias SecurityGroupReferences = [SecurityGroupReference]

/**
 Type definition for the SecurityGroupStringList field.
 */
public typealias SecurityGroupStringList = [String]

/**
 Type definition for the ServiceConfigurationSet field.
 */
public typealias ServiceConfigurationSet = [ServiceConfiguration]

/**
 Type definition for the ServiceDetailSet field.
 */
public typealias ServiceDetailSet = [ServiceDetail]

/**
 Enumeration restricting the values of the ServiceState field.
 */
public enum ServiceState: String, Codable, CustomStringConvertible {
    case available = "Available"
    case deleted = "Deleted"
    case deleting = "Deleting"
    case failed = "Failed"
    case pending = "Pending"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ServiceState = .available
}

/**
 Enumeration restricting the values of the ServiceType field.
 */
public enum ServiceType: String, Codable, CustomStringConvertible {
    case gateway = "Gateway"
    case interface = "Interface"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ServiceType = .gateway
}

/**
 Type definition for the ServiceTypeDetailSet field.
 */
public typealias ServiceTypeDetailSet = [ServiceTypeDetail]

/**
 Enumeration restricting the values of the ShutdownBehavior field.
 */
public enum ShutdownBehavior: String, Codable, CustomStringConvertible {
    case stop
    case terminate

    public var description: String {
        return rawValue
    }
    
    public static let __default: ShutdownBehavior = .stop
}

/**
 Enumeration restricting the values of the SnapshotAttributeName field.
 */
public enum SnapshotAttributeName: String, Codable, CustomStringConvertible {
    case createvolumepermission = "createVolumePermission"
    case productcodes = "productCodes"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SnapshotAttributeName = .createvolumepermission
}

/**
 Type definition for the SnapshotDetailList field.
 */
public typealias SnapshotDetailList = [SnapshotDetail]

/**
 Type definition for the SnapshotIdStringList field.
 */
public typealias SnapshotIdStringList = [String]

/**
 Type definition for the SnapshotList field.
 */
public typealias SnapshotList = [Snapshot]

/**
 Enumeration restricting the values of the SnapshotState field.
 */
public enum SnapshotState: String, Codable, CustomStringConvertible {
    case completed
    case error
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: SnapshotState = .completed
}

/**
 Enumeration restricting the values of the SpotAllocationStrategy field.
 */
public enum SpotAllocationStrategy: String, Codable, CustomStringConvertible {
    case diversified
    case lowestPrice = "lowest-price"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SpotAllocationStrategy = .diversified
}

/**
 Type definition for the SpotFleetRequestConfigSet field.
 */
public typealias SpotFleetRequestConfigSet = [SpotFleetRequestConfig]

/**
 Type definition for the SpotFleetTagSpecificationList field.
 */
public typealias SpotFleetTagSpecificationList = [SpotFleetTagSpecification]

/**
 Enumeration restricting the values of the SpotInstanceInterruptionBehavior field.
 */
public enum SpotInstanceInterruptionBehavior: String, Codable, CustomStringConvertible {
    case hibernate
    case stop
    case terminate

    public var description: String {
        return rawValue
    }
    
    public static let __default: SpotInstanceInterruptionBehavior = .hibernate
}

/**
 Type definition for the SpotInstanceRequestIdList field.
 */
public typealias SpotInstanceRequestIdList = [String]

/**
 Type definition for the SpotInstanceRequestList field.
 */
public typealias SpotInstanceRequestList = [SpotInstanceRequest]

/**
 Enumeration restricting the values of the SpotInstanceState field.
 */
public enum SpotInstanceState: String, Codable, CustomStringConvertible {
    case active
    case cancelled
    case closed
    case failed
    case open

    public var description: String {
        return rawValue
    }
    
    public static let __default: SpotInstanceState = .active
}

/**
 Enumeration restricting the values of the SpotInstanceType field.
 */
public enum SpotInstanceType: String, Codable, CustomStringConvertible {
    case oneTime = "one-time"
    case persistent

    public var description: String {
        return rawValue
    }
    
    public static let __default: SpotInstanceType = .oneTime
}

/**
 Type definition for the SpotPriceHistoryList field.
 */
public typealias SpotPriceHistoryList = [SpotPrice]

/**
 Type definition for the StaleIpPermissionSet field.
 */
public typealias StaleIpPermissionSet = [StaleIpPermission]

/**
 Type definition for the StaleSecurityGroupSet field.
 */
public typealias StaleSecurityGroupSet = [StaleSecurityGroup]

/**
 Enumeration restricting the values of the State field.
 */
public enum State: String, Codable, CustomStringConvertible {
    case available = "Available"
    case deleted = "Deleted"
    case deleting = "Deleting"
    case expired = "Expired"
    case failed = "Failed"
    case pending = "Pending"
    case pendingacceptance = "PendingAcceptance"
    case rejected = "Rejected"

    public var description: String {
        return rawValue
    }
    
    public static let __default: State = .available
}

/**
 Enumeration restricting the values of the Status field.
 */
public enum Status: String, Codable, CustomStringConvertible {
    case inclassic = "InClassic"
    case invpc = "InVpc"
    case moveinprogress = "MoveInProgress"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Status = .inclassic
}

/**
 Enumeration restricting the values of the StatusName field.
 */
public enum StatusName: String, Codable, CustomStringConvertible {
    case reachability

    public var description: String {
        return rawValue
    }
    
    public static let __default: StatusName = .reachability
}

/**
 Enumeration restricting the values of the StatusType field.
 */
public enum StatusType: String, Codable, CustomStringConvertible {
    case failed
    case initializing
    case insufficientData = "insufficient-data"
    case passed

    public var description: String {
        return rawValue
    }
    
    public static let __default: StatusType = .failed
}

/**
 Enumeration restricting the values of the SubnetCidrBlockStateCode field.
 */
public enum SubnetCidrBlockStateCode: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case disassociated
    case disassociating
    case failed
    case failing

    public var description: String {
        return rawValue
    }
    
    public static let __default: SubnetCidrBlockStateCode = .associated
}

/**
 Type definition for the SubnetIdStringList field.
 */
public typealias SubnetIdStringList = [String]

/**
 Type definition for the SubnetIpv6CidrBlockAssociationSet field.
 */
public typealias SubnetIpv6CidrBlockAssociationSet = [SubnetIpv6CidrBlockAssociation]

/**
 Type definition for the SubnetList field.
 */
public typealias SubnetList = [Subnet]

/**
 Enumeration restricting the values of the SubnetState field.
 */
public enum SubnetState: String, Codable, CustomStringConvertible {
    case available
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: SubnetState = .available
}

/**
 Type definition for the SuccessfulInstanceCreditSpecificationSet field.
 */
public typealias SuccessfulInstanceCreditSpecificationSet = [SuccessfulInstanceCreditSpecificationItem]

/**
 Enumeration restricting the values of the SummaryStatus field.
 */
public enum SummaryStatus: String, Codable, CustomStringConvertible {
    case impaired
    case initializing
    case insufficientData = "insufficient-data"
    case notApplicable = "not-applicable"
    case ok

    public var description: String {
        return rawValue
    }
    
    public static let __default: SummaryStatus = .impaired
}

/**
 Type definition for the TagDescriptionList field.
 */
public typealias TagDescriptionList = [TagDescription]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagSpecificationList field.
 */
public typealias TagSpecificationList = [TagSpecification]

/**
 Type definition for the TargetConfigurationRequestSet field.
 */
public typealias TargetConfigurationRequestSet = [TargetConfigurationRequest]

/**
 Type definition for the TargetGroups field.
 */
public typealias TargetGroups = [TargetGroup]

/**
 Type definition for the TargetNetworkSet field.
 */
public typealias TargetNetworkSet = [TargetNetwork]

/**
 Type definition for the TargetReservationValueSet field.
 */
public typealias TargetReservationValueSet = [TargetReservationValue]

/**
 Enumeration restricting the values of the TelemetryStatus field.
 */
public enum TelemetryStatus: String, Codable, CustomStringConvertible {
    case down = "DOWN"
    case up = "UP"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TelemetryStatus = .down
}

/**
 Enumeration restricting the values of the Tenancy field.
 */
public enum Tenancy: String, Codable, CustomStringConvertible {
    case dedicated
    case `default` = "default"
    case host

    public var description: String {
        return rawValue
    }
    
    public static let __default: Tenancy = .dedicated
}

/**
 Type definition for the TerminateConnectionStatusSet field.
 */
public typealias TerminateConnectionStatusSet = [TerminateConnectionStatus]

/**
 Enumeration restricting the values of the TrafficType field.
 */
public enum TrafficType: String, Codable, CustomStringConvertible {
    case accept = "ACCEPT"
    case all = "ALL"
    case reject = "REJECT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficType = .accept
}

/**
 Enumeration restricting the values of the TransitGatewayAssociationState field.
 */
public enum TransitGatewayAssociationState: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case disassociated
    case disassociating

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayAssociationState = .associated
}

/**
 Type definition for the TransitGatewayAttachmentIdStringList field.
 */
public typealias TransitGatewayAttachmentIdStringList = [String]

/**
 Type definition for the TransitGatewayAttachmentList field.
 */
public typealias TransitGatewayAttachmentList = [TransitGatewayAttachment]

/**
 Type definition for the TransitGatewayAttachmentPropagationList field.
 */
public typealias TransitGatewayAttachmentPropagationList = [TransitGatewayAttachmentPropagation]

/**
 Enumeration restricting the values of the TransitGatewayAttachmentResourceType field.
 */
public enum TransitGatewayAttachmentResourceType: String, Codable, CustomStringConvertible {
    case vpc
    case vpn

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayAttachmentResourceType = .vpc
}

/**
 Enumeration restricting the values of the TransitGatewayAttachmentState field.
 */
public enum TransitGatewayAttachmentState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case failed
    case failing
    case modifying
    case pending
    case pendingacceptance = "pendingAcceptance"
    case rejected
    case rejecting
    case rollingback = "rollingBack"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayAttachmentState = .available
}

/**
 Type definition for the TransitGatewayIdStringList field.
 */
public typealias TransitGatewayIdStringList = [String]

/**
 Type definition for the TransitGatewayList field.
 */
public typealias TransitGatewayList = [TransitGateway]

/**
 Type definition for the TransitGatewayMaxResults field.
 */
public typealias TransitGatewayMaxResults = Int

/**
 Enumeration restricting the values of the TransitGatewayPropagationState field.
 */
public enum TransitGatewayPropagationState: String, Codable, CustomStringConvertible {
    case disabled
    case disabling
    case enabled
    case enabling

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayPropagationState = .disabled
}

/**
 Type definition for the TransitGatewayRouteAttachmentList field.
 */
public typealias TransitGatewayRouteAttachmentList = [TransitGatewayRouteAttachment]

/**
 Type definition for the TransitGatewayRouteList field.
 */
public typealias TransitGatewayRouteList = [TransitGatewayRoute]

/**
 Enumeration restricting the values of the TransitGatewayRouteState field.
 */
public enum TransitGatewayRouteState: String, Codable, CustomStringConvertible {
    case active
    case blackhole
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayRouteState = .active
}

/**
 Type definition for the TransitGatewayRouteTableAssociationList field.
 */
public typealias TransitGatewayRouteTableAssociationList = [TransitGatewayRouteTableAssociation]

/**
 Type definition for the TransitGatewayRouteTableIdStringList field.
 */
public typealias TransitGatewayRouteTableIdStringList = [String]

/**
 Type definition for the TransitGatewayRouteTableList field.
 */
public typealias TransitGatewayRouteTableList = [TransitGatewayRouteTable]

/**
 Type definition for the TransitGatewayRouteTablePropagationList field.
 */
public typealias TransitGatewayRouteTablePropagationList = [TransitGatewayRouteTablePropagation]

/**
 Enumeration restricting the values of the TransitGatewayRouteTableState field.
 */
public enum TransitGatewayRouteTableState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayRouteTableState = .available
}

/**
 Enumeration restricting the values of the TransitGatewayRouteType field.
 */
public enum TransitGatewayRouteType: String, Codable, CustomStringConvertible {
    case propagated
    case `static` = "static"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayRouteType = .propagated
}

/**
 Enumeration restricting the values of the TransitGatewayState field.
 */
public enum TransitGatewayState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case modifying
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayState = .available
}

/**
 Type definition for the TransitGatewayVpcAttachmentList field.
 */
public typealias TransitGatewayVpcAttachmentList = [TransitGatewayVpcAttachment]

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
 Type definition for the TunnelOptionsList field.
 */
public typealias TunnelOptionsList = [VpnTunnelOptionsSpecification]

/**
 Enumeration restricting the values of the UnsuccessfulInstanceCreditSpecificationErrorCode field.
 */
public enum UnsuccessfulInstanceCreditSpecificationErrorCode: String, Codable, CustomStringConvertible {
    case incorrectinstancestate = "IncorrectInstanceState"
    case instancecreditspecificationNotsupported = "InstanceCreditSpecification.NotSupported"
    case invalidinstanceidMalformed = "InvalidInstanceID.Malformed"
    case invalidinstanceidNotfound = "InvalidInstanceID.NotFound"

    public var description: String {
        return rawValue
    }
    
    public static let __default: UnsuccessfulInstanceCreditSpecificationErrorCode = .incorrectinstancestate
}

/**
 Type definition for the UnsuccessfulInstanceCreditSpecificationSet field.
 */
public typealias UnsuccessfulInstanceCreditSpecificationSet = [UnsuccessfulInstanceCreditSpecificationItem]

/**
 Type definition for the UnsuccessfulItemList field.
 */
public typealias UnsuccessfulItemList = [UnsuccessfulItem]

/**
 Type definition for the UnsuccessfulItemSet field.
 */
public typealias UnsuccessfulItemSet = [UnsuccessfulItem]

/**
 Type definition for the UserGroupStringList field.
 */
public typealias UserGroupStringList = [String]

/**
 Type definition for the UserIdGroupPairList field.
 */
public typealias UserIdGroupPairList = [UserIdGroupPair]

/**
 Type definition for the UserIdGroupPairSet field.
 */
public typealias UserIdGroupPairSet = [UserIdGroupPair]

/**
 Type definition for the UserIdStringList field.
 */
public typealias UserIdStringList = [String]

/**
 Type definition for the ValueStringList field.
 */
public typealias ValueStringList = [String]

/**
 Type definition for the VersionDescription field.
 */
public typealias VersionDescription = String

/**
 Type definition for the VersionStringList field.
 */
public typealias VersionStringList = [String]

/**
 Type definition for the VgwTelemetryList field.
 */
public typealias VgwTelemetryList = [VgwTelemetry]

/**
 Enumeration restricting the values of the VirtualizationType field.
 */
public enum VirtualizationType: String, Codable, CustomStringConvertible {
    case hvm
    case paravirtual

    public var description: String {
        return rawValue
    }
    
    public static let __default: VirtualizationType = .hvm
}

/**
 Type definition for the VolumeAttachmentList field.
 */
public typealias VolumeAttachmentList = [VolumeAttachment]

/**
 Enumeration restricting the values of the VolumeAttachmentState field.
 */
public enum VolumeAttachmentState: String, Codable, CustomStringConvertible {
    case attached
    case attaching
    case busy
    case detached
    case detaching

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeAttachmentState = .attached
}

/**
 Enumeration restricting the values of the VolumeAttributeName field.
 */
public enum VolumeAttributeName: String, Codable, CustomStringConvertible {
    case autoenableio = "autoEnableIO"
    case productcodes = "productCodes"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeAttributeName = .autoenableio
}

/**
 Type definition for the VolumeIdStringList field.
 */
public typealias VolumeIdStringList = [String]

/**
 Type definition for the VolumeList field.
 */
public typealias VolumeList = [Volume]

/**
 Type definition for the VolumeModificationList field.
 */
public typealias VolumeModificationList = [VolumeModification]

/**
 Enumeration restricting the values of the VolumeModificationState field.
 */
public enum VolumeModificationState: String, Codable, CustomStringConvertible {
    case completed
    case failed
    case modifying
    case optimizing

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeModificationState = .completed
}

/**
 Enumeration restricting the values of the VolumeState field.
 */
public enum VolumeState: String, Codable, CustomStringConvertible {
    case available
    case creating
    case deleted
    case deleting
    case error
    case inUse = "in-use"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeState = .available
}

/**
 Type definition for the VolumeStatusActionsList field.
 */
public typealias VolumeStatusActionsList = [VolumeStatusAction]

/**
 Type definition for the VolumeStatusDetailsList field.
 */
public typealias VolumeStatusDetailsList = [VolumeStatusDetails]

/**
 Type definition for the VolumeStatusEventsList field.
 */
public typealias VolumeStatusEventsList = [VolumeStatusEvent]

/**
 Enumeration restricting the values of the VolumeStatusInfoStatus field.
 */
public enum VolumeStatusInfoStatus: String, Codable, CustomStringConvertible {
    case impaired
    case insufficientData = "insufficient-data"
    case ok

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeStatusInfoStatus = .impaired
}

/**
 Type definition for the VolumeStatusList field.
 */
public typealias VolumeStatusList = [VolumeStatusItem]

/**
 Enumeration restricting the values of the VolumeStatusName field.
 */
public enum VolumeStatusName: String, Codable, CustomStringConvertible {
    case ioEnabled = "io-enabled"
    case ioPerformance = "io-performance"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeStatusName = .ioEnabled
}

/**
 Enumeration restricting the values of the VolumeType field.
 */
public enum VolumeType: String, Codable, CustomStringConvertible {
    case gp2
    case io1
    case sc1
    case st1
    case standard

    public var description: String {
        return rawValue
    }
    
    public static let __default: VolumeType = .gp2
}

/**
 Type definition for the VpcAttachmentList field.
 */
public typealias VpcAttachmentList = [VpcAttachment]

/**
 Enumeration restricting the values of the VpcAttributeName field.
 */
public enum VpcAttributeName: String, Codable, CustomStringConvertible {
    case enablednshostnames = "enableDnsHostnames"
    case enablednssupport = "enableDnsSupport"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcAttributeName = .enablednshostnames
}

/**
 Type definition for the VpcCidrBlockAssociationSet field.
 */
public typealias VpcCidrBlockAssociationSet = [VpcCidrBlockAssociation]

/**
 Enumeration restricting the values of the VpcCidrBlockStateCode field.
 */
public enum VpcCidrBlockStateCode: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case disassociated
    case disassociating
    case failed
    case failing

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcCidrBlockStateCode = .associated
}

/**
 Type definition for the VpcClassicLinkIdList field.
 */
public typealias VpcClassicLinkIdList = [String]

/**
 Type definition for the VpcClassicLinkList field.
 */
public typealias VpcClassicLinkList = [VpcClassicLink]

/**
 Type definition for the VpcEndpointConnectionSet field.
 */
public typealias VpcEndpointConnectionSet = [VpcEndpointConnection]

/**
 Type definition for the VpcEndpointSet field.
 */
public typealias VpcEndpointSet = [VpcEndpoint]

/**
 Enumeration restricting the values of the VpcEndpointType field.
 */
public enum VpcEndpointType: String, Codable, CustomStringConvertible {
    case gateway = "Gateway"
    case interface = "Interface"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcEndpointType = .gateway
}

/**
 Type definition for the VpcIdStringList field.
 */
public typealias VpcIdStringList = [String]

/**
 Type definition for the VpcIpv6CidrBlockAssociationSet field.
 */
public typealias VpcIpv6CidrBlockAssociationSet = [VpcIpv6CidrBlockAssociation]

/**
 Type definition for the VpcList field.
 */
public typealias VpcList = [Vpc]

/**
 Type definition for the VpcPeeringConnectionList field.
 */
public typealias VpcPeeringConnectionList = [VpcPeeringConnection]

/**
 Enumeration restricting the values of the VpcPeeringConnectionStateReasonCode field.
 */
public enum VpcPeeringConnectionStateReasonCode: String, Codable, CustomStringConvertible {
    case active
    case deleted
    case deleting
    case expired
    case failed
    case initiatingRequest = "initiating-request"
    case pendingAcceptance = "pending-acceptance"
    case provisioning
    case rejected

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcPeeringConnectionStateReasonCode = .active
}

/**
 Enumeration restricting the values of the VpcState field.
 */
public enum VpcState: String, Codable, CustomStringConvertible {
    case available
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcState = .available
}

/**
 Enumeration restricting the values of the VpcTenancy field.
 */
public enum VpcTenancy: String, Codable, CustomStringConvertible {
    case `default` = "default"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcTenancy = .`default`
}

/**
 Type definition for the VpnConnectionIdStringList field.
 */
public typealias VpnConnectionIdStringList = [String]

/**
 Type definition for the VpnConnectionList field.
 */
public typealias VpnConnectionList = [VpnConnection]

/**
 Enumeration restricting the values of the VpnEcmpSupportValue field.
 */
public enum VpnEcmpSupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpnEcmpSupportValue = .disable
}

/**
 Type definition for the VpnGatewayIdStringList field.
 */
public typealias VpnGatewayIdStringList = [String]

/**
 Type definition for the VpnGatewayList field.
 */
public typealias VpnGatewayList = [VpnGateway]

/**
 Enumeration restricting the values of the VpnProtocol field.
 */
public enum VpnProtocol: String, Codable, CustomStringConvertible {
    case openvpn

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpnProtocol = .openvpn
}

/**
 Enumeration restricting the values of the VpnState field.
 */
public enum VpnState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpnState = .available
}

/**
 Type definition for the VpnStaticRouteList field.
 */
public typealias VpnStaticRouteList = [VpnStaticRoute]

/**
 Enumeration restricting the values of the VpnStaticRouteSource field.
 */
public enum VpnStaticRouteSource: String, Codable, CustomStringConvertible {
    case `static` = "Static"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpnStaticRouteSource = .`static`
}

/**
 Type definition for the ZoneIdStringList field.
 */
public typealias ZoneIdStringList = [String]

/**
 Type definition for the ZoneNameStringList field.
 */
public typealias ZoneNameStringList = [String]

/**
 Enumeration restricting the values of the Scope field.
 */
public enum Scope: String, Codable, CustomStringConvertible {
    case availabilityZone = "Availability Zone"
    case region = "Region"

    public var description: String {
        return rawValue
    }
    
    public static let __default: Scope = .availabilityZone
}

/**
 Validation for the ClassicLoadBalancers field.
*/
extension Array where Element == ElasticComputeCloudModel.ClassicLoadBalancer {
    public func validateAsClassicLoadBalancers() throws {
        if self.count < 1 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to ClassicLoadBalancers violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to ClassicLoadBalancers violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DescribeVpcPeeringConnectionsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeVpcPeeringConnectionsMaxResults {
    public func validateAsDescribeVpcPeeringConnectionsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to DescribeVpcPeeringConnectionsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to DescribeVpcPeeringConnectionsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the FleetLaunchTemplateConfigListRequest field.
*/
extension Array where Element == ElasticComputeCloudModel.FleetLaunchTemplateConfigRequest {
    public func validateAsFleetLaunchTemplateConfigListRequest() throws {

        if self.count > 50 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to FleetLaunchTemplateConfigListRequest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FleetLaunchTemplateOverridesListRequest field.
*/
extension Array where Element == ElasticComputeCloudModel.FleetLaunchTemplateOverridesRequest {
    public func validateAsFleetLaunchTemplateOverridesListRequest() throws {

        if self.count > 50 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to FleetLaunchTemplateOverridesListRequest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LaunchTemplateName field.
*/
extension ElasticComputeCloudModel.LaunchTemplateName {
    public func validateAsLaunchTemplateName() throws {
        if self.count < 3 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to LaunchTemplateName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to LaunchTemplateName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\(\\)\\.\\-/_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ElasticComputeCloudCodingError.validationError(
                    reason: "The provided value to LaunchTemplateName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MaxResults field.
*/
extension ElasticComputeCloudModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 255 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the NextToken field.
*/
extension ElasticComputeCloudModel.NextToken {
    public func validateAsNextToken() throws {
        if self.count < 1 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to NextToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to NextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PoolMaxResults field.
*/
extension ElasticComputeCloudModel.PoolMaxResults {
    public func validateAsPoolMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to PoolMaxResults violated the minimum range constraint.")
        }

        if self > 10 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to PoolMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PurchaseRequestSet field.
*/
extension Array where Element == ElasticComputeCloudModel.PurchaseRequest {
    public func validateAsPurchaseRequestSet() throws {
        if self.count < 1 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to PurchaseRequestSet violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the TargetGroups field.
*/
extension Array where Element == ElasticComputeCloudModel.TargetGroup {
    public func validateAsTargetGroups() throws {
        if self.count < 1 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to TargetGroups violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to TargetGroups violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TransitGatewayMaxResults field.
*/
extension ElasticComputeCloudModel.TransitGatewayMaxResults {
    public func validateAsTransitGatewayMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to TransitGatewayMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to TransitGatewayMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the VersionDescription field.
*/
extension ElasticComputeCloudModel.VersionDescription {
    public func validateAsVersionDescription() throws {

        if self.count > 255 {
            throw ElasticComputeCloudCodingError.validationError(reason: "The provided value to VersionDescription violated the maximum length constraint.")
        }
    }
}
