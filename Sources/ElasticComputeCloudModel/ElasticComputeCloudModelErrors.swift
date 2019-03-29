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
// ElasticComputeCloudModelErrors.swift
// ElasticComputeCloudModel
//

import Foundation
import LoggerAPI

private let activeVpcPeeringConnectionPerVpcLimitExceededIdentity = "ActiveVpcPeeringConnectionPerVpcLimitExceeded"
private let addressLimitExceededIdentity = "AddressLimitExceeded"
private let asnConflictIdentity = "AsnConflict"
private let attachmentLimitExceededIdentity = "AttachmentLimitExceeded"
private let authIdentity = "Auth"
private let blockedIdentity = "Blocked"
private let bootForVolumeTypeUnsupportedIdentity = "BootForVolumeTypeUnsupported"
private let bundlingInProgressIdentity = "BundlingInProgress"
private let cannotDeleteIdentity = "CannotDelete"
private let cidrConflictIdentity = "CidrConflict"
private let clientVpnAuthorizationRuleLimitExceededIdentity = "ClientVpnAuthorizationRuleLimitExceeded"
private let clientVpnCertificateRevocationListLimitExceededIdentity = "ClientVpnCertificateRevocationListLimitExceeded"
private let clientVpnEndpointAssociationExistsIdentity = "ClientVpnEndpointAssociationExists"
private let clientVpnEndpointLimitExceededIdentity = "ClientVpnEndpointLimitExceeded"
private let clientVpnRouteLimitExceededIdentity = "ClientVpnRouteLimitExceeded"
private let clientVpnTerminateConnectionsLimitExceededIdentity = "ClientVpnTerminateConnectionsLimitExceeded"
private let concurrentSnapshotLimitExceededIdentity = "ConcurrentSnapshotLimitExceeded"
private let concurrentTagAccessIdentity = "ConcurrentTagAccess"
private let customerGatewayLimitExceededIdentity = "CustomerGatewayLimitExceeded"
private let customerKeyHasBeenRevokedIdentity = "CustomerKeyHasBeenRevoked"
private let defaultSubnetAlreadyExistsInAvailabilityZoneIdentity = "DefaultSubnetAlreadyExistsInAvailabilityZone"
private let defaultVpcAlreadyExistsIdentity = "DefaultVpcAlreadyExists"
private let defaultVpcDoesNotExistIdentity = "DefaultVpcDoesNotExist"
private let deleteConversionTaskIdentity = "DeleteConversionTaskError"
private let dependencyViolationIdentity = "DependencyViolation"
private let disallowedForDedicatedTenancyNetworkIdentity = "DisallowedForDedicatedTenancyNetwork"
private let diskImageSizeTooLargeIdentity = "DiskImageSizeTooLarge"
private let dryRunOperationIdentity = "DryRunOperation"
private let duplicateSubnetsInSameZoneIdentity = "DuplicateSubnetsInSameZone"
private let eIPMigratedToVpcIdentity = "EIPMigratedToVpc"
private let encryptedVolumesNotSupportedIdentity = "EncryptedVolumesNotSupported"
private let existingVpcEndpointConnectionsIdentity = "ExistingVpcEndpointConnections"
private let filterLimitExceededIdentity = "FilterLimitExceeded"
private let fleetNotInModifiableStateIdentity = "FleetNotInModifiableState"
private let flowLogAlreadyExistsIdentity = "FlowLogAlreadyExists"
private let flowLogsLimitExceededIdentity = "FlowLogsLimitExceeded"
private let gatewayNotAttachedIdentity = "Gateway.NotAttached"
private let hostAlreadyCoveredByReservationIdentity = "HostAlreadyCoveredByReservation"
private let hostLimitExceededIdentity = "HostLimitExceeded"
private let idempotentInstanceTerminatedIdentity = "IdempotentInstanceTerminated"
private let idempotentParameterMismatchIdentity = "IdempotentParameterMismatch"
private let inaccessibleStorageLocationIdentity = "InaccessibleStorageLocation"
private let incompatibleHostRequirementsIdentity = "IncompatibleHostRequirements"
private let incompleteSignatureIdentity = "IncompleteSignature"
private let incorrectInstanceStateIdentity = "IncorrectInstanceState"
private let incorrectModificationStateIdentity = "IncorrectModificationState"
private let incorrectStateIdentity = "IncorrectState"
private let instanceAlreadyLinkedIdentity = "InstanceAlreadyLinked"
private let instanceCreditSpecificationNotSupportedIdentity = "InstanceCreditSpecification.NotSupported"
private let instanceLimitExceededIdentity = "InstanceLimitExceeded"
private let insufficientAddressCapacityIdentity = "InsufficientAddressCapacity"
private let insufficientCapacityIdentity = "InsufficientCapacity"
private let insufficientCapacityOnHostIdentity = "InsufficientCapacityOnHost"
private let insufficientFreeAddressesInSubnetIdentity = "InsufficientFreeAddressesInSubnet"
private let insufficientHostCapacityIdentity = "InsufficientHostCapacity"
private let insufficientInstanceCapacityIdentity = "InsufficientInstanceCapacity"
private let insufficientReservedInstanceCapacityIdentity = "InsufficientReservedInstanceCapacity"
private let insufficientReservedInstancesCapacityIdentity = "InsufficientReservedInstancesCapacity"
private let internalIdentity = "InternalError"
private let internalFailureIdentity = "InternalFailure"
private let internetGatewayLimitExceededIdentity = "InternetGatewayLimitExceeded"
private let invalidAMIAttributeItemValueIdentity = "InvalidAMIAttributeItemValue"
private let invalidAMIIDMalformedIdentity = "InvalidAMIID.Malformed"
private let invalidAMIIDNotFoundIdentity = "InvalidAMIID.NotFound"
private let invalidAMIIDUnavailableIdentity = "InvalidAMIID.Unavailable"
private let invalidAMINameDuplicateIdentity = "InvalidAMIName.Duplicate"
private let invalidAMINameMalformedIdentity = "InvalidAMIName.Malformed"
private let invalidActionIdentity = "InvalidAction"
private let invalidAddressLockedIdentity = "InvalidAddress.Locked"
private let invalidAddressMalformedIdentity = "InvalidAddress.Malformed"
private let invalidAddressNotFoundIdentity = "InvalidAddress.NotFound"
private let invalidAddressIDNotFoundIdentity = "InvalidAddressID.NotFound"
private let invalidAffinityIdentity = "InvalidAffinity"
private let invalidAllocationIDNotFoundIdentity = "InvalidAllocationID.NotFound"
private let invalidAssociationIDNotFoundIdentity = "InvalidAssociationID.NotFound"
private let invalidAttachmentNotFoundIdentity = "InvalidAttachment.NotFound"
private let invalidAttachmentIDNotFoundIdentity = "InvalidAttachmentID.NotFound"
private let invalidAutoPlacementIdentity = "InvalidAutoPlacement"
private let invalidAvailabilityZoneIdentity = "InvalidAvailabilityZone"
private let invalidBlockDeviceMappingIdentity = "InvalidBlockDeviceMapping"
private let invalidBundleIDNotFoundIdentity = "InvalidBundleID.NotFound"
private let invalidCapacityReservationIdMalformedIdentity = "InvalidCapacityReservationIdMalformedException"
private let invalidCapacityReservationIdNotFoundIdentity = "InvalidCapacityReservationIdNotFoundException"
private let invalidCharacterIdentity = "InvalidCharacter"
private let invalidCidrInUseIdentity = "InvalidCidr.InUse"
private let invalidClientTokenIdentity = "InvalidClientToken"
private let invalidClientTokenIdIdentity = "InvalidClientTokenId"
private let invalidClientVpnActiveAssociationNotFoundIdentity = "InvalidClientVpnActiveAssociationNotFound"
private let invalidClientVpnAssociationIdNotFoundIdentity = "InvalidClientVpnAssociationIdNotFound"
private let invalidClientVpnConnectionIdNotFoundIdentity = "InvalidClientVpnConnection.IdNotFound"
private let invalidClientVpnConnectionUserNotFoundIdentity = "InvalidClientVpnConnection.UserNotFound"
private let invalidClientVpnDuplicateAuthorizationRuleIdentity = "InvalidClientVpnDuplicateAuthorizationRule"
private let invalidClientVpnDuplicateRouteIdentity = "InvalidClientVpnDuplicateRoute"
private let invalidClientVpnEndpointAuthorizationRuleNotFoundIdentity = "InvalidClientVpnEndpointAuthorizationRuleNotFound"
private let invalidClientVpnEndpointIdNotFoundIdentity = "InvalidClientVpnEndpointId.NotFound"
private let invalidClientVpnRouteNotFoundIdentity = "InvalidClientVpnRouteNotFound"
private let invalidClientVpnSubnetIdDifferentAccountIdentity = "InvalidClientVpnSubnetId.DifferentAccount"
private let invalidClientVpnSubnetIdDuplicateAzIdentity = "InvalidClientVpnSubnetId.DuplicateAz"
private let invalidClientVpnSubnetIdNotFoundIdentity = "InvalidClientVpnSubnetId.NotFound"
private let invalidClientVpnSubnetIdOverlappingCidrIdentity = "InvalidClientVpnSubnetId.OverlappingCidr"
private let invalidConversionTaskIdIdentity = "InvalidConversionTaskId"
private let invalidConversionTaskIdMalformedIdentity = "InvalidConversionTaskId.Malformed"
private let invalidCpuCreditsMalformedIdentity = "InvalidCpuCredits.Malformed"
private let invalidCustomerGatewayDuplicateIpAddressIdentity = "InvalidCustomerGateway.DuplicateIpAddress"
private let invalidCustomerGatewayIDNotFoundIdentity = "InvalidCustomerGatewayID.NotFound"
private let invalidCustomerGatewayIdMalformedIdentity = "InvalidCustomerGatewayId.Malformed"
private let invalidCustomerGatewayStateIdentity = "InvalidCustomerGatewayState"
private let invalidDeviceInUseIdentity = "InvalidDevice.InUse"
private let invalidDhcpOptionIDNotFoundIdentity = "InvalidDhcpOptionID.NotFound"
private let invalidDhcpOptionsIDNotFoundIdentity = "InvalidDhcpOptionsID.NotFound"
private let invalidDhcpOptionsIdMalformedIdentity = "InvalidDhcpOptionsId.Malformed"
private let invalidExportTaskIDNotFoundIdentity = "InvalidExportTaskID.NotFound"
private let invalidFilterIdentity = "InvalidFilter"
private let invalidFlowLogIdNotFoundIdentity = "InvalidFlowLogId.NotFound"
private let invalidFormatIdentity = "InvalidFormat"
private let invalidFpgaImageIDMalformedIdentity = "InvalidFpgaImageID.Malformed"
private let invalidFpgaImageIDNotFoundIdentity = "InvalidFpgaImageID.NotFound"
private let invalidGatewayIDNotFoundIdentity = "InvalidGatewayID.NotFound"
private let invalidGroupDuplicateIdentity = "InvalidGroup.Duplicate"
private let invalidGroupInUseIdentity = "InvalidGroup.InUse"
private let invalidGroupNotFoundIdentity = "InvalidGroup.NotFound"
private let invalidGroupReservedIdentity = "InvalidGroup.Reserved"
private let invalidGroupIdMalformedIdentity = "InvalidGroupId.Malformed"
private let invalidHostConfigurationIdentity = "InvalidHostConfiguration"
private let invalidHostIDMalformedIdentity = "InvalidHostID.Malformed"
private let invalidHostIDNotFoundIdentity = "InvalidHostID.NotFound"
private let invalidHostIdIdentity = "InvalidHostId"
private let invalidHostIdMalformedIdentity = "InvalidHostId.Malformed"
private let invalidHostIdNotFoundIdentity = "InvalidHostId.NotFound"
private let invalidHostReservationIdMalformedIdentity = "InvalidHostReservationId.Malformed"
private let invalidHostReservationOfferingIdMalformedIdentity = "InvalidHostReservationOfferingId.Malformed"
private let invalidHostStateIdentity = "InvalidHostState"
private let invalidIDIdentity = "InvalidID"
private let invalidIPAddressInUseIdentity = "InvalidIPAddress.InUse"
private let invalidIamInstanceProfileArnMalformedIdentity = "InvalidIamInstanceProfileArn.Malformed"
private let invalidInputIdentity = "InvalidInput"
private let invalidInstanceAttributeValueIdentity = "InvalidInstanceAttributeValue"
private let invalidInstanceCreditSpecificationDuplicateInstanceIdIdentity = "InvalidInstanceCreditSpecification.DuplicateInstanceId"
private let invalidInstanceFamilyIdentity = "InvalidInstanceFamily"
private let invalidInstanceIDIdentity = "InvalidInstanceID"
private let invalidInstanceIDMalformedIdentity = "InvalidInstanceID.Malformed"
private let invalidInstanceIDNotFoundIdentity = "InvalidInstanceID.NotFound"
private let invalidInstanceIDNotLinkableIdentity = "InvalidInstanceID.NotLinkable"
private let invalidInstanceStateIdentity = "InvalidInstanceState"
private let invalidInstanceTypeIdentity = "InvalidInstanceType"
private let invalidInterfaceIpAddressLimitExceededIdentity = "InvalidInterface.IpAddressLimitExceeded"
private let invalidInternetGatewayIDNotFoundIdentity = "InvalidInternetGatewayID.NotFound"
private let invalidInternetGatewayIdMalformedIdentity = "InvalidInternetGatewayId.Malformed"
private let invalidKernelIdMalformedIdentity = "InvalidKernelId.Malformed"
private let invalidKeyFormatIdentity = "InvalidKey.Format"
private let invalidKeyPairDuplicateIdentity = "InvalidKeyPair.Duplicate"
private let invalidKeyPairFormatIdentity = "InvalidKeyPair.Format"
private let invalidKeyPairNotFoundIdentity = "InvalidKeyPair.NotFound"
private let invalidLaunchTemplateIdMalformedIdentity = "InvalidLaunchTemplateId.Malformed"
private let invalidLaunchTemplateIdNotFoundIdentity = "InvalidLaunchTemplateId.NotFound"
private let invalidLaunchTemplateIdVersionNotFoundIdentity = "InvalidLaunchTemplateId.VersionNotFound"
private let invalidLaunchTemplateNameAlreadyExistsIdentity = "InvalidLaunchTemplateName.AlreadyExistsException"
private let invalidLaunchTemplateNameMalformedIdentity = "InvalidLaunchTemplateName.MalformedException"
private let invalidLaunchTemplateNameNotFoundIdentity = "InvalidLaunchTemplateName.NotFoundException"
private let invalidManifestIdentity = "InvalidManifest"
private let invalidMaxResultsIdentity = "InvalidMaxResults"
private let invalidNatGatewayIDNotFoundIdentity = "InvalidNatGatewayID.NotFound"
private let invalidNetworkAclEntryNotFoundIdentity = "InvalidNetworkAclEntry.NotFound"
private let invalidNetworkAclIDNotFoundIdentity = "InvalidNetworkAclID.NotFound"
private let invalidNetworkAclIdMalformedIdentity = "InvalidNetworkAclId.Malformed"
private let invalidNetworkInterfaceInUseIdentity = "InvalidNetworkInterface.InUse"
private let invalidNetworkInterfaceAttachmentIdMalformedIdentity = "InvalidNetworkInterfaceAttachmentId.Malformed"
private let invalidNetworkInterfaceIDNotFoundIdentity = "InvalidNetworkInterfaceID.NotFound"
private let invalidNetworkInterfaceIdMalformedIdentity = "InvalidNetworkInterfaceId.Malformed"
private let invalidNetworkLoadBalancerArnMalformedIdentity = "InvalidNetworkLoadBalancerArn.Malformed"
private let invalidNetworkLoadBalancerArnNotFoundIdentity = "InvalidNetworkLoadBalancerArn.NotFound"
private let invalidNextTokenIdentity = "InvalidNextToken"
private let invalidOptionConflictIdentity = "InvalidOption.Conflict"
private let invalidPaginationTokenIdentity = "InvalidPaginationToken"
private let invalidParameterIdentity = "InvalidParameter"
private let invalidParameterCombinationIdentity = "InvalidParameterCombination"
private let invalidParameterValueIdentity = "InvalidParameterValue"
private let invalidPermissionDuplicateIdentity = "InvalidPermission.Duplicate"
private let invalidPermissionMalformedIdentity = "InvalidPermission.Malformed"
private let invalidPermissionNotFoundIdentity = "InvalidPermission.NotFound"
private let invalidPlacementGroupDuplicateIdentity = "InvalidPlacementGroup.Duplicate"
private let invalidPlacementGroupInUseIdentity = "InvalidPlacementGroup.InUse"
private let invalidPlacementGroupUnknownIdentity = "InvalidPlacementGroup.Unknown"
private let invalidPolicyDocumentIdentity = "InvalidPolicyDocument"
private let invalidPrefixListIdMalformedIdentity = "InvalidPrefixListId.Malformed"
private let invalidPrefixListIdNotFoundIdentity = "InvalidPrefixListId.NotFound"
private let invalidProductInfoIdentity = "InvalidProductInfo"
private let invalidPurchaseTokenExpiredIdentity = "InvalidPurchaseToken.Expired"
private let invalidPurchaseTokenMalformedIdentity = "InvalidPurchaseToken.Malformed"
private let invalidQuantityIdentity = "InvalidQuantity"
private let invalidQueryParameterIdentity = "InvalidQueryParameter"
private let invalidRamDiskIdMalformedIdentity = "InvalidRamDiskId.Malformed"
private let invalidRegionIdentity = "InvalidRegion"
private let invalidRequestIdentity = "InvalidRequest"
private let invalidReservationIDMalformedIdentity = "InvalidReservationID.Malformed"
private let invalidReservationIDNotFoundIdentity = "InvalidReservationID.NotFound"
private let invalidReservedInstancesIdIdentity = "InvalidReservedInstancesId"
private let invalidReservedInstancesOfferingIdIdentity = "InvalidReservedInstancesOfferingId"
private let invalidResourceTypeUnknownIdentity = "InvalidResourceType.Unknown"
private let invalidRouteInvalidStateIdentity = "InvalidRoute.InvalidState"
private let invalidRouteMalformedIdentity = "InvalidRoute.Malformed"
private let invalidRouteNotFoundIdentity = "InvalidRoute.NotFound"
private let invalidRouteTableIDNotFoundIdentity = "InvalidRouteTableID.NotFound"
private let invalidRouteTableIdMalformedIdentity = "InvalidRouteTableId.Malformed"
private let invalidScheduledInstanceIdentity = "InvalidScheduledInstance"
private let invalidSecurityRequestHasExpiredIdentity = "InvalidSecurity.RequestHasExpired"
private let invalidSecurityGroupIDNotFoundIdentity = "InvalidSecurityGroupID.NotFound"
private let invalidSecurityGroupIdMalformedIdentity = "InvalidSecurityGroupId.Malformed"
private let invalidServiceNameIdentity = "InvalidServiceName"
private let invalidSnapshotInUseIdentity = "InvalidSnapshot.InUse"
private let invalidSnapshotNotFoundIdentity = "InvalidSnapshot.NotFound"
private let invalidSnapshotIDMalformedIdentity = "InvalidSnapshotID.Malformed"
private let invalidSpotDatafeedNotFoundIdentity = "InvalidSpotDatafeed.NotFound"
private let invalidSpotFleetRequestConfigIdentity = "InvalidSpotFleetRequestConfig"
private let invalidSpotFleetRequestIdMalformedIdentity = "InvalidSpotFleetRequestId.Malformed"
private let invalidSpotFleetRequestIdNotFoundIdentity = "InvalidSpotFleetRequestId.NotFound"
private let invalidSpotInstanceRequestIDMalformedIdentity = "InvalidSpotInstanceRequestID.Malformed"
private let invalidSpotInstanceRequestIDNotFoundIdentity = "InvalidSpotInstanceRequestID.NotFound"
private let invalidStateIdentity = "InvalidState"
private let invalidStateTransitionIdentity = "InvalidStateTransition"
private let invalidSubnetIdentity = "InvalidSubnet"
private let invalidSubnetConflictIdentity = "InvalidSubnet.Conflict"
private let invalidSubnetRangeIdentity = "InvalidSubnet.Range"
private let invalidSubnetIDNotFoundIdentity = "InvalidSubnetID.NotFound"
private let invalidSubnetIdMalformedIdentity = "InvalidSubnetId.Malformed"
private let invalidSubnetIdNotFoundIdentity = "InvalidSubnetId.NotFound"
private let invalidTagKeyMalformedIdentity = "InvalidTagKey.Malformed"
private let invalidTargetArnUnknownIdentity = "InvalidTargetArn.Unknown"
private let invalidTenancyIdentity = "InvalidTenancy"
private let invalidTimeIdentity = "InvalidTime"
private let invalidUserIDMalformedIdentity = "InvalidUserID.Malformed"
private let invalidVolumeNotFoundIdentity = "InvalidVolume.NotFound"
private let invalidVolumeZoneMismatchIdentity = "InvalidVolume.ZoneMismatch"
private let invalidVolumeIDDuplicateIdentity = "InvalidVolumeID.Duplicate"
private let invalidVolumeIDMalformedIdentity = "InvalidVolumeID.Malformed"
private let invalidVolumeIDZoneMismatchIdentity = "InvalidVolumeID.ZoneMismatch"
private let invalidVpcEndpointNotFoundIdentity = "InvalidVpcEndpoint.NotFound"
private let invalidVpcEndpointIdMalformedIdentity = "InvalidVpcEndpointId.Malformed"
private let invalidVpcEndpointIdNotFoundIdentity = "InvalidVpcEndpointId.NotFound"
private let invalidVpcEndpointServiceNotFoundIdentity = "InvalidVpcEndpointService.NotFound"
private let invalidVpcEndpointServiceIdNotFoundIdentity = "InvalidVpcEndpointServiceId.NotFound"
private let invalidVpcEndpointTypeIdentity = "InvalidVpcEndpointType"
private let invalidVpcIDMalformedIdentity = "InvalidVpcID.Malformed"
private let invalidVpcIDNotFoundIdentity = "InvalidVpcID.NotFound"
private let invalidVpcPeeringConnectionIDNotFoundIdentity = "InvalidVpcPeeringConnectionID.NotFound"
private let invalidVpcPeeringConnectionIdMalformedIdentity = "InvalidVpcPeeringConnectionId.Malformed"
private let invalidVpcPeeringConnectionStateDnsHostnamesDisabledIdentity = "InvalidVpcPeeringConnectionState.DnsHostnamesDisabled"
private let invalidVpcRangeIdentity = "InvalidVpcRange"
private let invalidVpcStateIdentity = "InvalidVpcState"
private let invalidVpnConnectionInvalidStateIdentity = "InvalidVpnConnection.InvalidState"
private let invalidVpnConnectionInvalidTypeIdentity = "InvalidVpnConnection.InvalidType"
private let invalidVpnConnectionIDIdentity = "InvalidVpnConnectionID"
private let invalidVpnConnectionIDNotFoundIdentity = "InvalidVpnConnectionID.NotFound"
private let invalidVpnGatewayAttachmentNotFoundIdentity = "InvalidVpnGatewayAttachment.NotFound"
private let invalidVpnGatewayIDNotFoundIdentity = "InvalidVpnGatewayID.NotFound"
private let invalidVpnGatewayStateIdentity = "InvalidVpnGatewayState"
private let invalidZoneNotFoundIdentity = "InvalidZone.NotFound"
private let keyPairLimitExceededIdentity = "KeyPairLimitExceeded"
private let legacySecurityGroupIdentity = "LegacySecurityGroup"
private let limitPriceExceededIdentity = "LimitPriceExceeded"
private let logDestinationNotFoundIdentity = "LogDestinationNotFoundException"
private let logDestinationPermissionIssueIdentity = "LogDestinationPermissionIssue"
private let malformedQueryStringIdentity = "MalformedQueryString"
private let maxIOPSLimitExceededIdentity = "MaxIOPSLimitExceeded"
private let maxScheduledInstanceCapacityExceededIdentity = "MaxScheduledInstanceCapacityExceeded"
private let maxSpotFleetRequestCountExceededIdentity = "MaxSpotFleetRequestCountExceeded"
private let maxSpotInstanceCountExceededIdentity = "MaxSpotInstanceCountExceeded"
private let maxTemplateLimitExceededIdentity = "MaxTemplateLimitExceeded"
private let maxTemplateVersionLimitExceededIdentity = "MaxTemplateVersionLimitExceeded"
private let missingActionIdentity = "MissingAction"
private let missingAuthenticationTokenIdentity = "MissingAuthenticationToken"
private let missingInputIdentity = "MissingInput"
private let missingParameterIdentity = "MissingParameter"
private let natGatewayLimitExceededIdentity = "NatGatewayLimitExceeded"
private let natGatewayMalformedIdentity = "NatGatewayMalformed"
private let natGatewayNotFoundIdentity = "NatGatewayNotFound"
private let networkAclEntryAlreadyExistsIdentity = "NetworkAclEntryAlreadyExists"
private let networkAclEntryLimitExceededIdentity = "NetworkAclEntryLimitExceeded"
private let networkAclLimitExceededIdentity = "NetworkAclLimitExceeded"
private let networkInterfaceLimitExceededIdentity = "NetworkInterfaceLimitExceeded"
private let noSuchVersionIdentity = "NoSuchVersion"
private let nonEBSInstanceIdentity = "NonEBSInstance"
private let notExportableIdentity = "NotExportable"
private let operationNotPermittedIdentity = "OperationNotPermitted"
private let optInRequiredIdentity = "OptInRequired"
private let outstandingVpcPeeringConnectionLimitExceededIdentity = "OutstandingVpcPeeringConnectionLimitExceeded"
private let pendingSnapshotLimitExceededIdentity = "PendingSnapshotLimitExceeded"
private let pendingVerificationIdentity = "PendingVerification"
private let pendingVpcPeeringConnectionLimitExceededIdentity = "PendingVpcPeeringConnectionLimitExceeded"
private let placementGroupLimitExceededIdentity = "PlacementGroupLimitExceeded"
private let privateIpAddressLimitExceededIdentity = "PrivateIpAddressLimitExceeded"
private let requestExpiredIdentity = "RequestExpired"
private let requestLimitExceededIdentity = "RequestLimitExceeded"
private let requestResourceCountExceededIdentity = "RequestResourceCountExceeded"
private let reservedInstancesCountExceededIdentity = "ReservedInstancesCountExceeded"
private let reservedInstancesLimitExceededIdentity = "ReservedInstancesLimitExceeded"
private let reservedInstancesUnavailableIdentity = "ReservedInstancesUnavailable"
private let resourceAlreadyAssignedIdentity = "Resource.AlreadyAssigned"
private let resourceAlreadyAssociatedIdentity = "Resource.AlreadyAssociated"
private let resourceCountExceededIdentity = "ResourceCountExceeded"
private let resourceCountLimitExceededIdentity = "ResourceCountLimitExceeded"
private let resourceLimitExceededIdentity = "ResourceLimitExceeded"
private let routeAlreadyExistsIdentity = "RouteAlreadyExists"
private let routeLimitExceededIdentity = "RouteLimitExceeded"
private let routeTableLimitExceededIdentity = "RouteTableLimitExceeded"
private let rulesPerSecurityGroupLimitExceededIdentity = "RulesPerSecurityGroupLimitExceeded"
private let scheduledInstanceLimitExceededIdentity = "ScheduledInstanceLimitExceeded"
private let scheduledInstanceParameterMismatchIdentity = "ScheduledInstanceParameterMismatch"
private let scheduledInstanceSlotNotOpenIdentity = "ScheduledInstanceSlotNotOpen"
private let scheduledInstanceSlotUnavailableIdentity = "ScheduledInstanceSlotUnavailable"
private let securityGroupLimitExceededIdentity = "SecurityGroupLimitExceeded"
private let securityGroupsPerInstanceLimitExceededIdentity = "SecurityGroupsPerInstanceLimitExceeded"
private let securityGroupsPerInterfaceLimitExceededIdentity = "SecurityGroupsPerInterfaceLimitExceeded"
private let serviceUnavailableIdentity = "ServiceUnavailable"
private let signatureDoesNotMatchIdentity = "SignatureDoesNotMatch"
private let snapshotCopyUnsupportedInterRegionIdentity = "SnapshotCopyUnsupported.InterRegion"
private let snapshotCreationPerVolumeRateExceededIdentity = "SnapshotCreationPerVolumeRateExceeded"
private let snapshotLimitExceededIdentity = "SnapshotLimitExceeded"
private let subnetLimitExceededIdentity = "SubnetLimitExceeded"
private let tagLimitExceededIdentity = "TagLimitExceeded"
private let unauthorizedOperationIdentity = "UnauthorizedOperation"
private let unavailableIdentity = "Unavailable"
private let unavailableHostRequirementsIdentity = "UnavailableHostRequirements"
private let unknownParameterIdentity = "UnknownParameter"
private let unknownPrincipalTypeUnsupportedIdentity = "UnknownPrincipalType.Unsupported"
private let unknownVolumeTypeIdentity = "UnknownVolumeType"
private let unsupportedIdentity = "Unsupported"
private let unsupportedHibernationConfigurationIdentity = "UnsupportedHibernationConfiguration"
private let unsupportedHostConfigurationIdentity = "UnsupportedHostConfiguration"
private let unsupportedInstanceAttributeIdentity = "UnsupportedInstanceAttribute"
private let unsupportedInstanceTypeOnHostIdentity = "UnsupportedInstanceTypeOnHost"
private let unsupportedOperationIdentity = "UnsupportedOperation"
private let unsupportedProtocolIdentity = "UnsupportedProtocol"
private let unsupportedTenancyIdentity = "UnsupportedTenancy"
private let vPCIdNotSpecifiedIdentity = "VPCIdNotSpecified"
private let vPCResourceNotSpecifiedIdentity = "VPCResourceNotSpecified"
private let validationIdentity = "ValidationError"
private let volumeIOPSLimitIdentity = "VolumeIOPSLimit"
private let volumeInUseIdentity = "VolumeInUse"
private let volumeLimitExceededIdentity = "VolumeLimitExceeded"
private let volumeTypeNotAvailableInZoneIdentity = "VolumeTypeNotAvailableInZone"
private let vpcCidrConflictIdentity = "VpcCidrConflict"
private let vpcEndpointLimitExceededIdentity = "VpcEndpointLimitExceeded"
private let vpcLimitExceededIdentity = "VpcLimitExceeded"
private let vpcPeeringConnectionAlreadyExistsIdentity = "VpcPeeringConnectionAlreadyExists"
private let vpcPeeringConnectionsPerVpcLimitExceededIdentity = "VpcPeeringConnectionsPerVpcLimitExceeded"
private let vpnConnectionLimitExceededIdentity = "VpnConnectionLimitExceeded"
private let vpnGatewayAttachmentLimitExceededIdentity = "VpnGatewayAttachmentLimitExceeded"
private let vpnGatewayLimitExceededIdentity = "VpnGatewayLimitExceeded"
private let zonesMismatchedIdentity = "ZonesMismatched"
private let __accessDeniedIdentity = "AccessDenied"

public struct ElasticComputeCloudErrorPayload: Codable {
    public let type: String
    public let message: String

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }
}

public enum ElasticComputeCloudCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum ElasticComputeCloudError: Swift.Error, Decodable {
    case activeVpcPeeringConnectionPerVpcLimitExceeded(ElasticComputeCloudErrorPayload)
    case addressLimitExceeded(ElasticComputeCloudErrorPayload)
    case asnConflict(ElasticComputeCloudErrorPayload)
    case attachmentLimitExceeded(ElasticComputeCloudErrorPayload)
    case auth(ElasticComputeCloudErrorPayload)
    case blocked(ElasticComputeCloudErrorPayload)
    case bootForVolumeTypeUnsupported(ElasticComputeCloudErrorPayload)
    case bundlingInProgress(ElasticComputeCloudErrorPayload)
    case cannotDelete(ElasticComputeCloudErrorPayload)
    case cidrConflict(ElasticComputeCloudErrorPayload)
    case clientVpnAuthorizationRuleLimitExceeded(ElasticComputeCloudErrorPayload)
    case clientVpnCertificateRevocationListLimitExceeded(ElasticComputeCloudErrorPayload)
    case clientVpnEndpointAssociationExists(ElasticComputeCloudErrorPayload)
    case clientVpnEndpointLimitExceeded(ElasticComputeCloudErrorPayload)
    case clientVpnRouteLimitExceeded(ElasticComputeCloudErrorPayload)
    case clientVpnTerminateConnectionsLimitExceeded(ElasticComputeCloudErrorPayload)
    case concurrentSnapshotLimitExceeded(ElasticComputeCloudErrorPayload)
    case concurrentTagAccess(ElasticComputeCloudErrorPayload)
    case customerGatewayLimitExceeded(ElasticComputeCloudErrorPayload)
    case customerKeyHasBeenRevoked(ElasticComputeCloudErrorPayload)
    case defaultSubnetAlreadyExistsInAvailabilityZone(ElasticComputeCloudErrorPayload)
    case defaultVpcAlreadyExists(ElasticComputeCloudErrorPayload)
    case defaultVpcDoesNotExist(ElasticComputeCloudErrorPayload)
    case deleteConversionTask(ElasticComputeCloudErrorPayload)
    case dependencyViolation(ElasticComputeCloudErrorPayload)
    case disallowedForDedicatedTenancyNetwork(ElasticComputeCloudErrorPayload)
    case diskImageSizeTooLarge(ElasticComputeCloudErrorPayload)
    case dryRunOperation(ElasticComputeCloudErrorPayload)
    case duplicateSubnetsInSameZone(ElasticComputeCloudErrorPayload)
    case eIPMigratedToVpc(ElasticComputeCloudErrorPayload)
    case encryptedVolumesNotSupported(ElasticComputeCloudErrorPayload)
    case existingVpcEndpointConnections(ElasticComputeCloudErrorPayload)
    case filterLimitExceeded(ElasticComputeCloudErrorPayload)
    case fleetNotInModifiableState(ElasticComputeCloudErrorPayload)
    case flowLogAlreadyExists(ElasticComputeCloudErrorPayload)
    case flowLogsLimitExceeded(ElasticComputeCloudErrorPayload)
    case gatewayNotAttached(ElasticComputeCloudErrorPayload)
    case hostAlreadyCoveredByReservation(ElasticComputeCloudErrorPayload)
    case hostLimitExceeded(ElasticComputeCloudErrorPayload)
    case idempotentInstanceTerminated(ElasticComputeCloudErrorPayload)
    case idempotentParameterMismatch(ElasticComputeCloudErrorPayload)
    case inaccessibleStorageLocation(ElasticComputeCloudErrorPayload)
    case incompatibleHostRequirements(ElasticComputeCloudErrorPayload)
    case incompleteSignature(ElasticComputeCloudErrorPayload)
    case incorrectInstanceState(ElasticComputeCloudErrorPayload)
    case incorrectModificationState(ElasticComputeCloudErrorPayload)
    case incorrectState(ElasticComputeCloudErrorPayload)
    case instanceAlreadyLinked(ElasticComputeCloudErrorPayload)
    case instanceCreditSpecificationNotSupported(ElasticComputeCloudErrorPayload)
    case instanceLimitExceeded(ElasticComputeCloudErrorPayload)
    case insufficientAddressCapacity(ElasticComputeCloudErrorPayload)
    case insufficientCapacity(ElasticComputeCloudErrorPayload)
    case insufficientCapacityOnHost(ElasticComputeCloudErrorPayload)
    case insufficientFreeAddressesInSubnet(ElasticComputeCloudErrorPayload)
    case insufficientHostCapacity(ElasticComputeCloudErrorPayload)
    case insufficientInstanceCapacity(ElasticComputeCloudErrorPayload)
    case insufficientReservedInstanceCapacity(ElasticComputeCloudErrorPayload)
    case insufficientReservedInstancesCapacity(ElasticComputeCloudErrorPayload)
    case `internal`(ElasticComputeCloudErrorPayload)
    case internalFailure(ElasticComputeCloudErrorPayload)
    case internetGatewayLimitExceeded(ElasticComputeCloudErrorPayload)
    case invalidAMIAttributeItemValue(ElasticComputeCloudErrorPayload)
    case invalidAMIIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidAMIIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidAMIIDUnavailable(ElasticComputeCloudErrorPayload)
    case invalidAMINameDuplicate(ElasticComputeCloudErrorPayload)
    case invalidAMINameMalformed(ElasticComputeCloudErrorPayload)
    case invalidAction(ElasticComputeCloudErrorPayload)
    case invalidAddressLocked(ElasticComputeCloudErrorPayload)
    case invalidAddressMalformed(ElasticComputeCloudErrorPayload)
    case invalidAddressNotFound(ElasticComputeCloudErrorPayload)
    case invalidAddressIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidAffinity(ElasticComputeCloudErrorPayload)
    case invalidAllocationIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidAssociationIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidAttachmentNotFound(ElasticComputeCloudErrorPayload)
    case invalidAttachmentIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidAutoPlacement(ElasticComputeCloudErrorPayload)
    case invalidAvailabilityZone(ElasticComputeCloudErrorPayload)
    case invalidBlockDeviceMapping(ElasticComputeCloudErrorPayload)
    case invalidBundleIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidCapacityReservationIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidCapacityReservationIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidCharacter(ElasticComputeCloudErrorPayload)
    case invalidCidrInUse(ElasticComputeCloudErrorPayload)
    case invalidClientToken(ElasticComputeCloudErrorPayload)
    case invalidClientTokenId(ElasticComputeCloudErrorPayload)
    case invalidClientVpnActiveAssociationNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnAssociationIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnConnectionIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnConnectionUserNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnDuplicateAuthorizationRule(ElasticComputeCloudErrorPayload)
    case invalidClientVpnDuplicateRoute(ElasticComputeCloudErrorPayload)
    case invalidClientVpnEndpointAuthorizationRuleNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnEndpointIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnRouteNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnSubnetIdDifferentAccount(ElasticComputeCloudErrorPayload)
    case invalidClientVpnSubnetIdDuplicateAz(ElasticComputeCloudErrorPayload)
    case invalidClientVpnSubnetIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidClientVpnSubnetIdOverlappingCidr(ElasticComputeCloudErrorPayload)
    case invalidConversionTaskId(ElasticComputeCloudErrorPayload)
    case invalidConversionTaskIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidCpuCreditsMalformed(ElasticComputeCloudErrorPayload)
    case invalidCustomerGatewayDuplicateIpAddress(ElasticComputeCloudErrorPayload)
    case invalidCustomerGatewayIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidCustomerGatewayIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidCustomerGatewayState(ElasticComputeCloudErrorPayload)
    case invalidDeviceInUse(ElasticComputeCloudErrorPayload)
    case invalidDhcpOptionIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidDhcpOptionsIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidDhcpOptionsIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidExportTaskIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidFilter(ElasticComputeCloudErrorPayload)
    case invalidFlowLogIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidFormat(ElasticComputeCloudErrorPayload)
    case invalidFpgaImageIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidFpgaImageIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidGatewayIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidGroupDuplicate(ElasticComputeCloudErrorPayload)
    case invalidGroupInUse(ElasticComputeCloudErrorPayload)
    case invalidGroupNotFound(ElasticComputeCloudErrorPayload)
    case invalidGroupReserved(ElasticComputeCloudErrorPayload)
    case invalidGroupIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidHostConfiguration(ElasticComputeCloudErrorPayload)
    case invalidHostIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidHostIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidHostId(ElasticComputeCloudErrorPayload)
    case invalidHostIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidHostIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidHostReservationIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidHostReservationOfferingIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidHostState(ElasticComputeCloudErrorPayload)
    case invalidID(ElasticComputeCloudErrorPayload)
    case invalidIPAddressInUse(ElasticComputeCloudErrorPayload)
    case invalidIamInstanceProfileArnMalformed(ElasticComputeCloudErrorPayload)
    case invalidInput(ElasticComputeCloudErrorPayload)
    case invalidInstanceAttributeValue(ElasticComputeCloudErrorPayload)
    case invalidInstanceCreditSpecificationDuplicateInstanceId(ElasticComputeCloudErrorPayload)
    case invalidInstanceFamily(ElasticComputeCloudErrorPayload)
    case invalidInstanceID(ElasticComputeCloudErrorPayload)
    case invalidInstanceIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidInstanceIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidInstanceIDNotLinkable(ElasticComputeCloudErrorPayload)
    case invalidInstanceState(ElasticComputeCloudErrorPayload)
    case invalidInstanceType(ElasticComputeCloudErrorPayload)
    case invalidInterfaceIpAddressLimitExceeded(ElasticComputeCloudErrorPayload)
    case invalidInternetGatewayIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidInternetGatewayIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidKernelIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidKeyFormat(ElasticComputeCloudErrorPayload)
    case invalidKeyPairDuplicate(ElasticComputeCloudErrorPayload)
    case invalidKeyPairFormat(ElasticComputeCloudErrorPayload)
    case invalidKeyPairNotFound(ElasticComputeCloudErrorPayload)
    case invalidLaunchTemplateIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidLaunchTemplateIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidLaunchTemplateIdVersionNotFound(ElasticComputeCloudErrorPayload)
    case invalidLaunchTemplateNameAlreadyExists(ElasticComputeCloudErrorPayload)
    case invalidLaunchTemplateNameMalformed(ElasticComputeCloudErrorPayload)
    case invalidLaunchTemplateNameNotFound(ElasticComputeCloudErrorPayload)
    case invalidManifest(ElasticComputeCloudErrorPayload)
    case invalidMaxResults(ElasticComputeCloudErrorPayload)
    case invalidNatGatewayIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidNetworkAclEntryNotFound(ElasticComputeCloudErrorPayload)
    case invalidNetworkAclIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidNetworkAclIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidNetworkInterfaceInUse(ElasticComputeCloudErrorPayload)
    case invalidNetworkInterfaceAttachmentIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidNetworkInterfaceIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidNetworkInterfaceIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidNetworkLoadBalancerArnMalformed(ElasticComputeCloudErrorPayload)
    case invalidNetworkLoadBalancerArnNotFound(ElasticComputeCloudErrorPayload)
    case invalidNextToken(ElasticComputeCloudErrorPayload)
    case invalidOptionConflict(ElasticComputeCloudErrorPayload)
    case invalidPaginationToken(ElasticComputeCloudErrorPayload)
    case invalidParameter(ElasticComputeCloudErrorPayload)
    case invalidParameterCombination(ElasticComputeCloudErrorPayload)
    case invalidParameterValue(ElasticComputeCloudErrorPayload)
    case invalidPermissionDuplicate(ElasticComputeCloudErrorPayload)
    case invalidPermissionMalformed(ElasticComputeCloudErrorPayload)
    case invalidPermissionNotFound(ElasticComputeCloudErrorPayload)
    case invalidPlacementGroupDuplicate(ElasticComputeCloudErrorPayload)
    case invalidPlacementGroupInUse(ElasticComputeCloudErrorPayload)
    case invalidPlacementGroupUnknown(ElasticComputeCloudErrorPayload)
    case invalidPolicyDocument(ElasticComputeCloudErrorPayload)
    case invalidPrefixListIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidPrefixListIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidProductInfo(ElasticComputeCloudErrorPayload)
    case invalidPurchaseTokenExpired(ElasticComputeCloudErrorPayload)
    case invalidPurchaseTokenMalformed(ElasticComputeCloudErrorPayload)
    case invalidQuantity(ElasticComputeCloudErrorPayload)
    case invalidQueryParameter(ElasticComputeCloudErrorPayload)
    case invalidRamDiskIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidRegion(ElasticComputeCloudErrorPayload)
    case invalidRequest(ElasticComputeCloudErrorPayload)
    case invalidReservationIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidReservationIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidReservedInstancesId(ElasticComputeCloudErrorPayload)
    case invalidReservedInstancesOfferingId(ElasticComputeCloudErrorPayload)
    case invalidResourceTypeUnknown(ElasticComputeCloudErrorPayload)
    case invalidRouteInvalidState(ElasticComputeCloudErrorPayload)
    case invalidRouteMalformed(ElasticComputeCloudErrorPayload)
    case invalidRouteNotFound(ElasticComputeCloudErrorPayload)
    case invalidRouteTableIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidRouteTableIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidScheduledInstance(ElasticComputeCloudErrorPayload)
    case invalidSecurityRequestHasExpired(ElasticComputeCloudErrorPayload)
    case invalidSecurityGroupIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidSecurityGroupIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidServiceName(ElasticComputeCloudErrorPayload)
    case invalidSnapshotInUse(ElasticComputeCloudErrorPayload)
    case invalidSnapshotNotFound(ElasticComputeCloudErrorPayload)
    case invalidSnapshotIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidSpotDatafeedNotFound(ElasticComputeCloudErrorPayload)
    case invalidSpotFleetRequestConfig(ElasticComputeCloudErrorPayload)
    case invalidSpotFleetRequestIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidSpotFleetRequestIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidSpotInstanceRequestIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidSpotInstanceRequestIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidState(ElasticComputeCloudErrorPayload)
    case invalidStateTransition(ElasticComputeCloudErrorPayload)
    case invalidSubnet(ElasticComputeCloudErrorPayload)
    case invalidSubnetConflict(ElasticComputeCloudErrorPayload)
    case invalidSubnetRange(ElasticComputeCloudErrorPayload)
    case invalidSubnetIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidSubnetIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidSubnetIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidTagKeyMalformed(ElasticComputeCloudErrorPayload)
    case invalidTargetArnUnknown(ElasticComputeCloudErrorPayload)
    case invalidTenancy(ElasticComputeCloudErrorPayload)
    case invalidTime(ElasticComputeCloudErrorPayload)
    case invalidUserIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidVolumeNotFound(ElasticComputeCloudErrorPayload)
    case invalidVolumeZoneMismatch(ElasticComputeCloudErrorPayload)
    case invalidVolumeIDDuplicate(ElasticComputeCloudErrorPayload)
    case invalidVolumeIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidVolumeIDZoneMismatch(ElasticComputeCloudErrorPayload)
    case invalidVpcEndpointNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpcEndpointIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidVpcEndpointIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpcEndpointServiceNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpcEndpointServiceIdNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpcEndpointType(ElasticComputeCloudErrorPayload)
    case invalidVpcIDMalformed(ElasticComputeCloudErrorPayload)
    case invalidVpcIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpcPeeringConnectionIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpcPeeringConnectionIdMalformed(ElasticComputeCloudErrorPayload)
    case invalidVpcPeeringConnectionStateDnsHostnamesDisabled(ElasticComputeCloudErrorPayload)
    case invalidVpcRange(ElasticComputeCloudErrorPayload)
    case invalidVpcState(ElasticComputeCloudErrorPayload)
    case invalidVpnConnectionInvalidState(ElasticComputeCloudErrorPayload)
    case invalidVpnConnectionInvalidType(ElasticComputeCloudErrorPayload)
    case invalidVpnConnectionID(ElasticComputeCloudErrorPayload)
    case invalidVpnConnectionIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpnGatewayAttachmentNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpnGatewayIDNotFound(ElasticComputeCloudErrorPayload)
    case invalidVpnGatewayState(ElasticComputeCloudErrorPayload)
    case invalidZoneNotFound(ElasticComputeCloudErrorPayload)
    case keyPairLimitExceeded(ElasticComputeCloudErrorPayload)
    case legacySecurityGroup(ElasticComputeCloudErrorPayload)
    case limitPriceExceeded(ElasticComputeCloudErrorPayload)
    case logDestinationNotFound(ElasticComputeCloudErrorPayload)
    case logDestinationPermissionIssue(ElasticComputeCloudErrorPayload)
    case malformedQueryString(ElasticComputeCloudErrorPayload)
    case maxIOPSLimitExceeded(ElasticComputeCloudErrorPayload)
    case maxScheduledInstanceCapacityExceeded(ElasticComputeCloudErrorPayload)
    case maxSpotFleetRequestCountExceeded(ElasticComputeCloudErrorPayload)
    case maxSpotInstanceCountExceeded(ElasticComputeCloudErrorPayload)
    case maxTemplateLimitExceeded(ElasticComputeCloudErrorPayload)
    case maxTemplateVersionLimitExceeded(ElasticComputeCloudErrorPayload)
    case missingAction(ElasticComputeCloudErrorPayload)
    case missingAuthenticationToken(ElasticComputeCloudErrorPayload)
    case missingInput(ElasticComputeCloudErrorPayload)
    case missingParameter(ElasticComputeCloudErrorPayload)
    case natGatewayLimitExceeded(ElasticComputeCloudErrorPayload)
    case natGatewayMalformed(ElasticComputeCloudErrorPayload)
    case natGatewayNotFound(ElasticComputeCloudErrorPayload)
    case networkAclEntryAlreadyExists(ElasticComputeCloudErrorPayload)
    case networkAclEntryLimitExceeded(ElasticComputeCloudErrorPayload)
    case networkAclLimitExceeded(ElasticComputeCloudErrorPayload)
    case networkInterfaceLimitExceeded(ElasticComputeCloudErrorPayload)
    case noSuchVersion(ElasticComputeCloudErrorPayload)
    case nonEBSInstance(ElasticComputeCloudErrorPayload)
    case notExportable(ElasticComputeCloudErrorPayload)
    case operationNotPermitted(ElasticComputeCloudErrorPayload)
    case optInRequired(ElasticComputeCloudErrorPayload)
    case outstandingVpcPeeringConnectionLimitExceeded(ElasticComputeCloudErrorPayload)
    case pendingSnapshotLimitExceeded(ElasticComputeCloudErrorPayload)
    case pendingVerification(ElasticComputeCloudErrorPayload)
    case pendingVpcPeeringConnectionLimitExceeded(ElasticComputeCloudErrorPayload)
    case placementGroupLimitExceeded(ElasticComputeCloudErrorPayload)
    case privateIpAddressLimitExceeded(ElasticComputeCloudErrorPayload)
    case requestExpired(ElasticComputeCloudErrorPayload)
    case requestLimitExceeded(ElasticComputeCloudErrorPayload)
    case requestResourceCountExceeded(ElasticComputeCloudErrorPayload)
    case reservedInstancesCountExceeded(ElasticComputeCloudErrorPayload)
    case reservedInstancesLimitExceeded(ElasticComputeCloudErrorPayload)
    case reservedInstancesUnavailable(ElasticComputeCloudErrorPayload)
    case resourceAlreadyAssigned(ElasticComputeCloudErrorPayload)
    case resourceAlreadyAssociated(ElasticComputeCloudErrorPayload)
    case resourceCountExceeded(ElasticComputeCloudErrorPayload)
    case resourceCountLimitExceeded(ElasticComputeCloudErrorPayload)
    case resourceLimitExceeded(ElasticComputeCloudErrorPayload)
    case routeAlreadyExists(ElasticComputeCloudErrorPayload)
    case routeLimitExceeded(ElasticComputeCloudErrorPayload)
    case routeTableLimitExceeded(ElasticComputeCloudErrorPayload)
    case rulesPerSecurityGroupLimitExceeded(ElasticComputeCloudErrorPayload)
    case scheduledInstanceLimitExceeded(ElasticComputeCloudErrorPayload)
    case scheduledInstanceParameterMismatch(ElasticComputeCloudErrorPayload)
    case scheduledInstanceSlotNotOpen(ElasticComputeCloudErrorPayload)
    case scheduledInstanceSlotUnavailable(ElasticComputeCloudErrorPayload)
    case securityGroupLimitExceeded(ElasticComputeCloudErrorPayload)
    case securityGroupsPerInstanceLimitExceeded(ElasticComputeCloudErrorPayload)
    case securityGroupsPerInterfaceLimitExceeded(ElasticComputeCloudErrorPayload)
    case serviceUnavailable(ElasticComputeCloudErrorPayload)
    case signatureDoesNotMatch(ElasticComputeCloudErrorPayload)
    case snapshotCopyUnsupportedInterRegion(ElasticComputeCloudErrorPayload)
    case snapshotCreationPerVolumeRateExceeded(ElasticComputeCloudErrorPayload)
    case snapshotLimitExceeded(ElasticComputeCloudErrorPayload)
    case subnetLimitExceeded(ElasticComputeCloudErrorPayload)
    case tagLimitExceeded(ElasticComputeCloudErrorPayload)
    case unauthorizedOperation(ElasticComputeCloudErrorPayload)
    case unavailable(ElasticComputeCloudErrorPayload)
    case unavailableHostRequirements(ElasticComputeCloudErrorPayload)
    case unknownParameter(ElasticComputeCloudErrorPayload)
    case unknownPrincipalTypeUnsupported(ElasticComputeCloudErrorPayload)
    case unknownVolumeType(ElasticComputeCloudErrorPayload)
    case unsupported(ElasticComputeCloudErrorPayload)
    case unsupportedHibernationConfiguration(ElasticComputeCloudErrorPayload)
    case unsupportedHostConfiguration(ElasticComputeCloudErrorPayload)
    case unsupportedInstanceAttribute(ElasticComputeCloudErrorPayload)
    case unsupportedInstanceTypeOnHost(ElasticComputeCloudErrorPayload)
    case unsupportedOperation(ElasticComputeCloudErrorPayload)
    case unsupportedProtocol(ElasticComputeCloudErrorPayload)
    case unsupportedTenancy(ElasticComputeCloudErrorPayload)
    case vPCIdNotSpecified(ElasticComputeCloudErrorPayload)
    case vPCResourceNotSpecified(ElasticComputeCloudErrorPayload)
    case validation(ElasticComputeCloudErrorPayload)
    case volumeIOPSLimit(ElasticComputeCloudErrorPayload)
    case volumeInUse(ElasticComputeCloudErrorPayload)
    case volumeLimitExceeded(ElasticComputeCloudErrorPayload)
    case volumeTypeNotAvailableInZone(ElasticComputeCloudErrorPayload)
    case vpcCidrConflict(ElasticComputeCloudErrorPayload)
    case vpcEndpointLimitExceeded(ElasticComputeCloudErrorPayload)
    case vpcLimitExceeded(ElasticComputeCloudErrorPayload)
    case vpcPeeringConnectionAlreadyExists(ElasticComputeCloudErrorPayload)
    case vpcPeeringConnectionsPerVpcLimitExceeded(ElasticComputeCloudErrorPayload)
    case vpnConnectionLimitExceeded(ElasticComputeCloudErrorPayload)
    case vpnGatewayAttachmentLimitExceeded(ElasticComputeCloudErrorPayload)
    case vpnGatewayLimitExceeded(ElasticComputeCloudErrorPayload)
    case zonesMismatched(ElasticComputeCloudErrorPayload)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case activeVpcPeeringConnectionPerVpcLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.activeVpcPeeringConnectionPerVpcLimitExceeded(errorPayload)
        case addressLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.addressLimitExceeded(errorPayload)
        case asnConflictIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.asnConflict(errorPayload)
        case attachmentLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.attachmentLimitExceeded(errorPayload)
        case authIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.auth(errorPayload)
        case blockedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.blocked(errorPayload)
        case bootForVolumeTypeUnsupportedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.bootForVolumeTypeUnsupported(errorPayload)
        case bundlingInProgressIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.bundlingInProgress(errorPayload)
        case cannotDeleteIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.cannotDelete(errorPayload)
        case cidrConflictIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.cidrConflict(errorPayload)
        case clientVpnAuthorizationRuleLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.clientVpnAuthorizationRuleLimitExceeded(errorPayload)
        case clientVpnCertificateRevocationListLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.clientVpnCertificateRevocationListLimitExceeded(errorPayload)
        case clientVpnEndpointAssociationExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.clientVpnEndpointAssociationExists(errorPayload)
        case clientVpnEndpointLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.clientVpnEndpointLimitExceeded(errorPayload)
        case clientVpnRouteLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.clientVpnRouteLimitExceeded(errorPayload)
        case clientVpnTerminateConnectionsLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.clientVpnTerminateConnectionsLimitExceeded(errorPayload)
        case concurrentSnapshotLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.concurrentSnapshotLimitExceeded(errorPayload)
        case concurrentTagAccessIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.concurrentTagAccess(errorPayload)
        case customerGatewayLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.customerGatewayLimitExceeded(errorPayload)
        case customerKeyHasBeenRevokedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.customerKeyHasBeenRevoked(errorPayload)
        case defaultSubnetAlreadyExistsInAvailabilityZoneIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.defaultSubnetAlreadyExistsInAvailabilityZone(errorPayload)
        case defaultVpcAlreadyExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.defaultVpcAlreadyExists(errorPayload)
        case defaultVpcDoesNotExistIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.defaultVpcDoesNotExist(errorPayload)
        case deleteConversionTaskIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.deleteConversionTask(errorPayload)
        case dependencyViolationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.dependencyViolation(errorPayload)
        case disallowedForDedicatedTenancyNetworkIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.disallowedForDedicatedTenancyNetwork(errorPayload)
        case diskImageSizeTooLargeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.diskImageSizeTooLarge(errorPayload)
        case dryRunOperationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.dryRunOperation(errorPayload)
        case duplicateSubnetsInSameZoneIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.duplicateSubnetsInSameZone(errorPayload)
        case eIPMigratedToVpcIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.eIPMigratedToVpc(errorPayload)
        case encryptedVolumesNotSupportedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.encryptedVolumesNotSupported(errorPayload)
        case existingVpcEndpointConnectionsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.existingVpcEndpointConnections(errorPayload)
        case filterLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.filterLimitExceeded(errorPayload)
        case fleetNotInModifiableStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.fleetNotInModifiableState(errorPayload)
        case flowLogAlreadyExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.flowLogAlreadyExists(errorPayload)
        case flowLogsLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.flowLogsLimitExceeded(errorPayload)
        case gatewayNotAttachedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.gatewayNotAttached(errorPayload)
        case hostAlreadyCoveredByReservationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.hostAlreadyCoveredByReservation(errorPayload)
        case hostLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.hostLimitExceeded(errorPayload)
        case idempotentInstanceTerminatedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.idempotentInstanceTerminated(errorPayload)
        case idempotentParameterMismatchIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.idempotentParameterMismatch(errorPayload)
        case inaccessibleStorageLocationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.inaccessibleStorageLocation(errorPayload)
        case incompatibleHostRequirementsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.incompatibleHostRequirements(errorPayload)
        case incompleteSignatureIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.incompleteSignature(errorPayload)
        case incorrectInstanceStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.incorrectInstanceState(errorPayload)
        case incorrectModificationStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.incorrectModificationState(errorPayload)
        case incorrectStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.incorrectState(errorPayload)
        case instanceAlreadyLinkedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.instanceAlreadyLinked(errorPayload)
        case instanceCreditSpecificationNotSupportedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.instanceCreditSpecificationNotSupported(errorPayload)
        case instanceLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.instanceLimitExceeded(errorPayload)
        case insufficientAddressCapacityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientAddressCapacity(errorPayload)
        case insufficientCapacityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientCapacity(errorPayload)
        case insufficientCapacityOnHostIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientCapacityOnHost(errorPayload)
        case insufficientFreeAddressesInSubnetIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientFreeAddressesInSubnet(errorPayload)
        case insufficientHostCapacityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientHostCapacity(errorPayload)
        case insufficientInstanceCapacityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientInstanceCapacity(errorPayload)
        case insufficientReservedInstanceCapacityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientReservedInstanceCapacity(errorPayload)
        case insufficientReservedInstancesCapacityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.insufficientReservedInstancesCapacity(errorPayload)
        case internalIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.internal(errorPayload)
        case internalFailureIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.internalFailure(errorPayload)
        case internetGatewayLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.internetGatewayLimitExceeded(errorPayload)
        case invalidAMIAttributeItemValueIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAMIAttributeItemValue(errorPayload)
        case invalidAMIIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAMIIDMalformed(errorPayload)
        case invalidAMIIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAMIIDNotFound(errorPayload)
        case invalidAMIIDUnavailableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAMIIDUnavailable(errorPayload)
        case invalidAMINameDuplicateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAMINameDuplicate(errorPayload)
        case invalidAMINameMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAMINameMalformed(errorPayload)
        case invalidActionIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAction(errorPayload)
        case invalidAddressLockedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAddressLocked(errorPayload)
        case invalidAddressMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAddressMalformed(errorPayload)
        case invalidAddressNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAddressNotFound(errorPayload)
        case invalidAddressIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAddressIDNotFound(errorPayload)
        case invalidAffinityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAffinity(errorPayload)
        case invalidAllocationIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAllocationIDNotFound(errorPayload)
        case invalidAssociationIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAssociationIDNotFound(errorPayload)
        case invalidAttachmentNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAttachmentNotFound(errorPayload)
        case invalidAttachmentIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAttachmentIDNotFound(errorPayload)
        case invalidAutoPlacementIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAutoPlacement(errorPayload)
        case invalidAvailabilityZoneIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidAvailabilityZone(errorPayload)
        case invalidBlockDeviceMappingIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidBlockDeviceMapping(errorPayload)
        case invalidBundleIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidBundleIDNotFound(errorPayload)
        case invalidCapacityReservationIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCapacityReservationIdMalformed(errorPayload)
        case invalidCapacityReservationIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCapacityReservationIdNotFound(errorPayload)
        case invalidCharacterIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCharacter(errorPayload)
        case invalidCidrInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCidrInUse(errorPayload)
        case invalidClientTokenIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientToken(errorPayload)
        case invalidClientTokenIdIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientTokenId(errorPayload)
        case invalidClientVpnActiveAssociationNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnActiveAssociationNotFound(errorPayload)
        case invalidClientVpnAssociationIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnAssociationIdNotFound(errorPayload)
        case invalidClientVpnConnectionIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnConnectionIdNotFound(errorPayload)
        case invalidClientVpnConnectionUserNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnConnectionUserNotFound(errorPayload)
        case invalidClientVpnDuplicateAuthorizationRuleIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnDuplicateAuthorizationRule(errorPayload)
        case invalidClientVpnDuplicateRouteIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnDuplicateRoute(errorPayload)
        case invalidClientVpnEndpointAuthorizationRuleNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnEndpointAuthorizationRuleNotFound(errorPayload)
        case invalidClientVpnEndpointIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnEndpointIdNotFound(errorPayload)
        case invalidClientVpnRouteNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnRouteNotFound(errorPayload)
        case invalidClientVpnSubnetIdDifferentAccountIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnSubnetIdDifferentAccount(errorPayload)
        case invalidClientVpnSubnetIdDuplicateAzIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnSubnetIdDuplicateAz(errorPayload)
        case invalidClientVpnSubnetIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnSubnetIdNotFound(errorPayload)
        case invalidClientVpnSubnetIdOverlappingCidrIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidClientVpnSubnetIdOverlappingCidr(errorPayload)
        case invalidConversionTaskIdIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidConversionTaskId(errorPayload)
        case invalidConversionTaskIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidConversionTaskIdMalformed(errorPayload)
        case invalidCpuCreditsMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCpuCreditsMalformed(errorPayload)
        case invalidCustomerGatewayDuplicateIpAddressIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCustomerGatewayDuplicateIpAddress(errorPayload)
        case invalidCustomerGatewayIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCustomerGatewayIDNotFound(errorPayload)
        case invalidCustomerGatewayIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCustomerGatewayIdMalformed(errorPayload)
        case invalidCustomerGatewayStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidCustomerGatewayState(errorPayload)
        case invalidDeviceInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidDeviceInUse(errorPayload)
        case invalidDhcpOptionIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidDhcpOptionIDNotFound(errorPayload)
        case invalidDhcpOptionsIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidDhcpOptionsIDNotFound(errorPayload)
        case invalidDhcpOptionsIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidDhcpOptionsIdMalformed(errorPayload)
        case invalidExportTaskIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidExportTaskIDNotFound(errorPayload)
        case invalidFilterIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidFilter(errorPayload)
        case invalidFlowLogIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidFlowLogIdNotFound(errorPayload)
        case invalidFormatIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidFormat(errorPayload)
        case invalidFpgaImageIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidFpgaImageIDMalformed(errorPayload)
        case invalidFpgaImageIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidFpgaImageIDNotFound(errorPayload)
        case invalidGatewayIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidGatewayIDNotFound(errorPayload)
        case invalidGroupDuplicateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidGroupDuplicate(errorPayload)
        case invalidGroupInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidGroupInUse(errorPayload)
        case invalidGroupNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidGroupNotFound(errorPayload)
        case invalidGroupReservedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidGroupReserved(errorPayload)
        case invalidGroupIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidGroupIdMalformed(errorPayload)
        case invalidHostConfigurationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostConfiguration(errorPayload)
        case invalidHostIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostIDMalformed(errorPayload)
        case invalidHostIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostIDNotFound(errorPayload)
        case invalidHostIdIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostId(errorPayload)
        case invalidHostIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostIdMalformed(errorPayload)
        case invalidHostIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostIdNotFound(errorPayload)
        case invalidHostReservationIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostReservationIdMalformed(errorPayload)
        case invalidHostReservationOfferingIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostReservationOfferingIdMalformed(errorPayload)
        case invalidHostStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidHostState(errorPayload)
        case invalidIDIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidID(errorPayload)
        case invalidIPAddressInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidIPAddressInUse(errorPayload)
        case invalidIamInstanceProfileArnMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidIamInstanceProfileArnMalformed(errorPayload)
        case invalidInputIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInput(errorPayload)
        case invalidInstanceAttributeValueIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceAttributeValue(errorPayload)
        case invalidInstanceCreditSpecificationDuplicateInstanceIdIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceCreditSpecificationDuplicateInstanceId(errorPayload)
        case invalidInstanceFamilyIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceFamily(errorPayload)
        case invalidInstanceIDIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceID(errorPayload)
        case invalidInstanceIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceIDMalformed(errorPayload)
        case invalidInstanceIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceIDNotFound(errorPayload)
        case invalidInstanceIDNotLinkableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceIDNotLinkable(errorPayload)
        case invalidInstanceStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceState(errorPayload)
        case invalidInstanceTypeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInstanceType(errorPayload)
        case invalidInterfaceIpAddressLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInterfaceIpAddressLimitExceeded(errorPayload)
        case invalidInternetGatewayIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInternetGatewayIDNotFound(errorPayload)
        case invalidInternetGatewayIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidInternetGatewayIdMalformed(errorPayload)
        case invalidKernelIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidKernelIdMalformed(errorPayload)
        case invalidKeyFormatIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidKeyFormat(errorPayload)
        case invalidKeyPairDuplicateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidKeyPairDuplicate(errorPayload)
        case invalidKeyPairFormatIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidKeyPairFormat(errorPayload)
        case invalidKeyPairNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidKeyPairNotFound(errorPayload)
        case invalidLaunchTemplateIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidLaunchTemplateIdMalformed(errorPayload)
        case invalidLaunchTemplateIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidLaunchTemplateIdNotFound(errorPayload)
        case invalidLaunchTemplateIdVersionNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidLaunchTemplateIdVersionNotFound(errorPayload)
        case invalidLaunchTemplateNameAlreadyExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidLaunchTemplateNameAlreadyExists(errorPayload)
        case invalidLaunchTemplateNameMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidLaunchTemplateNameMalformed(errorPayload)
        case invalidLaunchTemplateNameNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidLaunchTemplateNameNotFound(errorPayload)
        case invalidManifestIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidManifest(errorPayload)
        case invalidMaxResultsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidMaxResults(errorPayload)
        case invalidNatGatewayIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNatGatewayIDNotFound(errorPayload)
        case invalidNetworkAclEntryNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkAclEntryNotFound(errorPayload)
        case invalidNetworkAclIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkAclIDNotFound(errorPayload)
        case invalidNetworkAclIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkAclIdMalformed(errorPayload)
        case invalidNetworkInterfaceInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkInterfaceInUse(errorPayload)
        case invalidNetworkInterfaceAttachmentIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkInterfaceAttachmentIdMalformed(errorPayload)
        case invalidNetworkInterfaceIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkInterfaceIDNotFound(errorPayload)
        case invalidNetworkInterfaceIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkInterfaceIdMalformed(errorPayload)
        case invalidNetworkLoadBalancerArnMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkLoadBalancerArnMalformed(errorPayload)
        case invalidNetworkLoadBalancerArnNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNetworkLoadBalancerArnNotFound(errorPayload)
        case invalidNextTokenIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidNextToken(errorPayload)
        case invalidOptionConflictIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidOptionConflict(errorPayload)
        case invalidPaginationTokenIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPaginationToken(errorPayload)
        case invalidParameterIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidParameter(errorPayload)
        case invalidParameterCombinationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidParameterCombination(errorPayload)
        case invalidParameterValueIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidParameterValue(errorPayload)
        case invalidPermissionDuplicateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPermissionDuplicate(errorPayload)
        case invalidPermissionMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPermissionMalformed(errorPayload)
        case invalidPermissionNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPermissionNotFound(errorPayload)
        case invalidPlacementGroupDuplicateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPlacementGroupDuplicate(errorPayload)
        case invalidPlacementGroupInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPlacementGroupInUse(errorPayload)
        case invalidPlacementGroupUnknownIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPlacementGroupUnknown(errorPayload)
        case invalidPolicyDocumentIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPolicyDocument(errorPayload)
        case invalidPrefixListIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPrefixListIdMalformed(errorPayload)
        case invalidPrefixListIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPrefixListIdNotFound(errorPayload)
        case invalidProductInfoIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidProductInfo(errorPayload)
        case invalidPurchaseTokenExpiredIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPurchaseTokenExpired(errorPayload)
        case invalidPurchaseTokenMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidPurchaseTokenMalformed(errorPayload)
        case invalidQuantityIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidQuantity(errorPayload)
        case invalidQueryParameterIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidQueryParameter(errorPayload)
        case invalidRamDiskIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRamDiskIdMalformed(errorPayload)
        case invalidRegionIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRegion(errorPayload)
        case invalidRequestIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRequest(errorPayload)
        case invalidReservationIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidReservationIDMalformed(errorPayload)
        case invalidReservationIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidReservationIDNotFound(errorPayload)
        case invalidReservedInstancesIdIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidReservedInstancesId(errorPayload)
        case invalidReservedInstancesOfferingIdIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidReservedInstancesOfferingId(errorPayload)
        case invalidResourceTypeUnknownIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidResourceTypeUnknown(errorPayload)
        case invalidRouteInvalidStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRouteInvalidState(errorPayload)
        case invalidRouteMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRouteMalformed(errorPayload)
        case invalidRouteNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRouteNotFound(errorPayload)
        case invalidRouteTableIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRouteTableIDNotFound(errorPayload)
        case invalidRouteTableIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidRouteTableIdMalformed(errorPayload)
        case invalidScheduledInstanceIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidScheduledInstance(errorPayload)
        case invalidSecurityRequestHasExpiredIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSecurityRequestHasExpired(errorPayload)
        case invalidSecurityGroupIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSecurityGroupIDNotFound(errorPayload)
        case invalidSecurityGroupIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSecurityGroupIdMalformed(errorPayload)
        case invalidServiceNameIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidServiceName(errorPayload)
        case invalidSnapshotInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSnapshotInUse(errorPayload)
        case invalidSnapshotNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSnapshotNotFound(errorPayload)
        case invalidSnapshotIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSnapshotIDMalformed(errorPayload)
        case invalidSpotDatafeedNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSpotDatafeedNotFound(errorPayload)
        case invalidSpotFleetRequestConfigIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSpotFleetRequestConfig(errorPayload)
        case invalidSpotFleetRequestIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSpotFleetRequestIdMalformed(errorPayload)
        case invalidSpotFleetRequestIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSpotFleetRequestIdNotFound(errorPayload)
        case invalidSpotInstanceRequestIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSpotInstanceRequestIDMalformed(errorPayload)
        case invalidSpotInstanceRequestIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSpotInstanceRequestIDNotFound(errorPayload)
        case invalidStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidState(errorPayload)
        case invalidStateTransitionIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidStateTransition(errorPayload)
        case invalidSubnetIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSubnet(errorPayload)
        case invalidSubnetConflictIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSubnetConflict(errorPayload)
        case invalidSubnetRangeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSubnetRange(errorPayload)
        case invalidSubnetIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSubnetIDNotFound(errorPayload)
        case invalidSubnetIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSubnetIdMalformed(errorPayload)
        case invalidSubnetIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidSubnetIdNotFound(errorPayload)
        case invalidTagKeyMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidTagKeyMalformed(errorPayload)
        case invalidTargetArnUnknownIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidTargetArnUnknown(errorPayload)
        case invalidTenancyIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidTenancy(errorPayload)
        case invalidTimeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidTime(errorPayload)
        case invalidUserIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidUserIDMalformed(errorPayload)
        case invalidVolumeNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVolumeNotFound(errorPayload)
        case invalidVolumeZoneMismatchIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVolumeZoneMismatch(errorPayload)
        case invalidVolumeIDDuplicateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVolumeIDDuplicate(errorPayload)
        case invalidVolumeIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVolumeIDMalformed(errorPayload)
        case invalidVolumeIDZoneMismatchIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVolumeIDZoneMismatch(errorPayload)
        case invalidVpcEndpointNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcEndpointNotFound(errorPayload)
        case invalidVpcEndpointIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcEndpointIdMalformed(errorPayload)
        case invalidVpcEndpointIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcEndpointIdNotFound(errorPayload)
        case invalidVpcEndpointServiceNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcEndpointServiceNotFound(errorPayload)
        case invalidVpcEndpointServiceIdNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcEndpointServiceIdNotFound(errorPayload)
        case invalidVpcEndpointTypeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcEndpointType(errorPayload)
        case invalidVpcIDMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcIDMalformed(errorPayload)
        case invalidVpcIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcIDNotFound(errorPayload)
        case invalidVpcPeeringConnectionIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcPeeringConnectionIDNotFound(errorPayload)
        case invalidVpcPeeringConnectionIdMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcPeeringConnectionIdMalformed(errorPayload)
        case invalidVpcPeeringConnectionStateDnsHostnamesDisabledIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcPeeringConnectionStateDnsHostnamesDisabled(errorPayload)
        case invalidVpcRangeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcRange(errorPayload)
        case invalidVpcStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpcState(errorPayload)
        case invalidVpnConnectionInvalidStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnConnectionInvalidState(errorPayload)
        case invalidVpnConnectionInvalidTypeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnConnectionInvalidType(errorPayload)
        case invalidVpnConnectionIDIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnConnectionID(errorPayload)
        case invalidVpnConnectionIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnConnectionIDNotFound(errorPayload)
        case invalidVpnGatewayAttachmentNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnGatewayAttachmentNotFound(errorPayload)
        case invalidVpnGatewayIDNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnGatewayIDNotFound(errorPayload)
        case invalidVpnGatewayStateIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidVpnGatewayState(errorPayload)
        case invalidZoneNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.invalidZoneNotFound(errorPayload)
        case keyPairLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.keyPairLimitExceeded(errorPayload)
        case legacySecurityGroupIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.legacySecurityGroup(errorPayload)
        case limitPriceExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.limitPriceExceeded(errorPayload)
        case logDestinationNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.logDestinationNotFound(errorPayload)
        case logDestinationPermissionIssueIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.logDestinationPermissionIssue(errorPayload)
        case malformedQueryStringIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.malformedQueryString(errorPayload)
        case maxIOPSLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.maxIOPSLimitExceeded(errorPayload)
        case maxScheduledInstanceCapacityExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.maxScheduledInstanceCapacityExceeded(errorPayload)
        case maxSpotFleetRequestCountExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.maxSpotFleetRequestCountExceeded(errorPayload)
        case maxSpotInstanceCountExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.maxSpotInstanceCountExceeded(errorPayload)
        case maxTemplateLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.maxTemplateLimitExceeded(errorPayload)
        case maxTemplateVersionLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.maxTemplateVersionLimitExceeded(errorPayload)
        case missingActionIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.missingAction(errorPayload)
        case missingAuthenticationTokenIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.missingAuthenticationToken(errorPayload)
        case missingInputIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.missingInput(errorPayload)
        case missingParameterIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.missingParameter(errorPayload)
        case natGatewayLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.natGatewayLimitExceeded(errorPayload)
        case natGatewayMalformedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.natGatewayMalformed(errorPayload)
        case natGatewayNotFoundIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.natGatewayNotFound(errorPayload)
        case networkAclEntryAlreadyExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.networkAclEntryAlreadyExists(errorPayload)
        case networkAclEntryLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.networkAclEntryLimitExceeded(errorPayload)
        case networkAclLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.networkAclLimitExceeded(errorPayload)
        case networkInterfaceLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.networkInterfaceLimitExceeded(errorPayload)
        case noSuchVersionIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.noSuchVersion(errorPayload)
        case nonEBSInstanceIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.nonEBSInstance(errorPayload)
        case notExportableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.notExportable(errorPayload)
        case operationNotPermittedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.operationNotPermitted(errorPayload)
        case optInRequiredIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.optInRequired(errorPayload)
        case outstandingVpcPeeringConnectionLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.outstandingVpcPeeringConnectionLimitExceeded(errorPayload)
        case pendingSnapshotLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.pendingSnapshotLimitExceeded(errorPayload)
        case pendingVerificationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.pendingVerification(errorPayload)
        case pendingVpcPeeringConnectionLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.pendingVpcPeeringConnectionLimitExceeded(errorPayload)
        case placementGroupLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.placementGroupLimitExceeded(errorPayload)
        case privateIpAddressLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.privateIpAddressLimitExceeded(errorPayload)
        case requestExpiredIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.requestExpired(errorPayload)
        case requestLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.requestLimitExceeded(errorPayload)
        case requestResourceCountExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.requestResourceCountExceeded(errorPayload)
        case reservedInstancesCountExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.reservedInstancesCountExceeded(errorPayload)
        case reservedInstancesLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.reservedInstancesLimitExceeded(errorPayload)
        case reservedInstancesUnavailableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.reservedInstancesUnavailable(errorPayload)
        case resourceAlreadyAssignedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.resourceAlreadyAssigned(errorPayload)
        case resourceAlreadyAssociatedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.resourceAlreadyAssociated(errorPayload)
        case resourceCountExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.resourceCountExceeded(errorPayload)
        case resourceCountLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.resourceCountLimitExceeded(errorPayload)
        case resourceLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.resourceLimitExceeded(errorPayload)
        case routeAlreadyExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.routeAlreadyExists(errorPayload)
        case routeLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.routeLimitExceeded(errorPayload)
        case routeTableLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.routeTableLimitExceeded(errorPayload)
        case rulesPerSecurityGroupLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.rulesPerSecurityGroupLimitExceeded(errorPayload)
        case scheduledInstanceLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.scheduledInstanceLimitExceeded(errorPayload)
        case scheduledInstanceParameterMismatchIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.scheduledInstanceParameterMismatch(errorPayload)
        case scheduledInstanceSlotNotOpenIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.scheduledInstanceSlotNotOpen(errorPayload)
        case scheduledInstanceSlotUnavailableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.scheduledInstanceSlotUnavailable(errorPayload)
        case securityGroupLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.securityGroupLimitExceeded(errorPayload)
        case securityGroupsPerInstanceLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.securityGroupsPerInstanceLimitExceeded(errorPayload)
        case securityGroupsPerInterfaceLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.securityGroupsPerInterfaceLimitExceeded(errorPayload)
        case serviceUnavailableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.serviceUnavailable(errorPayload)
        case signatureDoesNotMatchIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.signatureDoesNotMatch(errorPayload)
        case snapshotCopyUnsupportedInterRegionIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.snapshotCopyUnsupportedInterRegion(errorPayload)
        case snapshotCreationPerVolumeRateExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.snapshotCreationPerVolumeRateExceeded(errorPayload)
        case snapshotLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.snapshotLimitExceeded(errorPayload)
        case subnetLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.subnetLimitExceeded(errorPayload)
        case tagLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.tagLimitExceeded(errorPayload)
        case unauthorizedOperationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unauthorizedOperation(errorPayload)
        case unavailableIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unavailable(errorPayload)
        case unavailableHostRequirementsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unavailableHostRequirements(errorPayload)
        case unknownParameterIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unknownParameter(errorPayload)
        case unknownPrincipalTypeUnsupportedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unknownPrincipalTypeUnsupported(errorPayload)
        case unknownVolumeTypeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unknownVolumeType(errorPayload)
        case unsupportedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupported(errorPayload)
        case unsupportedHibernationConfigurationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedHibernationConfiguration(errorPayload)
        case unsupportedHostConfigurationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedHostConfiguration(errorPayload)
        case unsupportedInstanceAttributeIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedInstanceAttribute(errorPayload)
        case unsupportedInstanceTypeOnHostIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedInstanceTypeOnHost(errorPayload)
        case unsupportedOperationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedOperation(errorPayload)
        case unsupportedProtocolIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedProtocol(errorPayload)
        case unsupportedTenancyIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.unsupportedTenancy(errorPayload)
        case vPCIdNotSpecifiedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vPCIdNotSpecified(errorPayload)
        case vPCResourceNotSpecifiedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vPCResourceNotSpecified(errorPayload)
        case validationIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.validation(errorPayload)
        case volumeIOPSLimitIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.volumeIOPSLimit(errorPayload)
        case volumeInUseIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.volumeInUse(errorPayload)
        case volumeLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.volumeLimitExceeded(errorPayload)
        case volumeTypeNotAvailableInZoneIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.volumeTypeNotAvailableInZone(errorPayload)
        case vpcCidrConflictIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpcCidrConflict(errorPayload)
        case vpcEndpointLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpcEndpointLimitExceeded(errorPayload)
        case vpcLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpcLimitExceeded(errorPayload)
        case vpcPeeringConnectionAlreadyExistsIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpcPeeringConnectionAlreadyExists(errorPayload)
        case vpcPeeringConnectionsPerVpcLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpcPeeringConnectionsPerVpcLimitExceeded(errorPayload)
        case vpnConnectionLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpnConnectionLimitExceeded(errorPayload)
        case vpnGatewayAttachmentLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpnGatewayAttachmentLimitExceeded(errorPayload)
        case vpnGatewayLimitExceededIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.vpnGatewayLimitExceeded(errorPayload)
        case zonesMismatchedIdentity:
            let errorPayload = try ElasticComputeCloudErrorPayload(from: decoder)
            self = ElasticComputeCloudError.zonesMismatched(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw ElasticComputeCloudCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

