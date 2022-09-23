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
// ElasticComputeCloudModelOperations.swift
// ElasticComputeCloudModel
//

import Foundation

/**
 Operation enumeration for the ElasticComputeCloudModel.
 */
public enum ElasticComputeCloudModelOperations: String, Hashable, CustomStringConvertible {
    case acceptReservedInstancesExchangeQuote = "AcceptReservedInstancesExchangeQuote"
    case acceptTransitGatewayMulticastDomainAssociations = "AcceptTransitGatewayMulticastDomainAssociations"
    case acceptTransitGatewayPeeringAttachment = "AcceptTransitGatewayPeeringAttachment"
    case acceptTransitGatewayVpcAttachment = "AcceptTransitGatewayVpcAttachment"
    case acceptVpcEndpointConnections = "AcceptVpcEndpointConnections"
    case acceptVpcPeeringConnection = "AcceptVpcPeeringConnection"
    case advertiseByoipCidr = "AdvertiseByoipCidr"
    case allocateAddress = "AllocateAddress"
    case allocateHosts = "AllocateHosts"
    case allocateIpamPoolCidr = "AllocateIpamPoolCidr"
    case applySecurityGroupsToClientVpnTargetNetwork = "ApplySecurityGroupsToClientVpnTargetNetwork"
    case assignIpv6Addresses = "AssignIpv6Addresses"
    case assignPrivateIpAddresses = "AssignPrivateIpAddresses"
    case associateAddress = "AssociateAddress"
    case associateClientVpnTargetNetwork = "AssociateClientVpnTargetNetwork"
    case associateDhcpOptions = "AssociateDhcpOptions"
    case associateEnclaveCertificateIamRole = "AssociateEnclaveCertificateIamRole"
    case associateIamInstanceProfile = "AssociateIamInstanceProfile"
    case associateInstanceEventWindow = "AssociateInstanceEventWindow"
    case associateRouteTable = "AssociateRouteTable"
    case associateSubnetCidrBlock = "AssociateSubnetCidrBlock"
    case associateTransitGatewayMulticastDomain = "AssociateTransitGatewayMulticastDomain"
    case associateTransitGatewayPolicyTable = "AssociateTransitGatewayPolicyTable"
    case associateTransitGatewayRouteTable = "AssociateTransitGatewayRouteTable"
    case associateTrunkInterface = "AssociateTrunkInterface"
    case associateVpcCidrBlock = "AssociateVpcCidrBlock"
    case attachClassicLinkVpc = "AttachClassicLinkVpc"
    case attachInternetGateway = "AttachInternetGateway"
    case attachNetworkInterface = "AttachNetworkInterface"
    case attachVolume = "AttachVolume"
    case attachVpnGateway = "AttachVpnGateway"
    case authorizeClientVpnIngress = "AuthorizeClientVpnIngress"
    case authorizeSecurityGroupEgress = "AuthorizeSecurityGroupEgress"
    case authorizeSecurityGroupIngress = "AuthorizeSecurityGroupIngress"
    case bundleInstance = "BundleInstance"
    case cancelBundleTask = "CancelBundleTask"
    case cancelCapacityReservation = "CancelCapacityReservation"
    case cancelCapacityReservationFleets = "CancelCapacityReservationFleets"
    case cancelConversionTask = "CancelConversionTask"
    case cancelExportTask = "CancelExportTask"
    case cancelImportTask = "CancelImportTask"
    case cancelReservedInstancesListing = "CancelReservedInstancesListing"
    case cancelSpotFleetRequests = "CancelSpotFleetRequests"
    case cancelSpotInstanceRequests = "CancelSpotInstanceRequests"
    case confirmProductInstance = "ConfirmProductInstance"
    case copyFpgaImage = "CopyFpgaImage"
    case copyImage = "CopyImage"
    case copySnapshot = "CopySnapshot"
    case createCapacityReservation = "CreateCapacityReservation"
    case createCapacityReservationFleet = "CreateCapacityReservationFleet"
    case createCarrierGateway = "CreateCarrierGateway"
    case createClientVpnEndpoint = "CreateClientVpnEndpoint"
    case createClientVpnRoute = "CreateClientVpnRoute"
    case createCoipCidr = "CreateCoipCidr"
    case createCoipPool = "CreateCoipPool"
    case createCustomerGateway = "CreateCustomerGateway"
    case createDefaultSubnet = "CreateDefaultSubnet"
    case createDefaultVpc = "CreateDefaultVpc"
    case createDhcpOptions = "CreateDhcpOptions"
    case createEgressOnlyInternetGateway = "CreateEgressOnlyInternetGateway"
    case createFleet = "CreateFleet"
    case createFlowLogs = "CreateFlowLogs"
    case createFpgaImage = "CreateFpgaImage"
    case createImage = "CreateImage"
    case createInstanceEventWindow = "CreateInstanceEventWindow"
    case createInstanceExportTask = "CreateInstanceExportTask"
    case createInternetGateway = "CreateInternetGateway"
    case createIpam = "CreateIpam"
    case createIpamPool = "CreateIpamPool"
    case createIpamScope = "CreateIpamScope"
    case createKeyPair = "CreateKeyPair"
    case createLaunchTemplate = "CreateLaunchTemplate"
    case createLaunchTemplateVersion = "CreateLaunchTemplateVersion"
    case createLocalGatewayRoute = "CreateLocalGatewayRoute"
    case createLocalGatewayRouteTable = "CreateLocalGatewayRouteTable"
    case createLocalGatewayRouteTableVirtualInterfaceGroupAssociation = "CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation"
    case createLocalGatewayRouteTableVpcAssociation = "CreateLocalGatewayRouteTableVpcAssociation"
    case createManagedPrefixList = "CreateManagedPrefixList"
    case createNatGateway = "CreateNatGateway"
    case createNetworkAcl = "CreateNetworkAcl"
    case createNetworkAclEntry = "CreateNetworkAclEntry"
    case createNetworkInsightsAccessScope = "CreateNetworkInsightsAccessScope"
    case createNetworkInsightsPath = "CreateNetworkInsightsPath"
    case createNetworkInterface = "CreateNetworkInterface"
    case createNetworkInterfacePermission = "CreateNetworkInterfacePermission"
    case createPlacementGroup = "CreatePlacementGroup"
    case createPublicIpv4Pool = "CreatePublicIpv4Pool"
    case createReplaceRootVolumeTask = "CreateReplaceRootVolumeTask"
    case createReservedInstancesListing = "CreateReservedInstancesListing"
    case createRestoreImageTask = "CreateRestoreImageTask"
    case createRoute = "CreateRoute"
    case createRouteTable = "CreateRouteTable"
    case createSecurityGroup = "CreateSecurityGroup"
    case createSnapshot = "CreateSnapshot"
    case createSnapshots = "CreateSnapshots"
    case createSpotDatafeedSubscription = "CreateSpotDatafeedSubscription"
    case createStoreImageTask = "CreateStoreImageTask"
    case createSubnet = "CreateSubnet"
    case createSubnetCidrReservation = "CreateSubnetCidrReservation"
    case createTags = "CreateTags"
    case createTrafficMirrorFilter = "CreateTrafficMirrorFilter"
    case createTrafficMirrorFilterRule = "CreateTrafficMirrorFilterRule"
    case createTrafficMirrorSession = "CreateTrafficMirrorSession"
    case createTrafficMirrorTarget = "CreateTrafficMirrorTarget"
    case createTransitGateway = "CreateTransitGateway"
    case createTransitGatewayConnect = "CreateTransitGatewayConnect"
    case createTransitGatewayConnectPeer = "CreateTransitGatewayConnectPeer"
    case createTransitGatewayMulticastDomain = "CreateTransitGatewayMulticastDomain"
    case createTransitGatewayPeeringAttachment = "CreateTransitGatewayPeeringAttachment"
    case createTransitGatewayPolicyTable = "CreateTransitGatewayPolicyTable"
    case createTransitGatewayPrefixListReference = "CreateTransitGatewayPrefixListReference"
    case createTransitGatewayRoute = "CreateTransitGatewayRoute"
    case createTransitGatewayRouteTable = "CreateTransitGatewayRouteTable"
    case createTransitGatewayRouteTableAnnouncement = "CreateTransitGatewayRouteTableAnnouncement"
    case createTransitGatewayVpcAttachment = "CreateTransitGatewayVpcAttachment"
    case createVolume = "CreateVolume"
    case createVpc = "CreateVpc"
    case createVpcEndpoint = "CreateVpcEndpoint"
    case createVpcEndpointConnectionNotification = "CreateVpcEndpointConnectionNotification"
    case createVpcEndpointServiceConfiguration = "CreateVpcEndpointServiceConfiguration"
    case createVpcPeeringConnection = "CreateVpcPeeringConnection"
    case createVpnConnection = "CreateVpnConnection"
    case createVpnConnectionRoute = "CreateVpnConnectionRoute"
    case createVpnGateway = "CreateVpnGateway"
    case deleteCarrierGateway = "DeleteCarrierGateway"
    case deleteClientVpnEndpoint = "DeleteClientVpnEndpoint"
    case deleteClientVpnRoute = "DeleteClientVpnRoute"
    case deleteCoipCidr = "DeleteCoipCidr"
    case deleteCoipPool = "DeleteCoipPool"
    case deleteCustomerGateway = "DeleteCustomerGateway"
    case deleteDhcpOptions = "DeleteDhcpOptions"
    case deleteEgressOnlyInternetGateway = "DeleteEgressOnlyInternetGateway"
    case deleteFleets = "DeleteFleets"
    case deleteFlowLogs = "DeleteFlowLogs"
    case deleteFpgaImage = "DeleteFpgaImage"
    case deleteInstanceEventWindow = "DeleteInstanceEventWindow"
    case deleteInternetGateway = "DeleteInternetGateway"
    case deleteIpam = "DeleteIpam"
    case deleteIpamPool = "DeleteIpamPool"
    case deleteIpamScope = "DeleteIpamScope"
    case deleteKeyPair = "DeleteKeyPair"
    case deleteLaunchTemplate = "DeleteLaunchTemplate"
    case deleteLaunchTemplateVersions = "DeleteLaunchTemplateVersions"
    case deleteLocalGatewayRoute = "DeleteLocalGatewayRoute"
    case deleteLocalGatewayRouteTable = "DeleteLocalGatewayRouteTable"
    case deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation = "DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation"
    case deleteLocalGatewayRouteTableVpcAssociation = "DeleteLocalGatewayRouteTableVpcAssociation"
    case deleteManagedPrefixList = "DeleteManagedPrefixList"
    case deleteNatGateway = "DeleteNatGateway"
    case deleteNetworkAcl = "DeleteNetworkAcl"
    case deleteNetworkAclEntry = "DeleteNetworkAclEntry"
    case deleteNetworkInsightsAccessScope = "DeleteNetworkInsightsAccessScope"
    case deleteNetworkInsightsAccessScopeAnalysis = "DeleteNetworkInsightsAccessScopeAnalysis"
    case deleteNetworkInsightsAnalysis = "DeleteNetworkInsightsAnalysis"
    case deleteNetworkInsightsPath = "DeleteNetworkInsightsPath"
    case deleteNetworkInterface = "DeleteNetworkInterface"
    case deleteNetworkInterfacePermission = "DeleteNetworkInterfacePermission"
    case deletePlacementGroup = "DeletePlacementGroup"
    case deletePublicIpv4Pool = "DeletePublicIpv4Pool"
    case deleteQueuedReservedInstances = "DeleteQueuedReservedInstances"
    case deleteRoute = "DeleteRoute"
    case deleteRouteTable = "DeleteRouteTable"
    case deleteSecurityGroup = "DeleteSecurityGroup"
    case deleteSnapshot = "DeleteSnapshot"
    case deleteSpotDatafeedSubscription = "DeleteSpotDatafeedSubscription"
    case deleteSubnet = "DeleteSubnet"
    case deleteSubnetCidrReservation = "DeleteSubnetCidrReservation"
    case deleteTags = "DeleteTags"
    case deleteTrafficMirrorFilter = "DeleteTrafficMirrorFilter"
    case deleteTrafficMirrorFilterRule = "DeleteTrafficMirrorFilterRule"
    case deleteTrafficMirrorSession = "DeleteTrafficMirrorSession"
    case deleteTrafficMirrorTarget = "DeleteTrafficMirrorTarget"
    case deleteTransitGateway = "DeleteTransitGateway"
    case deleteTransitGatewayConnect = "DeleteTransitGatewayConnect"
    case deleteTransitGatewayConnectPeer = "DeleteTransitGatewayConnectPeer"
    case deleteTransitGatewayMulticastDomain = "DeleteTransitGatewayMulticastDomain"
    case deleteTransitGatewayPeeringAttachment = "DeleteTransitGatewayPeeringAttachment"
    case deleteTransitGatewayPolicyTable = "DeleteTransitGatewayPolicyTable"
    case deleteTransitGatewayPrefixListReference = "DeleteTransitGatewayPrefixListReference"
    case deleteTransitGatewayRoute = "DeleteTransitGatewayRoute"
    case deleteTransitGatewayRouteTable = "DeleteTransitGatewayRouteTable"
    case deleteTransitGatewayRouteTableAnnouncement = "DeleteTransitGatewayRouteTableAnnouncement"
    case deleteTransitGatewayVpcAttachment = "DeleteTransitGatewayVpcAttachment"
    case deleteVolume = "DeleteVolume"
    case deleteVpc = "DeleteVpc"
    case deleteVpcEndpointConnectionNotifications = "DeleteVpcEndpointConnectionNotifications"
    case deleteVpcEndpointServiceConfigurations = "DeleteVpcEndpointServiceConfigurations"
    case deleteVpcEndpoints = "DeleteVpcEndpoints"
    case deleteVpcPeeringConnection = "DeleteVpcPeeringConnection"
    case deleteVpnConnection = "DeleteVpnConnection"
    case deleteVpnConnectionRoute = "DeleteVpnConnectionRoute"
    case deleteVpnGateway = "DeleteVpnGateway"
    case deprovisionByoipCidr = "DeprovisionByoipCidr"
    case deprovisionIpamPoolCidr = "DeprovisionIpamPoolCidr"
    case deprovisionPublicIpv4PoolCidr = "DeprovisionPublicIpv4PoolCidr"
    case deregisterImage = "DeregisterImage"
    case deregisterInstanceEventNotificationAttributes = "DeregisterInstanceEventNotificationAttributes"
    case deregisterTransitGatewayMulticastGroupMembers = "DeregisterTransitGatewayMulticastGroupMembers"
    case deregisterTransitGatewayMulticastGroupSources = "DeregisterTransitGatewayMulticastGroupSources"
    case describeAccountAttributes = "DescribeAccountAttributes"
    case describeAddresses = "DescribeAddresses"
    case describeAddressesAttribute = "DescribeAddressesAttribute"
    case describeAggregateIdFormat = "DescribeAggregateIdFormat"
    case describeAvailabilityZones = "DescribeAvailabilityZones"
    case describeBundleTasks = "DescribeBundleTasks"
    case describeByoipCidrs = "DescribeByoipCidrs"
    case describeCapacityReservationFleets = "DescribeCapacityReservationFleets"
    case describeCapacityReservations = "DescribeCapacityReservations"
    case describeCarrierGateways = "DescribeCarrierGateways"
    case describeClassicLinkInstances = "DescribeClassicLinkInstances"
    case describeClientVpnAuthorizationRules = "DescribeClientVpnAuthorizationRules"
    case describeClientVpnConnections = "DescribeClientVpnConnections"
    case describeClientVpnEndpoints = "DescribeClientVpnEndpoints"
    case describeClientVpnRoutes = "DescribeClientVpnRoutes"
    case describeClientVpnTargetNetworks = "DescribeClientVpnTargetNetworks"
    case describeCoipPools = "DescribeCoipPools"
    case describeConversionTasks = "DescribeConversionTasks"
    case describeCustomerGateways = "DescribeCustomerGateways"
    case describeDhcpOptions = "DescribeDhcpOptions"
    case describeEgressOnlyInternetGateways = "DescribeEgressOnlyInternetGateways"
    case describeElasticGpus = "DescribeElasticGpus"
    case describeExportImageTasks = "DescribeExportImageTasks"
    case describeExportTasks = "DescribeExportTasks"
    case describeFastLaunchImages = "DescribeFastLaunchImages"
    case describeFastSnapshotRestores = "DescribeFastSnapshotRestores"
    case describeFleetHistory = "DescribeFleetHistory"
    case describeFleetInstances = "DescribeFleetInstances"
    case describeFleets = "DescribeFleets"
    case describeFlowLogs = "DescribeFlowLogs"
    case describeFpgaImageAttribute = "DescribeFpgaImageAttribute"
    case describeFpgaImages = "DescribeFpgaImages"
    case describeHostReservationOfferings = "DescribeHostReservationOfferings"
    case describeHostReservations = "DescribeHostReservations"
    case describeHosts = "DescribeHosts"
    case describeIamInstanceProfileAssociations = "DescribeIamInstanceProfileAssociations"
    case describeIdFormat = "DescribeIdFormat"
    case describeIdentityIdFormat = "DescribeIdentityIdFormat"
    case describeImageAttribute = "DescribeImageAttribute"
    case describeImages = "DescribeImages"
    case describeImportImageTasks = "DescribeImportImageTasks"
    case describeImportSnapshotTasks = "DescribeImportSnapshotTasks"
    case describeInstanceAttribute = "DescribeInstanceAttribute"
    case describeInstanceCreditSpecifications = "DescribeInstanceCreditSpecifications"
    case describeInstanceEventNotificationAttributes = "DescribeInstanceEventNotificationAttributes"
    case describeInstanceEventWindows = "DescribeInstanceEventWindows"
    case describeInstanceStatus = "DescribeInstanceStatus"
    case describeInstanceTypeOfferings = "DescribeInstanceTypeOfferings"
    case describeInstanceTypes = "DescribeInstanceTypes"
    case describeInstances = "DescribeInstances"
    case describeInternetGateways = "DescribeInternetGateways"
    case describeIpamPools = "DescribeIpamPools"
    case describeIpamScopes = "DescribeIpamScopes"
    case describeIpams = "DescribeIpams"
    case describeIpv6Pools = "DescribeIpv6Pools"
    case describeKeyPairs = "DescribeKeyPairs"
    case describeLaunchTemplateVersions = "DescribeLaunchTemplateVersions"
    case describeLaunchTemplates = "DescribeLaunchTemplates"
    case describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations = "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations"
    case describeLocalGatewayRouteTableVpcAssociations = "DescribeLocalGatewayRouteTableVpcAssociations"
    case describeLocalGatewayRouteTables = "DescribeLocalGatewayRouteTables"
    case describeLocalGatewayVirtualInterfaceGroups = "DescribeLocalGatewayVirtualInterfaceGroups"
    case describeLocalGatewayVirtualInterfaces = "DescribeLocalGatewayVirtualInterfaces"
    case describeLocalGateways = "DescribeLocalGateways"
    case describeManagedPrefixLists = "DescribeManagedPrefixLists"
    case describeMovingAddresses = "DescribeMovingAddresses"
    case describeNatGateways = "DescribeNatGateways"
    case describeNetworkAcls = "DescribeNetworkAcls"
    case describeNetworkInsightsAccessScopeAnalyses = "DescribeNetworkInsightsAccessScopeAnalyses"
    case describeNetworkInsightsAccessScopes = "DescribeNetworkInsightsAccessScopes"
    case describeNetworkInsightsAnalyses = "DescribeNetworkInsightsAnalyses"
    case describeNetworkInsightsPaths = "DescribeNetworkInsightsPaths"
    case describeNetworkInterfaceAttribute = "DescribeNetworkInterfaceAttribute"
    case describeNetworkInterfacePermissions = "DescribeNetworkInterfacePermissions"
    case describeNetworkInterfaces = "DescribeNetworkInterfaces"
    case describePlacementGroups = "DescribePlacementGroups"
    case describePrefixLists = "DescribePrefixLists"
    case describePrincipalIdFormat = "DescribePrincipalIdFormat"
    case describePublicIpv4Pools = "DescribePublicIpv4Pools"
    case describeRegions = "DescribeRegions"
    case describeReplaceRootVolumeTasks = "DescribeReplaceRootVolumeTasks"
    case describeReservedInstances = "DescribeReservedInstances"
    case describeReservedInstancesListings = "DescribeReservedInstancesListings"
    case describeReservedInstancesModifications = "DescribeReservedInstancesModifications"
    case describeReservedInstancesOfferings = "DescribeReservedInstancesOfferings"
    case describeRouteTables = "DescribeRouteTables"
    case describeScheduledInstanceAvailability = "DescribeScheduledInstanceAvailability"
    case describeScheduledInstances = "DescribeScheduledInstances"
    case describeSecurityGroupReferences = "DescribeSecurityGroupReferences"
    case describeSecurityGroupRules = "DescribeSecurityGroupRules"
    case describeSecurityGroups = "DescribeSecurityGroups"
    case describeSnapshotAttribute = "DescribeSnapshotAttribute"
    case describeSnapshotTierStatus = "DescribeSnapshotTierStatus"
    case describeSnapshots = "DescribeSnapshots"
    case describeSpotDatafeedSubscription = "DescribeSpotDatafeedSubscription"
    case describeSpotFleetInstances = "DescribeSpotFleetInstances"
    case describeSpotFleetRequestHistory = "DescribeSpotFleetRequestHistory"
    case describeSpotFleetRequests = "DescribeSpotFleetRequests"
    case describeSpotInstanceRequests = "DescribeSpotInstanceRequests"
    case describeSpotPriceHistory = "DescribeSpotPriceHistory"
    case describeStaleSecurityGroups = "DescribeStaleSecurityGroups"
    case describeStoreImageTasks = "DescribeStoreImageTasks"
    case describeSubnets = "DescribeSubnets"
    case describeTags = "DescribeTags"
    case describeTrafficMirrorFilters = "DescribeTrafficMirrorFilters"
    case describeTrafficMirrorSessions = "DescribeTrafficMirrorSessions"
    case describeTrafficMirrorTargets = "DescribeTrafficMirrorTargets"
    case describeTransitGatewayAttachments = "DescribeTransitGatewayAttachments"
    case describeTransitGatewayConnectPeers = "DescribeTransitGatewayConnectPeers"
    case describeTransitGatewayConnects = "DescribeTransitGatewayConnects"
    case describeTransitGatewayMulticastDomains = "DescribeTransitGatewayMulticastDomains"
    case describeTransitGatewayPeeringAttachments = "DescribeTransitGatewayPeeringAttachments"
    case describeTransitGatewayPolicyTables = "DescribeTransitGatewayPolicyTables"
    case describeTransitGatewayRouteTableAnnouncements = "DescribeTransitGatewayRouteTableAnnouncements"
    case describeTransitGatewayRouteTables = "DescribeTransitGatewayRouteTables"
    case describeTransitGatewayVpcAttachments = "DescribeTransitGatewayVpcAttachments"
    case describeTransitGateways = "DescribeTransitGateways"
    case describeTrunkInterfaceAssociations = "DescribeTrunkInterfaceAssociations"
    case describeVolumeAttribute = "DescribeVolumeAttribute"
    case describeVolumeStatus = "DescribeVolumeStatus"
    case describeVolumes = "DescribeVolumes"
    case describeVolumesModifications = "DescribeVolumesModifications"
    case describeVpcAttribute = "DescribeVpcAttribute"
    case describeVpcClassicLink = "DescribeVpcClassicLink"
    case describeVpcClassicLinkDnsSupport = "DescribeVpcClassicLinkDnsSupport"
    case describeVpcEndpointConnectionNotifications = "DescribeVpcEndpointConnectionNotifications"
    case describeVpcEndpointConnections = "DescribeVpcEndpointConnections"
    case describeVpcEndpointServiceConfigurations = "DescribeVpcEndpointServiceConfigurations"
    case describeVpcEndpointServicePermissions = "DescribeVpcEndpointServicePermissions"
    case describeVpcEndpointServices = "DescribeVpcEndpointServices"
    case describeVpcEndpoints = "DescribeVpcEndpoints"
    case describeVpcPeeringConnections = "DescribeVpcPeeringConnections"
    case describeVpcs = "DescribeVpcs"
    case describeVpnConnections = "DescribeVpnConnections"
    case describeVpnGateways = "DescribeVpnGateways"
    case detachClassicLinkVpc = "DetachClassicLinkVpc"
    case detachInternetGateway = "DetachInternetGateway"
    case detachNetworkInterface = "DetachNetworkInterface"
    case detachVolume = "DetachVolume"
    case detachVpnGateway = "DetachVpnGateway"
    case disableEbsEncryptionByDefault = "DisableEbsEncryptionByDefault"
    case disableFastLaunch = "DisableFastLaunch"
    case disableFastSnapshotRestores = "DisableFastSnapshotRestores"
    case disableImageDeprecation = "DisableImageDeprecation"
    case disableIpamOrganizationAdminAccount = "DisableIpamOrganizationAdminAccount"
    case disableSerialConsoleAccess = "DisableSerialConsoleAccess"
    case disableTransitGatewayRouteTablePropagation = "DisableTransitGatewayRouteTablePropagation"
    case disableVgwRoutePropagation = "DisableVgwRoutePropagation"
    case disableVpcClassicLink = "DisableVpcClassicLink"
    case disableVpcClassicLinkDnsSupport = "DisableVpcClassicLinkDnsSupport"
    case disassociateAddress = "DisassociateAddress"
    case disassociateClientVpnTargetNetwork = "DisassociateClientVpnTargetNetwork"
    case disassociateEnclaveCertificateIamRole = "DisassociateEnclaveCertificateIamRole"
    case disassociateIamInstanceProfile = "DisassociateIamInstanceProfile"
    case disassociateInstanceEventWindow = "DisassociateInstanceEventWindow"
    case disassociateRouteTable = "DisassociateRouteTable"
    case disassociateSubnetCidrBlock = "DisassociateSubnetCidrBlock"
    case disassociateTransitGatewayMulticastDomain = "DisassociateTransitGatewayMulticastDomain"
    case disassociateTransitGatewayPolicyTable = "DisassociateTransitGatewayPolicyTable"
    case disassociateTransitGatewayRouteTable = "DisassociateTransitGatewayRouteTable"
    case disassociateTrunkInterface = "DisassociateTrunkInterface"
    case disassociateVpcCidrBlock = "DisassociateVpcCidrBlock"
    case enableEbsEncryptionByDefault = "EnableEbsEncryptionByDefault"
    case enableFastLaunch = "EnableFastLaunch"
    case enableFastSnapshotRestores = "EnableFastSnapshotRestores"
    case enableImageDeprecation = "EnableImageDeprecation"
    case enableIpamOrganizationAdminAccount = "EnableIpamOrganizationAdminAccount"
    case enableSerialConsoleAccess = "EnableSerialConsoleAccess"
    case enableTransitGatewayRouteTablePropagation = "EnableTransitGatewayRouteTablePropagation"
    case enableVgwRoutePropagation = "EnableVgwRoutePropagation"
    case enableVolumeIO = "EnableVolumeIO"
    case enableVpcClassicLink = "EnableVpcClassicLink"
    case enableVpcClassicLinkDnsSupport = "EnableVpcClassicLinkDnsSupport"
    case exportClientVpnClientCertificateRevocationList = "ExportClientVpnClientCertificateRevocationList"
    case exportClientVpnClientConfiguration = "ExportClientVpnClientConfiguration"
    case exportImage = "ExportImage"
    case exportTransitGatewayRoutes = "ExportTransitGatewayRoutes"
    case getAssociatedEnclaveCertificateIamRoles = "GetAssociatedEnclaveCertificateIamRoles"
    case getAssociatedIpv6PoolCidrs = "GetAssociatedIpv6PoolCidrs"
    case getCapacityReservationUsage = "GetCapacityReservationUsage"
    case getCoipPoolUsage = "GetCoipPoolUsage"
    case getConsoleOutput = "GetConsoleOutput"
    case getConsoleScreenshot = "GetConsoleScreenshot"
    case getDefaultCreditSpecification = "GetDefaultCreditSpecification"
    case getEbsDefaultKmsKeyId = "GetEbsDefaultKmsKeyId"
    case getEbsEncryptionByDefault = "GetEbsEncryptionByDefault"
    case getFlowLogsIntegrationTemplate = "GetFlowLogsIntegrationTemplate"
    case getGroupsForCapacityReservation = "GetGroupsForCapacityReservation"
    case getHostReservationPurchasePreview = "GetHostReservationPurchasePreview"
    case getInstanceTypesFromInstanceRequirements = "GetInstanceTypesFromInstanceRequirements"
    case getInstanceUefiData = "GetInstanceUefiData"
    case getIpamAddressHistory = "GetIpamAddressHistory"
    case getIpamPoolAllocations = "GetIpamPoolAllocations"
    case getIpamPoolCidrs = "GetIpamPoolCidrs"
    case getIpamResourceCidrs = "GetIpamResourceCidrs"
    case getLaunchTemplateData = "GetLaunchTemplateData"
    case getManagedPrefixListAssociations = "GetManagedPrefixListAssociations"
    case getManagedPrefixListEntries = "GetManagedPrefixListEntries"
    case getNetworkInsightsAccessScopeAnalysisFindings = "GetNetworkInsightsAccessScopeAnalysisFindings"
    case getNetworkInsightsAccessScopeContent = "GetNetworkInsightsAccessScopeContent"
    case getPasswordData = "GetPasswordData"
    case getReservedInstancesExchangeQuote = "GetReservedInstancesExchangeQuote"
    case getSerialConsoleAccessStatus = "GetSerialConsoleAccessStatus"
    case getSpotPlacementScores = "GetSpotPlacementScores"
    case getSubnetCidrReservations = "GetSubnetCidrReservations"
    case getTransitGatewayAttachmentPropagations = "GetTransitGatewayAttachmentPropagations"
    case getTransitGatewayMulticastDomainAssociations = "GetTransitGatewayMulticastDomainAssociations"
    case getTransitGatewayPolicyTableAssociations = "GetTransitGatewayPolicyTableAssociations"
    case getTransitGatewayPolicyTableEntries = "GetTransitGatewayPolicyTableEntries"
    case getTransitGatewayPrefixListReferences = "GetTransitGatewayPrefixListReferences"
    case getTransitGatewayRouteTableAssociations = "GetTransitGatewayRouteTableAssociations"
    case getTransitGatewayRouteTablePropagations = "GetTransitGatewayRouteTablePropagations"
    case getVpnConnectionDeviceSampleConfiguration = "GetVpnConnectionDeviceSampleConfiguration"
    case getVpnConnectionDeviceTypes = "GetVpnConnectionDeviceTypes"
    case importClientVpnClientCertificateRevocationList = "ImportClientVpnClientCertificateRevocationList"
    case importImage = "ImportImage"
    case importInstance = "ImportInstance"
    case importKeyPair = "ImportKeyPair"
    case importSnapshot = "ImportSnapshot"
    case importVolume = "ImportVolume"
    case listImagesInRecycleBin = "ListImagesInRecycleBin"
    case listSnapshotsInRecycleBin = "ListSnapshotsInRecycleBin"
    case modifyAddressAttribute = "ModifyAddressAttribute"
    case modifyAvailabilityZoneGroup = "ModifyAvailabilityZoneGroup"
    case modifyCapacityReservation = "ModifyCapacityReservation"
    case modifyCapacityReservationFleet = "ModifyCapacityReservationFleet"
    case modifyClientVpnEndpoint = "ModifyClientVpnEndpoint"
    case modifyDefaultCreditSpecification = "ModifyDefaultCreditSpecification"
    case modifyEbsDefaultKmsKeyId = "ModifyEbsDefaultKmsKeyId"
    case modifyFleet = "ModifyFleet"
    case modifyFpgaImageAttribute = "ModifyFpgaImageAttribute"
    case modifyHosts = "ModifyHosts"
    case modifyIdFormat = "ModifyIdFormat"
    case modifyIdentityIdFormat = "ModifyIdentityIdFormat"
    case modifyImageAttribute = "ModifyImageAttribute"
    case modifyInstanceAttribute = "ModifyInstanceAttribute"
    case modifyInstanceCapacityReservationAttributes = "ModifyInstanceCapacityReservationAttributes"
    case modifyInstanceCreditSpecification = "ModifyInstanceCreditSpecification"
    case modifyInstanceEventStartTime = "ModifyInstanceEventStartTime"
    case modifyInstanceEventWindow = "ModifyInstanceEventWindow"
    case modifyInstanceMaintenanceOptions = "ModifyInstanceMaintenanceOptions"
    case modifyInstanceMetadataOptions = "ModifyInstanceMetadataOptions"
    case modifyInstancePlacement = "ModifyInstancePlacement"
    case modifyIpam = "ModifyIpam"
    case modifyIpamPool = "ModifyIpamPool"
    case modifyIpamResourceCidr = "ModifyIpamResourceCidr"
    case modifyIpamScope = "ModifyIpamScope"
    case modifyLaunchTemplate = "ModifyLaunchTemplate"
    case modifyLocalGatewayRoute = "ModifyLocalGatewayRoute"
    case modifyManagedPrefixList = "ModifyManagedPrefixList"
    case modifyNetworkInterfaceAttribute = "ModifyNetworkInterfaceAttribute"
    case modifyPrivateDnsNameOptions = "ModifyPrivateDnsNameOptions"
    case modifyReservedInstances = "ModifyReservedInstances"
    case modifySecurityGroupRules = "ModifySecurityGroupRules"
    case modifySnapshotAttribute = "ModifySnapshotAttribute"
    case modifySnapshotTier = "ModifySnapshotTier"
    case modifySpotFleetRequest = "ModifySpotFleetRequest"
    case modifySubnetAttribute = "ModifySubnetAttribute"
    case modifyTrafficMirrorFilterNetworkServices = "ModifyTrafficMirrorFilterNetworkServices"
    case modifyTrafficMirrorFilterRule = "ModifyTrafficMirrorFilterRule"
    case modifyTrafficMirrorSession = "ModifyTrafficMirrorSession"
    case modifyTransitGateway = "ModifyTransitGateway"
    case modifyTransitGatewayPrefixListReference = "ModifyTransitGatewayPrefixListReference"
    case modifyTransitGatewayVpcAttachment = "ModifyTransitGatewayVpcAttachment"
    case modifyVolume = "ModifyVolume"
    case modifyVolumeAttribute = "ModifyVolumeAttribute"
    case modifyVpcAttribute = "ModifyVpcAttribute"
    case modifyVpcEndpoint = "ModifyVpcEndpoint"
    case modifyVpcEndpointConnectionNotification = "ModifyVpcEndpointConnectionNotification"
    case modifyVpcEndpointServiceConfiguration = "ModifyVpcEndpointServiceConfiguration"
    case modifyVpcEndpointServicePayerResponsibility = "ModifyVpcEndpointServicePayerResponsibility"
    case modifyVpcEndpointServicePermissions = "ModifyVpcEndpointServicePermissions"
    case modifyVpcPeeringConnectionOptions = "ModifyVpcPeeringConnectionOptions"
    case modifyVpcTenancy = "ModifyVpcTenancy"
    case modifyVpnConnection = "ModifyVpnConnection"
    case modifyVpnConnectionOptions = "ModifyVpnConnectionOptions"
    case modifyVpnTunnelCertificate = "ModifyVpnTunnelCertificate"
    case modifyVpnTunnelOptions = "ModifyVpnTunnelOptions"
    case monitorInstances = "MonitorInstances"
    case moveAddressToVpc = "MoveAddressToVpc"
    case moveByoipCidrToIpam = "MoveByoipCidrToIpam"
    case provisionByoipCidr = "ProvisionByoipCidr"
    case provisionIpamPoolCidr = "ProvisionIpamPoolCidr"
    case provisionPublicIpv4PoolCidr = "ProvisionPublicIpv4PoolCidr"
    case purchaseHostReservation = "PurchaseHostReservation"
    case purchaseReservedInstancesOffering = "PurchaseReservedInstancesOffering"
    case purchaseScheduledInstances = "PurchaseScheduledInstances"
    case rebootInstances = "RebootInstances"
    case registerImage = "RegisterImage"
    case registerInstanceEventNotificationAttributes = "RegisterInstanceEventNotificationAttributes"
    case registerTransitGatewayMulticastGroupMembers = "RegisterTransitGatewayMulticastGroupMembers"
    case registerTransitGatewayMulticastGroupSources = "RegisterTransitGatewayMulticastGroupSources"
    case rejectTransitGatewayMulticastDomainAssociations = "RejectTransitGatewayMulticastDomainAssociations"
    case rejectTransitGatewayPeeringAttachment = "RejectTransitGatewayPeeringAttachment"
    case rejectTransitGatewayVpcAttachment = "RejectTransitGatewayVpcAttachment"
    case rejectVpcEndpointConnections = "RejectVpcEndpointConnections"
    case rejectVpcPeeringConnection = "RejectVpcPeeringConnection"
    case releaseAddress = "ReleaseAddress"
    case releaseHosts = "ReleaseHosts"
    case releaseIpamPoolAllocation = "ReleaseIpamPoolAllocation"
    case replaceIamInstanceProfileAssociation = "ReplaceIamInstanceProfileAssociation"
    case replaceNetworkAclAssociation = "ReplaceNetworkAclAssociation"
    case replaceNetworkAclEntry = "ReplaceNetworkAclEntry"
    case replaceRoute = "ReplaceRoute"
    case replaceRouteTableAssociation = "ReplaceRouteTableAssociation"
    case replaceTransitGatewayRoute = "ReplaceTransitGatewayRoute"
    case reportInstanceStatus = "ReportInstanceStatus"
    case requestSpotFleet = "RequestSpotFleet"
    case requestSpotInstances = "RequestSpotInstances"
    case resetAddressAttribute = "ResetAddressAttribute"
    case resetEbsDefaultKmsKeyId = "ResetEbsDefaultKmsKeyId"
    case resetFpgaImageAttribute = "ResetFpgaImageAttribute"
    case resetImageAttribute = "ResetImageAttribute"
    case resetInstanceAttribute = "ResetInstanceAttribute"
    case resetNetworkInterfaceAttribute = "ResetNetworkInterfaceAttribute"
    case resetSnapshotAttribute = "ResetSnapshotAttribute"
    case restoreAddressToClassic = "RestoreAddressToClassic"
    case restoreImageFromRecycleBin = "RestoreImageFromRecycleBin"
    case restoreManagedPrefixListVersion = "RestoreManagedPrefixListVersion"
    case restoreSnapshotFromRecycleBin = "RestoreSnapshotFromRecycleBin"
    case restoreSnapshotTier = "RestoreSnapshotTier"
    case revokeClientVpnIngress = "RevokeClientVpnIngress"
    case revokeSecurityGroupEgress = "RevokeSecurityGroupEgress"
    case revokeSecurityGroupIngress = "RevokeSecurityGroupIngress"
    case runInstances = "RunInstances"
    case runScheduledInstances = "RunScheduledInstances"
    case searchLocalGatewayRoutes = "SearchLocalGatewayRoutes"
    case searchTransitGatewayMulticastGroups = "SearchTransitGatewayMulticastGroups"
    case searchTransitGatewayRoutes = "SearchTransitGatewayRoutes"
    case sendDiagnosticInterrupt = "SendDiagnosticInterrupt"
    case startInstances = "StartInstances"
    case startNetworkInsightsAccessScopeAnalysis = "StartNetworkInsightsAccessScopeAnalysis"
    case startNetworkInsightsAnalysis = "StartNetworkInsightsAnalysis"
    case startVpcEndpointServicePrivateDnsVerification = "StartVpcEndpointServicePrivateDnsVerification"
    case stopInstances = "StopInstances"
    case terminateClientVpnConnections = "TerminateClientVpnConnections"
    case terminateInstances = "TerminateInstances"
    case unassignIpv6Addresses = "UnassignIpv6Addresses"
    case unassignPrivateIpAddresses = "UnassignPrivateIpAddresses"
    case unmonitorInstances = "UnmonitorInstances"
    case updateSecurityGroupRuleDescriptionsEgress = "UpdateSecurityGroupRuleDescriptionsEgress"
    case updateSecurityGroupRuleDescriptionsIngress = "UpdateSecurityGroupRuleDescriptionsIngress"
    case withdrawByoipCidr = "WithdrawByoipCidr"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .acceptReservedInstancesExchangeQuote:
            return "/"
        case .acceptTransitGatewayMulticastDomainAssociations:
            return "/"
        case .acceptTransitGatewayPeeringAttachment:
            return "/"
        case .acceptTransitGatewayVpcAttachment:
            return "/"
        case .acceptVpcEndpointConnections:
            return "/"
        case .acceptVpcPeeringConnection:
            return "/"
        case .advertiseByoipCidr:
            return "/"
        case .allocateAddress:
            return "/"
        case .allocateHosts:
            return "/"
        case .allocateIpamPoolCidr:
            return "/"
        case .applySecurityGroupsToClientVpnTargetNetwork:
            return "/"
        case .assignIpv6Addresses:
            return "/"
        case .assignPrivateIpAddresses:
            return "/"
        case .associateAddress:
            return "/"
        case .associateClientVpnTargetNetwork:
            return "/"
        case .associateDhcpOptions:
            return "/"
        case .associateEnclaveCertificateIamRole:
            return "/"
        case .associateIamInstanceProfile:
            return "/"
        case .associateInstanceEventWindow:
            return "/"
        case .associateRouteTable:
            return "/"
        case .associateSubnetCidrBlock:
            return "/"
        case .associateTransitGatewayMulticastDomain:
            return "/"
        case .associateTransitGatewayPolicyTable:
            return "/"
        case .associateTransitGatewayRouteTable:
            return "/"
        case .associateTrunkInterface:
            return "/"
        case .associateVpcCidrBlock:
            return "/"
        case .attachClassicLinkVpc:
            return "/"
        case .attachInternetGateway:
            return "/"
        case .attachNetworkInterface:
            return "/"
        case .attachVolume:
            return "/"
        case .attachVpnGateway:
            return "/"
        case .authorizeClientVpnIngress:
            return "/"
        case .authorizeSecurityGroupEgress:
            return "/"
        case .authorizeSecurityGroupIngress:
            return "/"
        case .bundleInstance:
            return "/"
        case .cancelBundleTask:
            return "/"
        case .cancelCapacityReservation:
            return "/"
        case .cancelCapacityReservationFleets:
            return "/"
        case .cancelConversionTask:
            return "/"
        case .cancelExportTask:
            return "/"
        case .cancelImportTask:
            return "/"
        case .cancelReservedInstancesListing:
            return "/"
        case .cancelSpotFleetRequests:
            return "/"
        case .cancelSpotInstanceRequests:
            return "/"
        case .confirmProductInstance:
            return "/"
        case .copyFpgaImage:
            return "/"
        case .copyImage:
            return "/"
        case .copySnapshot:
            return "/"
        case .createCapacityReservation:
            return "/"
        case .createCapacityReservationFleet:
            return "/"
        case .createCarrierGateway:
            return "/"
        case .createClientVpnEndpoint:
            return "/"
        case .createClientVpnRoute:
            return "/"
        case .createCoipCidr:
            return "/"
        case .createCoipPool:
            return "/"
        case .createCustomerGateway:
            return "/"
        case .createDefaultSubnet:
            return "/"
        case .createDefaultVpc:
            return "/"
        case .createDhcpOptions:
            return "/"
        case .createEgressOnlyInternetGateway:
            return "/"
        case .createFleet:
            return "/"
        case .createFlowLogs:
            return "/"
        case .createFpgaImage:
            return "/"
        case .createImage:
            return "/"
        case .createInstanceEventWindow:
            return "/"
        case .createInstanceExportTask:
            return "/"
        case .createInternetGateway:
            return "/"
        case .createIpam:
            return "/"
        case .createIpamPool:
            return "/"
        case .createIpamScope:
            return "/"
        case .createKeyPair:
            return "/"
        case .createLaunchTemplate:
            return "/"
        case .createLaunchTemplateVersion:
            return "/"
        case .createLocalGatewayRoute:
            return "/"
        case .createLocalGatewayRouteTable:
            return "/"
        case .createLocalGatewayRouteTableVirtualInterfaceGroupAssociation:
            return "/"
        case .createLocalGatewayRouteTableVpcAssociation:
            return "/"
        case .createManagedPrefixList:
            return "/"
        case .createNatGateway:
            return "/"
        case .createNetworkAcl:
            return "/"
        case .createNetworkAclEntry:
            return "/"
        case .createNetworkInsightsAccessScope:
            return "/"
        case .createNetworkInsightsPath:
            return "/"
        case .createNetworkInterface:
            return "/"
        case .createNetworkInterfacePermission:
            return "/"
        case .createPlacementGroup:
            return "/"
        case .createPublicIpv4Pool:
            return "/"
        case .createReplaceRootVolumeTask:
            return "/"
        case .createReservedInstancesListing:
            return "/"
        case .createRestoreImageTask:
            return "/"
        case .createRoute:
            return "/"
        case .createRouteTable:
            return "/"
        case .createSecurityGroup:
            return "/"
        case .createSnapshot:
            return "/"
        case .createSnapshots:
            return "/"
        case .createSpotDatafeedSubscription:
            return "/"
        case .createStoreImageTask:
            return "/"
        case .createSubnet:
            return "/"
        case .createSubnetCidrReservation:
            return "/"
        case .createTags:
            return "/"
        case .createTrafficMirrorFilter:
            return "/"
        case .createTrafficMirrorFilterRule:
            return "/"
        case .createTrafficMirrorSession:
            return "/"
        case .createTrafficMirrorTarget:
            return "/"
        case .createTransitGateway:
            return "/"
        case .createTransitGatewayConnect:
            return "/"
        case .createTransitGatewayConnectPeer:
            return "/"
        case .createTransitGatewayMulticastDomain:
            return "/"
        case .createTransitGatewayPeeringAttachment:
            return "/"
        case .createTransitGatewayPolicyTable:
            return "/"
        case .createTransitGatewayPrefixListReference:
            return "/"
        case .createTransitGatewayRoute:
            return "/"
        case .createTransitGatewayRouteTable:
            return "/"
        case .createTransitGatewayRouteTableAnnouncement:
            return "/"
        case .createTransitGatewayVpcAttachment:
            return "/"
        case .createVolume:
            return "/"
        case .createVpc:
            return "/"
        case .createVpcEndpoint:
            return "/"
        case .createVpcEndpointConnectionNotification:
            return "/"
        case .createVpcEndpointServiceConfiguration:
            return "/"
        case .createVpcPeeringConnection:
            return "/"
        case .createVpnConnection:
            return "/"
        case .createVpnConnectionRoute:
            return "/"
        case .createVpnGateway:
            return "/"
        case .deleteCarrierGateway:
            return "/"
        case .deleteClientVpnEndpoint:
            return "/"
        case .deleteClientVpnRoute:
            return "/"
        case .deleteCoipCidr:
            return "/"
        case .deleteCoipPool:
            return "/"
        case .deleteCustomerGateway:
            return "/"
        case .deleteDhcpOptions:
            return "/"
        case .deleteEgressOnlyInternetGateway:
            return "/"
        case .deleteFleets:
            return "/"
        case .deleteFlowLogs:
            return "/"
        case .deleteFpgaImage:
            return "/"
        case .deleteInstanceEventWindow:
            return "/"
        case .deleteInternetGateway:
            return "/"
        case .deleteIpam:
            return "/"
        case .deleteIpamPool:
            return "/"
        case .deleteIpamScope:
            return "/"
        case .deleteKeyPair:
            return "/"
        case .deleteLaunchTemplate:
            return "/"
        case .deleteLaunchTemplateVersions:
            return "/"
        case .deleteLocalGatewayRoute:
            return "/"
        case .deleteLocalGatewayRouteTable:
            return "/"
        case .deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation:
            return "/"
        case .deleteLocalGatewayRouteTableVpcAssociation:
            return "/"
        case .deleteManagedPrefixList:
            return "/"
        case .deleteNatGateway:
            return "/"
        case .deleteNetworkAcl:
            return "/"
        case .deleteNetworkAclEntry:
            return "/"
        case .deleteNetworkInsightsAccessScope:
            return "/"
        case .deleteNetworkInsightsAccessScopeAnalysis:
            return "/"
        case .deleteNetworkInsightsAnalysis:
            return "/"
        case .deleteNetworkInsightsPath:
            return "/"
        case .deleteNetworkInterface:
            return "/"
        case .deleteNetworkInterfacePermission:
            return "/"
        case .deletePlacementGroup:
            return "/"
        case .deletePublicIpv4Pool:
            return "/"
        case .deleteQueuedReservedInstances:
            return "/"
        case .deleteRoute:
            return "/"
        case .deleteRouteTable:
            return "/"
        case .deleteSecurityGroup:
            return "/"
        case .deleteSnapshot:
            return "/"
        case .deleteSpotDatafeedSubscription:
            return "/"
        case .deleteSubnet:
            return "/"
        case .deleteSubnetCidrReservation:
            return "/"
        case .deleteTags:
            return "/"
        case .deleteTrafficMirrorFilter:
            return "/"
        case .deleteTrafficMirrorFilterRule:
            return "/"
        case .deleteTrafficMirrorSession:
            return "/"
        case .deleteTrafficMirrorTarget:
            return "/"
        case .deleteTransitGateway:
            return "/"
        case .deleteTransitGatewayConnect:
            return "/"
        case .deleteTransitGatewayConnectPeer:
            return "/"
        case .deleteTransitGatewayMulticastDomain:
            return "/"
        case .deleteTransitGatewayPeeringAttachment:
            return "/"
        case .deleteTransitGatewayPolicyTable:
            return "/"
        case .deleteTransitGatewayPrefixListReference:
            return "/"
        case .deleteTransitGatewayRoute:
            return "/"
        case .deleteTransitGatewayRouteTable:
            return "/"
        case .deleteTransitGatewayRouteTableAnnouncement:
            return "/"
        case .deleteTransitGatewayVpcAttachment:
            return "/"
        case .deleteVolume:
            return "/"
        case .deleteVpc:
            return "/"
        case .deleteVpcEndpointConnectionNotifications:
            return "/"
        case .deleteVpcEndpointServiceConfigurations:
            return "/"
        case .deleteVpcEndpoints:
            return "/"
        case .deleteVpcPeeringConnection:
            return "/"
        case .deleteVpnConnection:
            return "/"
        case .deleteVpnConnectionRoute:
            return "/"
        case .deleteVpnGateway:
            return "/"
        case .deprovisionByoipCidr:
            return "/"
        case .deprovisionIpamPoolCidr:
            return "/"
        case .deprovisionPublicIpv4PoolCidr:
            return "/"
        case .deregisterImage:
            return "/"
        case .deregisterInstanceEventNotificationAttributes:
            return "/"
        case .deregisterTransitGatewayMulticastGroupMembers:
            return "/"
        case .deregisterTransitGatewayMulticastGroupSources:
            return "/"
        case .describeAccountAttributes:
            return "/"
        case .describeAddresses:
            return "/"
        case .describeAddressesAttribute:
            return "/"
        case .describeAggregateIdFormat:
            return "/"
        case .describeAvailabilityZones:
            return "/"
        case .describeBundleTasks:
            return "/"
        case .describeByoipCidrs:
            return "/"
        case .describeCapacityReservationFleets:
            return "/"
        case .describeCapacityReservations:
            return "/"
        case .describeCarrierGateways:
            return "/"
        case .describeClassicLinkInstances:
            return "/"
        case .describeClientVpnAuthorizationRules:
            return "/"
        case .describeClientVpnConnections:
            return "/"
        case .describeClientVpnEndpoints:
            return "/"
        case .describeClientVpnRoutes:
            return "/"
        case .describeClientVpnTargetNetworks:
            return "/"
        case .describeCoipPools:
            return "/"
        case .describeConversionTasks:
            return "/"
        case .describeCustomerGateways:
            return "/"
        case .describeDhcpOptions:
            return "/"
        case .describeEgressOnlyInternetGateways:
            return "/"
        case .describeElasticGpus:
            return "/"
        case .describeExportImageTasks:
            return "/"
        case .describeExportTasks:
            return "/"
        case .describeFastLaunchImages:
            return "/"
        case .describeFastSnapshotRestores:
            return "/"
        case .describeFleetHistory:
            return "/"
        case .describeFleetInstances:
            return "/"
        case .describeFleets:
            return "/"
        case .describeFlowLogs:
            return "/"
        case .describeFpgaImageAttribute:
            return "/"
        case .describeFpgaImages:
            return "/"
        case .describeHostReservationOfferings:
            return "/"
        case .describeHostReservations:
            return "/"
        case .describeHosts:
            return "/"
        case .describeIamInstanceProfileAssociations:
            return "/"
        case .describeIdFormat:
            return "/"
        case .describeIdentityIdFormat:
            return "/"
        case .describeImageAttribute:
            return "/"
        case .describeImages:
            return "/"
        case .describeImportImageTasks:
            return "/"
        case .describeImportSnapshotTasks:
            return "/"
        case .describeInstanceAttribute:
            return "/"
        case .describeInstanceCreditSpecifications:
            return "/"
        case .describeInstanceEventNotificationAttributes:
            return "/"
        case .describeInstanceEventWindows:
            return "/"
        case .describeInstanceStatus:
            return "/"
        case .describeInstanceTypeOfferings:
            return "/"
        case .describeInstanceTypes:
            return "/"
        case .describeInstances:
            return "/"
        case .describeInternetGateways:
            return "/"
        case .describeIpamPools:
            return "/"
        case .describeIpamScopes:
            return "/"
        case .describeIpams:
            return "/"
        case .describeIpv6Pools:
            return "/"
        case .describeKeyPairs:
            return "/"
        case .describeLaunchTemplateVersions:
            return "/"
        case .describeLaunchTemplates:
            return "/"
        case .describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations:
            return "/"
        case .describeLocalGatewayRouteTableVpcAssociations:
            return "/"
        case .describeLocalGatewayRouteTables:
            return "/"
        case .describeLocalGatewayVirtualInterfaceGroups:
            return "/"
        case .describeLocalGatewayVirtualInterfaces:
            return "/"
        case .describeLocalGateways:
            return "/"
        case .describeManagedPrefixLists:
            return "/"
        case .describeMovingAddresses:
            return "/"
        case .describeNatGateways:
            return "/"
        case .describeNetworkAcls:
            return "/"
        case .describeNetworkInsightsAccessScopeAnalyses:
            return "/"
        case .describeNetworkInsightsAccessScopes:
            return "/"
        case .describeNetworkInsightsAnalyses:
            return "/"
        case .describeNetworkInsightsPaths:
            return "/"
        case .describeNetworkInterfaceAttribute:
            return "/"
        case .describeNetworkInterfacePermissions:
            return "/"
        case .describeNetworkInterfaces:
            return "/"
        case .describePlacementGroups:
            return "/"
        case .describePrefixLists:
            return "/"
        case .describePrincipalIdFormat:
            return "/"
        case .describePublicIpv4Pools:
            return "/"
        case .describeRegions:
            return "/"
        case .describeReplaceRootVolumeTasks:
            return "/"
        case .describeReservedInstances:
            return "/"
        case .describeReservedInstancesListings:
            return "/"
        case .describeReservedInstancesModifications:
            return "/"
        case .describeReservedInstancesOfferings:
            return "/"
        case .describeRouteTables:
            return "/"
        case .describeScheduledInstanceAvailability:
            return "/"
        case .describeScheduledInstances:
            return "/"
        case .describeSecurityGroupReferences:
            return "/"
        case .describeSecurityGroupRules:
            return "/"
        case .describeSecurityGroups:
            return "/"
        case .describeSnapshotAttribute:
            return "/"
        case .describeSnapshotTierStatus:
            return "/"
        case .describeSnapshots:
            return "/"
        case .describeSpotDatafeedSubscription:
            return "/"
        case .describeSpotFleetInstances:
            return "/"
        case .describeSpotFleetRequestHistory:
            return "/"
        case .describeSpotFleetRequests:
            return "/"
        case .describeSpotInstanceRequests:
            return "/"
        case .describeSpotPriceHistory:
            return "/"
        case .describeStaleSecurityGroups:
            return "/"
        case .describeStoreImageTasks:
            return "/"
        case .describeSubnets:
            return "/"
        case .describeTags:
            return "/"
        case .describeTrafficMirrorFilters:
            return "/"
        case .describeTrafficMirrorSessions:
            return "/"
        case .describeTrafficMirrorTargets:
            return "/"
        case .describeTransitGatewayAttachments:
            return "/"
        case .describeTransitGatewayConnectPeers:
            return "/"
        case .describeTransitGatewayConnects:
            return "/"
        case .describeTransitGatewayMulticastDomains:
            return "/"
        case .describeTransitGatewayPeeringAttachments:
            return "/"
        case .describeTransitGatewayPolicyTables:
            return "/"
        case .describeTransitGatewayRouteTableAnnouncements:
            return "/"
        case .describeTransitGatewayRouteTables:
            return "/"
        case .describeTransitGatewayVpcAttachments:
            return "/"
        case .describeTransitGateways:
            return "/"
        case .describeTrunkInterfaceAssociations:
            return "/"
        case .describeVolumeAttribute:
            return "/"
        case .describeVolumeStatus:
            return "/"
        case .describeVolumes:
            return "/"
        case .describeVolumesModifications:
            return "/"
        case .describeVpcAttribute:
            return "/"
        case .describeVpcClassicLink:
            return "/"
        case .describeVpcClassicLinkDnsSupport:
            return "/"
        case .describeVpcEndpointConnectionNotifications:
            return "/"
        case .describeVpcEndpointConnections:
            return "/"
        case .describeVpcEndpointServiceConfigurations:
            return "/"
        case .describeVpcEndpointServicePermissions:
            return "/"
        case .describeVpcEndpointServices:
            return "/"
        case .describeVpcEndpoints:
            return "/"
        case .describeVpcPeeringConnections:
            return "/"
        case .describeVpcs:
            return "/"
        case .describeVpnConnections:
            return "/"
        case .describeVpnGateways:
            return "/"
        case .detachClassicLinkVpc:
            return "/"
        case .detachInternetGateway:
            return "/"
        case .detachNetworkInterface:
            return "/"
        case .detachVolume:
            return "/"
        case .detachVpnGateway:
            return "/"
        case .disableEbsEncryptionByDefault:
            return "/"
        case .disableFastLaunch:
            return "/"
        case .disableFastSnapshotRestores:
            return "/"
        case .disableImageDeprecation:
            return "/"
        case .disableIpamOrganizationAdminAccount:
            return "/"
        case .disableSerialConsoleAccess:
            return "/"
        case .disableTransitGatewayRouteTablePropagation:
            return "/"
        case .disableVgwRoutePropagation:
            return "/"
        case .disableVpcClassicLink:
            return "/"
        case .disableVpcClassicLinkDnsSupport:
            return "/"
        case .disassociateAddress:
            return "/"
        case .disassociateClientVpnTargetNetwork:
            return "/"
        case .disassociateEnclaveCertificateIamRole:
            return "/"
        case .disassociateIamInstanceProfile:
            return "/"
        case .disassociateInstanceEventWindow:
            return "/"
        case .disassociateRouteTable:
            return "/"
        case .disassociateSubnetCidrBlock:
            return "/"
        case .disassociateTransitGatewayMulticastDomain:
            return "/"
        case .disassociateTransitGatewayPolicyTable:
            return "/"
        case .disassociateTransitGatewayRouteTable:
            return "/"
        case .disassociateTrunkInterface:
            return "/"
        case .disassociateVpcCidrBlock:
            return "/"
        case .enableEbsEncryptionByDefault:
            return "/"
        case .enableFastLaunch:
            return "/"
        case .enableFastSnapshotRestores:
            return "/"
        case .enableImageDeprecation:
            return "/"
        case .enableIpamOrganizationAdminAccount:
            return "/"
        case .enableSerialConsoleAccess:
            return "/"
        case .enableTransitGatewayRouteTablePropagation:
            return "/"
        case .enableVgwRoutePropagation:
            return "/"
        case .enableVolumeIO:
            return "/"
        case .enableVpcClassicLink:
            return "/"
        case .enableVpcClassicLinkDnsSupport:
            return "/"
        case .exportClientVpnClientCertificateRevocationList:
            return "/"
        case .exportClientVpnClientConfiguration:
            return "/"
        case .exportImage:
            return "/"
        case .exportTransitGatewayRoutes:
            return "/"
        case .getAssociatedEnclaveCertificateIamRoles:
            return "/"
        case .getAssociatedIpv6PoolCidrs:
            return "/"
        case .getCapacityReservationUsage:
            return "/"
        case .getCoipPoolUsage:
            return "/"
        case .getConsoleOutput:
            return "/"
        case .getConsoleScreenshot:
            return "/"
        case .getDefaultCreditSpecification:
            return "/"
        case .getEbsDefaultKmsKeyId:
            return "/"
        case .getEbsEncryptionByDefault:
            return "/"
        case .getFlowLogsIntegrationTemplate:
            return "/"
        case .getGroupsForCapacityReservation:
            return "/"
        case .getHostReservationPurchasePreview:
            return "/"
        case .getInstanceTypesFromInstanceRequirements:
            return "/"
        case .getInstanceUefiData:
            return "/"
        case .getIpamAddressHistory:
            return "/"
        case .getIpamPoolAllocations:
            return "/"
        case .getIpamPoolCidrs:
            return "/"
        case .getIpamResourceCidrs:
            return "/"
        case .getLaunchTemplateData:
            return "/"
        case .getManagedPrefixListAssociations:
            return "/"
        case .getManagedPrefixListEntries:
            return "/"
        case .getNetworkInsightsAccessScopeAnalysisFindings:
            return "/"
        case .getNetworkInsightsAccessScopeContent:
            return "/"
        case .getPasswordData:
            return "/"
        case .getReservedInstancesExchangeQuote:
            return "/"
        case .getSerialConsoleAccessStatus:
            return "/"
        case .getSpotPlacementScores:
            return "/"
        case .getSubnetCidrReservations:
            return "/"
        case .getTransitGatewayAttachmentPropagations:
            return "/"
        case .getTransitGatewayMulticastDomainAssociations:
            return "/"
        case .getTransitGatewayPolicyTableAssociations:
            return "/"
        case .getTransitGatewayPolicyTableEntries:
            return "/"
        case .getTransitGatewayPrefixListReferences:
            return "/"
        case .getTransitGatewayRouteTableAssociations:
            return "/"
        case .getTransitGatewayRouteTablePropagations:
            return "/"
        case .getVpnConnectionDeviceSampleConfiguration:
            return "/"
        case .getVpnConnectionDeviceTypes:
            return "/"
        case .importClientVpnClientCertificateRevocationList:
            return "/"
        case .importImage:
            return "/"
        case .importInstance:
            return "/"
        case .importKeyPair:
            return "/"
        case .importSnapshot:
            return "/"
        case .importVolume:
            return "/"
        case .listImagesInRecycleBin:
            return "/"
        case .listSnapshotsInRecycleBin:
            return "/"
        case .modifyAddressAttribute:
            return "/"
        case .modifyAvailabilityZoneGroup:
            return "/"
        case .modifyCapacityReservation:
            return "/"
        case .modifyCapacityReservationFleet:
            return "/"
        case .modifyClientVpnEndpoint:
            return "/"
        case .modifyDefaultCreditSpecification:
            return "/"
        case .modifyEbsDefaultKmsKeyId:
            return "/"
        case .modifyFleet:
            return "/"
        case .modifyFpgaImageAttribute:
            return "/"
        case .modifyHosts:
            return "/"
        case .modifyIdFormat:
            return "/"
        case .modifyIdentityIdFormat:
            return "/"
        case .modifyImageAttribute:
            return "/"
        case .modifyInstanceAttribute:
            return "/"
        case .modifyInstanceCapacityReservationAttributes:
            return "/"
        case .modifyInstanceCreditSpecification:
            return "/"
        case .modifyInstanceEventStartTime:
            return "/"
        case .modifyInstanceEventWindow:
            return "/"
        case .modifyInstanceMaintenanceOptions:
            return "/"
        case .modifyInstanceMetadataOptions:
            return "/"
        case .modifyInstancePlacement:
            return "/"
        case .modifyIpam:
            return "/"
        case .modifyIpamPool:
            return "/"
        case .modifyIpamResourceCidr:
            return "/"
        case .modifyIpamScope:
            return "/"
        case .modifyLaunchTemplate:
            return "/"
        case .modifyLocalGatewayRoute:
            return "/"
        case .modifyManagedPrefixList:
            return "/"
        case .modifyNetworkInterfaceAttribute:
            return "/"
        case .modifyPrivateDnsNameOptions:
            return "/"
        case .modifyReservedInstances:
            return "/"
        case .modifySecurityGroupRules:
            return "/"
        case .modifySnapshotAttribute:
            return "/"
        case .modifySnapshotTier:
            return "/"
        case .modifySpotFleetRequest:
            return "/"
        case .modifySubnetAttribute:
            return "/"
        case .modifyTrafficMirrorFilterNetworkServices:
            return "/"
        case .modifyTrafficMirrorFilterRule:
            return "/"
        case .modifyTrafficMirrorSession:
            return "/"
        case .modifyTransitGateway:
            return "/"
        case .modifyTransitGatewayPrefixListReference:
            return "/"
        case .modifyTransitGatewayVpcAttachment:
            return "/"
        case .modifyVolume:
            return "/"
        case .modifyVolumeAttribute:
            return "/"
        case .modifyVpcAttribute:
            return "/"
        case .modifyVpcEndpoint:
            return "/"
        case .modifyVpcEndpointConnectionNotification:
            return "/"
        case .modifyVpcEndpointServiceConfiguration:
            return "/"
        case .modifyVpcEndpointServicePayerResponsibility:
            return "/"
        case .modifyVpcEndpointServicePermissions:
            return "/"
        case .modifyVpcPeeringConnectionOptions:
            return "/"
        case .modifyVpcTenancy:
            return "/"
        case .modifyVpnConnection:
            return "/"
        case .modifyVpnConnectionOptions:
            return "/"
        case .modifyVpnTunnelCertificate:
            return "/"
        case .modifyVpnTunnelOptions:
            return "/"
        case .monitorInstances:
            return "/"
        case .moveAddressToVpc:
            return "/"
        case .moveByoipCidrToIpam:
            return "/"
        case .provisionByoipCidr:
            return "/"
        case .provisionIpamPoolCidr:
            return "/"
        case .provisionPublicIpv4PoolCidr:
            return "/"
        case .purchaseHostReservation:
            return "/"
        case .purchaseReservedInstancesOffering:
            return "/"
        case .purchaseScheduledInstances:
            return "/"
        case .rebootInstances:
            return "/"
        case .registerImage:
            return "/"
        case .registerInstanceEventNotificationAttributes:
            return "/"
        case .registerTransitGatewayMulticastGroupMembers:
            return "/"
        case .registerTransitGatewayMulticastGroupSources:
            return "/"
        case .rejectTransitGatewayMulticastDomainAssociations:
            return "/"
        case .rejectTransitGatewayPeeringAttachment:
            return "/"
        case .rejectTransitGatewayVpcAttachment:
            return "/"
        case .rejectVpcEndpointConnections:
            return "/"
        case .rejectVpcPeeringConnection:
            return "/"
        case .releaseAddress:
            return "/"
        case .releaseHosts:
            return "/"
        case .releaseIpamPoolAllocation:
            return "/"
        case .replaceIamInstanceProfileAssociation:
            return "/"
        case .replaceNetworkAclAssociation:
            return "/"
        case .replaceNetworkAclEntry:
            return "/"
        case .replaceRoute:
            return "/"
        case .replaceRouteTableAssociation:
            return "/"
        case .replaceTransitGatewayRoute:
            return "/"
        case .reportInstanceStatus:
            return "/"
        case .requestSpotFleet:
            return "/"
        case .requestSpotInstances:
            return "/"
        case .resetAddressAttribute:
            return "/"
        case .resetEbsDefaultKmsKeyId:
            return "/"
        case .resetFpgaImageAttribute:
            return "/"
        case .resetImageAttribute:
            return "/"
        case .resetInstanceAttribute:
            return "/"
        case .resetNetworkInterfaceAttribute:
            return "/"
        case .resetSnapshotAttribute:
            return "/"
        case .restoreAddressToClassic:
            return "/"
        case .restoreImageFromRecycleBin:
            return "/"
        case .restoreManagedPrefixListVersion:
            return "/"
        case .restoreSnapshotFromRecycleBin:
            return "/"
        case .restoreSnapshotTier:
            return "/"
        case .revokeClientVpnIngress:
            return "/"
        case .revokeSecurityGroupEgress:
            return "/"
        case .revokeSecurityGroupIngress:
            return "/"
        case .runInstances:
            return "/"
        case .runScheduledInstances:
            return "/"
        case .searchLocalGatewayRoutes:
            return "/"
        case .searchTransitGatewayMulticastGroups:
            return "/"
        case .searchTransitGatewayRoutes:
            return "/"
        case .sendDiagnosticInterrupt:
            return "/"
        case .startInstances:
            return "/"
        case .startNetworkInsightsAccessScopeAnalysis:
            return "/"
        case .startNetworkInsightsAnalysis:
            return "/"
        case .startVpcEndpointServicePrivateDnsVerification:
            return "/"
        case .stopInstances:
            return "/"
        case .terminateClientVpnConnections:
            return "/"
        case .terminateInstances:
            return "/"
        case .unassignIpv6Addresses:
            return "/"
        case .unassignPrivateIpAddresses:
            return "/"
        case .unmonitorInstances:
            return "/"
        case .updateSecurityGroupRuleDescriptionsEgress:
            return "/"
        case .updateSecurityGroupRuleDescriptionsIngress:
            return "/"
        case .withdrawByoipCidr:
            return "/"
        }
    }
}
