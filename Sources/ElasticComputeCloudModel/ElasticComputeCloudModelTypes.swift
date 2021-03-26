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
 Type definition for the AddPrefixListEntries field.
 */
public typealias AddPrefixListEntries = [AddPrefixListEntry]

/**
 Enumeration restricting the values of the AddressAttributeName field.
 */
public enum AddressAttributeName: String, Codable, CustomStringConvertible {
    case domainName = "domain-name"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AddressAttributeName = .domainName
}

/**
 Type definition for the AddressList field.
 */
public typealias AddressList = [Address]

/**
 Type definition for the AddressMaxResults field.
 */
public typealias AddressMaxResults = Int

/**
 Type definition for the AddressSet field.
 */
public typealias AddressSet = [AddressAttribute]

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
 Type definition for the AllocationId field.
 */
public typealias AllocationId = String

/**
 Type definition for the AllocationIdList field.
 */
public typealias AllocationIdList = [AllocationId]

/**
 Type definition for the AllocationIds field.
 */
public typealias AllocationIds = [AllocationId]

/**
 Enumeration restricting the values of the AllocationState field.
 */
public enum AllocationState: String, Codable, CustomStringConvertible {
    case available
    case pending
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
    case capacityoptimized = "capacityOptimized"
    case capacityoptimizedprioritized = "capacityOptimizedPrioritized"
    case diversified
    case lowestprice = "lowestPrice"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AllocationStrategy = .capacityoptimized
}

/**
 Type definition for the AllowedPrincipalSet field.
 */
public typealias AllowedPrincipalSet = [AllowedPrincipal]

/**
 Enumeration restricting the values of the AllowsMultipleInstanceTypes field.
 */
public enum AllowsMultipleInstanceTypes: String, Codable, CustomStringConvertible {
    case off
    case on

    public var description: String {
        return rawValue
    }
    
    public static let __default: AllowsMultipleInstanceTypes = .off
}

/**
 Type definition for the AlternatePathHintList field.
 */
public typealias AlternatePathHintList = [AlternatePathHint]

/**
 Type definition for the AnalysisComponentList field.
 */
public typealias AnalysisComponentList = [AnalysisComponent]

/**
 Enumeration restricting the values of the AnalysisStatus field.
 */
public enum AnalysisStatus: String, Codable, CustomStringConvertible {
    case failed
    case running
    case succeeded

    public var description: String {
        return rawValue
    }
    
    public static let __default: AnalysisStatus = .failed
}

/**
 Enumeration restricting the values of the ApplianceModeSupportValue field.
 */
public enum ApplianceModeSupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: ApplianceModeSupportValue = .disable
}

/**
 Enumeration restricting the values of the ArchitectureType field.
 */
public enum ArchitectureType: String, Codable, CustomStringConvertible {
    case arm64
    case i386
    case x8664 = "x86_64"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArchitectureType = .arm64
}

/**
 Type definition for the ArchitectureTypeList field.
 */
public typealias ArchitectureTypeList = [ArchitectureType]

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
 Type definition for the ArnList field.
 */
public typealias ArnList = [ResourceArn]

/**
 Type definition for the AssignedPrivateIpAddressList field.
 */
public typealias AssignedPrivateIpAddressList = [AssignedPrivateIpAddress]

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
 Type definition for the AssociatedRolesList field.
 */
public typealias AssociatedRolesList = [AssociatedRole]

/**
 Type definition for the AssociatedTargetNetworkSet field.
 */
public typealias AssociatedTargetNetworkSet = [AssociatedTargetNetwork]

/**
 Type definition for the AssociationIdList field.
 */
public typealias AssociationIdList = [IamInstanceProfileAssociationId]

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
 Enumeration restricting the values of the AutoAcceptSharedAssociationsValue field.
 */
public enum AutoAcceptSharedAssociationsValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: AutoAcceptSharedAssociationsValue = .disable
}

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
 Type definition for the AutoRecoveryFlag field.
 */
public typealias AutoRecoveryFlag = Bool

/**
 Type definition for the AvailabilityZoneList field.
 */
public typealias AvailabilityZoneList = [AvailabilityZone]

/**
 Type definition for the AvailabilityZoneMessageList field.
 */
public typealias AvailabilityZoneMessageList = [AvailabilityZoneMessage]

/**
 Enumeration restricting the values of the AvailabilityZoneOptInStatus field.
 */
public enum AvailabilityZoneOptInStatus: String, Codable, CustomStringConvertible {
    case notOptedIn = "not-opted-in"
    case optInNotRequired = "opt-in-not-required"
    case optedIn = "opted-in"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AvailabilityZoneOptInStatus = .notOptedIn
}

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
 Type definition for the AvailabilityZoneStringList field.
 */
public typealias AvailabilityZoneStringList = [String]

/**
 Type definition for the AvailableInstanceCapacityList field.
 */
public typealias AvailableInstanceCapacityList = [InstanceCapacity]

/**
 Type definition for the BareMetalFlag field.
 */
public typealias BareMetalFlag = Bool

/**
 Type definition for the BaselineBandwidthInMbps field.
 */
public typealias BaselineBandwidthInMbps = Int

/**
 Type definition for the BaselineIops field.
 */
public typealias BaselineIops = Int

/**
 Type definition for the BaselineThroughputInMBps field.
 */
public typealias BaselineThroughputInMBps = Double

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
 Enumeration restricting the values of the BgpStatus field.
 */
public enum BgpStatus: String, Codable, CustomStringConvertible {
    case down
    case up

    public var description: String {
        return rawValue
    }
    
    public static let __default: BgpStatus = .down
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
 Enumeration restricting the values of the BootModeType field.
 */
public enum BootModeType: String, Codable, CustomStringConvertible {
    case legacyBios = "legacy-bios"
    case uefi

    public var description: String {
        return rawValue
    }
    
    public static let __default: BootModeType = .legacyBios
}

/**
 Type definition for the BootModeTypeList field.
 */
public typealias BootModeTypeList = [BootModeType]

/**
 Enumeration restricting the values of the BootModeValues field.
 */
public enum BootModeValues: String, Codable, CustomStringConvertible {
    case legacyBios = "legacy-bios"
    case uefi

    public var description: String {
        return rawValue
    }
    
    public static let __default: BootModeValues = .legacyBios
}

/**
 Type definition for the BundleId field.
 */
public typealias BundleId = String

/**
 Type definition for the BundleIdStringList field.
 */
public typealias BundleIdStringList = [BundleId]

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
 Type definition for the BurstablePerformanceFlag field.
 */
public typealias BurstablePerformanceFlag = Bool

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
    case provisionedNotPubliclyAdvertisable = "provisioned-not-publicly-advertisable"

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
 Type definition for the CapacityReservationGroupSet field.
 */
public typealias CapacityReservationGroupSet = [CapacityReservationGroup]

/**
 Type definition for the CapacityReservationId field.
 */
public typealias CapacityReservationId = String

/**
 Type definition for the CapacityReservationIdSet field.
 */
public typealias CapacityReservationIdSet = [CapacityReservationId]

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
 Type definition for the CarrierGatewayId field.
 */
public typealias CarrierGatewayId = String

/**
 Type definition for the CarrierGatewayIdSet field.
 */
public typealias CarrierGatewayIdSet = [CarrierGatewayId]

/**
 Type definition for the CarrierGatewayMaxResults field.
 */
public typealias CarrierGatewayMaxResults = Int

/**
 Type definition for the CarrierGatewaySet field.
 */
public typealias CarrierGatewaySet = [CarrierGateway]

/**
 Enumeration restricting the values of the CarrierGatewayState field.
 */
public enum CarrierGatewayState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: CarrierGatewayState = .available
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
 Type definition for the ClientVpnAssociationId field.
 */
public typealias ClientVpnAssociationId = String

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
    case federatedAuthentication = "federated-authentication"

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
 Enumeration restricting the values of the ClientVpnEndpointAttributeStatusCode field.
 */
public enum ClientVpnEndpointAttributeStatusCode: String, Codable, CustomStringConvertible {
    case applied
    case applying

    public var description: String {
        return rawValue
    }
    
    public static let __default: ClientVpnEndpointAttributeStatusCode = .applied
}

/**
 Type definition for the ClientVpnEndpointId field.
 */
public typealias ClientVpnEndpointId = String

/**
 Type definition for the ClientVpnEndpointIdList field.
 */
public typealias ClientVpnEndpointIdList = [ClientVpnEndpointId]

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
public typealias ClientVpnSecurityGroupIdSet = [SecurityGroupId]

/**
 Type definition for the CoipAddressUsageSet field.
 */
public typealias CoipAddressUsageSet = [CoipAddressUsage]

/**
 Type definition for the CoipPoolId field.
 */
public typealias CoipPoolId = String

/**
 Type definition for the CoipPoolIdSet field.
 */
public typealias CoipPoolIdSet = [CoipPoolId]

/**
 Type definition for the CoipPoolMaxResults field.
 */
public typealias CoipPoolMaxResults = Int

/**
 Type definition for the CoipPoolSet field.
 */
public typealias CoipPoolSet = [CoipPool]

/**
 Type definition for the ConnectionNotificationId field.
 */
public typealias ConnectionNotificationId = String

/**
 Type definition for the ConnectionNotificationIdsList field.
 */
public typealias ConnectionNotificationIdsList = [ConnectionNotificationId]

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
public typealias ConversionIdStringList = [ConversionTaskId]

/**
 Type definition for the ConversionTaskId field.
 */
public typealias ConversionTaskId = String

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
 Enumeration restricting the values of the CopyTagsFromSource field.
 */
public enum CopyTagsFromSource: String, Codable, CustomStringConvertible {
    case volume

    public var description: String {
        return rawValue
    }
    
    public static let __default: CopyTagsFromSource = .volume
}

/**
 Type definition for the CoreCount field.
 */
public typealias CoreCount = Int

/**
 Type definition for the CoreCountList field.
 */
public typealias CoreCountList = [CoreCount]

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
 Type definition for the CurrentGenerationFlag field.
 */
public typealias CurrentGenerationFlag = Bool

/**
 Type definition for the CustomerGatewayId field.
 */
public typealias CustomerGatewayId = String

/**
 Type definition for the CustomerGatewayIdStringList field.
 */
public typealias CustomerGatewayIdStringList = [CustomerGatewayId]

/**
 Type definition for the CustomerGatewayList field.
 */
public typealias CustomerGatewayList = [CustomerGateway]

/**
 Type definition for the DITMaxResults field.
 */
public typealias DITMaxResults = Int

/**
 Type definition for the DITOMaxResults field.
 */
public typealias DITOMaxResults = Int

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
 Type definition for the DedicatedHostFlag field.
 */
public typealias DedicatedHostFlag = Bool

/**
 Type definition for the DedicatedHostId field.
 */
public typealias DedicatedHostId = String

/**
 Type definition for the DefaultNetworkCardIndex field.
 */
public typealias DefaultNetworkCardIndex = Int

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
 Type definition for the DefaultingDhcpOptionsId field.
 */
public typealias DefaultingDhcpOptionsId = String

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
 Enumeration restricting the values of the DeleteQueuedReservedInstancesErrorCode field.
 */
public enum DeleteQueuedReservedInstancesErrorCode: String, Codable, CustomStringConvertible {
    case reservedInstancesIdInvalid = "reserved-instances-id-invalid"
    case reservedInstancesNotInQueuedState = "reserved-instances-not-in-queued-state"
    case unexpectedError = "unexpected-error"

    public var description: String {
        return rawValue
    }
    
    public static let __default: DeleteQueuedReservedInstancesErrorCode = .reservedInstancesIdInvalid
}

/**
 Type definition for the DeleteQueuedReservedInstancesIdList field.
 */
public typealias DeleteQueuedReservedInstancesIdList = [ReservationId]

/**
 Type definition for the DescribeByoipCidrsMaxResults field.
 */
public typealias DescribeByoipCidrsMaxResults = Int

/**
 Type definition for the DescribeCapacityReservationsMaxResults field.
 */
public typealias DescribeCapacityReservationsMaxResults = Int

/**
 Type definition for the DescribeClassicLinkInstancesMaxResults field.
 */
public typealias DescribeClassicLinkInstancesMaxResults = Int

/**
 Type definition for the DescribeClientVpnAuthorizationRulesMaxResults field.
 */
public typealias DescribeClientVpnAuthorizationRulesMaxResults = Int

/**
 Type definition for the DescribeClientVpnConnectionsMaxResults field.
 */
public typealias DescribeClientVpnConnectionsMaxResults = Int

/**
 Type definition for the DescribeClientVpnEndpointMaxResults field.
 */
public typealias DescribeClientVpnEndpointMaxResults = Int

/**
 Type definition for the DescribeClientVpnRoutesMaxResults field.
 */
public typealias DescribeClientVpnRoutesMaxResults = Int

/**
 Type definition for the DescribeClientVpnTargetNetworksMaxResults field.
 */
public typealias DescribeClientVpnTargetNetworksMaxResults = Int

/**
 Type definition for the DescribeConversionTaskList field.
 */
public typealias DescribeConversionTaskList = [ConversionTask]

/**
 Type definition for the DescribeDhcpOptionsMaxResults field.
 */
public typealias DescribeDhcpOptionsMaxResults = Int

/**
 Type definition for the DescribeEgressOnlyInternetGatewaysMaxResults field.
 */
public typealias DescribeEgressOnlyInternetGatewaysMaxResults = Int

/**
 Type definition for the DescribeElasticGpusMaxResults field.
 */
public typealias DescribeElasticGpusMaxResults = Int

/**
 Type definition for the DescribeExportImageTasksMaxResults field.
 */
public typealias DescribeExportImageTasksMaxResults = Int

/**
 Type definition for the DescribeFastSnapshotRestoreSuccessSet field.
 */
public typealias DescribeFastSnapshotRestoreSuccessSet = [DescribeFastSnapshotRestoreSuccessItem]

/**
 Type definition for the DescribeFastSnapshotRestoresMaxResults field.
 */
public typealias DescribeFastSnapshotRestoresMaxResults = Int

/**
 Type definition for the DescribeFleetsErrorSet field.
 */
public typealias DescribeFleetsErrorSet = [DescribeFleetError]

/**
 Type definition for the DescribeFleetsInstancesSet field.
 */
public typealias DescribeFleetsInstancesSet = [DescribeFleetsInstances]

/**
 Type definition for the DescribeFpgaImagesMaxResults field.
 */
public typealias DescribeFpgaImagesMaxResults = Int

/**
 Type definition for the DescribeHostReservationsMaxResults field.
 */
public typealias DescribeHostReservationsMaxResults = Int

/**
 Type definition for the DescribeIamInstanceProfileAssociationsMaxResults field.
 */
public typealias DescribeIamInstanceProfileAssociationsMaxResults = Int

/**
 Type definition for the DescribeInstanceCreditSpecificationsMaxResults field.
 */
public typealias DescribeInstanceCreditSpecificationsMaxResults = Int

/**
 Type definition for the DescribeInternetGatewaysMaxResults field.
 */
public typealias DescribeInternetGatewaysMaxResults = Int

/**
 Type definition for the DescribeLaunchTemplatesMaxResults field.
 */
public typealias DescribeLaunchTemplatesMaxResults = Int

/**
 Type definition for the DescribeMovingAddressesMaxResults field.
 */
public typealias DescribeMovingAddressesMaxResults = Int

/**
 Type definition for the DescribeNatGatewaysMaxResults field.
 */
public typealias DescribeNatGatewaysMaxResults = Int

/**
 Type definition for the DescribeNetworkAclsMaxResults field.
 */
public typealias DescribeNetworkAclsMaxResults = Int

/**
 Type definition for the DescribeNetworkInterfacePermissionsMaxResults field.
 */
public typealias DescribeNetworkInterfacePermissionsMaxResults = Int

/**
 Type definition for the DescribeNetworkInterfacesMaxResults field.
 */
public typealias DescribeNetworkInterfacesMaxResults = Int

/**
 Type definition for the DescribePrincipalIdFormatMaxResults field.
 */
public typealias DescribePrincipalIdFormatMaxResults = Int

/**
 Type definition for the DescribeRouteTablesMaxResults field.
 */
public typealias DescribeRouteTablesMaxResults = Int

/**
 Type definition for the DescribeScheduledInstanceAvailabilityMaxResults field.
 */
public typealias DescribeScheduledInstanceAvailabilityMaxResults = Int

/**
 Type definition for the DescribeSecurityGroupsMaxResults field.
 */
public typealias DescribeSecurityGroupsMaxResults = Int

/**
 Type definition for the DescribeSpotFleetInstancesMaxResults field.
 */
public typealias DescribeSpotFleetInstancesMaxResults = Int

/**
 Type definition for the DescribeSpotFleetRequestHistoryMaxResults field.
 */
public typealias DescribeSpotFleetRequestHistoryMaxResults = Int

/**
 Type definition for the DescribeStaleSecurityGroupsMaxResults field.
 */
public typealias DescribeStaleSecurityGroupsMaxResults = Int

/**
 Type definition for the DescribeStaleSecurityGroupsNextToken field.
 */
public typealias DescribeStaleSecurityGroupsNextToken = String

/**
 Type definition for the DescribeSubnetsMaxResults field.
 */
public typealias DescribeSubnetsMaxResults = Int

/**
 Type definition for the DescribeVpcClassicLinkDnsSupportMaxResults field.
 */
public typealias DescribeVpcClassicLinkDnsSupportMaxResults = Int

/**
 Type definition for the DescribeVpcClassicLinkDnsSupportNextToken field.
 */
public typealias DescribeVpcClassicLinkDnsSupportNextToken = String

/**
 Type definition for the DescribeVpcPeeringConnectionsMaxResults field.
 */
public typealias DescribeVpcPeeringConnectionsMaxResults = Int

/**
 Type definition for the DescribeVpcsMaxResults field.
 */
public typealias DescribeVpcsMaxResults = Int

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
 Type definition for the DhcpOptionsId field.
 */
public typealias DhcpOptionsId = String

/**
 Type definition for the DhcpOptionsIdStringList field.
 */
public typealias DhcpOptionsIdStringList = [DhcpOptionsId]

/**
 Type definition for the DhcpOptionsList field.
 */
public typealias DhcpOptionsList = [DhcpOptions]

/**
 Type definition for the DisableFastSnapshotRestoreErrorSet field.
 */
public typealias DisableFastSnapshotRestoreErrorSet = [DisableFastSnapshotRestoreErrorItem]

/**
 Type definition for the DisableFastSnapshotRestoreStateErrorSet field.
 */
public typealias DisableFastSnapshotRestoreStateErrorSet = [DisableFastSnapshotRestoreStateErrorItem]

/**
 Type definition for the DisableFastSnapshotRestoreSuccessSet field.
 */
public typealias DisableFastSnapshotRestoreSuccessSet = [DisableFastSnapshotRestoreSuccessItem]

/**
 Type definition for the DiskCount field.
 */
public typealias DiskCount = Int

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
 Type definition for the DiskInfoList field.
 */
public typealias DiskInfoList = [DiskInfo]

/**
 Type definition for the DiskSize field.
 */
public typealias DiskSize = Int

/**
 Enumeration restricting the values of the DiskType field.
 */
public enum DiskType: String, Codable, CustomStringConvertible {
    case hdd
    case ssd

    public var description: String {
        return rawValue
    }
    
    public static let __default: DiskType = .hdd
}

/**
 Type definition for the DnsEntrySet field.
 */
public typealias DnsEntrySet = [DnsEntry]

/**
 Enumeration restricting the values of the DnsNameState field.
 */
public enum DnsNameState: String, Codable, CustomStringConvertible {
    case failed
    case pendingverification = "pendingVerification"
    case verified

    public var description: String {
        return rawValue
    }
    
    public static let __default: DnsNameState = .failed
}

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
 Enumeration restricting the values of the EbsEncryptionSupport field.
 */
public enum EbsEncryptionSupport: String, Codable, CustomStringConvertible {
    case supported
    case unsupported

    public var description: String {
        return rawValue
    }
    
    public static let __default: EbsEncryptionSupport = .supported
}

/**
 Enumeration restricting the values of the EbsNvmeSupport field.
 */
public enum EbsNvmeSupport: String, Codable, CustomStringConvertible {
    case required
    case supported
    case unsupported

    public var description: String {
        return rawValue
    }
    
    public static let __default: EbsNvmeSupport = .required
}

/**
 Enumeration restricting the values of the EbsOptimizedSupport field.
 */
public enum EbsOptimizedSupport: String, Codable, CustomStringConvertible {
    case `default` = "default"
    case supported
    case unsupported

    public var description: String {
        return rawValue
    }
    
    public static let __default: EbsOptimizedSupport = .`default`
}

/**
 Type definition for the EfaSupportedFlag field.
 */
public typealias EfaSupportedFlag = Bool

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
 Type definition for the ElasticGpuId field.
 */
public typealias ElasticGpuId = String

/**
 Type definition for the ElasticGpuIdSet field.
 */
public typealias ElasticGpuIdSet = [ElasticGpuId]

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
 Type definition for the ElasticInferenceAcceleratorCount field.
 */
public typealias ElasticInferenceAcceleratorCount = Int

/**
 Type definition for the ElasticInferenceAccelerators field.
 */
public typealias ElasticInferenceAccelerators = [ElasticInferenceAccelerator]

/**
 Type definition for the ElasticIpAssociationId field.
 */
public typealias ElasticIpAssociationId = String

/**
 Enumeration restricting the values of the EnaSupport field.
 */
public enum EnaSupport: String, Codable, CustomStringConvertible {
    case required
    case supported
    case unsupported

    public var description: String {
        return rawValue
    }
    
    public static let __default: EnaSupport = .required
}

/**
 Type definition for the EnableFastSnapshotRestoreErrorSet field.
 */
public typealias EnableFastSnapshotRestoreErrorSet = [EnableFastSnapshotRestoreErrorItem]

/**
 Type definition for the EnableFastSnapshotRestoreStateErrorSet field.
 */
public typealias EnableFastSnapshotRestoreStateErrorSet = [EnableFastSnapshotRestoreStateErrorItem]

/**
 Type definition for the EnableFastSnapshotRestoreSuccessSet field.
 */
public typealias EnableFastSnapshotRestoreSuccessSet = [EnableFastSnapshotRestoreSuccessItem]

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
 Enumeration restricting the values of the EphemeralNvmeSupport field.
 */
public enum EphemeralNvmeSupport: String, Codable, CustomStringConvertible {
    case required
    case supported
    case unsupported

    public var description: String {
        return rawValue
    }
    
    public static let __default: EphemeralNvmeSupport = .required
}

/**
 Type definition for the ErrorSet field.
 */
public typealias ErrorSet = [ValidationError]

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
    case information
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
 Type definition for the ExplanationList field.
 */
public typealias ExplanationList = [Explanation]

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
 Type definition for the ExportImageTaskId field.
 */
public typealias ExportImageTaskId = String

/**
 Type definition for the ExportImageTaskIdList field.
 */
public typealias ExportImageTaskIdList = [ExportImageTaskId]

/**
 Type definition for the ExportImageTaskList field.
 */
public typealias ExportImageTaskList = [ExportImageTask]

/**
 Type definition for the ExportTaskId field.
 */
public typealias ExportTaskId = String

/**
 Type definition for the ExportTaskIdStringList field.
 */
public typealias ExportTaskIdStringList = [ExportTaskId]

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
 Type definition for the ExportVmTaskId field.
 */
public typealias ExportVmTaskId = String

/**
 Type definition for the FailedQueuedPurchaseDeletionSet field.
 */
public typealias FailedQueuedPurchaseDeletionSet = [FailedQueuedPurchaseDeletion]

/**
 Enumeration restricting the values of the FastSnapshotRestoreStateCode field.
 */
public enum FastSnapshotRestoreStateCode: String, Codable, CustomStringConvertible {
    case disabled
    case disabling
    case enabled
    case enabling
    case optimizing

    public var description: String {
        return rawValue
    }
    
    public static let __default: FastSnapshotRestoreStateCode = .disabled
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
    case pendingFulfillment = "pending_fulfillment"
    case pendingTermination = "pending_termination"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetActivityStatus = .error
}

/**
 Enumeration restricting the values of the FleetCapacityReservationUsageStrategy field.
 */
public enum FleetCapacityReservationUsageStrategy: String, Codable, CustomStringConvertible {
    case useCapacityReservationsFirst = "use-capacity-reservations-first"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetCapacityReservationUsageStrategy = .useCapacityReservationsFirst
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
 Type definition for the FleetId field.
 */
public typealias FleetId = String

/**
 Type definition for the FleetIdSet field.
 */
public typealias FleetIdSet = [FleetId]

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
 Enumeration restricting the values of the FleetReplacementStrategy field.
 */
public enum FleetReplacementStrategy: String, Codable, CustomStringConvertible {
    case launch

    public var description: String {
        return rawValue
    }
    
    public static let __default: FleetReplacementStrategy = .launch
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
    case deletedRunning = "deleted_running"
    case deletedTerminating = "deleted_terminating"
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
 Type definition for the FlowLogIdList field.
 */
public typealias FlowLogIdList = [VpcFlowLogId]

/**
 Type definition for the FlowLogResourceId field.
 */
public typealias FlowLogResourceId = String

/**
 Type definition for the FlowLogResourceIds field.
 */
public typealias FlowLogResourceIds = [FlowLogResourceId]

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
 Type definition for the FpgaDeviceCount field.
 */
public typealias FpgaDeviceCount = Int

/**
 Type definition for the FpgaDeviceInfoList field.
 */
public typealias FpgaDeviceInfoList = [FpgaDeviceInfo]

/**
 Type definition for the FpgaDeviceManufacturerName field.
 */
public typealias FpgaDeviceManufacturerName = String

/**
 Type definition for the FpgaDeviceMemorySize field.
 */
public typealias FpgaDeviceMemorySize = Int

/**
 Type definition for the FpgaDeviceName field.
 */
public typealias FpgaDeviceName = String

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
 Type definition for the FpgaImageId field.
 */
public typealias FpgaImageId = String

/**
 Type definition for the FpgaImageIdList field.
 */
public typealias FpgaImageIdList = [FpgaImageId]

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
 Type definition for the FreeTierEligibleFlag field.
 */
public typealias FreeTierEligibleFlag = Bool

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
 Type definition for the GetCapacityReservationUsageRequestMaxResults field.
 */
public typealias GetCapacityReservationUsageRequestMaxResults = Int

/**
 Type definition for the GetGroupsForCapacityReservationRequestMaxResults field.
 */
public typealias GetGroupsForCapacityReservationRequestMaxResults = Int

/**
 Type definition for the GetManagedPrefixListAssociationsMaxResults field.
 */
public typealias GetManagedPrefixListAssociationsMaxResults = Int

/**
 Type definition for the GpuDeviceCount field.
 */
public typealias GpuDeviceCount = Int

/**
 Type definition for the GpuDeviceInfoList field.
 */
public typealias GpuDeviceInfoList = [GpuDeviceInfo]

/**
 Type definition for the GpuDeviceManufacturerName field.
 */
public typealias GpuDeviceManufacturerName = String

/**
 Type definition for the GpuDeviceMemorySize field.
 */
public typealias GpuDeviceMemorySize = Int

/**
 Type definition for the GpuDeviceName field.
 */
public typealias GpuDeviceName = String

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
public typealias GroupIds = [SecurityGroupId]

/**
 Type definition for the GroupNameStringList field.
 */
public typealias GroupNameStringList = [SecurityGroupName]

/**
 Type definition for the HibernationFlag field.
 */
public typealias HibernationFlag = Bool

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
 Enumeration restricting the values of the HostRecovery field.
 */
public enum HostRecovery: String, Codable, CustomStringConvertible {
    case off
    case on

    public var description: String {
        return rawValue
    }
    
    public static let __default: HostRecovery = .off
}

/**
 Type definition for the HostReservationId field.
 */
public typealias HostReservationId = String

/**
 Type definition for the HostReservationIdSet field.
 */
public typealias HostReservationIdSet = [HostReservationId]

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
 Enumeration restricting the values of the HttpTokensState field.
 */
public enum HttpTokensState: String, Codable, CustomStringConvertible {
    case optional
    case required

    public var description: String {
        return rawValue
    }
    
    public static let __default: HttpTokensState = .optional
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
 Type definition for the IKEVersionsList field.
 */
public typealias IKEVersionsList = [IKEVersionsListValue]

/**
 Type definition for the IKEVersionsRequestList field.
 */
public typealias IKEVersionsRequestList = [IKEVersionsRequestListValue]

/**
 Type definition for the IamInstanceProfileAssociationId field.
 */
public typealias IamInstanceProfileAssociationId = String

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
 Enumeration restricting the values of the Igmpv2SupportValue field.
 */
public enum Igmpv2SupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: Igmpv2SupportValue = .disable
}

/**
 Enumeration restricting the values of the ImageAttributeName field.
 */
public enum ImageAttributeName: String, Codable, CustomStringConvertible {
    case blockdevicemapping = "blockDeviceMapping"
    case bootmode = "bootMode"
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
 Type definition for the ImageId field.
 */
public typealias ImageId = String

/**
 Type definition for the ImageIdStringList field.
 */
public typealias ImageIdStringList = [ImageId]

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
 Type definition for the ImportImageLicenseSpecificationListRequest field.
 */
public typealias ImportImageLicenseSpecificationListRequest = [ImportImageLicenseConfigurationRequest]

/**
 Type definition for the ImportImageLicenseSpecificationListResponse field.
 */
public typealias ImportImageLicenseSpecificationListResponse = [ImportImageLicenseConfigurationResponse]

/**
 Type definition for the ImportImageTaskId field.
 */
public typealias ImportImageTaskId = String

/**
 Type definition for the ImportImageTaskList field.
 */
public typealias ImportImageTaskList = [ImportImageTask]

/**
 Type definition for the ImportInstanceVolumeDetailSet field.
 */
public typealias ImportInstanceVolumeDetailSet = [ImportInstanceVolumeDetailItem]

/**
 Type definition for the ImportSnapshotTaskId field.
 */
public typealias ImportSnapshotTaskId = String

/**
 Type definition for the ImportSnapshotTaskIdList field.
 */
public typealias ImportSnapshotTaskIdList = [ImportSnapshotTaskId]

/**
 Type definition for the ImportSnapshotTaskList field.
 */
public typealias ImportSnapshotTaskList = [ImportSnapshotTask]

/**
 Type definition for the ImportTaskId field.
 */
public typealias ImportTaskId = String

/**
 Type definition for the ImportTaskIdList field.
 */
public typealias ImportTaskIdList = [ImportImageTaskId]

/**
 Type definition for the InferenceDeviceCount field.
 */
public typealias InferenceDeviceCount = Int

/**
 Type definition for the InferenceDeviceInfoList field.
 */
public typealias InferenceDeviceInfoList = [InferenceDeviceInfo]

/**
 Type definition for the InferenceDeviceManufacturerName field.
 */
public typealias InferenceDeviceManufacturerName = String

/**
 Type definition for the InferenceDeviceName field.
 */
public typealias InferenceDeviceName = String

/**
 Type definition for the InsideCidrBlocksStringList field.
 */
public typealias InsideCidrBlocksStringList = [String]

/**
 Enumeration restricting the values of the InstanceAttributeName field.
 */
public enum InstanceAttributeName: String, Codable, CustomStringConvertible {
    case blockdevicemapping = "blockDeviceMapping"
    case disableapitermination = "disableApiTermination"
    case ebsoptimized = "ebsOptimized"
    case enasupport = "enaSupport"
    case enclaveoptions = "enclaveOptions"
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
 Type definition for the InstanceEventId field.
 */
public typealias InstanceEventId = String

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
public typealias InstanceIdSet = [InstanceId]

/**
 Type definition for the InstanceIdStringList field.
 */
public typealias InstanceIdStringList = [InstanceId]

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
 Enumeration restricting the values of the InstanceMetadataEndpointState field.
 */
public enum InstanceMetadataEndpointState: String, Codable, CustomStringConvertible {
    case disabled
    case enabled

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceMetadataEndpointState = .disabled
}

/**
 Enumeration restricting the values of the InstanceMetadataOptionsState field.
 */
public enum InstanceMetadataOptionsState: String, Codable, CustomStringConvertible {
    case applied
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceMetadataOptionsState = .applied
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
 Type definition for the InstanceStorageFlag field.
 */
public typealias InstanceStorageFlag = Bool

/**
 Type definition for the InstanceTagKeySet field.
 */
public typealias InstanceTagKeySet = [String]

/**
 Enumeration restricting the values of the InstanceType field.
 */
public enum InstanceType: String, Codable, CustomStringConvertible {
    case a12xlarge = "a1.2xlarge"
    case a14xlarge = "a1.4xlarge"
    case a1Large = "a1.large"
    case a1Medium = "a1.medium"
    case a1Metal = "a1.metal"
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
    case c512xlarge = "c5.12xlarge"
    case c518xlarge = "c5.18xlarge"
    case c524xlarge = "c5.24xlarge"
    case c52xlarge = "c5.2xlarge"
    case c54xlarge = "c5.4xlarge"
    case c59xlarge = "c5.9xlarge"
    case c5Large = "c5.large"
    case c5Metal = "c5.metal"
    case c5Xlarge = "c5.xlarge"
    case c5a12xlarge = "c5a.12xlarge"
    case c5a16xlarge = "c5a.16xlarge"
    case c5a24xlarge = "c5a.24xlarge"
    case c5a2xlarge = "c5a.2xlarge"
    case c5a4xlarge = "c5a.4xlarge"
    case c5a8xlarge = "c5a.8xlarge"
    case c5aLarge = "c5a.large"
    case c5aXlarge = "c5a.xlarge"
    case c5ad12xlarge = "c5ad.12xlarge"
    case c5ad16xlarge = "c5ad.16xlarge"
    case c5ad24xlarge = "c5ad.24xlarge"
    case c5ad2xlarge = "c5ad.2xlarge"
    case c5ad4xlarge = "c5ad.4xlarge"
    case c5ad8xlarge = "c5ad.8xlarge"
    case c5adLarge = "c5ad.large"
    case c5adXlarge = "c5ad.xlarge"
    case c5d12xlarge = "c5d.12xlarge"
    case c5d18xlarge = "c5d.18xlarge"
    case c5d24xlarge = "c5d.24xlarge"
    case c5d2xlarge = "c5d.2xlarge"
    case c5d4xlarge = "c5d.4xlarge"
    case c5d9xlarge = "c5d.9xlarge"
    case c5dLarge = "c5d.large"
    case c5dMetal = "c5d.metal"
    case c5dXlarge = "c5d.xlarge"
    case c5n18xlarge = "c5n.18xlarge"
    case c5n2xlarge = "c5n.2xlarge"
    case c5n4xlarge = "c5n.4xlarge"
    case c5n9xlarge = "c5n.9xlarge"
    case c5nLarge = "c5n.large"
    case c5nMetal = "c5n.metal"
    case c5nXlarge = "c5n.xlarge"
    case c6g12xlarge = "c6g.12xlarge"
    case c6g16xlarge = "c6g.16xlarge"
    case c6g2xlarge = "c6g.2xlarge"
    case c6g4xlarge = "c6g.4xlarge"
    case c6g8xlarge = "c6g.8xlarge"
    case c6gLarge = "c6g.large"
    case c6gMedium = "c6g.medium"
    case c6gMetal = "c6g.metal"
    case c6gXlarge = "c6g.xlarge"
    case c6gd12xlarge = "c6gd.12xlarge"
    case c6gd16xlarge = "c6gd.16xlarge"
    case c6gd2xlarge = "c6gd.2xlarge"
    case c6gd4xlarge = "c6gd.4xlarge"
    case c6gd8xlarge = "c6gd.8xlarge"
    case c6gdLarge = "c6gd.large"
    case c6gdMedium = "c6gd.medium"
    case c6gdMetal = "c6gd.metal"
    case c6gdXlarge = "c6gd.xlarge"
    case c6gn12xlarge = "c6gn.12xlarge"
    case c6gn16xlarge = "c6gn.16xlarge"
    case c6gn2xlarge = "c6gn.2xlarge"
    case c6gn4xlarge = "c6gn.4xlarge"
    case c6gn8xlarge = "c6gn.8xlarge"
    case c6gnLarge = "c6gn.large"
    case c6gnMedium = "c6gn.medium"
    case c6gnXlarge = "c6gn.xlarge"
    case cc14xlarge = "cc1.4xlarge"
    case cc28xlarge = "cc2.8xlarge"
    case cg14xlarge = "cg1.4xlarge"
    case cr18xlarge = "cr1.8xlarge"
    case d22xlarge = "d2.2xlarge"
    case d24xlarge = "d2.4xlarge"
    case d28xlarge = "d2.8xlarge"
    case d2Xlarge = "d2.xlarge"
    case d32xlarge = "d3.2xlarge"
    case d34xlarge = "d3.4xlarge"
    case d38xlarge = "d3.8xlarge"
    case d3Xlarge = "d3.xlarge"
    case d3en12xlarge = "d3en.12xlarge"
    case d3en2xlarge = "d3en.2xlarge"
    case d3en4xlarge = "d3en.4xlarge"
    case d3en6xlarge = "d3en.6xlarge"
    case d3en8xlarge = "d3en.8xlarge"
    case d3enXlarge = "d3en.xlarge"
    case f116xlarge = "f1.16xlarge"
    case f12xlarge = "f1.2xlarge"
    case f14xlarge = "f1.4xlarge"
    case g22xlarge = "g2.2xlarge"
    case g28xlarge = "g2.8xlarge"
    case g316xlarge = "g3.16xlarge"
    case g34xlarge = "g3.4xlarge"
    case g38xlarge = "g3.8xlarge"
    case g3sXlarge = "g3s.xlarge"
    case g4ad16xlarge = "g4ad.16xlarge"
    case g4ad4xlarge = "g4ad.4xlarge"
    case g4ad8xlarge = "g4ad.8xlarge"
    case g4dn12xlarge = "g4dn.12xlarge"
    case g4dn16xlarge = "g4dn.16xlarge"
    case g4dn2xlarge = "g4dn.2xlarge"
    case g4dn4xlarge = "g4dn.4xlarge"
    case g4dn8xlarge = "g4dn.8xlarge"
    case g4dnMetal = "g4dn.metal"
    case g4dnXlarge = "g4dn.xlarge"
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
    case i3en12xlarge = "i3en.12xlarge"
    case i3en24xlarge = "i3en.24xlarge"
    case i3en2xlarge = "i3en.2xlarge"
    case i3en3xlarge = "i3en.3xlarge"
    case i3en6xlarge = "i3en.6xlarge"
    case i3enLarge = "i3en.large"
    case i3enMetal = "i3en.metal"
    case i3enXlarge = "i3en.xlarge"
    case inf124xlarge = "inf1.24xlarge"
    case inf12xlarge = "inf1.2xlarge"
    case inf16xlarge = "inf1.6xlarge"
    case inf1Xlarge = "inf1.xlarge"
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
    case m516xlarge = "m5.16xlarge"
    case m524xlarge = "m5.24xlarge"
    case m52xlarge = "m5.2xlarge"
    case m54xlarge = "m5.4xlarge"
    case m58xlarge = "m5.8xlarge"
    case m5Large = "m5.large"
    case m5Metal = "m5.metal"
    case m5Xlarge = "m5.xlarge"
    case m5a12xlarge = "m5a.12xlarge"
    case m5a16xlarge = "m5a.16xlarge"
    case m5a24xlarge = "m5a.24xlarge"
    case m5a2xlarge = "m5a.2xlarge"
    case m5a4xlarge = "m5a.4xlarge"
    case m5a8xlarge = "m5a.8xlarge"
    case m5aLarge = "m5a.large"
    case m5aXlarge = "m5a.xlarge"
    case m5ad12xlarge = "m5ad.12xlarge"
    case m5ad16xlarge = "m5ad.16xlarge"
    case m5ad24xlarge = "m5ad.24xlarge"
    case m5ad2xlarge = "m5ad.2xlarge"
    case m5ad4xlarge = "m5ad.4xlarge"
    case m5ad8xlarge = "m5ad.8xlarge"
    case m5adLarge = "m5ad.large"
    case m5adXlarge = "m5ad.xlarge"
    case m5d12xlarge = "m5d.12xlarge"
    case m5d16xlarge = "m5d.16xlarge"
    case m5d24xlarge = "m5d.24xlarge"
    case m5d2xlarge = "m5d.2xlarge"
    case m5d4xlarge = "m5d.4xlarge"
    case m5d8xlarge = "m5d.8xlarge"
    case m5dLarge = "m5d.large"
    case m5dMetal = "m5d.metal"
    case m5dXlarge = "m5d.xlarge"
    case m5dn12xlarge = "m5dn.12xlarge"
    case m5dn16xlarge = "m5dn.16xlarge"
    case m5dn24xlarge = "m5dn.24xlarge"
    case m5dn2xlarge = "m5dn.2xlarge"
    case m5dn4xlarge = "m5dn.4xlarge"
    case m5dn8xlarge = "m5dn.8xlarge"
    case m5dnLarge = "m5dn.large"
    case m5dnXlarge = "m5dn.xlarge"
    case m5n12xlarge = "m5n.12xlarge"
    case m5n16xlarge = "m5n.16xlarge"
    case m5n24xlarge = "m5n.24xlarge"
    case m5n2xlarge = "m5n.2xlarge"
    case m5n4xlarge = "m5n.4xlarge"
    case m5n8xlarge = "m5n.8xlarge"
    case m5nLarge = "m5n.large"
    case m5nXlarge = "m5n.xlarge"
    case m5zn12xlarge = "m5zn.12xlarge"
    case m5zn2xlarge = "m5zn.2xlarge"
    case m5zn3xlarge = "m5zn.3xlarge"
    case m5zn6xlarge = "m5zn.6xlarge"
    case m5znLarge = "m5zn.large"
    case m5znMetal = "m5zn.metal"
    case m5znXlarge = "m5zn.xlarge"
    case m6g12xlarge = "m6g.12xlarge"
    case m6g16xlarge = "m6g.16xlarge"
    case m6g2xlarge = "m6g.2xlarge"
    case m6g4xlarge = "m6g.4xlarge"
    case m6g8xlarge = "m6g.8xlarge"
    case m6gLarge = "m6g.large"
    case m6gMedium = "m6g.medium"
    case m6gMetal = "m6g.metal"
    case m6gXlarge = "m6g.xlarge"
    case m6gd12xlarge = "m6gd.12xlarge"
    case m6gd16xlarge = "m6gd.16xlarge"
    case m6gd2xlarge = "m6gd.2xlarge"
    case m6gd4xlarge = "m6gd.4xlarge"
    case m6gd8xlarge = "m6gd.8xlarge"
    case m6gdLarge = "m6gd.large"
    case m6gdMedium = "m6gd.medium"
    case m6gdMetal = "m6gd.metal"
    case m6gdXlarge = "m6gd.xlarge"
    case mac1Metal = "mac1.metal"
    case p216xlarge = "p2.16xlarge"
    case p28xlarge = "p2.8xlarge"
    case p2Xlarge = "p2.xlarge"
    case p316xlarge = "p3.16xlarge"
    case p32xlarge = "p3.2xlarge"
    case p38xlarge = "p3.8xlarge"
    case p3dn24xlarge = "p3dn.24xlarge"
    case p4d24xlarge = "p4d.24xlarge"
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
    case r516xlarge = "r5.16xlarge"
    case r524xlarge = "r5.24xlarge"
    case r52xlarge = "r5.2xlarge"
    case r54xlarge = "r5.4xlarge"
    case r58xlarge = "r5.8xlarge"
    case r5Large = "r5.large"
    case r5Metal = "r5.metal"
    case r5Xlarge = "r5.xlarge"
    case r5a12xlarge = "r5a.12xlarge"
    case r5a16xlarge = "r5a.16xlarge"
    case r5a24xlarge = "r5a.24xlarge"
    case r5a2xlarge = "r5a.2xlarge"
    case r5a4xlarge = "r5a.4xlarge"
    case r5a8xlarge = "r5a.8xlarge"
    case r5aLarge = "r5a.large"
    case r5aXlarge = "r5a.xlarge"
    case r5ad12xlarge = "r5ad.12xlarge"
    case r5ad16xlarge = "r5ad.16xlarge"
    case r5ad24xlarge = "r5ad.24xlarge"
    case r5ad2xlarge = "r5ad.2xlarge"
    case r5ad4xlarge = "r5ad.4xlarge"
    case r5ad8xlarge = "r5ad.8xlarge"
    case r5adLarge = "r5ad.large"
    case r5adXlarge = "r5ad.xlarge"
    case r5b12xlarge = "r5b.12xlarge"
    case r5b16xlarge = "r5b.16xlarge"
    case r5b24xlarge = "r5b.24xlarge"
    case r5b2xlarge = "r5b.2xlarge"
    case r5b4xlarge = "r5b.4xlarge"
    case r5b8xlarge = "r5b.8xlarge"
    case r5bLarge = "r5b.large"
    case r5bMetal = "r5b.metal"
    case r5bXlarge = "r5b.xlarge"
    case r5d12xlarge = "r5d.12xlarge"
    case r5d16xlarge = "r5d.16xlarge"
    case r5d24xlarge = "r5d.24xlarge"
    case r5d2xlarge = "r5d.2xlarge"
    case r5d4xlarge = "r5d.4xlarge"
    case r5d8xlarge = "r5d.8xlarge"
    case r5dLarge = "r5d.large"
    case r5dMetal = "r5d.metal"
    case r5dXlarge = "r5d.xlarge"
    case r5dn12xlarge = "r5dn.12xlarge"
    case r5dn16xlarge = "r5dn.16xlarge"
    case r5dn24xlarge = "r5dn.24xlarge"
    case r5dn2xlarge = "r5dn.2xlarge"
    case r5dn4xlarge = "r5dn.4xlarge"
    case r5dn8xlarge = "r5dn.8xlarge"
    case r5dnLarge = "r5dn.large"
    case r5dnXlarge = "r5dn.xlarge"
    case r5n12xlarge = "r5n.12xlarge"
    case r5n16xlarge = "r5n.16xlarge"
    case r5n24xlarge = "r5n.24xlarge"
    case r5n2xlarge = "r5n.2xlarge"
    case r5n4xlarge = "r5n.4xlarge"
    case r5n8xlarge = "r5n.8xlarge"
    case r5nLarge = "r5n.large"
    case r5nXlarge = "r5n.xlarge"
    case r6g12xlarge = "r6g.12xlarge"
    case r6g16xlarge = "r6g.16xlarge"
    case r6g2xlarge = "r6g.2xlarge"
    case r6g4xlarge = "r6g.4xlarge"
    case r6g8xlarge = "r6g.8xlarge"
    case r6gLarge = "r6g.large"
    case r6gMedium = "r6g.medium"
    case r6gMetal = "r6g.metal"
    case r6gXlarge = "r6g.xlarge"
    case r6gd12xlarge = "r6gd.12xlarge"
    case r6gd16xlarge = "r6gd.16xlarge"
    case r6gd2xlarge = "r6gd.2xlarge"
    case r6gd4xlarge = "r6gd.4xlarge"
    case r6gd8xlarge = "r6gd.8xlarge"
    case r6gdLarge = "r6gd.large"
    case r6gdMedium = "r6gd.medium"
    case r6gdMetal = "r6gd.metal"
    case r6gdXlarge = "r6gd.xlarge"
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
    case t3a2xlarge = "t3a.2xlarge"
    case t3aLarge = "t3a.large"
    case t3aMedium = "t3a.medium"
    case t3aMicro = "t3a.micro"
    case t3aNano = "t3a.nano"
    case t3aSmall = "t3a.small"
    case t3aXlarge = "t3a.xlarge"
    case t4g2xlarge = "t4g.2xlarge"
    case t4gLarge = "t4g.large"
    case t4gMedium = "t4g.medium"
    case t4gMicro = "t4g.micro"
    case t4gNano = "t4g.nano"
    case t4gSmall = "t4g.small"
    case t4gXlarge = "t4g.xlarge"
    case u12tb1Metal = "u-12tb1.metal"
    case u18tb1Metal = "u-18tb1.metal"
    case u24tb1Metal = "u-24tb1.metal"
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
    case x2gd12xlarge = "x2gd.12xlarge"
    case x2gd16xlarge = "x2gd.16xlarge"
    case x2gd2xlarge = "x2gd.2xlarge"
    case x2gd4xlarge = "x2gd.4xlarge"
    case x2gd8xlarge = "x2gd.8xlarge"
    case x2gdLarge = "x2gd.large"
    case x2gdMedium = "x2gd.medium"
    case x2gdMetal = "x2gd.metal"
    case x2gdXlarge = "x2gd.xlarge"
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
 Enumeration restricting the values of the InstanceTypeHypervisor field.
 */
public enum InstanceTypeHypervisor: String, Codable, CustomStringConvertible {
    case nitro
    case xen

    public var description: String {
        return rawValue
    }
    
    public static let __default: InstanceTypeHypervisor = .nitro
}

/**
 Type definition for the InstanceTypeInfoList field.
 */
public typealias InstanceTypeInfoList = [InstanceTypeInfo]

/**
 Type definition for the InstanceTypeList field.
 */
public typealias InstanceTypeList = [InstanceType]

/**
 Type definition for the InstanceTypeOfferingsList field.
 */
public typealias InstanceTypeOfferingsList = [InstanceTypeOffering]

/**
 Type definition for the InstanceUsageSet field.
 */
public typealias InstanceUsageSet = [InstanceUsage]

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
 Type definition for the InternetGatewayId field.
 */
public typealias InternetGatewayId = String

/**
 Type definition for the InternetGatewayIdList field.
 */
public typealias InternetGatewayIdList = [InternetGatewayId]

/**
 Type definition for the InternetGatewayList field.
 */
public typealias InternetGatewayList = [InternetGateway]

/**
 Type definition for the IpAddress field.
 */
public typealias IpAddress = String

/**
 Type definition for the IpAddressList field.
 */
public typealias IpAddressList = [IpAddress]

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
 Type definition for the Ipv4PoolEc2Id field.
 */
public typealias Ipv4PoolEc2Id = String

/**
 Type definition for the Ipv6Address field.
 */
public typealias Ipv6Address = String

/**
 Type definition for the Ipv6AddressList field.
 */
public typealias Ipv6AddressList = [String]

/**
 Type definition for the Ipv6CidrAssociationSet field.
 */
public typealias Ipv6CidrAssociationSet = [Ipv6CidrAssociation]

/**
 Type definition for the Ipv6CidrBlockSet field.
 */
public typealias Ipv6CidrBlockSet = [Ipv6CidrBlock]

/**
 Type definition for the Ipv6Flag field.
 */
public typealias Ipv6Flag = Bool

/**
 Type definition for the Ipv6PoolEc2Id field.
 */
public typealias Ipv6PoolEc2Id = String

/**
 Type definition for the Ipv6PoolIdList field.
 */
public typealias Ipv6PoolIdList = [Ipv6PoolEc2Id]

/**
 Type definition for the Ipv6PoolMaxResults field.
 */
public typealias Ipv6PoolMaxResults = Int

/**
 Type definition for the Ipv6PoolSet field.
 */
public typealias Ipv6PoolSet = [Ipv6Pool]

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
 Type definition for the KernelId field.
 */
public typealias KernelId = String

/**
 Type definition for the KeyNameStringList field.
 */
public typealias KeyNameStringList = [KeyPairName]

/**
 Type definition for the KeyPairId field.
 */
public typealias KeyPairId = String

/**
 Type definition for the KeyPairIdStringList field.
 */
public typealias KeyPairIdStringList = [KeyPairId]

/**
 Type definition for the KeyPairList field.
 */
public typealias KeyPairList = [KeyPairInfo]

/**
 Type definition for the KeyPairName field.
 */
public typealias KeyPairName = String

/**
 Type definition for the KmsKeyId field.
 */
public typealias KmsKeyId = String

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
 Type definition for the LaunchTemplateElasticInferenceAcceleratorCount field.
 */
public typealias LaunchTemplateElasticInferenceAcceleratorCount = Int

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
 Enumeration restricting the values of the LaunchTemplateHttpTokensState field.
 */
public enum LaunchTemplateHttpTokensState: String, Codable, CustomStringConvertible {
    case optional
    case required

    public var description: String {
        return rawValue
    }
    
    public static let __default: LaunchTemplateHttpTokensState = .optional
}

/**
 Type definition for the LaunchTemplateId field.
 */
public typealias LaunchTemplateId = String

/**
 Type definition for the LaunchTemplateIdStringList field.
 */
public typealias LaunchTemplateIdStringList = [LaunchTemplateId]

/**
 Enumeration restricting the values of the LaunchTemplateInstanceMetadataEndpointState field.
 */
public enum LaunchTemplateInstanceMetadataEndpointState: String, Codable, CustomStringConvertible {
    case disabled
    case enabled

    public var description: String {
        return rawValue
    }
    
    public static let __default: LaunchTemplateInstanceMetadataEndpointState = .disabled
}

/**
 Enumeration restricting the values of the LaunchTemplateInstanceMetadataOptionsState field.
 */
public enum LaunchTemplateInstanceMetadataOptionsState: String, Codable, CustomStringConvertible {
    case applied
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: LaunchTemplateInstanceMetadataOptionsState = .applied
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
 Type definition for the LocalGatewayId field.
 */
public typealias LocalGatewayId = String

/**
 Type definition for the LocalGatewayIdSet field.
 */
public typealias LocalGatewayIdSet = [LocalGatewayId]

/**
 Type definition for the LocalGatewayMaxResults field.
 */
public typealias LocalGatewayMaxResults = Int

/**
 Type definition for the LocalGatewayRouteList field.
 */
public typealias LocalGatewayRouteList = [LocalGatewayRoute]

/**
 Enumeration restricting the values of the LocalGatewayRouteState field.
 */
public enum LocalGatewayRouteState: String, Codable, CustomStringConvertible {
    case active
    case blackhole
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: LocalGatewayRouteState = .active
}

/**
 Type definition for the LocalGatewayRouteTableIdSet field.
 */
public typealias LocalGatewayRouteTableIdSet = [LocalGatewayRoutetableId]

/**
 Type definition for the LocalGatewayRouteTableSet field.
 */
public typealias LocalGatewayRouteTableSet = [LocalGatewayRouteTable]

/**
 Type definition for the LocalGatewayRouteTableVirtualInterfaceGroupAssociationId field.
 */
public typealias LocalGatewayRouteTableVirtualInterfaceGroupAssociationId = String

/**
 Type definition for the LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet field.
 */
public typealias LocalGatewayRouteTableVirtualInterfaceGroupAssociationIdSet = [LocalGatewayRouteTableVirtualInterfaceGroupAssociationId]

/**
 Type definition for the LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet field.
 */
public typealias LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet = [LocalGatewayRouteTableVirtualInterfaceGroupAssociation]

/**
 Type definition for the LocalGatewayRouteTableVpcAssociationId field.
 */
public typealias LocalGatewayRouteTableVpcAssociationId = String

/**
 Type definition for the LocalGatewayRouteTableVpcAssociationIdSet field.
 */
public typealias LocalGatewayRouteTableVpcAssociationIdSet = [LocalGatewayRouteTableVpcAssociationId]

/**
 Type definition for the LocalGatewayRouteTableVpcAssociationSet field.
 */
public typealias LocalGatewayRouteTableVpcAssociationSet = [LocalGatewayRouteTableVpcAssociation]

/**
 Enumeration restricting the values of the LocalGatewayRouteType field.
 */
public enum LocalGatewayRouteType: String, Codable, CustomStringConvertible {
    case propagated
    case `static` = "static"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LocalGatewayRouteType = .propagated
}

/**
 Type definition for the LocalGatewayRoutetableId field.
 */
public typealias LocalGatewayRoutetableId = String

/**
 Type definition for the LocalGatewaySet field.
 */
public typealias LocalGatewaySet = [LocalGateway]

/**
 Type definition for the LocalGatewayVirtualInterfaceGroupId field.
 */
public typealias LocalGatewayVirtualInterfaceGroupId = String

/**
 Type definition for the LocalGatewayVirtualInterfaceGroupIdSet field.
 */
public typealias LocalGatewayVirtualInterfaceGroupIdSet = [LocalGatewayVirtualInterfaceGroupId]

/**
 Type definition for the LocalGatewayVirtualInterfaceGroupSet field.
 */
public typealias LocalGatewayVirtualInterfaceGroupSet = [LocalGatewayVirtualInterfaceGroup]

/**
 Type definition for the LocalGatewayVirtualInterfaceId field.
 */
public typealias LocalGatewayVirtualInterfaceId = String

/**
 Type definition for the LocalGatewayVirtualInterfaceIdSet field.
 */
public typealias LocalGatewayVirtualInterfaceIdSet = [LocalGatewayVirtualInterfaceId]

/**
 Type definition for the LocalGatewayVirtualInterfaceSet field.
 */
public typealias LocalGatewayVirtualInterfaceSet = [LocalGatewayVirtualInterface]

/**
 Type definition for the Location field.
 */
public typealias Location = String

/**
 Enumeration restricting the values of the LocationType field.
 */
public enum LocationType: String, Codable, CustomStringConvertible {
    case availabilityZone = "availability-zone"
    case availabilityZoneId = "availability-zone-id"
    case region

    public var description: String {
        return rawValue
    }
    
    public static let __default: LocationType = .availabilityZone
}

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
 Type definition for the ManagedPrefixListSet field.
 */
public typealias ManagedPrefixListSet = [ManagedPrefixList]

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
 Type definition for the MaxIpv4AddrPerInterface field.
 */
public typealias MaxIpv4AddrPerInterface = Int

/**
 Type definition for the MaxIpv6AddrPerInterface field.
 */
public typealias MaxIpv6AddrPerInterface = Int

/**
 Type definition for the MaxNetworkInterfaces field.
 */
public typealias MaxNetworkInterfaces = Int

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the MaximumBandwidthInMbps field.
 */
public typealias MaximumBandwidthInMbps = Int

/**
 Type definition for the MaximumEfaInterfaces field.
 */
public typealias MaximumEfaInterfaces = Int

/**
 Type definition for the MaximumIops field.
 */
public typealias MaximumIops = Int

/**
 Type definition for the MaximumNetworkCards field.
 */
public typealias MaximumNetworkCards = Int

/**
 Type definition for the MaximumThroughputInMBps field.
 */
public typealias MaximumThroughputInMBps = Double

/**
 Enumeration restricting the values of the MembershipType field.
 */
public enum MembershipType: String, Codable, CustomStringConvertible {
    case igmp
    case `static` = "static"

    public var description: String {
        return rawValue
    }
    
    public static let __default: MembershipType = .igmp
}

/**
 Type definition for the MemorySize field.
 */
public typealias MemorySize = Int

/**
 Type definition for the MillisecondDateTime field.
 */
public typealias MillisecondDateTime = String

/**
 Enumeration restricting the values of the ModifyAvailabilityZoneOptInStatus field.
 */
public enum ModifyAvailabilityZoneOptInStatus: String, Codable, CustomStringConvertible {
    case notOptedIn = "not-opted-in"
    case optedIn = "opted-in"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ModifyAvailabilityZoneOptInStatus = .notOptedIn
}

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
 Enumeration restricting the values of the MulticastSupportValue field.
 */
public enum MulticastSupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: MulticastSupportValue = .disable
}

/**
 Type definition for the NatGatewayAddressList field.
 */
public typealias NatGatewayAddressList = [NatGatewayAddress]

/**
 Type definition for the NatGatewayId field.
 */
public typealias NatGatewayId = String

/**
 Type definition for the NatGatewayIdStringList field.
 */
public typealias NatGatewayIdStringList = [NatGatewayId]

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
 Type definition for the NetworkAclAssociationId field.
 */
public typealias NetworkAclAssociationId = String

/**
 Type definition for the NetworkAclAssociationList field.
 */
public typealias NetworkAclAssociationList = [NetworkAclAssociation]

/**
 Type definition for the NetworkAclEntryList field.
 */
public typealias NetworkAclEntryList = [NetworkAclEntry]

/**
 Type definition for the NetworkAclId field.
 */
public typealias NetworkAclId = String

/**
 Type definition for the NetworkAclIdStringList field.
 */
public typealias NetworkAclIdStringList = [NetworkAclId]

/**
 Type definition for the NetworkAclList field.
 */
public typealias NetworkAclList = [NetworkAcl]

/**
 Type definition for the NetworkCardIndex field.
 */
public typealias NetworkCardIndex = Int

/**
 Type definition for the NetworkCardInfoList field.
 */
public typealias NetworkCardInfoList = [NetworkCardInfo]

/**
 Type definition for the NetworkInsightsAnalysisId field.
 */
public typealias NetworkInsightsAnalysisId = String

/**
 Type definition for the NetworkInsightsAnalysisIdList field.
 */
public typealias NetworkInsightsAnalysisIdList = [NetworkInsightsAnalysisId]

/**
 Type definition for the NetworkInsightsAnalysisList field.
 */
public typealias NetworkInsightsAnalysisList = [NetworkInsightsAnalysis]

/**
 Type definition for the NetworkInsightsMaxResults field.
 */
public typealias NetworkInsightsMaxResults = Int

/**
 Type definition for the NetworkInsightsPathId field.
 */
public typealias NetworkInsightsPathId = String

/**
 Type definition for the NetworkInsightsPathIdList field.
 */
public typealias NetworkInsightsPathIdList = [NetworkInsightsPathId]

/**
 Type definition for the NetworkInsightsPathList field.
 */
public typealias NetworkInsightsPathList = [NetworkInsightsPath]

/**
 Type definition for the NetworkInterfaceAttachmentId field.
 */
public typealias NetworkInterfaceAttachmentId = String

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
 Enumeration restricting the values of the NetworkInterfaceCreationType field.
 */
public enum NetworkInterfaceCreationType: String, Codable, CustomStringConvertible {
    case efa

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkInterfaceCreationType = .efa
}

/**
 Type definition for the NetworkInterfaceId field.
 */
public typealias NetworkInterfaceId = String

/**
 Type definition for the NetworkInterfaceIdList field.
 */
public typealias NetworkInterfaceIdList = [NetworkInterfaceId]

/**
 Type definition for the NetworkInterfaceIpv6AddressesList field.
 */
public typealias NetworkInterfaceIpv6AddressesList = [NetworkInterfaceIpv6Address]

/**
 Type definition for the NetworkInterfaceList field.
 */
public typealias NetworkInterfaceList = [NetworkInterface]

/**
 Type definition for the NetworkInterfacePermissionId field.
 */
public typealias NetworkInterfacePermissionId = String

/**
 Type definition for the NetworkInterfacePermissionIdList field.
 */
public typealias NetworkInterfacePermissionIdList = [NetworkInterfacePermissionId]

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
    case efa
    case interface
    case natgateway = "natGateway"

    public var description: String {
        return rawValue
    }
    
    public static let __default: NetworkInterfaceType = .efa
}

/**
 Type definition for the NetworkPerformance field.
 */
public typealias NetworkPerformance = String

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
 Type definition for the OfferingId field.
 */
public typealias OfferingId = String

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
 Type definition for the PathComponentList field.
 */
public typealias PathComponentList = [PathComponent]

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
 Type definition for the Phase1DHGroupNumbersList field.
 */
public typealias Phase1DHGroupNumbersList = [Phase1DHGroupNumbersListValue]

/**
 Type definition for the Phase1DHGroupNumbersRequestList field.
 */
public typealias Phase1DHGroupNumbersRequestList = [Phase1DHGroupNumbersRequestListValue]

/**
 Type definition for the Phase1EncryptionAlgorithmsList field.
 */
public typealias Phase1EncryptionAlgorithmsList = [Phase1EncryptionAlgorithmsListValue]

/**
 Type definition for the Phase1EncryptionAlgorithmsRequestList field.
 */
public typealias Phase1EncryptionAlgorithmsRequestList = [Phase1EncryptionAlgorithmsRequestListValue]

/**
 Type definition for the Phase1IntegrityAlgorithmsList field.
 */
public typealias Phase1IntegrityAlgorithmsList = [Phase1IntegrityAlgorithmsListValue]

/**
 Type definition for the Phase1IntegrityAlgorithmsRequestList field.
 */
public typealias Phase1IntegrityAlgorithmsRequestList = [Phase1IntegrityAlgorithmsRequestListValue]

/**
 Type definition for the Phase2DHGroupNumbersList field.
 */
public typealias Phase2DHGroupNumbersList = [Phase2DHGroupNumbersListValue]

/**
 Type definition for the Phase2DHGroupNumbersRequestList field.
 */
public typealias Phase2DHGroupNumbersRequestList = [Phase2DHGroupNumbersRequestListValue]

/**
 Type definition for the Phase2EncryptionAlgorithmsList field.
 */
public typealias Phase2EncryptionAlgorithmsList = [Phase2EncryptionAlgorithmsListValue]

/**
 Type definition for the Phase2EncryptionAlgorithmsRequestList field.
 */
public typealias Phase2EncryptionAlgorithmsRequestList = [Phase2EncryptionAlgorithmsRequestListValue]

/**
 Type definition for the Phase2IntegrityAlgorithmsList field.
 */
public typealias Phase2IntegrityAlgorithmsList = [Phase2IntegrityAlgorithmsListValue]

/**
 Type definition for the Phase2IntegrityAlgorithmsRequestList field.
 */
public typealias Phase2IntegrityAlgorithmsRequestList = [Phase2IntegrityAlgorithmsRequestListValue]

/**
 Type definition for the PlacementGroupId field.
 */
public typealias PlacementGroupId = String

/**
 Type definition for the PlacementGroupIdStringList field.
 */
public typealias PlacementGroupIdStringList = [PlacementGroupId]

/**
 Type definition for the PlacementGroupList field.
 */
public typealias PlacementGroupList = [PlacementGroup]

/**
 Type definition for the PlacementGroupName field.
 */
public typealias PlacementGroupName = String

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
 Enumeration restricting the values of the PlacementGroupStrategy field.
 */
public enum PlacementGroupStrategy: String, Codable, CustomStringConvertible {
    case cluster
    case partition
    case spread

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlacementGroupStrategy = .cluster
}

/**
 Type definition for the PlacementGroupStrategyList field.
 */
public typealias PlacementGroupStrategyList = [PlacementGroupStrategy]

/**
 Type definition for the PlacementGroupStringList field.
 */
public typealias PlacementGroupStringList = [PlacementGroupName]

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
 Type definition for the PoolCidrBlocksSet field.
 */
public typealias PoolCidrBlocksSet = [PoolCidrBlock]

/**
 Type definition for the PoolMaxResults field.
 */
public typealias PoolMaxResults = Int

/**
 Type definition for the Port field.
 */
public typealias Port = Int

/**
 Type definition for the PortRangeList field.
 */
public typealias PortRangeList = [PortRange]

/**
 Type definition for the PrefixListAssociationSet field.
 */
public typealias PrefixListAssociationSet = [PrefixListAssociation]

/**
 Type definition for the PrefixListEntrySet field.
 */
public typealias PrefixListEntrySet = [PrefixListEntry]

/**
 Type definition for the PrefixListIdList field.
 */
public typealias PrefixListIdList = [PrefixListId]

/**
 Type definition for the PrefixListIdSet field.
 */
public typealias PrefixListIdSet = [String]

/**
 Type definition for the PrefixListMaxResults field.
 */
public typealias PrefixListMaxResults = Int

/**
 Type definition for the PrefixListResourceId field.
 */
public typealias PrefixListResourceId = String

/**
 Type definition for the PrefixListResourceIdStringList field.
 */
public typealias PrefixListResourceIdStringList = [PrefixListResourceId]

/**
 Type definition for the PrefixListSet field.
 */
public typealias PrefixListSet = [PrefixList]

/**
 Enumeration restricting the values of the PrefixListState field.
 */
public enum PrefixListState: String, Codable, CustomStringConvertible {
    case createComplete = "create-complete"
    case createFailed = "create-failed"
    case createInProgress = "create-in-progress"
    case deleteComplete = "delete-complete"
    case deleteFailed = "delete-failed"
    case deleteInProgress = "delete-in-progress"
    case modifyComplete = "modify-complete"
    case modifyFailed = "modify-failed"
    case modifyInProgress = "modify-in-progress"
    case restoreComplete = "restore-complete"
    case restoreFailed = "restore-failed"
    case restoreInProgress = "restore-in-progress"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PrefixListState = .createComplete
}

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
 Type definition for the PrivateDnsDetailsSet field.
 */
public typealias PrivateDnsDetailsSet = [PrivateDnsDetails]

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
 Type definition for the ProcessorSustainedClockSpeed field.
 */
public typealias ProcessorSustainedClockSpeed = Double

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
 Enumeration restricting the values of the Protocol field.
 */
public enum Protocol: String, Codable, CustomStringConvertible {
    case tcp
    case udp

    public var description: String {
        return rawValue
    }
    
    public static let __default: Protocol = .tcp
}

/**
 Enumeration restricting the values of the ProtocolValue field.
 */
public enum ProtocolValue: String, Codable, CustomStringConvertible {
    case gre

    public var description: String {
        return rawValue
    }
    
    public static let __default: ProtocolValue = .gre
}

/**
 Type definition for the PublicIpAddress field.
 */
public typealias PublicIpAddress = String

/**
 Type definition for the PublicIpStringList field.
 */
public typealias PublicIpStringList = [String]

/**
 Type definition for the PublicIpv4PoolIdStringList field.
 */
public typealias PublicIpv4PoolIdStringList = [Ipv4PoolEc2Id]

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
 Type definition for the RamdiskId field.
 */
public typealias RamdiskId = String

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
 Type definition for the RemovePrefixListEntries field.
 */
public typealias RemovePrefixListEntries = [RemovePrefixListEntry]

/**
 Enumeration restricting the values of the ReplacementStrategy field.
 */
public enum ReplacementStrategy: String, Codable, CustomStringConvertible {
    case launch

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReplacementStrategy = .launch
}

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
public typealias RequestHostIdList = [DedicatedHostId]

/**
 Type definition for the RequestHostIdSet field.
 */
public typealias RequestHostIdSet = [DedicatedHostId]

/**
 Type definition for the RequestInstanceTypeList field.
 */
public typealias RequestInstanceTypeList = [InstanceType]

/**
 Type definition for the RequestSpotLaunchSpecificationSecurityGroupIdList field.
 */
public typealias RequestSpotLaunchSpecificationSecurityGroupIdList = [SecurityGroupId]

/**
 Type definition for the RequestSpotLaunchSpecificationSecurityGroupList field.
 */
public typealias RequestSpotLaunchSpecificationSecurityGroupList = [SecurityGroupName]

/**
 Type definition for the ReservationId field.
 */
public typealias ReservationId = String

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
public typealias ReservedInstanceIdSet = [ReservationId]

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
    case queued
    case queuedDeleted = "queued-deleted"
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
public typealias ReservedInstancesIdStringList = [ReservationId]

/**
 Type definition for the ReservedInstancesList field.
 */
public typealias ReservedInstancesList = [ReservedInstances]

/**
 Type definition for the ReservedInstancesListingId field.
 */
public typealias ReservedInstancesListingId = String

/**
 Type definition for the ReservedInstancesListingList field.
 */
public typealias ReservedInstancesListingList = [ReservedInstancesListing]

/**
 Type definition for the ReservedInstancesModificationId field.
 */
public typealias ReservedInstancesModificationId = String

/**
 Type definition for the ReservedInstancesModificationIdStringList field.
 */
public typealias ReservedInstancesModificationIdStringList = [ReservedInstancesModificationId]

/**
 Type definition for the ReservedInstancesModificationList field.
 */
public typealias ReservedInstancesModificationList = [ReservedInstancesModification]

/**
 Type definition for the ReservedInstancesModificationResultList field.
 */
public typealias ReservedInstancesModificationResultList = [ReservedInstancesModificationResult]

/**
 Type definition for the ReservedInstancesOfferingId field.
 */
public typealias ReservedInstancesOfferingId = String

/**
 Type definition for the ReservedInstancesOfferingIdStringList field.
 */
public typealias ReservedInstancesOfferingIdStringList = [ReservedInstancesOfferingId]

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
 Type definition for the ResourceArn field.
 */
public typealias ResourceArn = String

/**
 Type definition for the ResourceIdList field.
 */
public typealias ResourceIdList = [TaggableResourceId]

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
    case egressOnlyInternetGateway = "egress-only-internet-gateway"
    case elasticGpu = "elastic-gpu"
    case elasticIp = "elastic-ip"
    case exportImageTask = "export-image-task"
    case exportInstanceTask = "export-instance-task"
    case fleet
    case fpgaImage = "fpga-image"
    case hostReservation = "host-reservation"
    case image
    case importImageTask = "import-image-task"
    case importSnapshotTask = "import-snapshot-task"
    case instance
    case internetGateway = "internet-gateway"
    case keyPair = "key-pair"
    case launchTemplate = "launch-template"
    case localGatewayRouteTableVpcAssociation = "local-gateway-route-table-vpc-association"
    case natgateway
    case networkAcl = "network-acl"
    case networkInsightsAnalysis = "network-insights-analysis"
    case networkInsightsPath = "network-insights-path"
    case networkInterface = "network-interface"
    case placementGroup = "placement-group"
    case reservedInstances = "reserved-instances"
    case routeTable = "route-table"
    case securityGroup = "security-group"
    case snapshot
    case spotFleetRequest = "spot-fleet-request"
    case spotInstancesRequest = "spot-instances-request"
    case subnet
    case trafficMirrorFilter = "traffic-mirror-filter"
    case trafficMirrorSession = "traffic-mirror-session"
    case trafficMirrorTarget = "traffic-mirror-target"
    case transitGateway = "transit-gateway"
    case transitGatewayAttachment = "transit-gateway-attachment"
    case transitGatewayConnectPeer = "transit-gateway-connect-peer"
    case transitGatewayMulticastDomain = "transit-gateway-multicast-domain"
    case transitGatewayRouteTable = "transit-gateway-route-table"
    case volume
    case vpc
    case vpcFlowLog = "vpc-flow-log"
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
 Enumeration restricting the values of the RootDeviceType field.
 */
public enum RootDeviceType: String, Codable, CustomStringConvertible {
    case ebs
    case instanceStore = "instance-store"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RootDeviceType = .ebs
}

/**
 Type definition for the RootDeviceTypeList field.
 */
public typealias RootDeviceTypeList = [RootDeviceType]

/**
 Type definition for the RouteGatewayId field.
 */
public typealias RouteGatewayId = String

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
 Type definition for the RouteTableAssociationId field.
 */
public typealias RouteTableAssociationId = String

/**
 Type definition for the RouteTableAssociationList field.
 */
public typealias RouteTableAssociationList = [RouteTableAssociation]

/**
 Enumeration restricting the values of the RouteTableAssociationStateCode field.
 */
public enum RouteTableAssociationStateCode: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case disassociated
    case disassociating
    case failed

    public var description: String {
        return rawValue
    }
    
    public static let __default: RouteTableAssociationStateCode = .associated
}

/**
 Type definition for the RouteTableId field.
 */
public typealias RouteTableId = String

/**
 Type definition for the RouteTableIdStringList field.
 */
public typealias RouteTableIdStringList = [RouteTableId]

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
 Type definition for the ScheduledInstanceId field.
 */
public typealias ScheduledInstanceId = String

/**
 Type definition for the ScheduledInstanceIdRequestSet field.
 */
public typealias ScheduledInstanceIdRequestSet = [ScheduledInstanceId]

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
public typealias ScheduledInstancesSecurityGroupIdSet = [SecurityGroupId]

/**
 Type definition for the SecurityGroupId field.
 */
public typealias SecurityGroupId = String

/**
 Type definition for the SecurityGroupIdStringList field.
 */
public typealias SecurityGroupIdStringList = [SecurityGroupId]

/**
 Type definition for the SecurityGroupList field.
 */
public typealias SecurityGroupList = [SecurityGroup]

/**
 Type definition for the SecurityGroupName field.
 */
public typealias SecurityGroupName = String

/**
 Type definition for the SecurityGroupReferences field.
 */
public typealias SecurityGroupReferences = [SecurityGroupReference]

/**
 Type definition for the SecurityGroupStringList field.
 */
public typealias SecurityGroupStringList = [SecurityGroupName]

/**
 Enumeration restricting the values of the SelfServicePortal field.
 */
public enum SelfServicePortal: String, Codable, CustomStringConvertible {
    case disabled
    case enabled

    public var description: String {
        return rawValue
    }
    
    public static let __default: SelfServicePortal = .disabled
}

/**
 Type definition for the SensitiveUserData field.
 */
public typealias SensitiveUserData = String

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
    case gatewayloadbalancer = "GatewayLoadBalancer"
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
 Type definition for the SnapshotId field.
 */
public typealias SnapshotId = String

/**
 Type definition for the SnapshotIdStringList field.
 */
public typealias SnapshotIdStringList = [SnapshotId]

/**
 Type definition for the SnapshotList field.
 */
public typealias SnapshotList = [Snapshot]

/**
 Type definition for the SnapshotSet field.
 */
public typealias SnapshotSet = [SnapshotInfo]

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
    case capacityOptimized = "capacity-optimized"
    case capacityOptimizedPrioritized = "capacity-optimized-prioritized"
    case diversified
    case lowestPrice = "lowest-price"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SpotAllocationStrategy = .capacityOptimized
}

/**
 Type definition for the SpotFleetRequestConfigSet field.
 */
public typealias SpotFleetRequestConfigSet = [SpotFleetRequestConfig]

/**
 Type definition for the SpotFleetRequestId field.
 */
public typealias SpotFleetRequestId = String

/**
 Type definition for the SpotFleetRequestIdList field.
 */
public typealias SpotFleetRequestIdList = [SpotFleetRequestId]

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
 Type definition for the SpotInstanceRequestId field.
 */
public typealias SpotInstanceRequestId = String

/**
 Type definition for the SpotInstanceRequestIdList field.
 */
public typealias SpotInstanceRequestIdList = [SpotInstanceRequestId]

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
 Enumeration restricting the values of the StaticSourcesSupportValue field.
 */
public enum StaticSourcesSupportValue: String, Codable, CustomStringConvertible {
    case disable
    case enable

    public var description: String {
        return rawValue
    }
    
    public static let __default: StaticSourcesSupportValue = .disable
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
 Type definition for the StringList field.
 */
public typealias StringList = [String]

/**
 Type definition for the SubnetAssociationList field.
 */
public typealias SubnetAssociationList = [SubnetAssociation]

/**
 Type definition for the SubnetCidrAssociationId field.
 */
public typealias SubnetCidrAssociationId = String

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
 Type definition for the SubnetId field.
 */
public typealias SubnetId = String

/**
 Type definition for the SubnetIdStringList field.
 */
public typealias SubnetIdStringList = [SubnetId]

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
 Type definition for the SuccessfulQueuedPurchaseDeletionSet field.
 */
public typealias SuccessfulQueuedPurchaseDeletionSet = [SuccessfulQueuedPurchaseDeletion]

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
 Type definition for the TaggableResourceId field.
 */
public typealias TaggableResourceId = String

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
 Type definition for the ThreadsPerCore field.
 */
public typealias ThreadsPerCore = Int

/**
 Type definition for the ThreadsPerCoreList field.
 */
public typealias ThreadsPerCoreList = [ThreadsPerCore]

/**
 Enumeration restricting the values of the TrafficDirection field.
 */
public enum TrafficDirection: String, Codable, CustomStringConvertible {
    case egress
    case ingress

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficDirection = .egress
}

/**
 Type definition for the TrafficMirrorFilterId field.
 */
public typealias TrafficMirrorFilterId = String

/**
 Type definition for the TrafficMirrorFilterIdList field.
 */
public typealias TrafficMirrorFilterIdList = [TrafficMirrorFilterId]

/**
 Enumeration restricting the values of the TrafficMirrorFilterRuleField field.
 */
public enum TrafficMirrorFilterRuleField: String, Codable, CustomStringConvertible {
    case description
    case destinationPortRange = "destination-port-range"
    case `protocol` = "protocol"
    case sourcePortRange = "source-port-range"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficMirrorFilterRuleField = .description
}

/**
 Type definition for the TrafficMirrorFilterRuleFieldList field.
 */
public typealias TrafficMirrorFilterRuleFieldList = [TrafficMirrorFilterRuleField]

/**
 Type definition for the TrafficMirrorFilterRuleId field.
 */
public typealias TrafficMirrorFilterRuleId = String

/**
 Type definition for the TrafficMirrorFilterRuleList field.
 */
public typealias TrafficMirrorFilterRuleList = [TrafficMirrorFilterRule]

/**
 Type definition for the TrafficMirrorFilterSet field.
 */
public typealias TrafficMirrorFilterSet = [TrafficMirrorFilter]

/**
 Enumeration restricting the values of the TrafficMirrorNetworkService field.
 */
public enum TrafficMirrorNetworkService: String, Codable, CustomStringConvertible {
    case amazonDns = "amazon-dns"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficMirrorNetworkService = .amazonDns
}

/**
 Type definition for the TrafficMirrorNetworkServiceList field.
 */
public typealias TrafficMirrorNetworkServiceList = [TrafficMirrorNetworkService]

/**
 Enumeration restricting the values of the TrafficMirrorRuleAction field.
 */
public enum TrafficMirrorRuleAction: String, Codable, CustomStringConvertible {
    case accept
    case reject

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficMirrorRuleAction = .accept
}

/**
 Enumeration restricting the values of the TrafficMirrorSessionField field.
 */
public enum TrafficMirrorSessionField: String, Codable, CustomStringConvertible {
    case description
    case packetLength = "packet-length"
    case virtualNetworkId = "virtual-network-id"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficMirrorSessionField = .description
}

/**
 Type definition for the TrafficMirrorSessionFieldList field.
 */
public typealias TrafficMirrorSessionFieldList = [TrafficMirrorSessionField]

/**
 Type definition for the TrafficMirrorSessionId field.
 */
public typealias TrafficMirrorSessionId = String

/**
 Type definition for the TrafficMirrorSessionIdList field.
 */
public typealias TrafficMirrorSessionIdList = [TrafficMirrorSessionId]

/**
 Type definition for the TrafficMirrorSessionSet field.
 */
public typealias TrafficMirrorSessionSet = [TrafficMirrorSession]

/**
 Type definition for the TrafficMirrorTargetId field.
 */
public typealias TrafficMirrorTargetId = String

/**
 Type definition for the TrafficMirrorTargetIdList field.
 */
public typealias TrafficMirrorTargetIdList = [TrafficMirrorTargetId]

/**
 Type definition for the TrafficMirrorTargetSet field.
 */
public typealias TrafficMirrorTargetSet = [TrafficMirrorTarget]

/**
 Enumeration restricting the values of the TrafficMirrorTargetType field.
 */
public enum TrafficMirrorTargetType: String, Codable, CustomStringConvertible {
    case networkInterface = "network-interface"
    case networkLoadBalancer = "network-load-balancer"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TrafficMirrorTargetType = .networkInterface
}

/**
 Type definition for the TrafficMirroringMaxResults field.
 */
public typealias TrafficMirroringMaxResults = Int

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
 Type definition for the TransitAssociationGatewayId field.
 */
public typealias TransitAssociationGatewayId = String

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
 Type definition for the TransitGatewayAttachmentBgpConfigurationList field.
 */
public typealias TransitGatewayAttachmentBgpConfigurationList = [TransitGatewayAttachmentBgpConfiguration]

/**
 Type definition for the TransitGatewayAttachmentId field.
 */
public typealias TransitGatewayAttachmentId = String

/**
 Type definition for the TransitGatewayAttachmentIdStringList field.
 */
public typealias TransitGatewayAttachmentIdStringList = [TransitGatewayAttachmentId]

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
    case connect
    case directConnectGateway = "direct-connect-gateway"
    case peering
    case tgwPeering = "tgw-peering"
    case vpc
    case vpn

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayAttachmentResourceType = .connect
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
    case initiating
    case initiatingrequest = "initiatingRequest"
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
 Type definition for the TransitGatewayCidrBlockStringList field.
 */
public typealias TransitGatewayCidrBlockStringList = [String]

/**
 Type definition for the TransitGatewayConnectList field.
 */
public typealias TransitGatewayConnectList = [TransitGatewayConnect]

/**
 Type definition for the TransitGatewayConnectPeerId field.
 */
public typealias TransitGatewayConnectPeerId = String

/**
 Type definition for the TransitGatewayConnectPeerIdStringList field.
 */
public typealias TransitGatewayConnectPeerIdStringList = [TransitGatewayConnectPeerId]

/**
 Type definition for the TransitGatewayConnectPeerList field.
 */
public typealias TransitGatewayConnectPeerList = [TransitGatewayConnectPeer]

/**
 Enumeration restricting the values of the TransitGatewayConnectPeerState field.
 */
public enum TransitGatewayConnectPeerState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayConnectPeerState = .available
}

/**
 Type definition for the TransitGatewayId field.
 */
public typealias TransitGatewayId = String

/**
 Type definition for the TransitGatewayIdStringList field.
 */
public typealias TransitGatewayIdStringList = [TransitGatewayId]

/**
 Type definition for the TransitGatewayList field.
 */
public typealias TransitGatewayList = [TransitGateway]

/**
 Type definition for the TransitGatewayMaxResults field.
 */
public typealias TransitGatewayMaxResults = Int

/**
 Enumeration restricting the values of the TransitGatewayMulitcastDomainAssociationState field.
 */
public enum TransitGatewayMulitcastDomainAssociationState: String, Codable, CustomStringConvertible {
    case associated
    case associating
    case disassociated
    case disassociating
    case failed
    case pendingacceptance = "pendingAcceptance"
    case rejected

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayMulitcastDomainAssociationState = .associated
}

/**
 Type definition for the TransitGatewayMulticastDomainAssociationList field.
 */
public typealias TransitGatewayMulticastDomainAssociationList = [TransitGatewayMulticastDomainAssociation]

/**
 Type definition for the TransitGatewayMulticastDomainId field.
 */
public typealias TransitGatewayMulticastDomainId = String

/**
 Type definition for the TransitGatewayMulticastDomainIdStringList field.
 */
public typealias TransitGatewayMulticastDomainIdStringList = [TransitGatewayMulticastDomainId]

/**
 Type definition for the TransitGatewayMulticastDomainList field.
 */
public typealias TransitGatewayMulticastDomainList = [TransitGatewayMulticastDomain]

/**
 Enumeration restricting the values of the TransitGatewayMulticastDomainState field.
 */
public enum TransitGatewayMulticastDomainState: String, Codable, CustomStringConvertible {
    case available
    case deleted
    case deleting
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayMulticastDomainState = .available
}

/**
 Type definition for the TransitGatewayMulticastGroupList field.
 */
public typealias TransitGatewayMulticastGroupList = [TransitGatewayMulticastGroup]

/**
 Type definition for the TransitGatewayNetworkInterfaceIdList field.
 */
public typealias TransitGatewayNetworkInterfaceIdList = [NetworkInterfaceId]

/**
 Type definition for the TransitGatewayPeeringAttachmentList field.
 */
public typealias TransitGatewayPeeringAttachmentList = [TransitGatewayPeeringAttachment]

/**
 Type definition for the TransitGatewayPrefixListReferenceSet field.
 */
public typealias TransitGatewayPrefixListReferenceSet = [TransitGatewayPrefixListReference]

/**
 Enumeration restricting the values of the TransitGatewayPrefixListReferenceState field.
 */
public enum TransitGatewayPrefixListReferenceState: String, Codable, CustomStringConvertible {
    case available
    case deleting
    case modifying
    case pending

    public var description: String {
        return rawValue
    }
    
    public static let __default: TransitGatewayPrefixListReferenceState = .available
}

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
 Type definition for the TransitGatewayRouteTableId field.
 */
public typealias TransitGatewayRouteTableId = String

/**
 Type definition for the TransitGatewayRouteTableIdStringList field.
 */
public typealias TransitGatewayRouteTableIdStringList = [TransitGatewayRouteTableId]

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
 Type definition for the TransitGatewaySubnetIdList field.
 */
public typealias TransitGatewaySubnetIdList = [SubnetId]

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
 Enumeration restricting the values of the TunnelInsideIpVersion field.
 */
public enum TunnelInsideIpVersion: String, Codable, CustomStringConvertible {
    case ipv4
    case ipv6

    public var description: String {
        return rawValue
    }
    
    public static let __default: TunnelInsideIpVersion = .ipv4
}

/**
 Type definition for the TunnelOptionsList field.
 */
public typealias TunnelOptionsList = [TunnelOption]

/**
 Enumeration restricting the values of the UnlimitedSupportedInstanceFamily field.
 */
public enum UnlimitedSupportedInstanceFamily: String, Codable, CustomStringConvertible {
    case t2
    case t3
    case t3a
    case t4g

    public var description: String {
        return rawValue
    }
    
    public static let __default: UnlimitedSupportedInstanceFamily = .t2
}

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
 Enumeration restricting the values of the UsageClassType field.
 */
public enum UsageClassType: String, Codable, CustomStringConvertible {
    case onDemand = "on-demand"
    case spot

    public var description: String {
        return rawValue
    }
    
    public static let __default: UsageClassType = .onDemand
}

/**
 Type definition for the UsageClassTypeList field.
 */
public typealias UsageClassTypeList = [UsageClassType]

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
 Type definition for the VCpuCount field.
 */
public typealias VCpuCount = Int

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
 Type definition for the VirtualizationTypeList field.
 */
public typealias VirtualizationTypeList = [VirtualizationType]

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
 Type definition for the VolumeId field.
 */
public typealias VolumeId = String

/**
 Type definition for the VolumeIdStringList field.
 */
public typealias VolumeIdStringList = [VolumeId]

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
 Type definition for the VolumeStatusAttachmentStatusList field.
 */
public typealias VolumeStatusAttachmentStatusList = [VolumeStatusAttachmentStatus]

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
    case gp3
    case io1
    case io2
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
 Type definition for the VpcCidrAssociationId field.
 */
public typealias VpcCidrAssociationId = String

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
public typealias VpcClassicLinkIdList = [VpcId]

/**
 Type definition for the VpcClassicLinkList field.
 */
public typealias VpcClassicLinkList = [VpcClassicLink]

/**
 Type definition for the VpcEndpointConnectionSet field.
 */
public typealias VpcEndpointConnectionSet = [VpcEndpointConnection]

/**
 Type definition for the VpcEndpointId field.
 */
public typealias VpcEndpointId = String

/**
 Type definition for the VpcEndpointIdList field.
 */
public typealias VpcEndpointIdList = [VpcEndpointId]

/**
 Type definition for the VpcEndpointRouteTableIdList field.
 */
public typealias VpcEndpointRouteTableIdList = [RouteTableId]

/**
 Type definition for the VpcEndpointSecurityGroupIdList field.
 */
public typealias VpcEndpointSecurityGroupIdList = [SecurityGroupId]

/**
 Type definition for the VpcEndpointServiceId field.
 */
public typealias VpcEndpointServiceId = String

/**
 Type definition for the VpcEndpointServiceIdList field.
 */
public typealias VpcEndpointServiceIdList = [VpcEndpointServiceId]

/**
 Type definition for the VpcEndpointSet field.
 */
public typealias VpcEndpointSet = [VpcEndpoint]

/**
 Type definition for the VpcEndpointSubnetIdList field.
 */
public typealias VpcEndpointSubnetIdList = [SubnetId]

/**
 Enumeration restricting the values of the VpcEndpointType field.
 */
public enum VpcEndpointType: String, Codable, CustomStringConvertible {
    case gateway = "Gateway"
    case gatewayloadbalancer = "GatewayLoadBalancer"
    case interface = "Interface"

    public var description: String {
        return rawValue
    }
    
    public static let __default: VpcEndpointType = .gateway
}

/**
 Type definition for the VpcFlowLogId field.
 */
public typealias VpcFlowLogId = String

/**
 Type definition for the VpcId field.
 */
public typealias VpcId = String

/**
 Type definition for the VpcIdStringList field.
 */
public typealias VpcIdStringList = [VpcId]

/**
 Type definition for the VpcIpv6CidrBlockAssociationSet field.
 */
public typealias VpcIpv6CidrBlockAssociationSet = [VpcIpv6CidrBlockAssociation]

/**
 Type definition for the VpcList field.
 */
public typealias VpcList = [Vpc]

/**
 Type definition for the VpcPeeringConnectionId field.
 */
public typealias VpcPeeringConnectionId = String

/**
 Type definition for the VpcPeeringConnectionIdList field.
 */
public typealias VpcPeeringConnectionIdList = [VpcPeeringConnectionId]

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
 Type definition for the VpnConnectionId field.
 */
public typealias VpnConnectionId = String

/**
 Type definition for the VpnConnectionIdStringList field.
 */
public typealias VpnConnectionIdStringList = [VpnConnectionId]

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
 Type definition for the VpnGatewayId field.
 */
public typealias VpnGatewayId = String

/**
 Type definition for the VpnGatewayIdStringList field.
 */
public typealias VpnGatewayIdStringList = [VpnGatewayId]

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
 Type definition for the VpnTunnelOptionsSpecificationsList field.
 */
public typealias VpnTunnelOptionsSpecificationsList = [VpnTunnelOptionsSpecification]

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
 Type definition for the TotalFpgaMemory field.
 */
public typealias TotalFpgaMemory = Int

/**
 Type definition for the TotalGpuMemory field.
 */
public typealias TotalGpuMemory = Int

/**
 Validation for the AddPrefixListEntries field.
*/
extension Array where Element == ElasticComputeCloudModel.AddPrefixListEntry {
    public func validateAsAddPrefixListEntries() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to AddPrefixListEntries violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to AddPrefixListEntries violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AddressMaxResults field.
*/
extension ElasticComputeCloudModel.AddressMaxResults {
    public func validateAsAddressMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to AddressMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to AddressMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the CarrierGatewayMaxResults field.
*/
extension ElasticComputeCloudModel.CarrierGatewayMaxResults {
    public func validateAsCarrierGatewayMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to CarrierGatewayMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to CarrierGatewayMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ClassicLoadBalancers field.
*/
extension Array where Element == ElasticComputeCloudModel.ClassicLoadBalancer {
    public func validateAsClassicLoadBalancers() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to ClassicLoadBalancers violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to ClassicLoadBalancers violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the CoipPoolMaxResults field.
*/
extension ElasticComputeCloudModel.CoipPoolMaxResults {
    public func validateAsCoipPoolMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to CoipPoolMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to CoipPoolMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DITMaxResults field.
*/
extension ElasticComputeCloudModel.DITMaxResults {
    public func validateAsDITMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DITMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DITMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DITOMaxResults field.
*/
extension ElasticComputeCloudModel.DITOMaxResults {
    public func validateAsDITOMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DITOMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DITOMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DeleteQueuedReservedInstancesIdList field.
*/
extension Array where Element == ElasticComputeCloudModel.ReservationId {
    public func validateAsDeleteQueuedReservedInstancesIdList() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DeleteQueuedReservedInstancesIdList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DeleteQueuedReservedInstancesIdList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DescribeByoipCidrsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeByoipCidrsMaxResults {
    public func validateAsDescribeByoipCidrsMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeByoipCidrsMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeByoipCidrsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeCapacityReservationsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeCapacityReservationsMaxResults {
    public func validateAsDescribeCapacityReservationsMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeCapacityReservationsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeCapacityReservationsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeClassicLinkInstancesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeClassicLinkInstancesMaxResults {
    public func validateAsDescribeClassicLinkInstancesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClassicLinkInstancesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClassicLinkInstancesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeClientVpnAuthorizationRulesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesMaxResults {
    public func validateAsDescribeClientVpnAuthorizationRulesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnAuthorizationRulesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnAuthorizationRulesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeClientVpnConnectionsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeClientVpnConnectionsMaxResults {
    public func validateAsDescribeClientVpnConnectionsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnConnectionsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnConnectionsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeClientVpnEndpointMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeClientVpnEndpointMaxResults {
    public func validateAsDescribeClientVpnEndpointMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnEndpointMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnEndpointMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeClientVpnRoutesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeClientVpnRoutesMaxResults {
    public func validateAsDescribeClientVpnRoutesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnRoutesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnRoutesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeClientVpnTargetNetworksMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeClientVpnTargetNetworksMaxResults {
    public func validateAsDescribeClientVpnTargetNetworksMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnTargetNetworksMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeClientVpnTargetNetworksMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeDhcpOptionsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeDhcpOptionsMaxResults {
    public func validateAsDescribeDhcpOptionsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeDhcpOptionsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeDhcpOptionsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeEgressOnlyInternetGatewaysMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysMaxResults {
    public func validateAsDescribeEgressOnlyInternetGatewaysMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeEgressOnlyInternetGatewaysMaxResults violated the minimum range constraint.")
        }

        if self > 255 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeEgressOnlyInternetGatewaysMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeElasticGpusMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeElasticGpusMaxResults {
    public func validateAsDescribeElasticGpusMaxResults() throws {
        if self < 10 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeElasticGpusMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeElasticGpusMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeExportImageTasksMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeExportImageTasksMaxResults {
    public func validateAsDescribeExportImageTasksMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeExportImageTasksMaxResults violated the minimum range constraint.")
        }

        if self > 500 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeExportImageTasksMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeFastSnapshotRestoresMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeFastSnapshotRestoresMaxResults {
    public func validateAsDescribeFastSnapshotRestoresMaxResults() throws {
        if self < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeFastSnapshotRestoresMaxResults violated the minimum range constraint.")
        }

        if self > 200 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeFastSnapshotRestoresMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeFpgaImagesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeFpgaImagesMaxResults {
    public func validateAsDescribeFpgaImagesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeFpgaImagesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeFpgaImagesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeHostReservationsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeHostReservationsMaxResults {
    public func validateAsDescribeHostReservationsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeHostReservationsMaxResults violated the minimum range constraint.")
        }

        if self > 500 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeHostReservationsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeIamInstanceProfileAssociationsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsMaxResults {
    public func validateAsDescribeIamInstanceProfileAssociationsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeIamInstanceProfileAssociationsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeIamInstanceProfileAssociationsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeInstanceCreditSpecificationsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsMaxResults {
    public func validateAsDescribeInstanceCreditSpecificationsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeInstanceCreditSpecificationsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeInstanceCreditSpecificationsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeInternetGatewaysMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeInternetGatewaysMaxResults {
    public func validateAsDescribeInternetGatewaysMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeInternetGatewaysMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeInternetGatewaysMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeLaunchTemplatesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeLaunchTemplatesMaxResults {
    public func validateAsDescribeLaunchTemplatesMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeLaunchTemplatesMaxResults violated the minimum range constraint.")
        }

        if self > 200 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeLaunchTemplatesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeMovingAddressesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeMovingAddressesMaxResults {
    public func validateAsDescribeMovingAddressesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeMovingAddressesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeMovingAddressesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeNatGatewaysMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeNatGatewaysMaxResults {
    public func validateAsDescribeNatGatewaysMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNatGatewaysMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNatGatewaysMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeNetworkAclsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeNetworkAclsMaxResults {
    public func validateAsDescribeNetworkAclsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNetworkAclsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNetworkAclsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeNetworkInterfacePermissionsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsMaxResults {
    public func validateAsDescribeNetworkInterfacePermissionsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNetworkInterfacePermissionsMaxResults violated the minimum range constraint.")
        }

        if self > 255 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNetworkInterfacePermissionsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeNetworkInterfacesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeNetworkInterfacesMaxResults {
    public func validateAsDescribeNetworkInterfacesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNetworkInterfacesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeNetworkInterfacesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribePrincipalIdFormatMaxResults field.
*/
extension ElasticComputeCloudModel.DescribePrincipalIdFormatMaxResults {
    public func validateAsDescribePrincipalIdFormatMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribePrincipalIdFormatMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribePrincipalIdFormatMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeRouteTablesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeRouteTablesMaxResults {
    public func validateAsDescribeRouteTablesMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeRouteTablesMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeRouteTablesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeScheduledInstanceAvailabilityMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityMaxResults {
    public func validateAsDescribeScheduledInstanceAvailabilityMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeScheduledInstanceAvailabilityMaxResults violated the minimum range constraint.")
        }

        if self > 300 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeScheduledInstanceAvailabilityMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeSecurityGroupsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeSecurityGroupsMaxResults {
    public func validateAsDescribeSecurityGroupsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSecurityGroupsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSecurityGroupsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeSpotFleetInstancesMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeSpotFleetInstancesMaxResults {
    public func validateAsDescribeSpotFleetInstancesMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSpotFleetInstancesMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSpotFleetInstancesMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeSpotFleetRequestHistoryMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryMaxResults {
    public func validateAsDescribeSpotFleetRequestHistoryMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSpotFleetRequestHistoryMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSpotFleetRequestHistoryMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeStaleSecurityGroupsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeStaleSecurityGroupsMaxResults {
    public func validateAsDescribeStaleSecurityGroupsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeStaleSecurityGroupsMaxResults violated the minimum range constraint.")
        }

        if self > 255 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeStaleSecurityGroupsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeStaleSecurityGroupsNextToken field.
*/
extension ElasticComputeCloudModel.DescribeStaleSecurityGroupsNextToken {
    public func validateAsDescribeStaleSecurityGroupsNextToken() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeStaleSecurityGroupsNextToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeStaleSecurityGroupsNextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DescribeSubnetsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeSubnetsMaxResults {
    public func validateAsDescribeSubnetsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSubnetsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeSubnetsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeVpcClassicLinkDnsSupportMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportMaxResults {
    public func validateAsDescribeVpcClassicLinkDnsSupportMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcClassicLinkDnsSupportMaxResults violated the minimum range constraint.")
        }

        if self > 255 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcClassicLinkDnsSupportMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeVpcClassicLinkDnsSupportNextToken field.
*/
extension ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportNextToken {
    public func validateAsDescribeVpcClassicLinkDnsSupportNextToken() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcClassicLinkDnsSupportNextToken violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcClassicLinkDnsSupportNextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DescribeVpcPeeringConnectionsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeVpcPeeringConnectionsMaxResults {
    public func validateAsDescribeVpcPeeringConnectionsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcPeeringConnectionsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcPeeringConnectionsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the DescribeVpcsMaxResults field.
*/
extension ElasticComputeCloudModel.DescribeVpcsMaxResults {
    public func validateAsDescribeVpcsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcsMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to DescribeVpcsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ElasticInferenceAcceleratorCount field.
*/
extension ElasticComputeCloudModel.ElasticInferenceAcceleratorCount {
    public func validateAsElasticInferenceAcceleratorCount() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to ElasticInferenceAcceleratorCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the FleetLaunchTemplateConfigListRequest field.
*/
extension Array where Element == ElasticComputeCloudModel.FleetLaunchTemplateConfigRequest {
    public func validateAsFleetLaunchTemplateConfigListRequest() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to FleetLaunchTemplateConfigListRequest violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to FleetLaunchTemplateConfigListRequest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the FleetLaunchTemplateOverridesListRequest field.
*/
extension Array where Element == ElasticComputeCloudModel.FleetLaunchTemplateOverridesRequest {
    public func validateAsFleetLaunchTemplateOverridesListRequest() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to FleetLaunchTemplateOverridesListRequest violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to FleetLaunchTemplateOverridesListRequest violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GetCapacityReservationUsageRequestMaxResults field.
*/
extension ElasticComputeCloudModel.GetCapacityReservationUsageRequestMaxResults {
    public func validateAsGetCapacityReservationUsageRequestMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to GetCapacityReservationUsageRequestMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to GetCapacityReservationUsageRequestMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the GetGroupsForCapacityReservationRequestMaxResults field.
*/
extension ElasticComputeCloudModel.GetGroupsForCapacityReservationRequestMaxResults {
    public func validateAsGetGroupsForCapacityReservationRequestMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to GetGroupsForCapacityReservationRequestMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to GetGroupsForCapacityReservationRequestMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the GetManagedPrefixListAssociationsMaxResults field.
*/
extension ElasticComputeCloudModel.GetManagedPrefixListAssociationsMaxResults {
    public func validateAsGetManagedPrefixListAssociationsMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to GetManagedPrefixListAssociationsMaxResults violated the minimum range constraint.")
        }

        if self > 255 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to GetManagedPrefixListAssociationsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the IpAddress field.
*/
extension ElasticComputeCloudModel.IpAddress {
    public func validateAsIpAddress() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to IpAddress violated the minimum length constraint.")
        }

        if self.count > 15 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to IpAddress violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^([0-9]{1,3}.){3}[0-9]{1,3}$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ElasticComputeCloudError.validationError(
                    reason: "The provided value to IpAddress violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Ipv6PoolMaxResults field.
*/
extension ElasticComputeCloudModel.Ipv6PoolMaxResults {
    public func validateAsIpv6PoolMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to Ipv6PoolMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to Ipv6PoolMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the LaunchTemplateElasticInferenceAcceleratorCount field.
*/
extension ElasticComputeCloudModel.LaunchTemplateElasticInferenceAcceleratorCount {
    public func validateAsLaunchTemplateElasticInferenceAcceleratorCount() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to LaunchTemplateElasticInferenceAcceleratorCount violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the LaunchTemplateName field.
*/
extension ElasticComputeCloudModel.LaunchTemplateName {
    public func validateAsLaunchTemplateName() throws {
        if self.count < 3 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to LaunchTemplateName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to LaunchTemplateName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\(\\)\\.\\-/_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw ElasticComputeCloudError.validationError(
                    reason: "The provided value to LaunchTemplateName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the LocalGatewayMaxResults field.
*/
extension ElasticComputeCloudModel.LocalGatewayMaxResults {
    public func validateAsLocalGatewayMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to LocalGatewayMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to LocalGatewayMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the NetworkInsightsMaxResults field.
*/
extension ElasticComputeCloudModel.NetworkInsightsMaxResults {
    public func validateAsNetworkInsightsMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to NetworkInsightsMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to NetworkInsightsMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PoolMaxResults field.
*/
extension ElasticComputeCloudModel.PoolMaxResults {
    public func validateAsPoolMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to PoolMaxResults violated the minimum range constraint.")
        }

        if self > 10 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to PoolMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Port field.
*/
extension ElasticComputeCloudModel.Port {
    public func validateAsPort() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to Port violated the minimum range constraint.")
        }

        if self > 65535 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to Port violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PrefixListMaxResults field.
*/
extension ElasticComputeCloudModel.PrefixListMaxResults {
    public func validateAsPrefixListMaxResults() throws {
        if self < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to PrefixListMaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to PrefixListMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PurchaseRequestSet field.
*/
extension Array where Element == ElasticComputeCloudModel.PurchaseRequest {
    public func validateAsPurchaseRequestSet() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to PurchaseRequestSet violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the RemovePrefixListEntries field.
*/
extension Array where Element == ElasticComputeCloudModel.RemovePrefixListEntry {
    public func validateAsRemovePrefixListEntries() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to RemovePrefixListEntries violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to RemovePrefixListEntries violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RequestInstanceTypeList field.
*/
extension Array where Element == ElasticComputeCloudModel.InstanceType {
    public func validateAsRequestInstanceTypeList() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to RequestInstanceTypeList violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to RequestInstanceTypeList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceArn field.
*/
extension ElasticComputeCloudModel.ResourceArn {
    public func validateAsResourceArn() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to ResourceArn violated the minimum length constraint.")
        }

        if self.count > 1283 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to ResourceArn violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TargetGroups field.
*/
extension Array where Element == ElasticComputeCloudModel.TargetGroup {
    public func validateAsTargetGroups() throws {
        if self.count < 1 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to TargetGroups violated the minimum length constraint.")
        }

        if self.count > 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to TargetGroups violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TrafficMirroringMaxResults field.
*/
extension ElasticComputeCloudModel.TrafficMirroringMaxResults {
    public func validateAsTrafficMirroringMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to TrafficMirroringMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to TrafficMirroringMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the TransitGatewayMaxResults field.
*/
extension ElasticComputeCloudModel.TransitGatewayMaxResults {
    public func validateAsTransitGatewayMaxResults() throws {
        if self < 5 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to TransitGatewayMaxResults violated the minimum range constraint.")
        }

        if self > 1000 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to TransitGatewayMaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the VersionDescription field.
*/
extension ElasticComputeCloudModel.VersionDescription {
    public func validateAsVersionDescription() throws {
        if self.count < 0 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to VersionDescription violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw ElasticComputeCloudError.validationError(reason: "The provided value to VersionDescription violated the maximum length constraint.")
        }
    }
}
