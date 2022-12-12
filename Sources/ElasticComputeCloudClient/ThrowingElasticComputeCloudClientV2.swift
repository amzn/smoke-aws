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
// ThrowingElasticComputeCloudClientV2.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the ElasticComputeCloud service that by default always throws from its methods.
 */
public struct ThrowingElasticComputeCloudClientV2: ElasticComputeCloudClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: ElasticComputeCloudError
    let acceptReservedInstancesExchangeQuoteOverride: AcceptReservedInstancesExchangeQuoteFunctionType?
    let acceptTransitGatewayMulticastDomainAssociationsOverride: AcceptTransitGatewayMulticastDomainAssociationsFunctionType?
    let acceptTransitGatewayPeeringAttachmentOverride: AcceptTransitGatewayPeeringAttachmentFunctionType?
    let acceptTransitGatewayVpcAttachmentOverride: AcceptTransitGatewayVpcAttachmentFunctionType?
    let acceptVpcEndpointConnectionsOverride: AcceptVpcEndpointConnectionsFunctionType?
    let acceptVpcPeeringConnectionOverride: AcceptVpcPeeringConnectionFunctionType?
    let advertiseByoipCidrOverride: AdvertiseByoipCidrFunctionType?
    let allocateAddressOverride: AllocateAddressFunctionType?
    let allocateHostsOverride: AllocateHostsFunctionType?
    let allocateIpamPoolCidrOverride: AllocateIpamPoolCidrFunctionType?
    let applySecurityGroupsToClientVpnTargetNetworkOverride: ApplySecurityGroupsToClientVpnTargetNetworkFunctionType?
    let assignIpv6AddressesOverride: AssignIpv6AddressesFunctionType?
    let assignPrivateIpAddressesOverride: AssignPrivateIpAddressesFunctionType?
    let associateAddressOverride: AssociateAddressFunctionType?
    let associateClientVpnTargetNetworkOverride: AssociateClientVpnTargetNetworkFunctionType?
    let associateDhcpOptionsOverride: AssociateDhcpOptionsFunctionType?
    let associateEnclaveCertificateIamRoleOverride: AssociateEnclaveCertificateIamRoleFunctionType?
    let associateIamInstanceProfileOverride: AssociateIamInstanceProfileFunctionType?
    let associateInstanceEventWindowOverride: AssociateInstanceEventWindowFunctionType?
    let associateRouteTableOverride: AssociateRouteTableFunctionType?
    let associateSubnetCidrBlockOverride: AssociateSubnetCidrBlockFunctionType?
    let associateTransitGatewayMulticastDomainOverride: AssociateTransitGatewayMulticastDomainFunctionType?
    let associateTransitGatewayPolicyTableOverride: AssociateTransitGatewayPolicyTableFunctionType?
    let associateTransitGatewayRouteTableOverride: AssociateTransitGatewayRouteTableFunctionType?
    let associateTrunkInterfaceOverride: AssociateTrunkInterfaceFunctionType?
    let associateVpcCidrBlockOverride: AssociateVpcCidrBlockFunctionType?
    let attachClassicLinkVpcOverride: AttachClassicLinkVpcFunctionType?
    let attachInternetGatewayOverride: AttachInternetGatewayFunctionType?
    let attachNetworkInterfaceOverride: AttachNetworkInterfaceFunctionType?
    let attachVolumeOverride: AttachVolumeFunctionType?
    let attachVpnGatewayOverride: AttachVpnGatewayFunctionType?
    let authorizeClientVpnIngressOverride: AuthorizeClientVpnIngressFunctionType?
    let authorizeSecurityGroupEgressOverride: AuthorizeSecurityGroupEgressFunctionType?
    let authorizeSecurityGroupIngressOverride: AuthorizeSecurityGroupIngressFunctionType?
    let bundleInstanceOverride: BundleInstanceFunctionType?
    let cancelBundleTaskOverride: CancelBundleTaskFunctionType?
    let cancelCapacityReservationOverride: CancelCapacityReservationFunctionType?
    let cancelCapacityReservationFleetsOverride: CancelCapacityReservationFleetsFunctionType?
    let cancelConversionTaskOverride: CancelConversionTaskFunctionType?
    let cancelExportTaskOverride: CancelExportTaskFunctionType?
    let cancelImportTaskOverride: CancelImportTaskFunctionType?
    let cancelReservedInstancesListingOverride: CancelReservedInstancesListingFunctionType?
    let cancelSpotFleetRequestsOverride: CancelSpotFleetRequestsFunctionType?
    let cancelSpotInstanceRequestsOverride: CancelSpotInstanceRequestsFunctionType?
    let confirmProductInstanceOverride: ConfirmProductInstanceFunctionType?
    let copyFpgaImageOverride: CopyFpgaImageFunctionType?
    let copyImageOverride: CopyImageFunctionType?
    let copySnapshotOverride: CopySnapshotFunctionType?
    let createCapacityReservationOverride: CreateCapacityReservationFunctionType?
    let createCapacityReservationFleetOverride: CreateCapacityReservationFleetFunctionType?
    let createCarrierGatewayOverride: CreateCarrierGatewayFunctionType?
    let createClientVpnEndpointOverride: CreateClientVpnEndpointFunctionType?
    let createClientVpnRouteOverride: CreateClientVpnRouteFunctionType?
    let createCoipCidrOverride: CreateCoipCidrFunctionType?
    let createCoipPoolOverride: CreateCoipPoolFunctionType?
    let createCustomerGatewayOverride: CreateCustomerGatewayFunctionType?
    let createDefaultSubnetOverride: CreateDefaultSubnetFunctionType?
    let createDefaultVpcOverride: CreateDefaultVpcFunctionType?
    let createDhcpOptionsOverride: CreateDhcpOptionsFunctionType?
    let createEgressOnlyInternetGatewayOverride: CreateEgressOnlyInternetGatewayFunctionType?
    let createFleetOverride: CreateFleetFunctionType?
    let createFlowLogsOverride: CreateFlowLogsFunctionType?
    let createFpgaImageOverride: CreateFpgaImageFunctionType?
    let createImageOverride: CreateImageFunctionType?
    let createInstanceEventWindowOverride: CreateInstanceEventWindowFunctionType?
    let createInstanceExportTaskOverride: CreateInstanceExportTaskFunctionType?
    let createInternetGatewayOverride: CreateInternetGatewayFunctionType?
    let createIpamOverride: CreateIpamFunctionType?
    let createIpamPoolOverride: CreateIpamPoolFunctionType?
    let createIpamScopeOverride: CreateIpamScopeFunctionType?
    let createKeyPairOverride: CreateKeyPairFunctionType?
    let createLaunchTemplateOverride: CreateLaunchTemplateFunctionType?
    let createLaunchTemplateVersionOverride: CreateLaunchTemplateVersionFunctionType?
    let createLocalGatewayRouteOverride: CreateLocalGatewayRouteFunctionType?
    let createLocalGatewayRouteTableOverride: CreateLocalGatewayRouteTableFunctionType?
    let createLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride: CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationFunctionType?
    let createLocalGatewayRouteTableVpcAssociationOverride: CreateLocalGatewayRouteTableVpcAssociationFunctionType?
    let createManagedPrefixListOverride: CreateManagedPrefixListFunctionType?
    let createNatGatewayOverride: CreateNatGatewayFunctionType?
    let createNetworkAclOverride: CreateNetworkAclFunctionType?
    let createNetworkAclEntryOverride: CreateNetworkAclEntryFunctionType?
    let createNetworkInsightsAccessScopeOverride: CreateNetworkInsightsAccessScopeFunctionType?
    let createNetworkInsightsPathOverride: CreateNetworkInsightsPathFunctionType?
    let createNetworkInterfaceOverride: CreateNetworkInterfaceFunctionType?
    let createNetworkInterfacePermissionOverride: CreateNetworkInterfacePermissionFunctionType?
    let createPlacementGroupOverride: CreatePlacementGroupFunctionType?
    let createPublicIpv4PoolOverride: CreatePublicIpv4PoolFunctionType?
    let createReplaceRootVolumeTaskOverride: CreateReplaceRootVolumeTaskFunctionType?
    let createReservedInstancesListingOverride: CreateReservedInstancesListingFunctionType?
    let createRestoreImageTaskOverride: CreateRestoreImageTaskFunctionType?
    let createRouteOverride: CreateRouteFunctionType?
    let createRouteTableOverride: CreateRouteTableFunctionType?
    let createSecurityGroupOverride: CreateSecurityGroupFunctionType?
    let createSnapshotOverride: CreateSnapshotFunctionType?
    let createSnapshotsOverride: CreateSnapshotsFunctionType?
    let createSpotDatafeedSubscriptionOverride: CreateSpotDatafeedSubscriptionFunctionType?
    let createStoreImageTaskOverride: CreateStoreImageTaskFunctionType?
    let createSubnetOverride: CreateSubnetFunctionType?
    let createSubnetCidrReservationOverride: CreateSubnetCidrReservationFunctionType?
    let createTagsOverride: CreateTagsFunctionType?
    let createTrafficMirrorFilterOverride: CreateTrafficMirrorFilterFunctionType?
    let createTrafficMirrorFilterRuleOverride: CreateTrafficMirrorFilterRuleFunctionType?
    let createTrafficMirrorSessionOverride: CreateTrafficMirrorSessionFunctionType?
    let createTrafficMirrorTargetOverride: CreateTrafficMirrorTargetFunctionType?
    let createTransitGatewayOverride: CreateTransitGatewayFunctionType?
    let createTransitGatewayConnectOverride: CreateTransitGatewayConnectFunctionType?
    let createTransitGatewayConnectPeerOverride: CreateTransitGatewayConnectPeerFunctionType?
    let createTransitGatewayMulticastDomainOverride: CreateTransitGatewayMulticastDomainFunctionType?
    let createTransitGatewayPeeringAttachmentOverride: CreateTransitGatewayPeeringAttachmentFunctionType?
    let createTransitGatewayPolicyTableOverride: CreateTransitGatewayPolicyTableFunctionType?
    let createTransitGatewayPrefixListReferenceOverride: CreateTransitGatewayPrefixListReferenceFunctionType?
    let createTransitGatewayRouteOverride: CreateTransitGatewayRouteFunctionType?
    let createTransitGatewayRouteTableOverride: CreateTransitGatewayRouteTableFunctionType?
    let createTransitGatewayRouteTableAnnouncementOverride: CreateTransitGatewayRouteTableAnnouncementFunctionType?
    let createTransitGatewayVpcAttachmentOverride: CreateTransitGatewayVpcAttachmentFunctionType?
    let createVolumeOverride: CreateVolumeFunctionType?
    let createVpcOverride: CreateVpcFunctionType?
    let createVpcEndpointOverride: CreateVpcEndpointFunctionType?
    let createVpcEndpointConnectionNotificationOverride: CreateVpcEndpointConnectionNotificationFunctionType?
    let createVpcEndpointServiceConfigurationOverride: CreateVpcEndpointServiceConfigurationFunctionType?
    let createVpcPeeringConnectionOverride: CreateVpcPeeringConnectionFunctionType?
    let createVpnConnectionOverride: CreateVpnConnectionFunctionType?
    let createVpnConnectionRouteOverride: CreateVpnConnectionRouteFunctionType?
    let createVpnGatewayOverride: CreateVpnGatewayFunctionType?
    let deleteCarrierGatewayOverride: DeleteCarrierGatewayFunctionType?
    let deleteClientVpnEndpointOverride: DeleteClientVpnEndpointFunctionType?
    let deleteClientVpnRouteOverride: DeleteClientVpnRouteFunctionType?
    let deleteCoipCidrOverride: DeleteCoipCidrFunctionType?
    let deleteCoipPoolOverride: DeleteCoipPoolFunctionType?
    let deleteCustomerGatewayOverride: DeleteCustomerGatewayFunctionType?
    let deleteDhcpOptionsOverride: DeleteDhcpOptionsFunctionType?
    let deleteEgressOnlyInternetGatewayOverride: DeleteEgressOnlyInternetGatewayFunctionType?
    let deleteFleetsOverride: DeleteFleetsFunctionType?
    let deleteFlowLogsOverride: DeleteFlowLogsFunctionType?
    let deleteFpgaImageOverride: DeleteFpgaImageFunctionType?
    let deleteInstanceEventWindowOverride: DeleteInstanceEventWindowFunctionType?
    let deleteInternetGatewayOverride: DeleteInternetGatewayFunctionType?
    let deleteIpamOverride: DeleteIpamFunctionType?
    let deleteIpamPoolOverride: DeleteIpamPoolFunctionType?
    let deleteIpamScopeOverride: DeleteIpamScopeFunctionType?
    let deleteKeyPairOverride: DeleteKeyPairFunctionType?
    let deleteLaunchTemplateOverride: DeleteLaunchTemplateFunctionType?
    let deleteLaunchTemplateVersionsOverride: DeleteLaunchTemplateVersionsFunctionType?
    let deleteLocalGatewayRouteOverride: DeleteLocalGatewayRouteFunctionType?
    let deleteLocalGatewayRouteTableOverride: DeleteLocalGatewayRouteTableFunctionType?
    let deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride: DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationFunctionType?
    let deleteLocalGatewayRouteTableVpcAssociationOverride: DeleteLocalGatewayRouteTableVpcAssociationFunctionType?
    let deleteManagedPrefixListOverride: DeleteManagedPrefixListFunctionType?
    let deleteNatGatewayOverride: DeleteNatGatewayFunctionType?
    let deleteNetworkAclOverride: DeleteNetworkAclFunctionType?
    let deleteNetworkAclEntryOverride: DeleteNetworkAclEntryFunctionType?
    let deleteNetworkInsightsAccessScopeOverride: DeleteNetworkInsightsAccessScopeFunctionType?
    let deleteNetworkInsightsAccessScopeAnalysisOverride: DeleteNetworkInsightsAccessScopeAnalysisFunctionType?
    let deleteNetworkInsightsAnalysisOverride: DeleteNetworkInsightsAnalysisFunctionType?
    let deleteNetworkInsightsPathOverride: DeleteNetworkInsightsPathFunctionType?
    let deleteNetworkInterfaceOverride: DeleteNetworkInterfaceFunctionType?
    let deleteNetworkInterfacePermissionOverride: DeleteNetworkInterfacePermissionFunctionType?
    let deletePlacementGroupOverride: DeletePlacementGroupFunctionType?
    let deletePublicIpv4PoolOverride: DeletePublicIpv4PoolFunctionType?
    let deleteQueuedReservedInstancesOverride: DeleteQueuedReservedInstancesFunctionType?
    let deleteRouteOverride: DeleteRouteFunctionType?
    let deleteRouteTableOverride: DeleteRouteTableFunctionType?
    let deleteSecurityGroupOverride: DeleteSecurityGroupFunctionType?
    let deleteSnapshotOverride: DeleteSnapshotFunctionType?
    let deleteSpotDatafeedSubscriptionOverride: DeleteSpotDatafeedSubscriptionFunctionType?
    let deleteSubnetOverride: DeleteSubnetFunctionType?
    let deleteSubnetCidrReservationOverride: DeleteSubnetCidrReservationFunctionType?
    let deleteTagsOverride: DeleteTagsFunctionType?
    let deleteTrafficMirrorFilterOverride: DeleteTrafficMirrorFilterFunctionType?
    let deleteTrafficMirrorFilterRuleOverride: DeleteTrafficMirrorFilterRuleFunctionType?
    let deleteTrafficMirrorSessionOverride: DeleteTrafficMirrorSessionFunctionType?
    let deleteTrafficMirrorTargetOverride: DeleteTrafficMirrorTargetFunctionType?
    let deleteTransitGatewayOverride: DeleteTransitGatewayFunctionType?
    let deleteTransitGatewayConnectOverride: DeleteTransitGatewayConnectFunctionType?
    let deleteTransitGatewayConnectPeerOverride: DeleteTransitGatewayConnectPeerFunctionType?
    let deleteTransitGatewayMulticastDomainOverride: DeleteTransitGatewayMulticastDomainFunctionType?
    let deleteTransitGatewayPeeringAttachmentOverride: DeleteTransitGatewayPeeringAttachmentFunctionType?
    let deleteTransitGatewayPolicyTableOverride: DeleteTransitGatewayPolicyTableFunctionType?
    let deleteTransitGatewayPrefixListReferenceOverride: DeleteTransitGatewayPrefixListReferenceFunctionType?
    let deleteTransitGatewayRouteOverride: DeleteTransitGatewayRouteFunctionType?
    let deleteTransitGatewayRouteTableOverride: DeleteTransitGatewayRouteTableFunctionType?
    let deleteTransitGatewayRouteTableAnnouncementOverride: DeleteTransitGatewayRouteTableAnnouncementFunctionType?
    let deleteTransitGatewayVpcAttachmentOverride: DeleteTransitGatewayVpcAttachmentFunctionType?
    let deleteVolumeOverride: DeleteVolumeFunctionType?
    let deleteVpcOverride: DeleteVpcFunctionType?
    let deleteVpcEndpointConnectionNotificationsOverride: DeleteVpcEndpointConnectionNotificationsFunctionType?
    let deleteVpcEndpointServiceConfigurationsOverride: DeleteVpcEndpointServiceConfigurationsFunctionType?
    let deleteVpcEndpointsOverride: DeleteVpcEndpointsFunctionType?
    let deleteVpcPeeringConnectionOverride: DeleteVpcPeeringConnectionFunctionType?
    let deleteVpnConnectionOverride: DeleteVpnConnectionFunctionType?
    let deleteVpnConnectionRouteOverride: DeleteVpnConnectionRouteFunctionType?
    let deleteVpnGatewayOverride: DeleteVpnGatewayFunctionType?
    let deprovisionByoipCidrOverride: DeprovisionByoipCidrFunctionType?
    let deprovisionIpamPoolCidrOverride: DeprovisionIpamPoolCidrFunctionType?
    let deprovisionPublicIpv4PoolCidrOverride: DeprovisionPublicIpv4PoolCidrFunctionType?
    let deregisterImageOverride: DeregisterImageFunctionType?
    let deregisterInstanceEventNotificationAttributesOverride: DeregisterInstanceEventNotificationAttributesFunctionType?
    let deregisterTransitGatewayMulticastGroupMembersOverride: DeregisterTransitGatewayMulticastGroupMembersFunctionType?
    let deregisterTransitGatewayMulticastGroupSourcesOverride: DeregisterTransitGatewayMulticastGroupSourcesFunctionType?
    let describeAccountAttributesOverride: DescribeAccountAttributesFunctionType?
    let describeAddressesOverride: DescribeAddressesFunctionType?
    let describeAddressesAttributeOverride: DescribeAddressesAttributeFunctionType?
    let describeAggregateIdFormatOverride: DescribeAggregateIdFormatFunctionType?
    let describeAvailabilityZonesOverride: DescribeAvailabilityZonesFunctionType?
    let describeBundleTasksOverride: DescribeBundleTasksFunctionType?
    let describeByoipCidrsOverride: DescribeByoipCidrsFunctionType?
    let describeCapacityReservationFleetsOverride: DescribeCapacityReservationFleetsFunctionType?
    let describeCapacityReservationsOverride: DescribeCapacityReservationsFunctionType?
    let describeCarrierGatewaysOverride: DescribeCarrierGatewaysFunctionType?
    let describeClassicLinkInstancesOverride: DescribeClassicLinkInstancesFunctionType?
    let describeClientVpnAuthorizationRulesOverride: DescribeClientVpnAuthorizationRulesFunctionType?
    let describeClientVpnConnectionsOverride: DescribeClientVpnConnectionsFunctionType?
    let describeClientVpnEndpointsOverride: DescribeClientVpnEndpointsFunctionType?
    let describeClientVpnRoutesOverride: DescribeClientVpnRoutesFunctionType?
    let describeClientVpnTargetNetworksOverride: DescribeClientVpnTargetNetworksFunctionType?
    let describeCoipPoolsOverride: DescribeCoipPoolsFunctionType?
    let describeConversionTasksOverride: DescribeConversionTasksFunctionType?
    let describeCustomerGatewaysOverride: DescribeCustomerGatewaysFunctionType?
    let describeDhcpOptionsOverride: DescribeDhcpOptionsFunctionType?
    let describeEgressOnlyInternetGatewaysOverride: DescribeEgressOnlyInternetGatewaysFunctionType?
    let describeElasticGpusOverride: DescribeElasticGpusFunctionType?
    let describeExportImageTasksOverride: DescribeExportImageTasksFunctionType?
    let describeExportTasksOverride: DescribeExportTasksFunctionType?
    let describeFastLaunchImagesOverride: DescribeFastLaunchImagesFunctionType?
    let describeFastSnapshotRestoresOverride: DescribeFastSnapshotRestoresFunctionType?
    let describeFleetHistoryOverride: DescribeFleetHistoryFunctionType?
    let describeFleetInstancesOverride: DescribeFleetInstancesFunctionType?
    let describeFleetsOverride: DescribeFleetsFunctionType?
    let describeFlowLogsOverride: DescribeFlowLogsFunctionType?
    let describeFpgaImageAttributeOverride: DescribeFpgaImageAttributeFunctionType?
    let describeFpgaImagesOverride: DescribeFpgaImagesFunctionType?
    let describeHostReservationOfferingsOverride: DescribeHostReservationOfferingsFunctionType?
    let describeHostReservationsOverride: DescribeHostReservationsFunctionType?
    let describeHostsOverride: DescribeHostsFunctionType?
    let describeIamInstanceProfileAssociationsOverride: DescribeIamInstanceProfileAssociationsFunctionType?
    let describeIdFormatOverride: DescribeIdFormatFunctionType?
    let describeIdentityIdFormatOverride: DescribeIdentityIdFormatFunctionType?
    let describeImageAttributeOverride: DescribeImageAttributeFunctionType?
    let describeImagesOverride: DescribeImagesFunctionType?
    let describeImportImageTasksOverride: DescribeImportImageTasksFunctionType?
    let describeImportSnapshotTasksOverride: DescribeImportSnapshotTasksFunctionType?
    let describeInstanceAttributeOverride: DescribeInstanceAttributeFunctionType?
    let describeInstanceCreditSpecificationsOverride: DescribeInstanceCreditSpecificationsFunctionType?
    let describeInstanceEventNotificationAttributesOverride: DescribeInstanceEventNotificationAttributesFunctionType?
    let describeInstanceEventWindowsOverride: DescribeInstanceEventWindowsFunctionType?
    let describeInstanceStatusOverride: DescribeInstanceStatusFunctionType?
    let describeInstanceTypeOfferingsOverride: DescribeInstanceTypeOfferingsFunctionType?
    let describeInstanceTypesOverride: DescribeInstanceTypesFunctionType?
    let describeInstancesOverride: DescribeInstancesFunctionType?
    let describeInternetGatewaysOverride: DescribeInternetGatewaysFunctionType?
    let describeIpamPoolsOverride: DescribeIpamPoolsFunctionType?
    let describeIpamScopesOverride: DescribeIpamScopesFunctionType?
    let describeIpamsOverride: DescribeIpamsFunctionType?
    let describeIpv6PoolsOverride: DescribeIpv6PoolsFunctionType?
    let describeKeyPairsOverride: DescribeKeyPairsFunctionType?
    let describeLaunchTemplateVersionsOverride: DescribeLaunchTemplateVersionsFunctionType?
    let describeLaunchTemplatesOverride: DescribeLaunchTemplatesFunctionType?
    let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOverride: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsFunctionType?
    let describeLocalGatewayRouteTableVpcAssociationsOverride: DescribeLocalGatewayRouteTableVpcAssociationsFunctionType?
    let describeLocalGatewayRouteTablesOverride: DescribeLocalGatewayRouteTablesFunctionType?
    let describeLocalGatewayVirtualInterfaceGroupsOverride: DescribeLocalGatewayVirtualInterfaceGroupsFunctionType?
    let describeLocalGatewayVirtualInterfacesOverride: DescribeLocalGatewayVirtualInterfacesFunctionType?
    let describeLocalGatewaysOverride: DescribeLocalGatewaysFunctionType?
    let describeManagedPrefixListsOverride: DescribeManagedPrefixListsFunctionType?
    let describeMovingAddressesOverride: DescribeMovingAddressesFunctionType?
    let describeNatGatewaysOverride: DescribeNatGatewaysFunctionType?
    let describeNetworkAclsOverride: DescribeNetworkAclsFunctionType?
    let describeNetworkInsightsAccessScopeAnalysesOverride: DescribeNetworkInsightsAccessScopeAnalysesFunctionType?
    let describeNetworkInsightsAccessScopesOverride: DescribeNetworkInsightsAccessScopesFunctionType?
    let describeNetworkInsightsAnalysesOverride: DescribeNetworkInsightsAnalysesFunctionType?
    let describeNetworkInsightsPathsOverride: DescribeNetworkInsightsPathsFunctionType?
    let describeNetworkInterfaceAttributeOverride: DescribeNetworkInterfaceAttributeFunctionType?
    let describeNetworkInterfacePermissionsOverride: DescribeNetworkInterfacePermissionsFunctionType?
    let describeNetworkInterfacesOverride: DescribeNetworkInterfacesFunctionType?
    let describePlacementGroupsOverride: DescribePlacementGroupsFunctionType?
    let describePrefixListsOverride: DescribePrefixListsFunctionType?
    let describePrincipalIdFormatOverride: DescribePrincipalIdFormatFunctionType?
    let describePublicIpv4PoolsOverride: DescribePublicIpv4PoolsFunctionType?
    let describeRegionsOverride: DescribeRegionsFunctionType?
    let describeReplaceRootVolumeTasksOverride: DescribeReplaceRootVolumeTasksFunctionType?
    let describeReservedInstancesOverride: DescribeReservedInstancesFunctionType?
    let describeReservedInstancesListingsOverride: DescribeReservedInstancesListingsFunctionType?
    let describeReservedInstancesModificationsOverride: DescribeReservedInstancesModificationsFunctionType?
    let describeReservedInstancesOfferingsOverride: DescribeReservedInstancesOfferingsFunctionType?
    let describeRouteTablesOverride: DescribeRouteTablesFunctionType?
    let describeScheduledInstanceAvailabilityOverride: DescribeScheduledInstanceAvailabilityFunctionType?
    let describeScheduledInstancesOverride: DescribeScheduledInstancesFunctionType?
    let describeSecurityGroupReferencesOverride: DescribeSecurityGroupReferencesFunctionType?
    let describeSecurityGroupRulesOverride: DescribeSecurityGroupRulesFunctionType?
    let describeSecurityGroupsOverride: DescribeSecurityGroupsFunctionType?
    let describeSnapshotAttributeOverride: DescribeSnapshotAttributeFunctionType?
    let describeSnapshotTierStatusOverride: DescribeSnapshotTierStatusFunctionType?
    let describeSnapshotsOverride: DescribeSnapshotsFunctionType?
    let describeSpotDatafeedSubscriptionOverride: DescribeSpotDatafeedSubscriptionFunctionType?
    let describeSpotFleetInstancesOverride: DescribeSpotFleetInstancesFunctionType?
    let describeSpotFleetRequestHistoryOverride: DescribeSpotFleetRequestHistoryFunctionType?
    let describeSpotFleetRequestsOverride: DescribeSpotFleetRequestsFunctionType?
    let describeSpotInstanceRequestsOverride: DescribeSpotInstanceRequestsFunctionType?
    let describeSpotPriceHistoryOverride: DescribeSpotPriceHistoryFunctionType?
    let describeStaleSecurityGroupsOverride: DescribeStaleSecurityGroupsFunctionType?
    let describeStoreImageTasksOverride: DescribeStoreImageTasksFunctionType?
    let describeSubnetsOverride: DescribeSubnetsFunctionType?
    let describeTagsOverride: DescribeTagsFunctionType?
    let describeTrafficMirrorFiltersOverride: DescribeTrafficMirrorFiltersFunctionType?
    let describeTrafficMirrorSessionsOverride: DescribeTrafficMirrorSessionsFunctionType?
    let describeTrafficMirrorTargetsOverride: DescribeTrafficMirrorTargetsFunctionType?
    let describeTransitGatewayAttachmentsOverride: DescribeTransitGatewayAttachmentsFunctionType?
    let describeTransitGatewayConnectPeersOverride: DescribeTransitGatewayConnectPeersFunctionType?
    let describeTransitGatewayConnectsOverride: DescribeTransitGatewayConnectsFunctionType?
    let describeTransitGatewayMulticastDomainsOverride: DescribeTransitGatewayMulticastDomainsFunctionType?
    let describeTransitGatewayPeeringAttachmentsOverride: DescribeTransitGatewayPeeringAttachmentsFunctionType?
    let describeTransitGatewayPolicyTablesOverride: DescribeTransitGatewayPolicyTablesFunctionType?
    let describeTransitGatewayRouteTableAnnouncementsOverride: DescribeTransitGatewayRouteTableAnnouncementsFunctionType?
    let describeTransitGatewayRouteTablesOverride: DescribeTransitGatewayRouteTablesFunctionType?
    let describeTransitGatewayVpcAttachmentsOverride: DescribeTransitGatewayVpcAttachmentsFunctionType?
    let describeTransitGatewaysOverride: DescribeTransitGatewaysFunctionType?
    let describeTrunkInterfaceAssociationsOverride: DescribeTrunkInterfaceAssociationsFunctionType?
    let describeVolumeAttributeOverride: DescribeVolumeAttributeFunctionType?
    let describeVolumeStatusOverride: DescribeVolumeStatusFunctionType?
    let describeVolumesOverride: DescribeVolumesFunctionType?
    let describeVolumesModificationsOverride: DescribeVolumesModificationsFunctionType?
    let describeVpcAttributeOverride: DescribeVpcAttributeFunctionType?
    let describeVpcClassicLinkOverride: DescribeVpcClassicLinkFunctionType?
    let describeVpcClassicLinkDnsSupportOverride: DescribeVpcClassicLinkDnsSupportFunctionType?
    let describeVpcEndpointConnectionNotificationsOverride: DescribeVpcEndpointConnectionNotificationsFunctionType?
    let describeVpcEndpointConnectionsOverride: DescribeVpcEndpointConnectionsFunctionType?
    let describeVpcEndpointServiceConfigurationsOverride: DescribeVpcEndpointServiceConfigurationsFunctionType?
    let describeVpcEndpointServicePermissionsOverride: DescribeVpcEndpointServicePermissionsFunctionType?
    let describeVpcEndpointServicesOverride: DescribeVpcEndpointServicesFunctionType?
    let describeVpcEndpointsOverride: DescribeVpcEndpointsFunctionType?
    let describeVpcPeeringConnectionsOverride: DescribeVpcPeeringConnectionsFunctionType?
    let describeVpcsOverride: DescribeVpcsFunctionType?
    let describeVpnConnectionsOverride: DescribeVpnConnectionsFunctionType?
    let describeVpnGatewaysOverride: DescribeVpnGatewaysFunctionType?
    let detachClassicLinkVpcOverride: DetachClassicLinkVpcFunctionType?
    let detachInternetGatewayOverride: DetachInternetGatewayFunctionType?
    let detachNetworkInterfaceOverride: DetachNetworkInterfaceFunctionType?
    let detachVolumeOverride: DetachVolumeFunctionType?
    let detachVpnGatewayOverride: DetachVpnGatewayFunctionType?
    let disableEbsEncryptionByDefaultOverride: DisableEbsEncryptionByDefaultFunctionType?
    let disableFastLaunchOverride: DisableFastLaunchFunctionType?
    let disableFastSnapshotRestoresOverride: DisableFastSnapshotRestoresFunctionType?
    let disableImageDeprecationOverride: DisableImageDeprecationFunctionType?
    let disableIpamOrganizationAdminAccountOverride: DisableIpamOrganizationAdminAccountFunctionType?
    let disableSerialConsoleAccessOverride: DisableSerialConsoleAccessFunctionType?
    let disableTransitGatewayRouteTablePropagationOverride: DisableTransitGatewayRouteTablePropagationFunctionType?
    let disableVgwRoutePropagationOverride: DisableVgwRoutePropagationFunctionType?
    let disableVpcClassicLinkOverride: DisableVpcClassicLinkFunctionType?
    let disableVpcClassicLinkDnsSupportOverride: DisableVpcClassicLinkDnsSupportFunctionType?
    let disassociateAddressOverride: DisassociateAddressFunctionType?
    let disassociateClientVpnTargetNetworkOverride: DisassociateClientVpnTargetNetworkFunctionType?
    let disassociateEnclaveCertificateIamRoleOverride: DisassociateEnclaveCertificateIamRoleFunctionType?
    let disassociateIamInstanceProfileOverride: DisassociateIamInstanceProfileFunctionType?
    let disassociateInstanceEventWindowOverride: DisassociateInstanceEventWindowFunctionType?
    let disassociateRouteTableOverride: DisassociateRouteTableFunctionType?
    let disassociateSubnetCidrBlockOverride: DisassociateSubnetCidrBlockFunctionType?
    let disassociateTransitGatewayMulticastDomainOverride: DisassociateTransitGatewayMulticastDomainFunctionType?
    let disassociateTransitGatewayPolicyTableOverride: DisassociateTransitGatewayPolicyTableFunctionType?
    let disassociateTransitGatewayRouteTableOverride: DisassociateTransitGatewayRouteTableFunctionType?
    let disassociateTrunkInterfaceOverride: DisassociateTrunkInterfaceFunctionType?
    let disassociateVpcCidrBlockOverride: DisassociateVpcCidrBlockFunctionType?
    let enableEbsEncryptionByDefaultOverride: EnableEbsEncryptionByDefaultFunctionType?
    let enableFastLaunchOverride: EnableFastLaunchFunctionType?
    let enableFastSnapshotRestoresOverride: EnableFastSnapshotRestoresFunctionType?
    let enableImageDeprecationOverride: EnableImageDeprecationFunctionType?
    let enableIpamOrganizationAdminAccountOverride: EnableIpamOrganizationAdminAccountFunctionType?
    let enableSerialConsoleAccessOverride: EnableSerialConsoleAccessFunctionType?
    let enableTransitGatewayRouteTablePropagationOverride: EnableTransitGatewayRouteTablePropagationFunctionType?
    let enableVgwRoutePropagationOverride: EnableVgwRoutePropagationFunctionType?
    let enableVolumeIOOverride: EnableVolumeIOFunctionType?
    let enableVpcClassicLinkOverride: EnableVpcClassicLinkFunctionType?
    let enableVpcClassicLinkDnsSupportOverride: EnableVpcClassicLinkDnsSupportFunctionType?
    let exportClientVpnClientCertificateRevocationListOverride: ExportClientVpnClientCertificateRevocationListFunctionType?
    let exportClientVpnClientConfigurationOverride: ExportClientVpnClientConfigurationFunctionType?
    let exportImageOverride: ExportImageFunctionType?
    let exportTransitGatewayRoutesOverride: ExportTransitGatewayRoutesFunctionType?
    let getAssociatedEnclaveCertificateIamRolesOverride: GetAssociatedEnclaveCertificateIamRolesFunctionType?
    let getAssociatedIpv6PoolCidrsOverride: GetAssociatedIpv6PoolCidrsFunctionType?
    let getCapacityReservationUsageOverride: GetCapacityReservationUsageFunctionType?
    let getCoipPoolUsageOverride: GetCoipPoolUsageFunctionType?
    let getConsoleOutputOverride: GetConsoleOutputFunctionType?
    let getConsoleScreenshotOverride: GetConsoleScreenshotFunctionType?
    let getDefaultCreditSpecificationOverride: GetDefaultCreditSpecificationFunctionType?
    let getEbsDefaultKmsKeyIdOverride: GetEbsDefaultKmsKeyIdFunctionType?
    let getEbsEncryptionByDefaultOverride: GetEbsEncryptionByDefaultFunctionType?
    let getFlowLogsIntegrationTemplateOverride: GetFlowLogsIntegrationTemplateFunctionType?
    let getGroupsForCapacityReservationOverride: GetGroupsForCapacityReservationFunctionType?
    let getHostReservationPurchasePreviewOverride: GetHostReservationPurchasePreviewFunctionType?
    let getInstanceTypesFromInstanceRequirementsOverride: GetInstanceTypesFromInstanceRequirementsFunctionType?
    let getInstanceUefiDataOverride: GetInstanceUefiDataFunctionType?
    let getIpamAddressHistoryOverride: GetIpamAddressHistoryFunctionType?
    let getIpamPoolAllocationsOverride: GetIpamPoolAllocationsFunctionType?
    let getIpamPoolCidrsOverride: GetIpamPoolCidrsFunctionType?
    let getIpamResourceCidrsOverride: GetIpamResourceCidrsFunctionType?
    let getLaunchTemplateDataOverride: GetLaunchTemplateDataFunctionType?
    let getManagedPrefixListAssociationsOverride: GetManagedPrefixListAssociationsFunctionType?
    let getManagedPrefixListEntriesOverride: GetManagedPrefixListEntriesFunctionType?
    let getNetworkInsightsAccessScopeAnalysisFindingsOverride: GetNetworkInsightsAccessScopeAnalysisFindingsFunctionType?
    let getNetworkInsightsAccessScopeContentOverride: GetNetworkInsightsAccessScopeContentFunctionType?
    let getPasswordDataOverride: GetPasswordDataFunctionType?
    let getReservedInstancesExchangeQuoteOverride: GetReservedInstancesExchangeQuoteFunctionType?
    let getSerialConsoleAccessStatusOverride: GetSerialConsoleAccessStatusFunctionType?
    let getSpotPlacementScoresOverride: GetSpotPlacementScoresFunctionType?
    let getSubnetCidrReservationsOverride: GetSubnetCidrReservationsFunctionType?
    let getTransitGatewayAttachmentPropagationsOverride: GetTransitGatewayAttachmentPropagationsFunctionType?
    let getTransitGatewayMulticastDomainAssociationsOverride: GetTransitGatewayMulticastDomainAssociationsFunctionType?
    let getTransitGatewayPolicyTableAssociationsOverride: GetTransitGatewayPolicyTableAssociationsFunctionType?
    let getTransitGatewayPolicyTableEntriesOverride: GetTransitGatewayPolicyTableEntriesFunctionType?
    let getTransitGatewayPrefixListReferencesOverride: GetTransitGatewayPrefixListReferencesFunctionType?
    let getTransitGatewayRouteTableAssociationsOverride: GetTransitGatewayRouteTableAssociationsFunctionType?
    let getTransitGatewayRouteTablePropagationsOverride: GetTransitGatewayRouteTablePropagationsFunctionType?
    let getVpnConnectionDeviceSampleConfigurationOverride: GetVpnConnectionDeviceSampleConfigurationFunctionType?
    let getVpnConnectionDeviceTypesOverride: GetVpnConnectionDeviceTypesFunctionType?
    let importClientVpnClientCertificateRevocationListOverride: ImportClientVpnClientCertificateRevocationListFunctionType?
    let importImageOverride: ImportImageFunctionType?
    let importInstanceOverride: ImportInstanceFunctionType?
    let importKeyPairOverride: ImportKeyPairFunctionType?
    let importSnapshotOverride: ImportSnapshotFunctionType?
    let importVolumeOverride: ImportVolumeFunctionType?
    let listImagesInRecycleBinOverride: ListImagesInRecycleBinFunctionType?
    let listSnapshotsInRecycleBinOverride: ListSnapshotsInRecycleBinFunctionType?
    let modifyAddressAttributeOverride: ModifyAddressAttributeFunctionType?
    let modifyAvailabilityZoneGroupOverride: ModifyAvailabilityZoneGroupFunctionType?
    let modifyCapacityReservationOverride: ModifyCapacityReservationFunctionType?
    let modifyCapacityReservationFleetOverride: ModifyCapacityReservationFleetFunctionType?
    let modifyClientVpnEndpointOverride: ModifyClientVpnEndpointFunctionType?
    let modifyDefaultCreditSpecificationOverride: ModifyDefaultCreditSpecificationFunctionType?
    let modifyEbsDefaultKmsKeyIdOverride: ModifyEbsDefaultKmsKeyIdFunctionType?
    let modifyFleetOverride: ModifyFleetFunctionType?
    let modifyFpgaImageAttributeOverride: ModifyFpgaImageAttributeFunctionType?
    let modifyHostsOverride: ModifyHostsFunctionType?
    let modifyIdFormatOverride: ModifyIdFormatFunctionType?
    let modifyIdentityIdFormatOverride: ModifyIdentityIdFormatFunctionType?
    let modifyImageAttributeOverride: ModifyImageAttributeFunctionType?
    let modifyInstanceAttributeOverride: ModifyInstanceAttributeFunctionType?
    let modifyInstanceCapacityReservationAttributesOverride: ModifyInstanceCapacityReservationAttributesFunctionType?
    let modifyInstanceCreditSpecificationOverride: ModifyInstanceCreditSpecificationFunctionType?
    let modifyInstanceEventStartTimeOverride: ModifyInstanceEventStartTimeFunctionType?
    let modifyInstanceEventWindowOverride: ModifyInstanceEventWindowFunctionType?
    let modifyInstanceMaintenanceOptionsOverride: ModifyInstanceMaintenanceOptionsFunctionType?
    let modifyInstanceMetadataOptionsOverride: ModifyInstanceMetadataOptionsFunctionType?
    let modifyInstancePlacementOverride: ModifyInstancePlacementFunctionType?
    let modifyIpamOverride: ModifyIpamFunctionType?
    let modifyIpamPoolOverride: ModifyIpamPoolFunctionType?
    let modifyIpamResourceCidrOverride: ModifyIpamResourceCidrFunctionType?
    let modifyIpamScopeOverride: ModifyIpamScopeFunctionType?
    let modifyLaunchTemplateOverride: ModifyLaunchTemplateFunctionType?
    let modifyLocalGatewayRouteOverride: ModifyLocalGatewayRouteFunctionType?
    let modifyManagedPrefixListOverride: ModifyManagedPrefixListFunctionType?
    let modifyNetworkInterfaceAttributeOverride: ModifyNetworkInterfaceAttributeFunctionType?
    let modifyPrivateDnsNameOptionsOverride: ModifyPrivateDnsNameOptionsFunctionType?
    let modifyReservedInstancesOverride: ModifyReservedInstancesFunctionType?
    let modifySecurityGroupRulesOverride: ModifySecurityGroupRulesFunctionType?
    let modifySnapshotAttributeOverride: ModifySnapshotAttributeFunctionType?
    let modifySnapshotTierOverride: ModifySnapshotTierFunctionType?
    let modifySpotFleetRequestOverride: ModifySpotFleetRequestFunctionType?
    let modifySubnetAttributeOverride: ModifySubnetAttributeFunctionType?
    let modifyTrafficMirrorFilterNetworkServicesOverride: ModifyTrafficMirrorFilterNetworkServicesFunctionType?
    let modifyTrafficMirrorFilterRuleOverride: ModifyTrafficMirrorFilterRuleFunctionType?
    let modifyTrafficMirrorSessionOverride: ModifyTrafficMirrorSessionFunctionType?
    let modifyTransitGatewayOverride: ModifyTransitGatewayFunctionType?
    let modifyTransitGatewayPrefixListReferenceOverride: ModifyTransitGatewayPrefixListReferenceFunctionType?
    let modifyTransitGatewayVpcAttachmentOverride: ModifyTransitGatewayVpcAttachmentFunctionType?
    let modifyVolumeOverride: ModifyVolumeFunctionType?
    let modifyVolumeAttributeOverride: ModifyVolumeAttributeFunctionType?
    let modifyVpcAttributeOverride: ModifyVpcAttributeFunctionType?
    let modifyVpcEndpointOverride: ModifyVpcEndpointFunctionType?
    let modifyVpcEndpointConnectionNotificationOverride: ModifyVpcEndpointConnectionNotificationFunctionType?
    let modifyVpcEndpointServiceConfigurationOverride: ModifyVpcEndpointServiceConfigurationFunctionType?
    let modifyVpcEndpointServicePayerResponsibilityOverride: ModifyVpcEndpointServicePayerResponsibilityFunctionType?
    let modifyVpcEndpointServicePermissionsOverride: ModifyVpcEndpointServicePermissionsFunctionType?
    let modifyVpcPeeringConnectionOptionsOverride: ModifyVpcPeeringConnectionOptionsFunctionType?
    let modifyVpcTenancyOverride: ModifyVpcTenancyFunctionType?
    let modifyVpnConnectionOverride: ModifyVpnConnectionFunctionType?
    let modifyVpnConnectionOptionsOverride: ModifyVpnConnectionOptionsFunctionType?
    let modifyVpnTunnelCertificateOverride: ModifyVpnTunnelCertificateFunctionType?
    let modifyVpnTunnelOptionsOverride: ModifyVpnTunnelOptionsFunctionType?
    let monitorInstancesOverride: MonitorInstancesFunctionType?
    let moveAddressToVpcOverride: MoveAddressToVpcFunctionType?
    let moveByoipCidrToIpamOverride: MoveByoipCidrToIpamFunctionType?
    let provisionByoipCidrOverride: ProvisionByoipCidrFunctionType?
    let provisionIpamPoolCidrOverride: ProvisionIpamPoolCidrFunctionType?
    let provisionPublicIpv4PoolCidrOverride: ProvisionPublicIpv4PoolCidrFunctionType?
    let purchaseHostReservationOverride: PurchaseHostReservationFunctionType?
    let purchaseReservedInstancesOfferingOverride: PurchaseReservedInstancesOfferingFunctionType?
    let purchaseScheduledInstancesOverride: PurchaseScheduledInstancesFunctionType?
    let rebootInstancesOverride: RebootInstancesFunctionType?
    let registerImageOverride: RegisterImageFunctionType?
    let registerInstanceEventNotificationAttributesOverride: RegisterInstanceEventNotificationAttributesFunctionType?
    let registerTransitGatewayMulticastGroupMembersOverride: RegisterTransitGatewayMulticastGroupMembersFunctionType?
    let registerTransitGatewayMulticastGroupSourcesOverride: RegisterTransitGatewayMulticastGroupSourcesFunctionType?
    let rejectTransitGatewayMulticastDomainAssociationsOverride: RejectTransitGatewayMulticastDomainAssociationsFunctionType?
    let rejectTransitGatewayPeeringAttachmentOverride: RejectTransitGatewayPeeringAttachmentFunctionType?
    let rejectTransitGatewayVpcAttachmentOverride: RejectTransitGatewayVpcAttachmentFunctionType?
    let rejectVpcEndpointConnectionsOverride: RejectVpcEndpointConnectionsFunctionType?
    let rejectVpcPeeringConnectionOverride: RejectVpcPeeringConnectionFunctionType?
    let releaseAddressOverride: ReleaseAddressFunctionType?
    let releaseHostsOverride: ReleaseHostsFunctionType?
    let releaseIpamPoolAllocationOverride: ReleaseIpamPoolAllocationFunctionType?
    let replaceIamInstanceProfileAssociationOverride: ReplaceIamInstanceProfileAssociationFunctionType?
    let replaceNetworkAclAssociationOverride: ReplaceNetworkAclAssociationFunctionType?
    let replaceNetworkAclEntryOverride: ReplaceNetworkAclEntryFunctionType?
    let replaceRouteOverride: ReplaceRouteFunctionType?
    let replaceRouteTableAssociationOverride: ReplaceRouteTableAssociationFunctionType?
    let replaceTransitGatewayRouteOverride: ReplaceTransitGatewayRouteFunctionType?
    let reportInstanceStatusOverride: ReportInstanceStatusFunctionType?
    let requestSpotFleetOverride: RequestSpotFleetFunctionType?
    let requestSpotInstancesOverride: RequestSpotInstancesFunctionType?
    let resetAddressAttributeOverride: ResetAddressAttributeFunctionType?
    let resetEbsDefaultKmsKeyIdOverride: ResetEbsDefaultKmsKeyIdFunctionType?
    let resetFpgaImageAttributeOverride: ResetFpgaImageAttributeFunctionType?
    let resetImageAttributeOverride: ResetImageAttributeFunctionType?
    let resetInstanceAttributeOverride: ResetInstanceAttributeFunctionType?
    let resetNetworkInterfaceAttributeOverride: ResetNetworkInterfaceAttributeFunctionType?
    let resetSnapshotAttributeOverride: ResetSnapshotAttributeFunctionType?
    let restoreAddressToClassicOverride: RestoreAddressToClassicFunctionType?
    let restoreImageFromRecycleBinOverride: RestoreImageFromRecycleBinFunctionType?
    let restoreManagedPrefixListVersionOverride: RestoreManagedPrefixListVersionFunctionType?
    let restoreSnapshotFromRecycleBinOverride: RestoreSnapshotFromRecycleBinFunctionType?
    let restoreSnapshotTierOverride: RestoreSnapshotTierFunctionType?
    let revokeClientVpnIngressOverride: RevokeClientVpnIngressFunctionType?
    let revokeSecurityGroupEgressOverride: RevokeSecurityGroupEgressFunctionType?
    let revokeSecurityGroupIngressOverride: RevokeSecurityGroupIngressFunctionType?
    let runInstancesOverride: RunInstancesFunctionType?
    let runScheduledInstancesOverride: RunScheduledInstancesFunctionType?
    let searchLocalGatewayRoutesOverride: SearchLocalGatewayRoutesFunctionType?
    let searchTransitGatewayMulticastGroupsOverride: SearchTransitGatewayMulticastGroupsFunctionType?
    let searchTransitGatewayRoutesOverride: SearchTransitGatewayRoutesFunctionType?
    let sendDiagnosticInterruptOverride: SendDiagnosticInterruptFunctionType?
    let startInstancesOverride: StartInstancesFunctionType?
    let startNetworkInsightsAccessScopeAnalysisOverride: StartNetworkInsightsAccessScopeAnalysisFunctionType?
    let startNetworkInsightsAnalysisOverride: StartNetworkInsightsAnalysisFunctionType?
    let startVpcEndpointServicePrivateDnsVerificationOverride: StartVpcEndpointServicePrivateDnsVerificationFunctionType?
    let stopInstancesOverride: StopInstancesFunctionType?
    let terminateClientVpnConnectionsOverride: TerminateClientVpnConnectionsFunctionType?
    let terminateInstancesOverride: TerminateInstancesFunctionType?
    let unassignIpv6AddressesOverride: UnassignIpv6AddressesFunctionType?
    let unassignPrivateIpAddressesOverride: UnassignPrivateIpAddressesFunctionType?
    let unmonitorInstancesOverride: UnmonitorInstancesFunctionType?
    let updateSecurityGroupRuleDescriptionsEgressOverride: UpdateSecurityGroupRuleDescriptionsEgressFunctionType?
    let updateSecurityGroupRuleDescriptionsIngressOverride: UpdateSecurityGroupRuleDescriptionsIngressFunctionType?
    let withdrawByoipCidrOverride: WithdrawByoipCidrFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: ElasticComputeCloudError,
            acceptReservedInstancesExchangeQuote: AcceptReservedInstancesExchangeQuoteFunctionType? = nil,
            acceptTransitGatewayMulticastDomainAssociations: AcceptTransitGatewayMulticastDomainAssociationsFunctionType? = nil,
            acceptTransitGatewayPeeringAttachment: AcceptTransitGatewayPeeringAttachmentFunctionType? = nil,
            acceptTransitGatewayVpcAttachment: AcceptTransitGatewayVpcAttachmentFunctionType? = nil,
            acceptVpcEndpointConnections: AcceptVpcEndpointConnectionsFunctionType? = nil,
            acceptVpcPeeringConnection: AcceptVpcPeeringConnectionFunctionType? = nil,
            advertiseByoipCidr: AdvertiseByoipCidrFunctionType? = nil,
            allocateAddress: AllocateAddressFunctionType? = nil,
            allocateHosts: AllocateHostsFunctionType? = nil,
            allocateIpamPoolCidr: AllocateIpamPoolCidrFunctionType? = nil,
            applySecurityGroupsToClientVpnTargetNetwork: ApplySecurityGroupsToClientVpnTargetNetworkFunctionType? = nil,
            assignIpv6Addresses: AssignIpv6AddressesFunctionType? = nil,
            assignPrivateIpAddresses: AssignPrivateIpAddressesFunctionType? = nil,
            associateAddress: AssociateAddressFunctionType? = nil,
            associateClientVpnTargetNetwork: AssociateClientVpnTargetNetworkFunctionType? = nil,
            associateDhcpOptions: AssociateDhcpOptionsFunctionType? = nil,
            associateEnclaveCertificateIamRole: AssociateEnclaveCertificateIamRoleFunctionType? = nil,
            associateIamInstanceProfile: AssociateIamInstanceProfileFunctionType? = nil,
            associateInstanceEventWindow: AssociateInstanceEventWindowFunctionType? = nil,
            associateRouteTable: AssociateRouteTableFunctionType? = nil,
            associateSubnetCidrBlock: AssociateSubnetCidrBlockFunctionType? = nil,
            associateTransitGatewayMulticastDomain: AssociateTransitGatewayMulticastDomainFunctionType? = nil,
            associateTransitGatewayPolicyTable: AssociateTransitGatewayPolicyTableFunctionType? = nil,
            associateTransitGatewayRouteTable: AssociateTransitGatewayRouteTableFunctionType? = nil,
            associateTrunkInterface: AssociateTrunkInterfaceFunctionType? = nil,
            associateVpcCidrBlock: AssociateVpcCidrBlockFunctionType? = nil,
            attachClassicLinkVpc: AttachClassicLinkVpcFunctionType? = nil,
            attachInternetGateway: AttachInternetGatewayFunctionType? = nil,
            attachNetworkInterface: AttachNetworkInterfaceFunctionType? = nil,
            attachVolume: AttachVolumeFunctionType? = nil,
            attachVpnGateway: AttachVpnGatewayFunctionType? = nil,
            authorizeClientVpnIngress: AuthorizeClientVpnIngressFunctionType? = nil,
            authorizeSecurityGroupEgress: AuthorizeSecurityGroupEgressFunctionType? = nil,
            authorizeSecurityGroupIngress: AuthorizeSecurityGroupIngressFunctionType? = nil,
            bundleInstance: BundleInstanceFunctionType? = nil,
            cancelBundleTask: CancelBundleTaskFunctionType? = nil,
            cancelCapacityReservation: CancelCapacityReservationFunctionType? = nil,
            cancelCapacityReservationFleets: CancelCapacityReservationFleetsFunctionType? = nil,
            cancelConversionTask: CancelConversionTaskFunctionType? = nil,
            cancelExportTask: CancelExportTaskFunctionType? = nil,
            cancelImportTask: CancelImportTaskFunctionType? = nil,
            cancelReservedInstancesListing: CancelReservedInstancesListingFunctionType? = nil,
            cancelSpotFleetRequests: CancelSpotFleetRequestsFunctionType? = nil,
            cancelSpotInstanceRequests: CancelSpotInstanceRequestsFunctionType? = nil,
            confirmProductInstance: ConfirmProductInstanceFunctionType? = nil,
            copyFpgaImage: CopyFpgaImageFunctionType? = nil,
            copyImage: CopyImageFunctionType? = nil,
            copySnapshot: CopySnapshotFunctionType? = nil,
            createCapacityReservation: CreateCapacityReservationFunctionType? = nil,
            createCapacityReservationFleet: CreateCapacityReservationFleetFunctionType? = nil,
            createCarrierGateway: CreateCarrierGatewayFunctionType? = nil,
            createClientVpnEndpoint: CreateClientVpnEndpointFunctionType? = nil,
            createClientVpnRoute: CreateClientVpnRouteFunctionType? = nil,
            createCoipCidr: CreateCoipCidrFunctionType? = nil,
            createCoipPool: CreateCoipPoolFunctionType? = nil,
            createCustomerGateway: CreateCustomerGatewayFunctionType? = nil,
            createDefaultSubnet: CreateDefaultSubnetFunctionType? = nil,
            createDefaultVpc: CreateDefaultVpcFunctionType? = nil,
            createDhcpOptions: CreateDhcpOptionsFunctionType? = nil,
            createEgressOnlyInternetGateway: CreateEgressOnlyInternetGatewayFunctionType? = nil,
            createFleet: CreateFleetFunctionType? = nil,
            createFlowLogs: CreateFlowLogsFunctionType? = nil,
            createFpgaImage: CreateFpgaImageFunctionType? = nil,
            createImage: CreateImageFunctionType? = nil,
            createInstanceEventWindow: CreateInstanceEventWindowFunctionType? = nil,
            createInstanceExportTask: CreateInstanceExportTaskFunctionType? = nil,
            createInternetGateway: CreateInternetGatewayFunctionType? = nil,
            createIpam: CreateIpamFunctionType? = nil,
            createIpamPool: CreateIpamPoolFunctionType? = nil,
            createIpamScope: CreateIpamScopeFunctionType? = nil,
            createKeyPair: CreateKeyPairFunctionType? = nil,
            createLaunchTemplate: CreateLaunchTemplateFunctionType? = nil,
            createLaunchTemplateVersion: CreateLaunchTemplateVersionFunctionType? = nil,
            createLocalGatewayRoute: CreateLocalGatewayRouteFunctionType? = nil,
            createLocalGatewayRouteTable: CreateLocalGatewayRouteTableFunctionType? = nil,
            createLocalGatewayRouteTableVirtualInterfaceGroupAssociation: CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationFunctionType? = nil,
            createLocalGatewayRouteTableVpcAssociation: CreateLocalGatewayRouteTableVpcAssociationFunctionType? = nil,
            createManagedPrefixList: CreateManagedPrefixListFunctionType? = nil,
            createNatGateway: CreateNatGatewayFunctionType? = nil,
            createNetworkAcl: CreateNetworkAclFunctionType? = nil,
            createNetworkAclEntry: CreateNetworkAclEntryFunctionType? = nil,
            createNetworkInsightsAccessScope: CreateNetworkInsightsAccessScopeFunctionType? = nil,
            createNetworkInsightsPath: CreateNetworkInsightsPathFunctionType? = nil,
            createNetworkInterface: CreateNetworkInterfaceFunctionType? = nil,
            createNetworkInterfacePermission: CreateNetworkInterfacePermissionFunctionType? = nil,
            createPlacementGroup: CreatePlacementGroupFunctionType? = nil,
            createPublicIpv4Pool: CreatePublicIpv4PoolFunctionType? = nil,
            createReplaceRootVolumeTask: CreateReplaceRootVolumeTaskFunctionType? = nil,
            createReservedInstancesListing: CreateReservedInstancesListingFunctionType? = nil,
            createRestoreImageTask: CreateRestoreImageTaskFunctionType? = nil,
            createRoute: CreateRouteFunctionType? = nil,
            createRouteTable: CreateRouteTableFunctionType? = nil,
            createSecurityGroup: CreateSecurityGroupFunctionType? = nil,
            createSnapshot: CreateSnapshotFunctionType? = nil,
            createSnapshots: CreateSnapshotsFunctionType? = nil,
            createSpotDatafeedSubscription: CreateSpotDatafeedSubscriptionFunctionType? = nil,
            createStoreImageTask: CreateStoreImageTaskFunctionType? = nil,
            createSubnet: CreateSubnetFunctionType? = nil,
            createSubnetCidrReservation: CreateSubnetCidrReservationFunctionType? = nil,
            createTags: CreateTagsFunctionType? = nil,
            createTrafficMirrorFilter: CreateTrafficMirrorFilterFunctionType? = nil,
            createTrafficMirrorFilterRule: CreateTrafficMirrorFilterRuleFunctionType? = nil,
            createTrafficMirrorSession: CreateTrafficMirrorSessionFunctionType? = nil,
            createTrafficMirrorTarget: CreateTrafficMirrorTargetFunctionType? = nil,
            createTransitGateway: CreateTransitGatewayFunctionType? = nil,
            createTransitGatewayConnect: CreateTransitGatewayConnectFunctionType? = nil,
            createTransitGatewayConnectPeer: CreateTransitGatewayConnectPeerFunctionType? = nil,
            createTransitGatewayMulticastDomain: CreateTransitGatewayMulticastDomainFunctionType? = nil,
            createTransitGatewayPeeringAttachment: CreateTransitGatewayPeeringAttachmentFunctionType? = nil,
            createTransitGatewayPolicyTable: CreateTransitGatewayPolicyTableFunctionType? = nil,
            createTransitGatewayPrefixListReference: CreateTransitGatewayPrefixListReferenceFunctionType? = nil,
            createTransitGatewayRoute: CreateTransitGatewayRouteFunctionType? = nil,
            createTransitGatewayRouteTable: CreateTransitGatewayRouteTableFunctionType? = nil,
            createTransitGatewayRouteTableAnnouncement: CreateTransitGatewayRouteTableAnnouncementFunctionType? = nil,
            createTransitGatewayVpcAttachment: CreateTransitGatewayVpcAttachmentFunctionType? = nil,
            createVolume: CreateVolumeFunctionType? = nil,
            createVpc: CreateVpcFunctionType? = nil,
            createVpcEndpoint: CreateVpcEndpointFunctionType? = nil,
            createVpcEndpointConnectionNotification: CreateVpcEndpointConnectionNotificationFunctionType? = nil,
            createVpcEndpointServiceConfiguration: CreateVpcEndpointServiceConfigurationFunctionType? = nil,
            createVpcPeeringConnection: CreateVpcPeeringConnectionFunctionType? = nil,
            createVpnConnection: CreateVpnConnectionFunctionType? = nil,
            createVpnConnectionRoute: CreateVpnConnectionRouteFunctionType? = nil,
            createVpnGateway: CreateVpnGatewayFunctionType? = nil,
            deleteCarrierGateway: DeleteCarrierGatewayFunctionType? = nil,
            deleteClientVpnEndpoint: DeleteClientVpnEndpointFunctionType? = nil,
            deleteClientVpnRoute: DeleteClientVpnRouteFunctionType? = nil,
            deleteCoipCidr: DeleteCoipCidrFunctionType? = nil,
            deleteCoipPool: DeleteCoipPoolFunctionType? = nil,
            deleteCustomerGateway: DeleteCustomerGatewayFunctionType? = nil,
            deleteDhcpOptions: DeleteDhcpOptionsFunctionType? = nil,
            deleteEgressOnlyInternetGateway: DeleteEgressOnlyInternetGatewayFunctionType? = nil,
            deleteFleets: DeleteFleetsFunctionType? = nil,
            deleteFlowLogs: DeleteFlowLogsFunctionType? = nil,
            deleteFpgaImage: DeleteFpgaImageFunctionType? = nil,
            deleteInstanceEventWindow: DeleteInstanceEventWindowFunctionType? = nil,
            deleteInternetGateway: DeleteInternetGatewayFunctionType? = nil,
            deleteIpam: DeleteIpamFunctionType? = nil,
            deleteIpamPool: DeleteIpamPoolFunctionType? = nil,
            deleteIpamScope: DeleteIpamScopeFunctionType? = nil,
            deleteKeyPair: DeleteKeyPairFunctionType? = nil,
            deleteLaunchTemplate: DeleteLaunchTemplateFunctionType? = nil,
            deleteLaunchTemplateVersions: DeleteLaunchTemplateVersionsFunctionType? = nil,
            deleteLocalGatewayRoute: DeleteLocalGatewayRouteFunctionType? = nil,
            deleteLocalGatewayRouteTable: DeleteLocalGatewayRouteTableFunctionType? = nil,
            deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation: DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationFunctionType? = nil,
            deleteLocalGatewayRouteTableVpcAssociation: DeleteLocalGatewayRouteTableVpcAssociationFunctionType? = nil,
            deleteManagedPrefixList: DeleteManagedPrefixListFunctionType? = nil,
            deleteNatGateway: DeleteNatGatewayFunctionType? = nil,
            deleteNetworkAcl: DeleteNetworkAclFunctionType? = nil,
            deleteNetworkAclEntry: DeleteNetworkAclEntryFunctionType? = nil,
            deleteNetworkInsightsAccessScope: DeleteNetworkInsightsAccessScopeFunctionType? = nil,
            deleteNetworkInsightsAccessScopeAnalysis: DeleteNetworkInsightsAccessScopeAnalysisFunctionType? = nil,
            deleteNetworkInsightsAnalysis: DeleteNetworkInsightsAnalysisFunctionType? = nil,
            deleteNetworkInsightsPath: DeleteNetworkInsightsPathFunctionType? = nil,
            deleteNetworkInterface: DeleteNetworkInterfaceFunctionType? = nil,
            deleteNetworkInterfacePermission: DeleteNetworkInterfacePermissionFunctionType? = nil,
            deletePlacementGroup: DeletePlacementGroupFunctionType? = nil,
            deletePublicIpv4Pool: DeletePublicIpv4PoolFunctionType? = nil,
            deleteQueuedReservedInstances: DeleteQueuedReservedInstancesFunctionType? = nil,
            deleteRoute: DeleteRouteFunctionType? = nil,
            deleteRouteTable: DeleteRouteTableFunctionType? = nil,
            deleteSecurityGroup: DeleteSecurityGroupFunctionType? = nil,
            deleteSnapshot: DeleteSnapshotFunctionType? = nil,
            deleteSpotDatafeedSubscription: DeleteSpotDatafeedSubscriptionFunctionType? = nil,
            deleteSubnet: DeleteSubnetFunctionType? = nil,
            deleteSubnetCidrReservation: DeleteSubnetCidrReservationFunctionType? = nil,
            deleteTags: DeleteTagsFunctionType? = nil,
            deleteTrafficMirrorFilter: DeleteTrafficMirrorFilterFunctionType? = nil,
            deleteTrafficMirrorFilterRule: DeleteTrafficMirrorFilterRuleFunctionType? = nil,
            deleteTrafficMirrorSession: DeleteTrafficMirrorSessionFunctionType? = nil,
            deleteTrafficMirrorTarget: DeleteTrafficMirrorTargetFunctionType? = nil,
            deleteTransitGateway: DeleteTransitGatewayFunctionType? = nil,
            deleteTransitGatewayConnect: DeleteTransitGatewayConnectFunctionType? = nil,
            deleteTransitGatewayConnectPeer: DeleteTransitGatewayConnectPeerFunctionType? = nil,
            deleteTransitGatewayMulticastDomain: DeleteTransitGatewayMulticastDomainFunctionType? = nil,
            deleteTransitGatewayPeeringAttachment: DeleteTransitGatewayPeeringAttachmentFunctionType? = nil,
            deleteTransitGatewayPolicyTable: DeleteTransitGatewayPolicyTableFunctionType? = nil,
            deleteTransitGatewayPrefixListReference: DeleteTransitGatewayPrefixListReferenceFunctionType? = nil,
            deleteTransitGatewayRoute: DeleteTransitGatewayRouteFunctionType? = nil,
            deleteTransitGatewayRouteTable: DeleteTransitGatewayRouteTableFunctionType? = nil,
            deleteTransitGatewayRouteTableAnnouncement: DeleteTransitGatewayRouteTableAnnouncementFunctionType? = nil,
            deleteTransitGatewayVpcAttachment: DeleteTransitGatewayVpcAttachmentFunctionType? = nil,
            deleteVolume: DeleteVolumeFunctionType? = nil,
            deleteVpc: DeleteVpcFunctionType? = nil,
            deleteVpcEndpointConnectionNotifications: DeleteVpcEndpointConnectionNotificationsFunctionType? = nil,
            deleteVpcEndpointServiceConfigurations: DeleteVpcEndpointServiceConfigurationsFunctionType? = nil,
            deleteVpcEndpoints: DeleteVpcEndpointsFunctionType? = nil,
            deleteVpcPeeringConnection: DeleteVpcPeeringConnectionFunctionType? = nil,
            deleteVpnConnection: DeleteVpnConnectionFunctionType? = nil,
            deleteVpnConnectionRoute: DeleteVpnConnectionRouteFunctionType? = nil,
            deleteVpnGateway: DeleteVpnGatewayFunctionType? = nil,
            deprovisionByoipCidr: DeprovisionByoipCidrFunctionType? = nil,
            deprovisionIpamPoolCidr: DeprovisionIpamPoolCidrFunctionType? = nil,
            deprovisionPublicIpv4PoolCidr: DeprovisionPublicIpv4PoolCidrFunctionType? = nil,
            deregisterImage: DeregisterImageFunctionType? = nil,
            deregisterInstanceEventNotificationAttributes: DeregisterInstanceEventNotificationAttributesFunctionType? = nil,
            deregisterTransitGatewayMulticastGroupMembers: DeregisterTransitGatewayMulticastGroupMembersFunctionType? = nil,
            deregisterTransitGatewayMulticastGroupSources: DeregisterTransitGatewayMulticastGroupSourcesFunctionType? = nil,
            describeAccountAttributes: DescribeAccountAttributesFunctionType? = nil,
            describeAddresses: DescribeAddressesFunctionType? = nil,
            describeAddressesAttribute: DescribeAddressesAttributeFunctionType? = nil,
            describeAggregateIdFormat: DescribeAggregateIdFormatFunctionType? = nil,
            describeAvailabilityZones: DescribeAvailabilityZonesFunctionType? = nil,
            describeBundleTasks: DescribeBundleTasksFunctionType? = nil,
            describeByoipCidrs: DescribeByoipCidrsFunctionType? = nil,
            describeCapacityReservationFleets: DescribeCapacityReservationFleetsFunctionType? = nil,
            describeCapacityReservations: DescribeCapacityReservationsFunctionType? = nil,
            describeCarrierGateways: DescribeCarrierGatewaysFunctionType? = nil,
            describeClassicLinkInstances: DescribeClassicLinkInstancesFunctionType? = nil,
            describeClientVpnAuthorizationRules: DescribeClientVpnAuthorizationRulesFunctionType? = nil,
            describeClientVpnConnections: DescribeClientVpnConnectionsFunctionType? = nil,
            describeClientVpnEndpoints: DescribeClientVpnEndpointsFunctionType? = nil,
            describeClientVpnRoutes: DescribeClientVpnRoutesFunctionType? = nil,
            describeClientVpnTargetNetworks: DescribeClientVpnTargetNetworksFunctionType? = nil,
            describeCoipPools: DescribeCoipPoolsFunctionType? = nil,
            describeConversionTasks: DescribeConversionTasksFunctionType? = nil,
            describeCustomerGateways: DescribeCustomerGatewaysFunctionType? = nil,
            describeDhcpOptions: DescribeDhcpOptionsFunctionType? = nil,
            describeEgressOnlyInternetGateways: DescribeEgressOnlyInternetGatewaysFunctionType? = nil,
            describeElasticGpus: DescribeElasticGpusFunctionType? = nil,
            describeExportImageTasks: DescribeExportImageTasksFunctionType? = nil,
            describeExportTasks: DescribeExportTasksFunctionType? = nil,
            describeFastLaunchImages: DescribeFastLaunchImagesFunctionType? = nil,
            describeFastSnapshotRestores: DescribeFastSnapshotRestoresFunctionType? = nil,
            describeFleetHistory: DescribeFleetHistoryFunctionType? = nil,
            describeFleetInstances: DescribeFleetInstancesFunctionType? = nil,
            describeFleets: DescribeFleetsFunctionType? = nil,
            describeFlowLogs: DescribeFlowLogsFunctionType? = nil,
            describeFpgaImageAttribute: DescribeFpgaImageAttributeFunctionType? = nil,
            describeFpgaImages: DescribeFpgaImagesFunctionType? = nil,
            describeHostReservationOfferings: DescribeHostReservationOfferingsFunctionType? = nil,
            describeHostReservations: DescribeHostReservationsFunctionType? = nil,
            describeHosts: DescribeHostsFunctionType? = nil,
            describeIamInstanceProfileAssociations: DescribeIamInstanceProfileAssociationsFunctionType? = nil,
            describeIdFormat: DescribeIdFormatFunctionType? = nil,
            describeIdentityIdFormat: DescribeIdentityIdFormatFunctionType? = nil,
            describeImageAttribute: DescribeImageAttributeFunctionType? = nil,
            describeImages: DescribeImagesFunctionType? = nil,
            describeImportImageTasks: DescribeImportImageTasksFunctionType? = nil,
            describeImportSnapshotTasks: DescribeImportSnapshotTasksFunctionType? = nil,
            describeInstanceAttribute: DescribeInstanceAttributeFunctionType? = nil,
            describeInstanceCreditSpecifications: DescribeInstanceCreditSpecificationsFunctionType? = nil,
            describeInstanceEventNotificationAttributes: DescribeInstanceEventNotificationAttributesFunctionType? = nil,
            describeInstanceEventWindows: DescribeInstanceEventWindowsFunctionType? = nil,
            describeInstanceStatus: DescribeInstanceStatusFunctionType? = nil,
            describeInstanceTypeOfferings: DescribeInstanceTypeOfferingsFunctionType? = nil,
            describeInstanceTypes: DescribeInstanceTypesFunctionType? = nil,
            describeInstances: DescribeInstancesFunctionType? = nil,
            describeInternetGateways: DescribeInternetGatewaysFunctionType? = nil,
            describeIpamPools: DescribeIpamPoolsFunctionType? = nil,
            describeIpamScopes: DescribeIpamScopesFunctionType? = nil,
            describeIpams: DescribeIpamsFunctionType? = nil,
            describeIpv6Pools: DescribeIpv6PoolsFunctionType? = nil,
            describeKeyPairs: DescribeKeyPairsFunctionType? = nil,
            describeLaunchTemplateVersions: DescribeLaunchTemplateVersionsFunctionType? = nil,
            describeLaunchTemplates: DescribeLaunchTemplatesFunctionType? = nil,
            describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsFunctionType? = nil,
            describeLocalGatewayRouteTableVpcAssociations: DescribeLocalGatewayRouteTableVpcAssociationsFunctionType? = nil,
            describeLocalGatewayRouteTables: DescribeLocalGatewayRouteTablesFunctionType? = nil,
            describeLocalGatewayVirtualInterfaceGroups: DescribeLocalGatewayVirtualInterfaceGroupsFunctionType? = nil,
            describeLocalGatewayVirtualInterfaces: DescribeLocalGatewayVirtualInterfacesFunctionType? = nil,
            describeLocalGateways: DescribeLocalGatewaysFunctionType? = nil,
            describeManagedPrefixLists: DescribeManagedPrefixListsFunctionType? = nil,
            describeMovingAddresses: DescribeMovingAddressesFunctionType? = nil,
            describeNatGateways: DescribeNatGatewaysFunctionType? = nil,
            describeNetworkAcls: DescribeNetworkAclsFunctionType? = nil,
            describeNetworkInsightsAccessScopeAnalyses: DescribeNetworkInsightsAccessScopeAnalysesFunctionType? = nil,
            describeNetworkInsightsAccessScopes: DescribeNetworkInsightsAccessScopesFunctionType? = nil,
            describeNetworkInsightsAnalyses: DescribeNetworkInsightsAnalysesFunctionType? = nil,
            describeNetworkInsightsPaths: DescribeNetworkInsightsPathsFunctionType? = nil,
            describeNetworkInterfaceAttribute: DescribeNetworkInterfaceAttributeFunctionType? = nil,
            describeNetworkInterfacePermissions: DescribeNetworkInterfacePermissionsFunctionType? = nil,
            describeNetworkInterfaces: DescribeNetworkInterfacesFunctionType? = nil,
            describePlacementGroups: DescribePlacementGroupsFunctionType? = nil,
            describePrefixLists: DescribePrefixListsFunctionType? = nil,
            describePrincipalIdFormat: DescribePrincipalIdFormatFunctionType? = nil,
            describePublicIpv4Pools: DescribePublicIpv4PoolsFunctionType? = nil,
            describeRegions: DescribeRegionsFunctionType? = nil,
            describeReplaceRootVolumeTasks: DescribeReplaceRootVolumeTasksFunctionType? = nil,
            describeReservedInstances: DescribeReservedInstancesFunctionType? = nil,
            describeReservedInstancesListings: DescribeReservedInstancesListingsFunctionType? = nil,
            describeReservedInstancesModifications: DescribeReservedInstancesModificationsFunctionType? = nil,
            describeReservedInstancesOfferings: DescribeReservedInstancesOfferingsFunctionType? = nil,
            describeRouteTables: DescribeRouteTablesFunctionType? = nil,
            describeScheduledInstanceAvailability: DescribeScheduledInstanceAvailabilityFunctionType? = nil,
            describeScheduledInstances: DescribeScheduledInstancesFunctionType? = nil,
            describeSecurityGroupReferences: DescribeSecurityGroupReferencesFunctionType? = nil,
            describeSecurityGroupRules: DescribeSecurityGroupRulesFunctionType? = nil,
            describeSecurityGroups: DescribeSecurityGroupsFunctionType? = nil,
            describeSnapshotAttribute: DescribeSnapshotAttributeFunctionType? = nil,
            describeSnapshotTierStatus: DescribeSnapshotTierStatusFunctionType? = nil,
            describeSnapshots: DescribeSnapshotsFunctionType? = nil,
            describeSpotDatafeedSubscription: DescribeSpotDatafeedSubscriptionFunctionType? = nil,
            describeSpotFleetInstances: DescribeSpotFleetInstancesFunctionType? = nil,
            describeSpotFleetRequestHistory: DescribeSpotFleetRequestHistoryFunctionType? = nil,
            describeSpotFleetRequests: DescribeSpotFleetRequestsFunctionType? = nil,
            describeSpotInstanceRequests: DescribeSpotInstanceRequestsFunctionType? = nil,
            describeSpotPriceHistory: DescribeSpotPriceHistoryFunctionType? = nil,
            describeStaleSecurityGroups: DescribeStaleSecurityGroupsFunctionType? = nil,
            describeStoreImageTasks: DescribeStoreImageTasksFunctionType? = nil,
            describeSubnets: DescribeSubnetsFunctionType? = nil,
            describeTags: DescribeTagsFunctionType? = nil,
            describeTrafficMirrorFilters: DescribeTrafficMirrorFiltersFunctionType? = nil,
            describeTrafficMirrorSessions: DescribeTrafficMirrorSessionsFunctionType? = nil,
            describeTrafficMirrorTargets: DescribeTrafficMirrorTargetsFunctionType? = nil,
            describeTransitGatewayAttachments: DescribeTransitGatewayAttachmentsFunctionType? = nil,
            describeTransitGatewayConnectPeers: DescribeTransitGatewayConnectPeersFunctionType? = nil,
            describeTransitGatewayConnects: DescribeTransitGatewayConnectsFunctionType? = nil,
            describeTransitGatewayMulticastDomains: DescribeTransitGatewayMulticastDomainsFunctionType? = nil,
            describeTransitGatewayPeeringAttachments: DescribeTransitGatewayPeeringAttachmentsFunctionType? = nil,
            describeTransitGatewayPolicyTables: DescribeTransitGatewayPolicyTablesFunctionType? = nil,
            describeTransitGatewayRouteTableAnnouncements: DescribeTransitGatewayRouteTableAnnouncementsFunctionType? = nil,
            describeTransitGatewayRouteTables: DescribeTransitGatewayRouteTablesFunctionType? = nil,
            describeTransitGatewayVpcAttachments: DescribeTransitGatewayVpcAttachmentsFunctionType? = nil,
            describeTransitGateways: DescribeTransitGatewaysFunctionType? = nil,
            describeTrunkInterfaceAssociations: DescribeTrunkInterfaceAssociationsFunctionType? = nil,
            describeVolumeAttribute: DescribeVolumeAttributeFunctionType? = nil,
            describeVolumeStatus: DescribeVolumeStatusFunctionType? = nil,
            describeVolumes: DescribeVolumesFunctionType? = nil,
            describeVolumesModifications: DescribeVolumesModificationsFunctionType? = nil,
            describeVpcAttribute: DescribeVpcAttributeFunctionType? = nil,
            describeVpcClassicLink: DescribeVpcClassicLinkFunctionType? = nil,
            describeVpcClassicLinkDnsSupport: DescribeVpcClassicLinkDnsSupportFunctionType? = nil,
            describeVpcEndpointConnectionNotifications: DescribeVpcEndpointConnectionNotificationsFunctionType? = nil,
            describeVpcEndpointConnections: DescribeVpcEndpointConnectionsFunctionType? = nil,
            describeVpcEndpointServiceConfigurations: DescribeVpcEndpointServiceConfigurationsFunctionType? = nil,
            describeVpcEndpointServicePermissions: DescribeVpcEndpointServicePermissionsFunctionType? = nil,
            describeVpcEndpointServices: DescribeVpcEndpointServicesFunctionType? = nil,
            describeVpcEndpoints: DescribeVpcEndpointsFunctionType? = nil,
            describeVpcPeeringConnections: DescribeVpcPeeringConnectionsFunctionType? = nil,
            describeVpcs: DescribeVpcsFunctionType? = nil,
            describeVpnConnections: DescribeVpnConnectionsFunctionType? = nil,
            describeVpnGateways: DescribeVpnGatewaysFunctionType? = nil,
            detachClassicLinkVpc: DetachClassicLinkVpcFunctionType? = nil,
            detachInternetGateway: DetachInternetGatewayFunctionType? = nil,
            detachNetworkInterface: DetachNetworkInterfaceFunctionType? = nil,
            detachVolume: DetachVolumeFunctionType? = nil,
            detachVpnGateway: DetachVpnGatewayFunctionType? = nil,
            disableEbsEncryptionByDefault: DisableEbsEncryptionByDefaultFunctionType? = nil,
            disableFastLaunch: DisableFastLaunchFunctionType? = nil,
            disableFastSnapshotRestores: DisableFastSnapshotRestoresFunctionType? = nil,
            disableImageDeprecation: DisableImageDeprecationFunctionType? = nil,
            disableIpamOrganizationAdminAccount: DisableIpamOrganizationAdminAccountFunctionType? = nil,
            disableSerialConsoleAccess: DisableSerialConsoleAccessFunctionType? = nil,
            disableTransitGatewayRouteTablePropagation: DisableTransitGatewayRouteTablePropagationFunctionType? = nil,
            disableVgwRoutePropagation: DisableVgwRoutePropagationFunctionType? = nil,
            disableVpcClassicLink: DisableVpcClassicLinkFunctionType? = nil,
            disableVpcClassicLinkDnsSupport: DisableVpcClassicLinkDnsSupportFunctionType? = nil,
            disassociateAddress: DisassociateAddressFunctionType? = nil,
            disassociateClientVpnTargetNetwork: DisassociateClientVpnTargetNetworkFunctionType? = nil,
            disassociateEnclaveCertificateIamRole: DisassociateEnclaveCertificateIamRoleFunctionType? = nil,
            disassociateIamInstanceProfile: DisassociateIamInstanceProfileFunctionType? = nil,
            disassociateInstanceEventWindow: DisassociateInstanceEventWindowFunctionType? = nil,
            disassociateRouteTable: DisassociateRouteTableFunctionType? = nil,
            disassociateSubnetCidrBlock: DisassociateSubnetCidrBlockFunctionType? = nil,
            disassociateTransitGatewayMulticastDomain: DisassociateTransitGatewayMulticastDomainFunctionType? = nil,
            disassociateTransitGatewayPolicyTable: DisassociateTransitGatewayPolicyTableFunctionType? = nil,
            disassociateTransitGatewayRouteTable: DisassociateTransitGatewayRouteTableFunctionType? = nil,
            disassociateTrunkInterface: DisassociateTrunkInterfaceFunctionType? = nil,
            disassociateVpcCidrBlock: DisassociateVpcCidrBlockFunctionType? = nil,
            enableEbsEncryptionByDefault: EnableEbsEncryptionByDefaultFunctionType? = nil,
            enableFastLaunch: EnableFastLaunchFunctionType? = nil,
            enableFastSnapshotRestores: EnableFastSnapshotRestoresFunctionType? = nil,
            enableImageDeprecation: EnableImageDeprecationFunctionType? = nil,
            enableIpamOrganizationAdminAccount: EnableIpamOrganizationAdminAccountFunctionType? = nil,
            enableSerialConsoleAccess: EnableSerialConsoleAccessFunctionType? = nil,
            enableTransitGatewayRouteTablePropagation: EnableTransitGatewayRouteTablePropagationFunctionType? = nil,
            enableVgwRoutePropagation: EnableVgwRoutePropagationFunctionType? = nil,
            enableVolumeIO: EnableVolumeIOFunctionType? = nil,
            enableVpcClassicLink: EnableVpcClassicLinkFunctionType? = nil,
            enableVpcClassicLinkDnsSupport: EnableVpcClassicLinkDnsSupportFunctionType? = nil,
            exportClientVpnClientCertificateRevocationList: ExportClientVpnClientCertificateRevocationListFunctionType? = nil,
            exportClientVpnClientConfiguration: ExportClientVpnClientConfigurationFunctionType? = nil,
            exportImage: ExportImageFunctionType? = nil,
            exportTransitGatewayRoutes: ExportTransitGatewayRoutesFunctionType? = nil,
            getAssociatedEnclaveCertificateIamRoles: GetAssociatedEnclaveCertificateIamRolesFunctionType? = nil,
            getAssociatedIpv6PoolCidrs: GetAssociatedIpv6PoolCidrsFunctionType? = nil,
            getCapacityReservationUsage: GetCapacityReservationUsageFunctionType? = nil,
            getCoipPoolUsage: GetCoipPoolUsageFunctionType? = nil,
            getConsoleOutput: GetConsoleOutputFunctionType? = nil,
            getConsoleScreenshot: GetConsoleScreenshotFunctionType? = nil,
            getDefaultCreditSpecification: GetDefaultCreditSpecificationFunctionType? = nil,
            getEbsDefaultKmsKeyId: GetEbsDefaultKmsKeyIdFunctionType? = nil,
            getEbsEncryptionByDefault: GetEbsEncryptionByDefaultFunctionType? = nil,
            getFlowLogsIntegrationTemplate: GetFlowLogsIntegrationTemplateFunctionType? = nil,
            getGroupsForCapacityReservation: GetGroupsForCapacityReservationFunctionType? = nil,
            getHostReservationPurchasePreview: GetHostReservationPurchasePreviewFunctionType? = nil,
            getInstanceTypesFromInstanceRequirements: GetInstanceTypesFromInstanceRequirementsFunctionType? = nil,
            getInstanceUefiData: GetInstanceUefiDataFunctionType? = nil,
            getIpamAddressHistory: GetIpamAddressHistoryFunctionType? = nil,
            getIpamPoolAllocations: GetIpamPoolAllocationsFunctionType? = nil,
            getIpamPoolCidrs: GetIpamPoolCidrsFunctionType? = nil,
            getIpamResourceCidrs: GetIpamResourceCidrsFunctionType? = nil,
            getLaunchTemplateData: GetLaunchTemplateDataFunctionType? = nil,
            getManagedPrefixListAssociations: GetManagedPrefixListAssociationsFunctionType? = nil,
            getManagedPrefixListEntries: GetManagedPrefixListEntriesFunctionType? = nil,
            getNetworkInsightsAccessScopeAnalysisFindings: GetNetworkInsightsAccessScopeAnalysisFindingsFunctionType? = nil,
            getNetworkInsightsAccessScopeContent: GetNetworkInsightsAccessScopeContentFunctionType? = nil,
            getPasswordData: GetPasswordDataFunctionType? = nil,
            getReservedInstancesExchangeQuote: GetReservedInstancesExchangeQuoteFunctionType? = nil,
            getSerialConsoleAccessStatus: GetSerialConsoleAccessStatusFunctionType? = nil,
            getSpotPlacementScores: GetSpotPlacementScoresFunctionType? = nil,
            getSubnetCidrReservations: GetSubnetCidrReservationsFunctionType? = nil,
            getTransitGatewayAttachmentPropagations: GetTransitGatewayAttachmentPropagationsFunctionType? = nil,
            getTransitGatewayMulticastDomainAssociations: GetTransitGatewayMulticastDomainAssociationsFunctionType? = nil,
            getTransitGatewayPolicyTableAssociations: GetTransitGatewayPolicyTableAssociationsFunctionType? = nil,
            getTransitGatewayPolicyTableEntries: GetTransitGatewayPolicyTableEntriesFunctionType? = nil,
            getTransitGatewayPrefixListReferences: GetTransitGatewayPrefixListReferencesFunctionType? = nil,
            getTransitGatewayRouteTableAssociations: GetTransitGatewayRouteTableAssociationsFunctionType? = nil,
            getTransitGatewayRouteTablePropagations: GetTransitGatewayRouteTablePropagationsFunctionType? = nil,
            getVpnConnectionDeviceSampleConfiguration: GetVpnConnectionDeviceSampleConfigurationFunctionType? = nil,
            getVpnConnectionDeviceTypes: GetVpnConnectionDeviceTypesFunctionType? = nil,
            importClientVpnClientCertificateRevocationList: ImportClientVpnClientCertificateRevocationListFunctionType? = nil,
            importImage: ImportImageFunctionType? = nil,
            importInstance: ImportInstanceFunctionType? = nil,
            importKeyPair: ImportKeyPairFunctionType? = nil,
            importSnapshot: ImportSnapshotFunctionType? = nil,
            importVolume: ImportVolumeFunctionType? = nil,
            listImagesInRecycleBin: ListImagesInRecycleBinFunctionType? = nil,
            listSnapshotsInRecycleBin: ListSnapshotsInRecycleBinFunctionType? = nil,
            modifyAddressAttribute: ModifyAddressAttributeFunctionType? = nil,
            modifyAvailabilityZoneGroup: ModifyAvailabilityZoneGroupFunctionType? = nil,
            modifyCapacityReservation: ModifyCapacityReservationFunctionType? = nil,
            modifyCapacityReservationFleet: ModifyCapacityReservationFleetFunctionType? = nil,
            modifyClientVpnEndpoint: ModifyClientVpnEndpointFunctionType? = nil,
            modifyDefaultCreditSpecification: ModifyDefaultCreditSpecificationFunctionType? = nil,
            modifyEbsDefaultKmsKeyId: ModifyEbsDefaultKmsKeyIdFunctionType? = nil,
            modifyFleet: ModifyFleetFunctionType? = nil,
            modifyFpgaImageAttribute: ModifyFpgaImageAttributeFunctionType? = nil,
            modifyHosts: ModifyHostsFunctionType? = nil,
            modifyIdFormat: ModifyIdFormatFunctionType? = nil,
            modifyIdentityIdFormat: ModifyIdentityIdFormatFunctionType? = nil,
            modifyImageAttribute: ModifyImageAttributeFunctionType? = nil,
            modifyInstanceAttribute: ModifyInstanceAttributeFunctionType? = nil,
            modifyInstanceCapacityReservationAttributes: ModifyInstanceCapacityReservationAttributesFunctionType? = nil,
            modifyInstanceCreditSpecification: ModifyInstanceCreditSpecificationFunctionType? = nil,
            modifyInstanceEventStartTime: ModifyInstanceEventStartTimeFunctionType? = nil,
            modifyInstanceEventWindow: ModifyInstanceEventWindowFunctionType? = nil,
            modifyInstanceMaintenanceOptions: ModifyInstanceMaintenanceOptionsFunctionType? = nil,
            modifyInstanceMetadataOptions: ModifyInstanceMetadataOptionsFunctionType? = nil,
            modifyInstancePlacement: ModifyInstancePlacementFunctionType? = nil,
            modifyIpam: ModifyIpamFunctionType? = nil,
            modifyIpamPool: ModifyIpamPoolFunctionType? = nil,
            modifyIpamResourceCidr: ModifyIpamResourceCidrFunctionType? = nil,
            modifyIpamScope: ModifyIpamScopeFunctionType? = nil,
            modifyLaunchTemplate: ModifyLaunchTemplateFunctionType? = nil,
            modifyLocalGatewayRoute: ModifyLocalGatewayRouteFunctionType? = nil,
            modifyManagedPrefixList: ModifyManagedPrefixListFunctionType? = nil,
            modifyNetworkInterfaceAttribute: ModifyNetworkInterfaceAttributeFunctionType? = nil,
            modifyPrivateDnsNameOptions: ModifyPrivateDnsNameOptionsFunctionType? = nil,
            modifyReservedInstances: ModifyReservedInstancesFunctionType? = nil,
            modifySecurityGroupRules: ModifySecurityGroupRulesFunctionType? = nil,
            modifySnapshotAttribute: ModifySnapshotAttributeFunctionType? = nil,
            modifySnapshotTier: ModifySnapshotTierFunctionType? = nil,
            modifySpotFleetRequest: ModifySpotFleetRequestFunctionType? = nil,
            modifySubnetAttribute: ModifySubnetAttributeFunctionType? = nil,
            modifyTrafficMirrorFilterNetworkServices: ModifyTrafficMirrorFilterNetworkServicesFunctionType? = nil,
            modifyTrafficMirrorFilterRule: ModifyTrafficMirrorFilterRuleFunctionType? = nil,
            modifyTrafficMirrorSession: ModifyTrafficMirrorSessionFunctionType? = nil,
            modifyTransitGateway: ModifyTransitGatewayFunctionType? = nil,
            modifyTransitGatewayPrefixListReference: ModifyTransitGatewayPrefixListReferenceFunctionType? = nil,
            modifyTransitGatewayVpcAttachment: ModifyTransitGatewayVpcAttachmentFunctionType? = nil,
            modifyVolume: ModifyVolumeFunctionType? = nil,
            modifyVolumeAttribute: ModifyVolumeAttributeFunctionType? = nil,
            modifyVpcAttribute: ModifyVpcAttributeFunctionType? = nil,
            modifyVpcEndpoint: ModifyVpcEndpointFunctionType? = nil,
            modifyVpcEndpointConnectionNotification: ModifyVpcEndpointConnectionNotificationFunctionType? = nil,
            modifyVpcEndpointServiceConfiguration: ModifyVpcEndpointServiceConfigurationFunctionType? = nil,
            modifyVpcEndpointServicePayerResponsibility: ModifyVpcEndpointServicePayerResponsibilityFunctionType? = nil,
            modifyVpcEndpointServicePermissions: ModifyVpcEndpointServicePermissionsFunctionType? = nil,
            modifyVpcPeeringConnectionOptions: ModifyVpcPeeringConnectionOptionsFunctionType? = nil,
            modifyVpcTenancy: ModifyVpcTenancyFunctionType? = nil,
            modifyVpnConnection: ModifyVpnConnectionFunctionType? = nil,
            modifyVpnConnectionOptions: ModifyVpnConnectionOptionsFunctionType? = nil,
            modifyVpnTunnelCertificate: ModifyVpnTunnelCertificateFunctionType? = nil,
            modifyVpnTunnelOptions: ModifyVpnTunnelOptionsFunctionType? = nil,
            monitorInstances: MonitorInstancesFunctionType? = nil,
            moveAddressToVpc: MoveAddressToVpcFunctionType? = nil,
            moveByoipCidrToIpam: MoveByoipCidrToIpamFunctionType? = nil,
            provisionByoipCidr: ProvisionByoipCidrFunctionType? = nil,
            provisionIpamPoolCidr: ProvisionIpamPoolCidrFunctionType? = nil,
            provisionPublicIpv4PoolCidr: ProvisionPublicIpv4PoolCidrFunctionType? = nil,
            purchaseHostReservation: PurchaseHostReservationFunctionType? = nil,
            purchaseReservedInstancesOffering: PurchaseReservedInstancesOfferingFunctionType? = nil,
            purchaseScheduledInstances: PurchaseScheduledInstancesFunctionType? = nil,
            rebootInstances: RebootInstancesFunctionType? = nil,
            registerImage: RegisterImageFunctionType? = nil,
            registerInstanceEventNotificationAttributes: RegisterInstanceEventNotificationAttributesFunctionType? = nil,
            registerTransitGatewayMulticastGroupMembers: RegisterTransitGatewayMulticastGroupMembersFunctionType? = nil,
            registerTransitGatewayMulticastGroupSources: RegisterTransitGatewayMulticastGroupSourcesFunctionType? = nil,
            rejectTransitGatewayMulticastDomainAssociations: RejectTransitGatewayMulticastDomainAssociationsFunctionType? = nil,
            rejectTransitGatewayPeeringAttachment: RejectTransitGatewayPeeringAttachmentFunctionType? = nil,
            rejectTransitGatewayVpcAttachment: RejectTransitGatewayVpcAttachmentFunctionType? = nil,
            rejectVpcEndpointConnections: RejectVpcEndpointConnectionsFunctionType? = nil,
            rejectVpcPeeringConnection: RejectVpcPeeringConnectionFunctionType? = nil,
            releaseAddress: ReleaseAddressFunctionType? = nil,
            releaseHosts: ReleaseHostsFunctionType? = nil,
            releaseIpamPoolAllocation: ReleaseIpamPoolAllocationFunctionType? = nil,
            replaceIamInstanceProfileAssociation: ReplaceIamInstanceProfileAssociationFunctionType? = nil,
            replaceNetworkAclAssociation: ReplaceNetworkAclAssociationFunctionType? = nil,
            replaceNetworkAclEntry: ReplaceNetworkAclEntryFunctionType? = nil,
            replaceRoute: ReplaceRouteFunctionType? = nil,
            replaceRouteTableAssociation: ReplaceRouteTableAssociationFunctionType? = nil,
            replaceTransitGatewayRoute: ReplaceTransitGatewayRouteFunctionType? = nil,
            reportInstanceStatus: ReportInstanceStatusFunctionType? = nil,
            requestSpotFleet: RequestSpotFleetFunctionType? = nil,
            requestSpotInstances: RequestSpotInstancesFunctionType? = nil,
            resetAddressAttribute: ResetAddressAttributeFunctionType? = nil,
            resetEbsDefaultKmsKeyId: ResetEbsDefaultKmsKeyIdFunctionType? = nil,
            resetFpgaImageAttribute: ResetFpgaImageAttributeFunctionType? = nil,
            resetImageAttribute: ResetImageAttributeFunctionType? = nil,
            resetInstanceAttribute: ResetInstanceAttributeFunctionType? = nil,
            resetNetworkInterfaceAttribute: ResetNetworkInterfaceAttributeFunctionType? = nil,
            resetSnapshotAttribute: ResetSnapshotAttributeFunctionType? = nil,
            restoreAddressToClassic: RestoreAddressToClassicFunctionType? = nil,
            restoreImageFromRecycleBin: RestoreImageFromRecycleBinFunctionType? = nil,
            restoreManagedPrefixListVersion: RestoreManagedPrefixListVersionFunctionType? = nil,
            restoreSnapshotFromRecycleBin: RestoreSnapshotFromRecycleBinFunctionType? = nil,
            restoreSnapshotTier: RestoreSnapshotTierFunctionType? = nil,
            revokeClientVpnIngress: RevokeClientVpnIngressFunctionType? = nil,
            revokeSecurityGroupEgress: RevokeSecurityGroupEgressFunctionType? = nil,
            revokeSecurityGroupIngress: RevokeSecurityGroupIngressFunctionType? = nil,
            runInstances: RunInstancesFunctionType? = nil,
            runScheduledInstances: RunScheduledInstancesFunctionType? = nil,
            searchLocalGatewayRoutes: SearchLocalGatewayRoutesFunctionType? = nil,
            searchTransitGatewayMulticastGroups: SearchTransitGatewayMulticastGroupsFunctionType? = nil,
            searchTransitGatewayRoutes: SearchTransitGatewayRoutesFunctionType? = nil,
            sendDiagnosticInterrupt: SendDiagnosticInterruptFunctionType? = nil,
            startInstances: StartInstancesFunctionType? = nil,
            startNetworkInsightsAccessScopeAnalysis: StartNetworkInsightsAccessScopeAnalysisFunctionType? = nil,
            startNetworkInsightsAnalysis: StartNetworkInsightsAnalysisFunctionType? = nil,
            startVpcEndpointServicePrivateDnsVerification: StartVpcEndpointServicePrivateDnsVerificationFunctionType? = nil,
            stopInstances: StopInstancesFunctionType? = nil,
            terminateClientVpnConnections: TerminateClientVpnConnectionsFunctionType? = nil,
            terminateInstances: TerminateInstancesFunctionType? = nil,
            unassignIpv6Addresses: UnassignIpv6AddressesFunctionType? = nil,
            unassignPrivateIpAddresses: UnassignPrivateIpAddressesFunctionType? = nil,
            unmonitorInstances: UnmonitorInstancesFunctionType? = nil,
            updateSecurityGroupRuleDescriptionsEgress: UpdateSecurityGroupRuleDescriptionsEgressFunctionType? = nil,
            updateSecurityGroupRuleDescriptionsIngress: UpdateSecurityGroupRuleDescriptionsIngressFunctionType? = nil,
            withdrawByoipCidr: WithdrawByoipCidrFunctionType? = nil) {
        self.error = error
        self.acceptReservedInstancesExchangeQuoteOverride = acceptReservedInstancesExchangeQuote
        self.acceptTransitGatewayMulticastDomainAssociationsOverride = acceptTransitGatewayMulticastDomainAssociations
        self.acceptTransitGatewayPeeringAttachmentOverride = acceptTransitGatewayPeeringAttachment
        self.acceptTransitGatewayVpcAttachmentOverride = acceptTransitGatewayVpcAttachment
        self.acceptVpcEndpointConnectionsOverride = acceptVpcEndpointConnections
        self.acceptVpcPeeringConnectionOverride = acceptVpcPeeringConnection
        self.advertiseByoipCidrOverride = advertiseByoipCidr
        self.allocateAddressOverride = allocateAddress
        self.allocateHostsOverride = allocateHosts
        self.allocateIpamPoolCidrOverride = allocateIpamPoolCidr
        self.applySecurityGroupsToClientVpnTargetNetworkOverride = applySecurityGroupsToClientVpnTargetNetwork
        self.assignIpv6AddressesOverride = assignIpv6Addresses
        self.assignPrivateIpAddressesOverride = assignPrivateIpAddresses
        self.associateAddressOverride = associateAddress
        self.associateClientVpnTargetNetworkOverride = associateClientVpnTargetNetwork
        self.associateDhcpOptionsOverride = associateDhcpOptions
        self.associateEnclaveCertificateIamRoleOverride = associateEnclaveCertificateIamRole
        self.associateIamInstanceProfileOverride = associateIamInstanceProfile
        self.associateInstanceEventWindowOverride = associateInstanceEventWindow
        self.associateRouteTableOverride = associateRouteTable
        self.associateSubnetCidrBlockOverride = associateSubnetCidrBlock
        self.associateTransitGatewayMulticastDomainOverride = associateTransitGatewayMulticastDomain
        self.associateTransitGatewayPolicyTableOverride = associateTransitGatewayPolicyTable
        self.associateTransitGatewayRouteTableOverride = associateTransitGatewayRouteTable
        self.associateTrunkInterfaceOverride = associateTrunkInterface
        self.associateVpcCidrBlockOverride = associateVpcCidrBlock
        self.attachClassicLinkVpcOverride = attachClassicLinkVpc
        self.attachInternetGatewayOverride = attachInternetGateway
        self.attachNetworkInterfaceOverride = attachNetworkInterface
        self.attachVolumeOverride = attachVolume
        self.attachVpnGatewayOverride = attachVpnGateway
        self.authorizeClientVpnIngressOverride = authorizeClientVpnIngress
        self.authorizeSecurityGroupEgressOverride = authorizeSecurityGroupEgress
        self.authorizeSecurityGroupIngressOverride = authorizeSecurityGroupIngress
        self.bundleInstanceOverride = bundleInstance
        self.cancelBundleTaskOverride = cancelBundleTask
        self.cancelCapacityReservationOverride = cancelCapacityReservation
        self.cancelCapacityReservationFleetsOverride = cancelCapacityReservationFleets
        self.cancelConversionTaskOverride = cancelConversionTask
        self.cancelExportTaskOverride = cancelExportTask
        self.cancelImportTaskOverride = cancelImportTask
        self.cancelReservedInstancesListingOverride = cancelReservedInstancesListing
        self.cancelSpotFleetRequestsOverride = cancelSpotFleetRequests
        self.cancelSpotInstanceRequestsOverride = cancelSpotInstanceRequests
        self.confirmProductInstanceOverride = confirmProductInstance
        self.copyFpgaImageOverride = copyFpgaImage
        self.copyImageOverride = copyImage
        self.copySnapshotOverride = copySnapshot
        self.createCapacityReservationOverride = createCapacityReservation
        self.createCapacityReservationFleetOverride = createCapacityReservationFleet
        self.createCarrierGatewayOverride = createCarrierGateway
        self.createClientVpnEndpointOverride = createClientVpnEndpoint
        self.createClientVpnRouteOverride = createClientVpnRoute
        self.createCoipCidrOverride = createCoipCidr
        self.createCoipPoolOverride = createCoipPool
        self.createCustomerGatewayOverride = createCustomerGateway
        self.createDefaultSubnetOverride = createDefaultSubnet
        self.createDefaultVpcOverride = createDefaultVpc
        self.createDhcpOptionsOverride = createDhcpOptions
        self.createEgressOnlyInternetGatewayOverride = createEgressOnlyInternetGateway
        self.createFleetOverride = createFleet
        self.createFlowLogsOverride = createFlowLogs
        self.createFpgaImageOverride = createFpgaImage
        self.createImageOverride = createImage
        self.createInstanceEventWindowOverride = createInstanceEventWindow
        self.createInstanceExportTaskOverride = createInstanceExportTask
        self.createInternetGatewayOverride = createInternetGateway
        self.createIpamOverride = createIpam
        self.createIpamPoolOverride = createIpamPool
        self.createIpamScopeOverride = createIpamScope
        self.createKeyPairOverride = createKeyPair
        self.createLaunchTemplateOverride = createLaunchTemplate
        self.createLaunchTemplateVersionOverride = createLaunchTemplateVersion
        self.createLocalGatewayRouteOverride = createLocalGatewayRoute
        self.createLocalGatewayRouteTableOverride = createLocalGatewayRouteTable
        self.createLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride = createLocalGatewayRouteTableVirtualInterfaceGroupAssociation
        self.createLocalGatewayRouteTableVpcAssociationOverride = createLocalGatewayRouteTableVpcAssociation
        self.createManagedPrefixListOverride = createManagedPrefixList
        self.createNatGatewayOverride = createNatGateway
        self.createNetworkAclOverride = createNetworkAcl
        self.createNetworkAclEntryOverride = createNetworkAclEntry
        self.createNetworkInsightsAccessScopeOverride = createNetworkInsightsAccessScope
        self.createNetworkInsightsPathOverride = createNetworkInsightsPath
        self.createNetworkInterfaceOverride = createNetworkInterface
        self.createNetworkInterfacePermissionOverride = createNetworkInterfacePermission
        self.createPlacementGroupOverride = createPlacementGroup
        self.createPublicIpv4PoolOverride = createPublicIpv4Pool
        self.createReplaceRootVolumeTaskOverride = createReplaceRootVolumeTask
        self.createReservedInstancesListingOverride = createReservedInstancesListing
        self.createRestoreImageTaskOverride = createRestoreImageTask
        self.createRouteOverride = createRoute
        self.createRouteTableOverride = createRouteTable
        self.createSecurityGroupOverride = createSecurityGroup
        self.createSnapshotOverride = createSnapshot
        self.createSnapshotsOverride = createSnapshots
        self.createSpotDatafeedSubscriptionOverride = createSpotDatafeedSubscription
        self.createStoreImageTaskOverride = createStoreImageTask
        self.createSubnetOverride = createSubnet
        self.createSubnetCidrReservationOverride = createSubnetCidrReservation
        self.createTagsOverride = createTags
        self.createTrafficMirrorFilterOverride = createTrafficMirrorFilter
        self.createTrafficMirrorFilterRuleOverride = createTrafficMirrorFilterRule
        self.createTrafficMirrorSessionOverride = createTrafficMirrorSession
        self.createTrafficMirrorTargetOverride = createTrafficMirrorTarget
        self.createTransitGatewayOverride = createTransitGateway
        self.createTransitGatewayConnectOverride = createTransitGatewayConnect
        self.createTransitGatewayConnectPeerOverride = createTransitGatewayConnectPeer
        self.createTransitGatewayMulticastDomainOverride = createTransitGatewayMulticastDomain
        self.createTransitGatewayPeeringAttachmentOverride = createTransitGatewayPeeringAttachment
        self.createTransitGatewayPolicyTableOverride = createTransitGatewayPolicyTable
        self.createTransitGatewayPrefixListReferenceOverride = createTransitGatewayPrefixListReference
        self.createTransitGatewayRouteOverride = createTransitGatewayRoute
        self.createTransitGatewayRouteTableOverride = createTransitGatewayRouteTable
        self.createTransitGatewayRouteTableAnnouncementOverride = createTransitGatewayRouteTableAnnouncement
        self.createTransitGatewayVpcAttachmentOverride = createTransitGatewayVpcAttachment
        self.createVolumeOverride = createVolume
        self.createVpcOverride = createVpc
        self.createVpcEndpointOverride = createVpcEndpoint
        self.createVpcEndpointConnectionNotificationOverride = createVpcEndpointConnectionNotification
        self.createVpcEndpointServiceConfigurationOverride = createVpcEndpointServiceConfiguration
        self.createVpcPeeringConnectionOverride = createVpcPeeringConnection
        self.createVpnConnectionOverride = createVpnConnection
        self.createVpnConnectionRouteOverride = createVpnConnectionRoute
        self.createVpnGatewayOverride = createVpnGateway
        self.deleteCarrierGatewayOverride = deleteCarrierGateway
        self.deleteClientVpnEndpointOverride = deleteClientVpnEndpoint
        self.deleteClientVpnRouteOverride = deleteClientVpnRoute
        self.deleteCoipCidrOverride = deleteCoipCidr
        self.deleteCoipPoolOverride = deleteCoipPool
        self.deleteCustomerGatewayOverride = deleteCustomerGateway
        self.deleteDhcpOptionsOverride = deleteDhcpOptions
        self.deleteEgressOnlyInternetGatewayOverride = deleteEgressOnlyInternetGateway
        self.deleteFleetsOverride = deleteFleets
        self.deleteFlowLogsOverride = deleteFlowLogs
        self.deleteFpgaImageOverride = deleteFpgaImage
        self.deleteInstanceEventWindowOverride = deleteInstanceEventWindow
        self.deleteInternetGatewayOverride = deleteInternetGateway
        self.deleteIpamOverride = deleteIpam
        self.deleteIpamPoolOverride = deleteIpamPool
        self.deleteIpamScopeOverride = deleteIpamScope
        self.deleteKeyPairOverride = deleteKeyPair
        self.deleteLaunchTemplateOverride = deleteLaunchTemplate
        self.deleteLaunchTemplateVersionsOverride = deleteLaunchTemplateVersions
        self.deleteLocalGatewayRouteOverride = deleteLocalGatewayRoute
        self.deleteLocalGatewayRouteTableOverride = deleteLocalGatewayRouteTable
        self.deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride = deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation
        self.deleteLocalGatewayRouteTableVpcAssociationOverride = deleteLocalGatewayRouteTableVpcAssociation
        self.deleteManagedPrefixListOverride = deleteManagedPrefixList
        self.deleteNatGatewayOverride = deleteNatGateway
        self.deleteNetworkAclOverride = deleteNetworkAcl
        self.deleteNetworkAclEntryOverride = deleteNetworkAclEntry
        self.deleteNetworkInsightsAccessScopeOverride = deleteNetworkInsightsAccessScope
        self.deleteNetworkInsightsAccessScopeAnalysisOverride = deleteNetworkInsightsAccessScopeAnalysis
        self.deleteNetworkInsightsAnalysisOverride = deleteNetworkInsightsAnalysis
        self.deleteNetworkInsightsPathOverride = deleteNetworkInsightsPath
        self.deleteNetworkInterfaceOverride = deleteNetworkInterface
        self.deleteNetworkInterfacePermissionOverride = deleteNetworkInterfacePermission
        self.deletePlacementGroupOverride = deletePlacementGroup
        self.deletePublicIpv4PoolOverride = deletePublicIpv4Pool
        self.deleteQueuedReservedInstancesOverride = deleteQueuedReservedInstances
        self.deleteRouteOverride = deleteRoute
        self.deleteRouteTableOverride = deleteRouteTable
        self.deleteSecurityGroupOverride = deleteSecurityGroup
        self.deleteSnapshotOverride = deleteSnapshot
        self.deleteSpotDatafeedSubscriptionOverride = deleteSpotDatafeedSubscription
        self.deleteSubnetOverride = deleteSubnet
        self.deleteSubnetCidrReservationOverride = deleteSubnetCidrReservation
        self.deleteTagsOverride = deleteTags
        self.deleteTrafficMirrorFilterOverride = deleteTrafficMirrorFilter
        self.deleteTrafficMirrorFilterRuleOverride = deleteTrafficMirrorFilterRule
        self.deleteTrafficMirrorSessionOverride = deleteTrafficMirrorSession
        self.deleteTrafficMirrorTargetOverride = deleteTrafficMirrorTarget
        self.deleteTransitGatewayOverride = deleteTransitGateway
        self.deleteTransitGatewayConnectOverride = deleteTransitGatewayConnect
        self.deleteTransitGatewayConnectPeerOverride = deleteTransitGatewayConnectPeer
        self.deleteTransitGatewayMulticastDomainOverride = deleteTransitGatewayMulticastDomain
        self.deleteTransitGatewayPeeringAttachmentOverride = deleteTransitGatewayPeeringAttachment
        self.deleteTransitGatewayPolicyTableOverride = deleteTransitGatewayPolicyTable
        self.deleteTransitGatewayPrefixListReferenceOverride = deleteTransitGatewayPrefixListReference
        self.deleteTransitGatewayRouteOverride = deleteTransitGatewayRoute
        self.deleteTransitGatewayRouteTableOverride = deleteTransitGatewayRouteTable
        self.deleteTransitGatewayRouteTableAnnouncementOverride = deleteTransitGatewayRouteTableAnnouncement
        self.deleteTransitGatewayVpcAttachmentOverride = deleteTransitGatewayVpcAttachment
        self.deleteVolumeOverride = deleteVolume
        self.deleteVpcOverride = deleteVpc
        self.deleteVpcEndpointConnectionNotificationsOverride = deleteVpcEndpointConnectionNotifications
        self.deleteVpcEndpointServiceConfigurationsOverride = deleteVpcEndpointServiceConfigurations
        self.deleteVpcEndpointsOverride = deleteVpcEndpoints
        self.deleteVpcPeeringConnectionOverride = deleteVpcPeeringConnection
        self.deleteVpnConnectionOverride = deleteVpnConnection
        self.deleteVpnConnectionRouteOverride = deleteVpnConnectionRoute
        self.deleteVpnGatewayOverride = deleteVpnGateway
        self.deprovisionByoipCidrOverride = deprovisionByoipCidr
        self.deprovisionIpamPoolCidrOverride = deprovisionIpamPoolCidr
        self.deprovisionPublicIpv4PoolCidrOverride = deprovisionPublicIpv4PoolCidr
        self.deregisterImageOverride = deregisterImage
        self.deregisterInstanceEventNotificationAttributesOverride = deregisterInstanceEventNotificationAttributes
        self.deregisterTransitGatewayMulticastGroupMembersOverride = deregisterTransitGatewayMulticastGroupMembers
        self.deregisterTransitGatewayMulticastGroupSourcesOverride = deregisterTransitGatewayMulticastGroupSources
        self.describeAccountAttributesOverride = describeAccountAttributes
        self.describeAddressesOverride = describeAddresses
        self.describeAddressesAttributeOverride = describeAddressesAttribute
        self.describeAggregateIdFormatOverride = describeAggregateIdFormat
        self.describeAvailabilityZonesOverride = describeAvailabilityZones
        self.describeBundleTasksOverride = describeBundleTasks
        self.describeByoipCidrsOverride = describeByoipCidrs
        self.describeCapacityReservationFleetsOverride = describeCapacityReservationFleets
        self.describeCapacityReservationsOverride = describeCapacityReservations
        self.describeCarrierGatewaysOverride = describeCarrierGateways
        self.describeClassicLinkInstancesOverride = describeClassicLinkInstances
        self.describeClientVpnAuthorizationRulesOverride = describeClientVpnAuthorizationRules
        self.describeClientVpnConnectionsOverride = describeClientVpnConnections
        self.describeClientVpnEndpointsOverride = describeClientVpnEndpoints
        self.describeClientVpnRoutesOverride = describeClientVpnRoutes
        self.describeClientVpnTargetNetworksOverride = describeClientVpnTargetNetworks
        self.describeCoipPoolsOverride = describeCoipPools
        self.describeConversionTasksOverride = describeConversionTasks
        self.describeCustomerGatewaysOverride = describeCustomerGateways
        self.describeDhcpOptionsOverride = describeDhcpOptions
        self.describeEgressOnlyInternetGatewaysOverride = describeEgressOnlyInternetGateways
        self.describeElasticGpusOverride = describeElasticGpus
        self.describeExportImageTasksOverride = describeExportImageTasks
        self.describeExportTasksOverride = describeExportTasks
        self.describeFastLaunchImagesOverride = describeFastLaunchImages
        self.describeFastSnapshotRestoresOverride = describeFastSnapshotRestores
        self.describeFleetHistoryOverride = describeFleetHistory
        self.describeFleetInstancesOverride = describeFleetInstances
        self.describeFleetsOverride = describeFleets
        self.describeFlowLogsOverride = describeFlowLogs
        self.describeFpgaImageAttributeOverride = describeFpgaImageAttribute
        self.describeFpgaImagesOverride = describeFpgaImages
        self.describeHostReservationOfferingsOverride = describeHostReservationOfferings
        self.describeHostReservationsOverride = describeHostReservations
        self.describeHostsOverride = describeHosts
        self.describeIamInstanceProfileAssociationsOverride = describeIamInstanceProfileAssociations
        self.describeIdFormatOverride = describeIdFormat
        self.describeIdentityIdFormatOverride = describeIdentityIdFormat
        self.describeImageAttributeOverride = describeImageAttribute
        self.describeImagesOverride = describeImages
        self.describeImportImageTasksOverride = describeImportImageTasks
        self.describeImportSnapshotTasksOverride = describeImportSnapshotTasks
        self.describeInstanceAttributeOverride = describeInstanceAttribute
        self.describeInstanceCreditSpecificationsOverride = describeInstanceCreditSpecifications
        self.describeInstanceEventNotificationAttributesOverride = describeInstanceEventNotificationAttributes
        self.describeInstanceEventWindowsOverride = describeInstanceEventWindows
        self.describeInstanceStatusOverride = describeInstanceStatus
        self.describeInstanceTypeOfferingsOverride = describeInstanceTypeOfferings
        self.describeInstanceTypesOverride = describeInstanceTypes
        self.describeInstancesOverride = describeInstances
        self.describeInternetGatewaysOverride = describeInternetGateways
        self.describeIpamPoolsOverride = describeIpamPools
        self.describeIpamScopesOverride = describeIpamScopes
        self.describeIpamsOverride = describeIpams
        self.describeIpv6PoolsOverride = describeIpv6Pools
        self.describeKeyPairsOverride = describeKeyPairs
        self.describeLaunchTemplateVersionsOverride = describeLaunchTemplateVersions
        self.describeLaunchTemplatesOverride = describeLaunchTemplates
        self.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOverride = describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
        self.describeLocalGatewayRouteTableVpcAssociationsOverride = describeLocalGatewayRouteTableVpcAssociations
        self.describeLocalGatewayRouteTablesOverride = describeLocalGatewayRouteTables
        self.describeLocalGatewayVirtualInterfaceGroupsOverride = describeLocalGatewayVirtualInterfaceGroups
        self.describeLocalGatewayVirtualInterfacesOverride = describeLocalGatewayVirtualInterfaces
        self.describeLocalGatewaysOverride = describeLocalGateways
        self.describeManagedPrefixListsOverride = describeManagedPrefixLists
        self.describeMovingAddressesOverride = describeMovingAddresses
        self.describeNatGatewaysOverride = describeNatGateways
        self.describeNetworkAclsOverride = describeNetworkAcls
        self.describeNetworkInsightsAccessScopeAnalysesOverride = describeNetworkInsightsAccessScopeAnalyses
        self.describeNetworkInsightsAccessScopesOverride = describeNetworkInsightsAccessScopes
        self.describeNetworkInsightsAnalysesOverride = describeNetworkInsightsAnalyses
        self.describeNetworkInsightsPathsOverride = describeNetworkInsightsPaths
        self.describeNetworkInterfaceAttributeOverride = describeNetworkInterfaceAttribute
        self.describeNetworkInterfacePermissionsOverride = describeNetworkInterfacePermissions
        self.describeNetworkInterfacesOverride = describeNetworkInterfaces
        self.describePlacementGroupsOverride = describePlacementGroups
        self.describePrefixListsOverride = describePrefixLists
        self.describePrincipalIdFormatOverride = describePrincipalIdFormat
        self.describePublicIpv4PoolsOverride = describePublicIpv4Pools
        self.describeRegionsOverride = describeRegions
        self.describeReplaceRootVolumeTasksOverride = describeReplaceRootVolumeTasks
        self.describeReservedInstancesOverride = describeReservedInstances
        self.describeReservedInstancesListingsOverride = describeReservedInstancesListings
        self.describeReservedInstancesModificationsOverride = describeReservedInstancesModifications
        self.describeReservedInstancesOfferingsOverride = describeReservedInstancesOfferings
        self.describeRouteTablesOverride = describeRouteTables
        self.describeScheduledInstanceAvailabilityOverride = describeScheduledInstanceAvailability
        self.describeScheduledInstancesOverride = describeScheduledInstances
        self.describeSecurityGroupReferencesOverride = describeSecurityGroupReferences
        self.describeSecurityGroupRulesOverride = describeSecurityGroupRules
        self.describeSecurityGroupsOverride = describeSecurityGroups
        self.describeSnapshotAttributeOverride = describeSnapshotAttribute
        self.describeSnapshotTierStatusOverride = describeSnapshotTierStatus
        self.describeSnapshotsOverride = describeSnapshots
        self.describeSpotDatafeedSubscriptionOverride = describeSpotDatafeedSubscription
        self.describeSpotFleetInstancesOverride = describeSpotFleetInstances
        self.describeSpotFleetRequestHistoryOverride = describeSpotFleetRequestHistory
        self.describeSpotFleetRequestsOverride = describeSpotFleetRequests
        self.describeSpotInstanceRequestsOverride = describeSpotInstanceRequests
        self.describeSpotPriceHistoryOverride = describeSpotPriceHistory
        self.describeStaleSecurityGroupsOverride = describeStaleSecurityGroups
        self.describeStoreImageTasksOverride = describeStoreImageTasks
        self.describeSubnetsOverride = describeSubnets
        self.describeTagsOverride = describeTags
        self.describeTrafficMirrorFiltersOverride = describeTrafficMirrorFilters
        self.describeTrafficMirrorSessionsOverride = describeTrafficMirrorSessions
        self.describeTrafficMirrorTargetsOverride = describeTrafficMirrorTargets
        self.describeTransitGatewayAttachmentsOverride = describeTransitGatewayAttachments
        self.describeTransitGatewayConnectPeersOverride = describeTransitGatewayConnectPeers
        self.describeTransitGatewayConnectsOverride = describeTransitGatewayConnects
        self.describeTransitGatewayMulticastDomainsOverride = describeTransitGatewayMulticastDomains
        self.describeTransitGatewayPeeringAttachmentsOverride = describeTransitGatewayPeeringAttachments
        self.describeTransitGatewayPolicyTablesOverride = describeTransitGatewayPolicyTables
        self.describeTransitGatewayRouteTableAnnouncementsOverride = describeTransitGatewayRouteTableAnnouncements
        self.describeTransitGatewayRouteTablesOverride = describeTransitGatewayRouteTables
        self.describeTransitGatewayVpcAttachmentsOverride = describeTransitGatewayVpcAttachments
        self.describeTransitGatewaysOverride = describeTransitGateways
        self.describeTrunkInterfaceAssociationsOverride = describeTrunkInterfaceAssociations
        self.describeVolumeAttributeOverride = describeVolumeAttribute
        self.describeVolumeStatusOverride = describeVolumeStatus
        self.describeVolumesOverride = describeVolumes
        self.describeVolumesModificationsOverride = describeVolumesModifications
        self.describeVpcAttributeOverride = describeVpcAttribute
        self.describeVpcClassicLinkOverride = describeVpcClassicLink
        self.describeVpcClassicLinkDnsSupportOverride = describeVpcClassicLinkDnsSupport
        self.describeVpcEndpointConnectionNotificationsOverride = describeVpcEndpointConnectionNotifications
        self.describeVpcEndpointConnectionsOverride = describeVpcEndpointConnections
        self.describeVpcEndpointServiceConfigurationsOverride = describeVpcEndpointServiceConfigurations
        self.describeVpcEndpointServicePermissionsOverride = describeVpcEndpointServicePermissions
        self.describeVpcEndpointServicesOverride = describeVpcEndpointServices
        self.describeVpcEndpointsOverride = describeVpcEndpoints
        self.describeVpcPeeringConnectionsOverride = describeVpcPeeringConnections
        self.describeVpcsOverride = describeVpcs
        self.describeVpnConnectionsOverride = describeVpnConnections
        self.describeVpnGatewaysOverride = describeVpnGateways
        self.detachClassicLinkVpcOverride = detachClassicLinkVpc
        self.detachInternetGatewayOverride = detachInternetGateway
        self.detachNetworkInterfaceOverride = detachNetworkInterface
        self.detachVolumeOverride = detachVolume
        self.detachVpnGatewayOverride = detachVpnGateway
        self.disableEbsEncryptionByDefaultOverride = disableEbsEncryptionByDefault
        self.disableFastLaunchOverride = disableFastLaunch
        self.disableFastSnapshotRestoresOverride = disableFastSnapshotRestores
        self.disableImageDeprecationOverride = disableImageDeprecation
        self.disableIpamOrganizationAdminAccountOverride = disableIpamOrganizationAdminAccount
        self.disableSerialConsoleAccessOverride = disableSerialConsoleAccess
        self.disableTransitGatewayRouteTablePropagationOverride = disableTransitGatewayRouteTablePropagation
        self.disableVgwRoutePropagationOverride = disableVgwRoutePropagation
        self.disableVpcClassicLinkOverride = disableVpcClassicLink
        self.disableVpcClassicLinkDnsSupportOverride = disableVpcClassicLinkDnsSupport
        self.disassociateAddressOverride = disassociateAddress
        self.disassociateClientVpnTargetNetworkOverride = disassociateClientVpnTargetNetwork
        self.disassociateEnclaveCertificateIamRoleOverride = disassociateEnclaveCertificateIamRole
        self.disassociateIamInstanceProfileOverride = disassociateIamInstanceProfile
        self.disassociateInstanceEventWindowOverride = disassociateInstanceEventWindow
        self.disassociateRouteTableOverride = disassociateRouteTable
        self.disassociateSubnetCidrBlockOverride = disassociateSubnetCidrBlock
        self.disassociateTransitGatewayMulticastDomainOverride = disassociateTransitGatewayMulticastDomain
        self.disassociateTransitGatewayPolicyTableOverride = disassociateTransitGatewayPolicyTable
        self.disassociateTransitGatewayRouteTableOverride = disassociateTransitGatewayRouteTable
        self.disassociateTrunkInterfaceOverride = disassociateTrunkInterface
        self.disassociateVpcCidrBlockOverride = disassociateVpcCidrBlock
        self.enableEbsEncryptionByDefaultOverride = enableEbsEncryptionByDefault
        self.enableFastLaunchOverride = enableFastLaunch
        self.enableFastSnapshotRestoresOverride = enableFastSnapshotRestores
        self.enableImageDeprecationOverride = enableImageDeprecation
        self.enableIpamOrganizationAdminAccountOverride = enableIpamOrganizationAdminAccount
        self.enableSerialConsoleAccessOverride = enableSerialConsoleAccess
        self.enableTransitGatewayRouteTablePropagationOverride = enableTransitGatewayRouteTablePropagation
        self.enableVgwRoutePropagationOverride = enableVgwRoutePropagation
        self.enableVolumeIOOverride = enableVolumeIO
        self.enableVpcClassicLinkOverride = enableVpcClassicLink
        self.enableVpcClassicLinkDnsSupportOverride = enableVpcClassicLinkDnsSupport
        self.exportClientVpnClientCertificateRevocationListOverride = exportClientVpnClientCertificateRevocationList
        self.exportClientVpnClientConfigurationOverride = exportClientVpnClientConfiguration
        self.exportImageOverride = exportImage
        self.exportTransitGatewayRoutesOverride = exportTransitGatewayRoutes
        self.getAssociatedEnclaveCertificateIamRolesOverride = getAssociatedEnclaveCertificateIamRoles
        self.getAssociatedIpv6PoolCidrsOverride = getAssociatedIpv6PoolCidrs
        self.getCapacityReservationUsageOverride = getCapacityReservationUsage
        self.getCoipPoolUsageOverride = getCoipPoolUsage
        self.getConsoleOutputOverride = getConsoleOutput
        self.getConsoleScreenshotOverride = getConsoleScreenshot
        self.getDefaultCreditSpecificationOverride = getDefaultCreditSpecification
        self.getEbsDefaultKmsKeyIdOverride = getEbsDefaultKmsKeyId
        self.getEbsEncryptionByDefaultOverride = getEbsEncryptionByDefault
        self.getFlowLogsIntegrationTemplateOverride = getFlowLogsIntegrationTemplate
        self.getGroupsForCapacityReservationOverride = getGroupsForCapacityReservation
        self.getHostReservationPurchasePreviewOverride = getHostReservationPurchasePreview
        self.getInstanceTypesFromInstanceRequirementsOverride = getInstanceTypesFromInstanceRequirements
        self.getInstanceUefiDataOverride = getInstanceUefiData
        self.getIpamAddressHistoryOverride = getIpamAddressHistory
        self.getIpamPoolAllocationsOverride = getIpamPoolAllocations
        self.getIpamPoolCidrsOverride = getIpamPoolCidrs
        self.getIpamResourceCidrsOverride = getIpamResourceCidrs
        self.getLaunchTemplateDataOverride = getLaunchTemplateData
        self.getManagedPrefixListAssociationsOverride = getManagedPrefixListAssociations
        self.getManagedPrefixListEntriesOverride = getManagedPrefixListEntries
        self.getNetworkInsightsAccessScopeAnalysisFindingsOverride = getNetworkInsightsAccessScopeAnalysisFindings
        self.getNetworkInsightsAccessScopeContentOverride = getNetworkInsightsAccessScopeContent
        self.getPasswordDataOverride = getPasswordData
        self.getReservedInstancesExchangeQuoteOverride = getReservedInstancesExchangeQuote
        self.getSerialConsoleAccessStatusOverride = getSerialConsoleAccessStatus
        self.getSpotPlacementScoresOverride = getSpotPlacementScores
        self.getSubnetCidrReservationsOverride = getSubnetCidrReservations
        self.getTransitGatewayAttachmentPropagationsOverride = getTransitGatewayAttachmentPropagations
        self.getTransitGatewayMulticastDomainAssociationsOverride = getTransitGatewayMulticastDomainAssociations
        self.getTransitGatewayPolicyTableAssociationsOverride = getTransitGatewayPolicyTableAssociations
        self.getTransitGatewayPolicyTableEntriesOverride = getTransitGatewayPolicyTableEntries
        self.getTransitGatewayPrefixListReferencesOverride = getTransitGatewayPrefixListReferences
        self.getTransitGatewayRouteTableAssociationsOverride = getTransitGatewayRouteTableAssociations
        self.getTransitGatewayRouteTablePropagationsOverride = getTransitGatewayRouteTablePropagations
        self.getVpnConnectionDeviceSampleConfigurationOverride = getVpnConnectionDeviceSampleConfiguration
        self.getVpnConnectionDeviceTypesOverride = getVpnConnectionDeviceTypes
        self.importClientVpnClientCertificateRevocationListOverride = importClientVpnClientCertificateRevocationList
        self.importImageOverride = importImage
        self.importInstanceOverride = importInstance
        self.importKeyPairOverride = importKeyPair
        self.importSnapshotOverride = importSnapshot
        self.importVolumeOverride = importVolume
        self.listImagesInRecycleBinOverride = listImagesInRecycleBin
        self.listSnapshotsInRecycleBinOverride = listSnapshotsInRecycleBin
        self.modifyAddressAttributeOverride = modifyAddressAttribute
        self.modifyAvailabilityZoneGroupOverride = modifyAvailabilityZoneGroup
        self.modifyCapacityReservationOverride = modifyCapacityReservation
        self.modifyCapacityReservationFleetOverride = modifyCapacityReservationFleet
        self.modifyClientVpnEndpointOverride = modifyClientVpnEndpoint
        self.modifyDefaultCreditSpecificationOverride = modifyDefaultCreditSpecification
        self.modifyEbsDefaultKmsKeyIdOverride = modifyEbsDefaultKmsKeyId
        self.modifyFleetOverride = modifyFleet
        self.modifyFpgaImageAttributeOverride = modifyFpgaImageAttribute
        self.modifyHostsOverride = modifyHosts
        self.modifyIdFormatOverride = modifyIdFormat
        self.modifyIdentityIdFormatOverride = modifyIdentityIdFormat
        self.modifyImageAttributeOverride = modifyImageAttribute
        self.modifyInstanceAttributeOverride = modifyInstanceAttribute
        self.modifyInstanceCapacityReservationAttributesOverride = modifyInstanceCapacityReservationAttributes
        self.modifyInstanceCreditSpecificationOverride = modifyInstanceCreditSpecification
        self.modifyInstanceEventStartTimeOverride = modifyInstanceEventStartTime
        self.modifyInstanceEventWindowOverride = modifyInstanceEventWindow
        self.modifyInstanceMaintenanceOptionsOverride = modifyInstanceMaintenanceOptions
        self.modifyInstanceMetadataOptionsOverride = modifyInstanceMetadataOptions
        self.modifyInstancePlacementOverride = modifyInstancePlacement
        self.modifyIpamOverride = modifyIpam
        self.modifyIpamPoolOverride = modifyIpamPool
        self.modifyIpamResourceCidrOverride = modifyIpamResourceCidr
        self.modifyIpamScopeOverride = modifyIpamScope
        self.modifyLaunchTemplateOverride = modifyLaunchTemplate
        self.modifyLocalGatewayRouteOverride = modifyLocalGatewayRoute
        self.modifyManagedPrefixListOverride = modifyManagedPrefixList
        self.modifyNetworkInterfaceAttributeOverride = modifyNetworkInterfaceAttribute
        self.modifyPrivateDnsNameOptionsOverride = modifyPrivateDnsNameOptions
        self.modifyReservedInstancesOverride = modifyReservedInstances
        self.modifySecurityGroupRulesOverride = modifySecurityGroupRules
        self.modifySnapshotAttributeOverride = modifySnapshotAttribute
        self.modifySnapshotTierOverride = modifySnapshotTier
        self.modifySpotFleetRequestOverride = modifySpotFleetRequest
        self.modifySubnetAttributeOverride = modifySubnetAttribute
        self.modifyTrafficMirrorFilterNetworkServicesOverride = modifyTrafficMirrorFilterNetworkServices
        self.modifyTrafficMirrorFilterRuleOverride = modifyTrafficMirrorFilterRule
        self.modifyTrafficMirrorSessionOverride = modifyTrafficMirrorSession
        self.modifyTransitGatewayOverride = modifyTransitGateway
        self.modifyTransitGatewayPrefixListReferenceOverride = modifyTransitGatewayPrefixListReference
        self.modifyTransitGatewayVpcAttachmentOverride = modifyTransitGatewayVpcAttachment
        self.modifyVolumeOverride = modifyVolume
        self.modifyVolumeAttributeOverride = modifyVolumeAttribute
        self.modifyVpcAttributeOverride = modifyVpcAttribute
        self.modifyVpcEndpointOverride = modifyVpcEndpoint
        self.modifyVpcEndpointConnectionNotificationOverride = modifyVpcEndpointConnectionNotification
        self.modifyVpcEndpointServiceConfigurationOverride = modifyVpcEndpointServiceConfiguration
        self.modifyVpcEndpointServicePayerResponsibilityOverride = modifyVpcEndpointServicePayerResponsibility
        self.modifyVpcEndpointServicePermissionsOverride = modifyVpcEndpointServicePermissions
        self.modifyVpcPeeringConnectionOptionsOverride = modifyVpcPeeringConnectionOptions
        self.modifyVpcTenancyOverride = modifyVpcTenancy
        self.modifyVpnConnectionOverride = modifyVpnConnection
        self.modifyVpnConnectionOptionsOverride = modifyVpnConnectionOptions
        self.modifyVpnTunnelCertificateOverride = modifyVpnTunnelCertificate
        self.modifyVpnTunnelOptionsOverride = modifyVpnTunnelOptions
        self.monitorInstancesOverride = monitorInstances
        self.moveAddressToVpcOverride = moveAddressToVpc
        self.moveByoipCidrToIpamOverride = moveByoipCidrToIpam
        self.provisionByoipCidrOverride = provisionByoipCidr
        self.provisionIpamPoolCidrOverride = provisionIpamPoolCidr
        self.provisionPublicIpv4PoolCidrOverride = provisionPublicIpv4PoolCidr
        self.purchaseHostReservationOverride = purchaseHostReservation
        self.purchaseReservedInstancesOfferingOverride = purchaseReservedInstancesOffering
        self.purchaseScheduledInstancesOverride = purchaseScheduledInstances
        self.rebootInstancesOverride = rebootInstances
        self.registerImageOverride = registerImage
        self.registerInstanceEventNotificationAttributesOverride = registerInstanceEventNotificationAttributes
        self.registerTransitGatewayMulticastGroupMembersOverride = registerTransitGatewayMulticastGroupMembers
        self.registerTransitGatewayMulticastGroupSourcesOverride = registerTransitGatewayMulticastGroupSources
        self.rejectTransitGatewayMulticastDomainAssociationsOverride = rejectTransitGatewayMulticastDomainAssociations
        self.rejectTransitGatewayPeeringAttachmentOverride = rejectTransitGatewayPeeringAttachment
        self.rejectTransitGatewayVpcAttachmentOverride = rejectTransitGatewayVpcAttachment
        self.rejectVpcEndpointConnectionsOverride = rejectVpcEndpointConnections
        self.rejectVpcPeeringConnectionOverride = rejectVpcPeeringConnection
        self.releaseAddressOverride = releaseAddress
        self.releaseHostsOverride = releaseHosts
        self.releaseIpamPoolAllocationOverride = releaseIpamPoolAllocation
        self.replaceIamInstanceProfileAssociationOverride = replaceIamInstanceProfileAssociation
        self.replaceNetworkAclAssociationOverride = replaceNetworkAclAssociation
        self.replaceNetworkAclEntryOverride = replaceNetworkAclEntry
        self.replaceRouteOverride = replaceRoute
        self.replaceRouteTableAssociationOverride = replaceRouteTableAssociation
        self.replaceTransitGatewayRouteOverride = replaceTransitGatewayRoute
        self.reportInstanceStatusOverride = reportInstanceStatus
        self.requestSpotFleetOverride = requestSpotFleet
        self.requestSpotInstancesOverride = requestSpotInstances
        self.resetAddressAttributeOverride = resetAddressAttribute
        self.resetEbsDefaultKmsKeyIdOverride = resetEbsDefaultKmsKeyId
        self.resetFpgaImageAttributeOverride = resetFpgaImageAttribute
        self.resetImageAttributeOverride = resetImageAttribute
        self.resetInstanceAttributeOverride = resetInstanceAttribute
        self.resetNetworkInterfaceAttributeOverride = resetNetworkInterfaceAttribute
        self.resetSnapshotAttributeOverride = resetSnapshotAttribute
        self.restoreAddressToClassicOverride = restoreAddressToClassic
        self.restoreImageFromRecycleBinOverride = restoreImageFromRecycleBin
        self.restoreManagedPrefixListVersionOverride = restoreManagedPrefixListVersion
        self.restoreSnapshotFromRecycleBinOverride = restoreSnapshotFromRecycleBin
        self.restoreSnapshotTierOverride = restoreSnapshotTier
        self.revokeClientVpnIngressOverride = revokeClientVpnIngress
        self.revokeSecurityGroupEgressOverride = revokeSecurityGroupEgress
        self.revokeSecurityGroupIngressOverride = revokeSecurityGroupIngress
        self.runInstancesOverride = runInstances
        self.runScheduledInstancesOverride = runScheduledInstances
        self.searchLocalGatewayRoutesOverride = searchLocalGatewayRoutes
        self.searchTransitGatewayMulticastGroupsOverride = searchTransitGatewayMulticastGroups
        self.searchTransitGatewayRoutesOverride = searchTransitGatewayRoutes
        self.sendDiagnosticInterruptOverride = sendDiagnosticInterrupt
        self.startInstancesOverride = startInstances
        self.startNetworkInsightsAccessScopeAnalysisOverride = startNetworkInsightsAccessScopeAnalysis
        self.startNetworkInsightsAnalysisOverride = startNetworkInsightsAnalysis
        self.startVpcEndpointServicePrivateDnsVerificationOverride = startVpcEndpointServicePrivateDnsVerification
        self.stopInstancesOverride = stopInstances
        self.terminateClientVpnConnectionsOverride = terminateClientVpnConnections
        self.terminateInstancesOverride = terminateInstances
        self.unassignIpv6AddressesOverride = unassignIpv6Addresses
        self.unassignPrivateIpAddressesOverride = unassignPrivateIpAddresses
        self.unmonitorInstancesOverride = unmonitorInstances
        self.updateSecurityGroupRuleDescriptionsEgressOverride = updateSecurityGroupRuleDescriptionsEgress
        self.updateSecurityGroupRuleDescriptionsIngressOverride = updateSecurityGroupRuleDescriptionsIngress
        self.withdrawByoipCidrOverride = withdrawByoipCidr
    }

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) async throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult {
        if let acceptReservedInstancesExchangeQuoteOverride = acceptReservedInstancesExchangeQuoteOverride {
            return try await acceptReservedInstancesExchangeQuoteOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult {
        if let acceptTransitGatewayMulticastDomainAssociationsOverride = acceptTransitGatewayMulticastDomainAssociationsOverride {
            return try await acceptTransitGatewayMulticastDomainAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult {
        if let acceptTransitGatewayPeeringAttachmentOverride = acceptTransitGatewayPeeringAttachmentOverride {
            return try await acceptTransitGatewayPeeringAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult {
        if let acceptTransitGatewayVpcAttachmentOverride = acceptTransitGatewayVpcAttachmentOverride {
            return try await acceptTransitGatewayVpcAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcEndpointConnections(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult {
        if let acceptVpcEndpointConnectionsOverride = acceptVpcEndpointConnectionsOverride {
            return try await acceptVpcEndpointConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcPeeringConnection(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult {
        if let acceptVpcPeeringConnectionOverride = acceptVpcPeeringConnectionOverride {
            return try await acceptVpcPeeringConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the AdvertiseByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func advertiseByoipCidr(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) async throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult {
        if let advertiseByoipCidrOverride = advertiseByoipCidrOverride {
            return try await advertiseByoipCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the AllocateAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateAddress(
            input: ElasticComputeCloudModel.AllocateAddressRequest) async throws -> ElasticComputeCloudModel.AllocateAddressResult {
        if let allocateAddressOverride = allocateAddressOverride {
            return try await allocateAddressOverride(input)
        }

        throw error
    }

    /**
     Invokes the AllocateHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateHosts(
            input: ElasticComputeCloudModel.AllocateHostsRequest) async throws -> ElasticComputeCloudModel.AllocateHostsResult {
        if let allocateHostsOverride = allocateHostsOverride {
            return try await allocateHostsOverride(input)
        }

        throw error
    }

    /**
     Invokes the AllocateIpamPoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AllocateIpamPoolCidrRequest object being passed to this operation.
     - Returns: The AllocateIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateIpamPoolCidr(
            input: ElasticComputeCloudModel.AllocateIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.AllocateIpamPoolCidrResult {
        if let allocateIpamPoolCidrOverride = allocateIpamPoolCidrOverride {
            return try await allocateIpamPoolCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func applySecurityGroupsToClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult {
        if let applySecurityGroupsToClientVpnTargetNetworkOverride = applySecurityGroupsToClientVpnTargetNetworkOverride {
            return try await applySecurityGroupsToClientVpnTargetNetworkOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssignIpv6Addresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignIpv6Addresses(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) async throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult {
        if let assignIpv6AddressesOverride = assignIpv6AddressesOverride {
            return try await assignIpv6AddressesOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssignPrivateIpAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: The AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignPrivateIpAddresses(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) async throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult {
        if let assignPrivateIpAddressesOverride = assignPrivateIpAddressesOverride {
            return try await assignPrivateIpAddressesOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateAddress(
            input: ElasticComputeCloudModel.AssociateAddressRequest) async throws -> ElasticComputeCloudModel.AssociateAddressResult {
        if let associateAddressOverride = associateAddressOverride {
            return try await associateAddressOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateClientVpnTargetNetwork operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult {
        if let associateClientVpnTargetNetworkOverride = associateClientVpnTargetNetworkOverride {
            return try await associateClientVpnTargetNetworkOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    public func associateDhcpOptions(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) async throws {
        if let associateDhcpOptionsOverride = associateDhcpOptionsOverride {
            return try await associateDhcpOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) async throws -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult {
        if let associateEnclaveCertificateIamRoleOverride = associateEnclaveCertificateIamRoleOverride {
            return try await associateEnclaveCertificateIamRoleOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateIamInstanceProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateIamInstanceProfile(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) async throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult {
        if let associateIamInstanceProfileOverride = associateIamInstanceProfileOverride {
            return try await associateIamInstanceProfileOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The AssociateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateInstanceEventWindow(
            input: ElasticComputeCloudModel.AssociateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.AssociateInstanceEventWindowResult {
        if let associateInstanceEventWindowOverride = associateInstanceEventWindowOverride {
            return try await associateInstanceEventWindowOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateRouteTable(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest) async throws -> ElasticComputeCloudModel.AssociateRouteTableResult {
        if let associateRouteTableOverride = associateRouteTableOverride {
            return try await associateRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateSubnetCidrBlock(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) async throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult {
        if let associateSubnetCidrBlockOverride = associateSubnetCidrBlockOverride {
            return try await associateSubnetCidrBlockOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult {
        if let associateTransitGatewayMulticastDomainOverride = associateTransitGatewayMulticastDomainOverride {
            return try await associateTransitGatewayMulticastDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableResult {
        if let associateTransitGatewayPolicyTableOverride = associateTransitGatewayPolicyTableOverride {
            return try await associateTransitGatewayPolicyTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult {
        if let associateTransitGatewayRouteTableOverride = associateTransitGatewayRouteTableOverride {
            return try await associateTransitGatewayRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateTrunkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTrunkInterfaceRequest object being passed to this operation.
     - Returns: The AssociateTrunkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTrunkInterface(
            input: ElasticComputeCloudModel.AssociateTrunkInterfaceRequest) async throws -> ElasticComputeCloudModel.AssociateTrunkInterfaceResult {
        if let associateTrunkInterfaceOverride = associateTrunkInterfaceOverride {
            return try await associateTrunkInterfaceOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateVpcCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateVpcCidrBlock(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) async throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult {
        if let associateVpcCidrBlockOverride = associateVpcCidrBlockOverride {
            return try await associateVpcCidrBlockOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachClassicLinkVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachClassicLinkVpc(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) async throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult {
        if let attachClassicLinkVpcOverride = attachClassicLinkVpcOverride {
            return try await attachClassicLinkVpcOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    public func attachInternetGateway(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest) async throws {
        if let attachInternetGatewayOverride = attachInternetGatewayOverride {
            return try await attachInternetGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachNetworkInterface(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) async throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult {
        if let attachNetworkInterfaceOverride = attachNetworkInterfaceOverride {
            return try await attachNetworkInterfaceOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVolume(
            input: ElasticComputeCloudModel.AttachVolumeRequest) async throws -> ElasticComputeCloudModel.VolumeAttachment {
        if let attachVolumeOverride = attachVolumeOverride {
            return try await attachVolumeOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVpnGateway(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest) async throws -> ElasticComputeCloudModel.AttachVpnGatewayResult {
        if let attachVpnGatewayOverride = attachVpnGatewayOverride {
            return try await attachVpnGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeClientVpnIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func authorizeClientVpnIngress(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) async throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult {
        if let authorizeClientVpnIngressOverride = authorizeClientVpnIngressOverride {
            return try await authorizeClientVpnIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The AuthorizeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func authorizeSecurityGroupEgress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) async throws -> ElasticComputeCloudModel.AuthorizeSecurityGroupEgressResult {
        if let authorizeSecurityGroupEgressOverride = authorizeSecurityGroupEgressOverride {
            return try await authorizeSecurityGroupEgressOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The AuthorizeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func authorizeSecurityGroupIngress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) async throws -> ElasticComputeCloudModel.AuthorizeSecurityGroupIngressResult {
        if let authorizeSecurityGroupIngressOverride = authorizeSecurityGroupIngressOverride {
            return try await authorizeSecurityGroupIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the BundleInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func bundleInstance(
            input: ElasticComputeCloudModel.BundleInstanceRequest) async throws -> ElasticComputeCloudModel.BundleInstanceResult {
        if let bundleInstanceOverride = bundleInstanceOverride {
            return try await bundleInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelBundleTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelBundleTask(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest) async throws -> ElasticComputeCloudModel.CancelBundleTaskResult {
        if let cancelBundleTaskOverride = cancelBundleTaskOverride {
            return try await cancelBundleTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelCapacityReservation(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest) async throws -> ElasticComputeCloudModel.CancelCapacityReservationResult {
        if let cancelCapacityReservationOverride = cancelCapacityReservationOverride {
            return try await cancelCapacityReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelCapacityReservationFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationFleetsRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelCapacityReservationFleets(
            input: ElasticComputeCloudModel.CancelCapacityReservationFleetsRequest) async throws -> ElasticComputeCloudModel.CancelCapacityReservationFleetsResult {
        if let cancelCapacityReservationFleetsOverride = cancelCapacityReservationFleetsOverride {
            return try await cancelCapacityReservationFleetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelConversionTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    public func cancelConversionTask(
            input: ElasticComputeCloudModel.CancelConversionRequest) async throws {
        if let cancelConversionTaskOverride = cancelConversionTaskOverride {
            return try await cancelConversionTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    public func cancelExportTask(
            input: ElasticComputeCloudModel.CancelExportTaskRequest) async throws {
        if let cancelExportTaskOverride = cancelExportTaskOverride {
            return try await cancelExportTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelImportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelImportTask(
            input: ElasticComputeCloudModel.CancelImportTaskRequest) async throws -> ElasticComputeCloudModel.CancelImportTaskResult {
        if let cancelImportTaskOverride = cancelImportTaskOverride {
            return try await cancelImportTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelReservedInstancesListing operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelReservedInstancesListing(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) async throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult {
        if let cancelReservedInstancesListingOverride = cancelReservedInstancesListingOverride {
            return try await cancelReservedInstancesListingOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelSpotFleetRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotFleetRequests(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) async throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse {
        if let cancelSpotFleetRequestsOverride = cancelSpotFleetRequestsOverride {
            return try await cancelSpotFleetRequestsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelSpotInstanceRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotInstanceRequests(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) async throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult {
        if let cancelSpotInstanceRequestsOverride = cancelSpotInstanceRequestsOverride {
            return try await cancelSpotInstanceRequestsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ConfirmProductInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func confirmProductInstance(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) async throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult {
        if let confirmProductInstanceOverride = confirmProductInstanceOverride {
            return try await confirmProductInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyFpgaImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyFpgaImage(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest) async throws -> ElasticComputeCloudModel.CopyFpgaImageResult {
        if let copyFpgaImageOverride = copyFpgaImageOverride {
            return try await copyFpgaImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyImage(
            input: ElasticComputeCloudModel.CopyImageRequest) async throws -> ElasticComputeCloudModel.CopyImageResult {
        if let copyImageOverride = copyImageOverride {
            return try await copyImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopySnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copySnapshot(
            input: ElasticComputeCloudModel.CopySnapshotRequest) async throws -> ElasticComputeCloudModel.CopySnapshotResult {
        if let copySnapshotOverride = copySnapshotOverride {
            return try await copySnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCapacityReservation(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest) async throws -> ElasticComputeCloudModel.CreateCapacityReservationResult {
        if let createCapacityReservationOverride = createCapacityReservationOverride {
            return try await createCapacityReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCapacityReservationFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationFleetRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCapacityReservationFleet(
            input: ElasticComputeCloudModel.CreateCapacityReservationFleetRequest) async throws -> ElasticComputeCloudModel.CreateCapacityReservationFleetResult {
        if let createCapacityReservationFleetOverride = createCapacityReservationFleetOverride {
            return try await createCapacityReservationFleetOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCarrierGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: The CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCarrierGateway(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) async throws -> ElasticComputeCloudModel.CreateCarrierGatewayResult {
        if let createCarrierGatewayOverride = createCarrierGatewayOverride {
            return try await createCarrierGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateClientVpnEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createClientVpnEndpoint(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult {
        if let createClientVpnEndpointOverride = createClientVpnEndpointOverride {
            return try await createClientVpnEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateClientVpnRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createClientVpnRoute(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) async throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult {
        if let createClientVpnRouteOverride = createClientVpnRouteOverride {
            return try await createClientVpnRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCoipCidrRequest object being passed to this operation.
     - Returns: The CreateCoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCoipCidr(
            input: ElasticComputeCloudModel.CreateCoipCidrRequest) async throws -> ElasticComputeCloudModel.CreateCoipCidrResult {
        if let createCoipCidrOverride = createCoipCidrOverride {
            return try await createCoipCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCoipPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCoipPoolRequest object being passed to this operation.
     - Returns: The CreateCoipPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCoipPool(
            input: ElasticComputeCloudModel.CreateCoipPoolRequest) async throws -> ElasticComputeCloudModel.CreateCoipPoolResult {
        if let createCoipPoolOverride = createCoipPoolOverride {
            return try await createCoipPoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCustomerGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCustomerGateway(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) async throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult {
        if let createCustomerGatewayOverride = createCustomerGatewayOverride {
            return try await createCustomerGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDefaultSubnet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultSubnet(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) async throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult {
        if let createDefaultSubnetOverride = createDefaultSubnetOverride {
            return try await createDefaultSubnetOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDefaultVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultVpc(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest) async throws -> ElasticComputeCloudModel.CreateDefaultVpcResult {
        if let createDefaultVpcOverride = createDefaultVpcOverride {
            return try await createDefaultVpcOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDhcpOptions(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) async throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult {
        if let createDhcpOptionsOverride = createDhcpOptionsOverride {
            return try await createDhcpOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) async throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult {
        if let createEgressOnlyInternetGatewayOverride = createEgressOnlyInternetGatewayOverride {
            return try await createEgressOnlyInternetGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFleet(
            input: ElasticComputeCloudModel.CreateFleetRequest) async throws -> ElasticComputeCloudModel.CreateFleetResult {
        if let createFleetOverride = createFleetOverride {
            return try await createFleetOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateFlowLogs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFlowLogs(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest) async throws -> ElasticComputeCloudModel.CreateFlowLogsResult {
        if let createFlowLogsOverride = createFlowLogsOverride {
            return try await createFlowLogsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateFpgaImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFpgaImage(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest) async throws -> ElasticComputeCloudModel.CreateFpgaImageResult {
        if let createFpgaImageOverride = createFpgaImageOverride {
            return try await createFpgaImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createImage(
            input: ElasticComputeCloudModel.CreateImageRequest) async throws -> ElasticComputeCloudModel.CreateImageResult {
        if let createImageOverride = createImageOverride {
            return try await createImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The CreateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInstanceEventWindow(
            input: ElasticComputeCloudModel.CreateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.CreateInstanceEventWindowResult {
        if let createInstanceEventWindowOverride = createInstanceEventWindowOverride {
            return try await createInstanceEventWindowOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateInstanceExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInstanceExportTask(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) async throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult {
        if let createInstanceExportTaskOverride = createInstanceExportTaskOverride {
            return try await createInstanceExportTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInternetGateway(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest) async throws -> ElasticComputeCloudModel.CreateInternetGatewayResult {
        if let createInternetGatewayOverride = createInternetGatewayOverride {
            return try await createInternetGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamRequest object being passed to this operation.
     - Returns: The CreateIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createIpam(
            input: ElasticComputeCloudModel.CreateIpamRequest) async throws -> ElasticComputeCloudModel.CreateIpamResult {
        if let createIpamOverride = createIpamOverride {
            return try await createIpamOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateIpamPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamPoolRequest object being passed to this operation.
     - Returns: The CreateIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createIpamPool(
            input: ElasticComputeCloudModel.CreateIpamPoolRequest) async throws -> ElasticComputeCloudModel.CreateIpamPoolResult {
        if let createIpamPoolOverride = createIpamPoolOverride {
            return try await createIpamPoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateIpamScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamScopeRequest object being passed to this operation.
     - Returns: The CreateIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createIpamScope(
            input: ElasticComputeCloudModel.CreateIpamScopeRequest) async throws -> ElasticComputeCloudModel.CreateIpamScopeResult {
        if let createIpamScopeOverride = createIpamScopeOverride {
            return try await createIpamScopeOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateKeyPair operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createKeyPair(
            input: ElasticComputeCloudModel.CreateKeyPairRequest) async throws -> ElasticComputeCloudModel.KeyPair {
        if let createKeyPairOverride = createKeyPairOverride {
            return try await createKeyPairOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLaunchTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplate(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult {
        if let createLaunchTemplateOverride = createLaunchTemplateOverride {
            return try await createLaunchTemplateOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplateVersion(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) async throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult {
        if let createLaunchTemplateVersionOverride = createLaunchTemplateVersionOverride {
            return try await createLaunchTemplateVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLocalGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRoute(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult {
        if let createLocalGatewayRouteOverride = createLocalGatewayRouteOverride {
            return try await createLocalGatewayRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLocalGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteTable(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableResult {
        if let createLocalGatewayRouteTableOverride = createLocalGatewayRouteTableOverride {
            return try await createLocalGatewayRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteTableVirtualInterfaceGroupAssociation(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult {
        if let createLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride = createLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride {
            return try await createLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult {
        if let createLocalGatewayRouteTableVpcAssociationOverride = createLocalGatewayRouteTableVpcAssociationOverride {
            return try await createLocalGatewayRouteTableVpcAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateManagedPrefixList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: The CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createManagedPrefixList(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.CreateManagedPrefixListResult {
        if let createManagedPrefixListOverride = createManagedPrefixListOverride {
            return try await createManagedPrefixListOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNatGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNatGateway(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest) async throws -> ElasticComputeCloudModel.CreateNatGatewayResult {
        if let createNatGatewayOverride = createNatGatewayOverride {
            return try await createNatGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkAcl(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest) async throws -> ElasticComputeCloudModel.CreateNetworkAclResult {
        if let createNetworkAclOverride = createNetworkAclOverride {
            return try await createNetworkAclOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkAclEntry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    public func createNetworkAclEntry(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) async throws {
        if let createNetworkAclEntryOverride = createNetworkAclEntryOverride {
            return try await createNetworkAclEntryOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInsightsAccessScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInsightsAccessScopeRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsAccessScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInsightsAccessScope(
            input: ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeResult {
        if let createNetworkInsightsAccessScopeOverride = createNetworkInsightsAccessScopeOverride {
            return try await createNetworkInsightsAccessScopeOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInsightsPath operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInsightsPath(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult {
        if let createNetworkInsightsPathOverride = createNetworkInsightsPathOverride {
            return try await createNetworkInsightsPathOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterface(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult {
        if let createNetworkInterfaceOverride = createNetworkInterfaceOverride {
            return try await createNetworkInterfaceOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterfacePermission(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult {
        if let createNetworkInterfacePermissionOverride = createNetworkInterfacePermissionOverride {
            return try await createNetworkInterfacePermissionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePlacementGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: The CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createPlacementGroup(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest) async throws -> ElasticComputeCloudModel.CreatePlacementGroupResult {
        if let createPlacementGroupOverride = createPlacementGroupOverride {
            return try await createPlacementGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePublicIpv4Pool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePublicIpv4PoolRequest object being passed to this operation.
     - Returns: The CreatePublicIpv4PoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createPublicIpv4Pool(
            input: ElasticComputeCloudModel.CreatePublicIpv4PoolRequest) async throws -> ElasticComputeCloudModel.CreatePublicIpv4PoolResult {
        if let createPublicIpv4PoolOverride = createPublicIpv4PoolOverride {
            return try await createPublicIpv4PoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateReplaceRootVolumeTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateReplaceRootVolumeTaskRequest object being passed to this operation.
     - Returns: The CreateReplaceRootVolumeTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createReplaceRootVolumeTask(
            input: ElasticComputeCloudModel.CreateReplaceRootVolumeTaskRequest) async throws -> ElasticComputeCloudModel.CreateReplaceRootVolumeTaskResult {
        if let createReplaceRootVolumeTaskOverride = createReplaceRootVolumeTaskOverride {
            return try await createReplaceRootVolumeTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateReservedInstancesListing operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createReservedInstancesListing(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) async throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult {
        if let createReservedInstancesListingOverride = createReservedInstancesListingOverride {
            return try await createReservedInstancesListingOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateRestoreImageTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRestoreImageTaskRequest object being passed to this operation.
     - Returns: The CreateRestoreImageTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRestoreImageTask(
            input: ElasticComputeCloudModel.CreateRestoreImageTaskRequest) async throws -> ElasticComputeCloudModel.CreateRestoreImageTaskResult {
        if let createRestoreImageTaskOverride = createRestoreImageTaskOverride {
            return try await createRestoreImageTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRoute(
            input: ElasticComputeCloudModel.CreateRouteRequest) async throws -> ElasticComputeCloudModel.CreateRouteResult {
        if let createRouteOverride = createRouteOverride {
            return try await createRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRouteTable(
            input: ElasticComputeCloudModel.CreateRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateRouteTableResult {
        if let createRouteTableOverride = createRouteTableOverride {
            return try await createRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSecurityGroup(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest) async throws -> ElasticComputeCloudModel.CreateSecurityGroupResult {
        if let createSecurityGroupOverride = createSecurityGroupOverride {
            return try await createSecurityGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshot(
            input: ElasticComputeCloudModel.CreateSnapshotRequest) async throws -> ElasticComputeCloudModel.Snapshot {
        if let createSnapshotOverride = createSnapshotOverride {
            return try await createSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: The CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshots(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest) async throws -> ElasticComputeCloudModel.CreateSnapshotsResult {
        if let createSnapshotsOverride = createSnapshotsOverride {
            return try await createSnapshotsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) async throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult {
        if let createSpotDatafeedSubscriptionOverride = createSpotDatafeedSubscriptionOverride {
            return try await createSpotDatafeedSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateStoreImageTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStoreImageTaskRequest object being passed to this operation.
     - Returns: The CreateStoreImageTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createStoreImageTask(
            input: ElasticComputeCloudModel.CreateStoreImageTaskRequest) async throws -> ElasticComputeCloudModel.CreateStoreImageTaskResult {
        if let createStoreImageTaskOverride = createStoreImageTaskOverride {
            return try await createStoreImageTaskOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSubnet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSubnet(
            input: ElasticComputeCloudModel.CreateSubnetRequest) async throws -> ElasticComputeCloudModel.CreateSubnetResult {
        if let createSubnetOverride = createSubnetOverride {
            return try await createSubnetOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSubnetCidrReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSubnetCidrReservationRequest object being passed to this operation.
     - Returns: The CreateSubnetCidrReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSubnetCidrReservation(
            input: ElasticComputeCloudModel.CreateSubnetCidrReservationRequest) async throws -> ElasticComputeCloudModel.CreateSubnetCidrReservationResult {
        if let createSubnetCidrReservationOverride = createSubnetCidrReservationOverride {
            return try await createSubnetCidrReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    public func createTags(
            input: ElasticComputeCloudModel.CreateTagsRequest) async throws {
        if let createTagsOverride = createTagsOverride {
            return try await createTagsOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorFilter operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilter(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult {
        if let createTrafficMirrorFilterOverride = createTrafficMirrorFilterOverride {
            return try await createTrafficMirrorFilterOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorFilterRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult {
        if let createTrafficMirrorFilterRuleOverride = createTrafficMirrorFilterRuleOverride {
            return try await createTrafficMirrorFilterRuleOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorSession operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorSession(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult {
        if let createTrafficMirrorSessionOverride = createTrafficMirrorSessionOverride {
            return try await createTrafficMirrorSessionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorTarget operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorTarget(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult {
        if let createTrafficMirrorTargetOverride = createTrafficMirrorTargetOverride {
            return try await createTrafficMirrorTargetOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGateway(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayResult {
        if let createTransitGatewayOverride = createTransitGatewayOverride {
            return try await createTransitGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayConnect operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayConnect(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult {
        if let createTransitGatewayConnectOverride = createTransitGatewayConnectOverride {
            return try await createTransitGatewayConnectOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayConnectPeer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult {
        if let createTransitGatewayConnectPeerOverride = createTransitGatewayConnectPeerOverride {
            return try await createTransitGatewayConnectPeerOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult {
        if let createTransitGatewayMulticastDomainOverride = createTransitGatewayMulticastDomainOverride {
            return try await createTransitGatewayMulticastDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult {
        if let createTransitGatewayPeeringAttachmentOverride = createTransitGatewayPeeringAttachmentOverride {
            return try await createTransitGatewayPeeringAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.CreateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPolicyTableResult {
        if let createTransitGatewayPolicyTableOverride = createTransitGatewayPolicyTableOverride {
            return try await createTransitGatewayPolicyTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult {
        if let createTransitGatewayPrefixListReferenceOverride = createTransitGatewayPrefixListReferenceOverride {
            return try await createTransitGatewayPrefixListReferenceOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRoute(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult {
        if let createTransitGatewayRouteOverride = createTransitGatewayRouteOverride {
            return try await createTransitGatewayRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult {
        if let createTransitGatewayRouteTableOverride = createTransitGatewayRouteTableOverride {
            return try await createTransitGatewayRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayRouteTableAnnouncement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableAnnouncementRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableAnnouncementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteTableAnnouncement(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementResult {
        if let createTransitGatewayRouteTableAnnouncementOverride = createTransitGatewayRouteTableAnnouncementOverride {
            return try await createTransitGatewayRouteTableAnnouncementOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult {
        if let createTransitGatewayVpcAttachmentOverride = createTransitGatewayVpcAttachmentOverride {
            return try await createTransitGatewayVpcAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVolume(
            input: ElasticComputeCloudModel.CreateVolumeRequest) async throws -> ElasticComputeCloudModel.Volume {
        if let createVolumeOverride = createVolumeOverride {
            return try await createVolumeOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpc(
            input: ElasticComputeCloudModel.CreateVpcRequest) async throws -> ElasticComputeCloudModel.CreateVpcResult {
        if let createVpcOverride = createVpcOverride {
            return try await createVpcOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpoint(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointResult {
        if let createVpcEndpointOverride = createVpcEndpointOverride {
            return try await createVpcEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult {
        if let createVpcEndpointConnectionNotificationOverride = createVpcEndpointConnectionNotificationOverride {
            return try await createVpcEndpointConnectionNotificationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult {
        if let createVpcEndpointServiceConfigurationOverride = createVpcEndpointServiceConfigurationOverride {
            return try await createVpcEndpointServiceConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcPeeringConnection(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult {
        if let createVpcPeeringConnectionOverride = createVpcPeeringConnectionOverride {
            return try await createVpcPeeringConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpnConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnConnection(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest) async throws -> ElasticComputeCloudModel.CreateVpnConnectionResult {
        if let createVpnConnectionOverride = createVpnConnectionOverride {
            return try await createVpnConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpnConnectionRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    public func createVpnConnectionRoute(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) async throws {
        if let createVpnConnectionRouteOverride = createVpnConnectionRouteOverride {
            return try await createVpnConnectionRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnGateway(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest) async throws -> ElasticComputeCloudModel.CreateVpnGatewayResult {
        if let createVpnGatewayOverride = createVpnGatewayOverride {
            return try await createVpnGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCarrierGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: The DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteCarrierGateway(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteCarrierGatewayResult {
        if let deleteCarrierGatewayOverride = deleteCarrierGatewayOverride {
            return try await deleteCarrierGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteClientVpnEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteClientVpnEndpoint(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult {
        if let deleteClientVpnEndpointOverride = deleteClientVpnEndpointOverride {
            return try await deleteClientVpnEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteClientVpnRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteClientVpnRoute(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) async throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult {
        if let deleteClientVpnRouteOverride = deleteClientVpnRouteOverride {
            return try await deleteClientVpnRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCoipCidrRequest object being passed to this operation.
     - Returns: The DeleteCoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteCoipCidr(
            input: ElasticComputeCloudModel.DeleteCoipCidrRequest) async throws -> ElasticComputeCloudModel.DeleteCoipCidrResult {
        if let deleteCoipCidrOverride = deleteCoipCidrOverride {
            return try await deleteCoipCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCoipPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCoipPoolRequest object being passed to this operation.
     - Returns: The DeleteCoipPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteCoipPool(
            input: ElasticComputeCloudModel.DeleteCoipPoolRequest) async throws -> ElasticComputeCloudModel.DeleteCoipPoolResult {
        if let deleteCoipPoolOverride = deleteCoipPoolOverride {
            return try await deleteCoipPoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCustomerGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    public func deleteCustomerGateway(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) async throws {
        if let deleteCustomerGatewayOverride = deleteCustomerGatewayOverride {
            return try await deleteCustomerGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    public func deleteDhcpOptions(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) async throws {
        if let deleteDhcpOptionsOverride = deleteDhcpOptionsOverride {
            return try await deleteDhcpOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult {
        if let deleteEgressOnlyInternetGatewayOverride = deleteEgressOnlyInternetGatewayOverride {
            return try await deleteEgressOnlyInternetGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFleets(
            input: ElasticComputeCloudModel.DeleteFleetsRequest) async throws -> ElasticComputeCloudModel.DeleteFleetsResult {
        if let deleteFleetsOverride = deleteFleetsOverride {
            return try await deleteFleetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteFlowLogs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFlowLogs(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest) async throws -> ElasticComputeCloudModel.DeleteFlowLogsResult {
        if let deleteFlowLogsOverride = deleteFlowLogsOverride {
            return try await deleteFlowLogsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteFpgaImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFpgaImage(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest) async throws -> ElasticComputeCloudModel.DeleteFpgaImageResult {
        if let deleteFpgaImageOverride = deleteFpgaImageOverride {
            return try await deleteFpgaImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInstanceEventWindowRequest object being passed to this operation.
     - Returns: The DeleteInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteInstanceEventWindow(
            input: ElasticComputeCloudModel.DeleteInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.DeleteInstanceEventWindowResult {
        if let deleteInstanceEventWindowOverride = deleteInstanceEventWindowOverride {
            return try await deleteInstanceEventWindowOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    public func deleteInternetGateway(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) async throws {
        if let deleteInternetGatewayOverride = deleteInternetGatewayOverride {
            return try await deleteInternetGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamRequest object being passed to this operation.
     - Returns: The DeleteIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteIpam(
            input: ElasticComputeCloudModel.DeleteIpamRequest) async throws -> ElasticComputeCloudModel.DeleteIpamResult {
        if let deleteIpamOverride = deleteIpamOverride {
            return try await deleteIpamOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteIpamPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamPoolRequest object being passed to this operation.
     - Returns: The DeleteIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteIpamPool(
            input: ElasticComputeCloudModel.DeleteIpamPoolRequest) async throws -> ElasticComputeCloudModel.DeleteIpamPoolResult {
        if let deleteIpamPoolOverride = deleteIpamPoolOverride {
            return try await deleteIpamPoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteIpamScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamScopeRequest object being passed to this operation.
     - Returns: The DeleteIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteIpamScope(
            input: ElasticComputeCloudModel.DeleteIpamScopeRequest) async throws -> ElasticComputeCloudModel.DeleteIpamScopeResult {
        if let deleteIpamScopeOverride = deleteIpamScopeOverride {
            return try await deleteIpamScopeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteKeyPair operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    public func deleteKeyPair(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest) async throws {
        if let deleteKeyPairOverride = deleteKeyPairOverride {
            return try await deleteKeyPairOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLaunchTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplate(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult {
        if let deleteLaunchTemplateOverride = deleteLaunchTemplateOverride {
            return try await deleteLaunchTemplateOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) async throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult {
        if let deleteLaunchTemplateVersionsOverride = deleteLaunchTemplateVersionsOverride {
            return try await deleteLaunchTemplateVersionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLocalGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRoute(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult {
        if let deleteLocalGatewayRouteOverride = deleteLocalGatewayRouteOverride {
            return try await deleteLocalGatewayRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLocalGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteTable(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableResult {
        if let deleteLocalGatewayRouteTableOverride = deleteLocalGatewayRouteTableOverride {
            return try await deleteLocalGatewayRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult {
        if let deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride = deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride {
            return try await deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult {
        if let deleteLocalGatewayRouteTableVpcAssociationOverride = deleteLocalGatewayRouteTableVpcAssociationOverride {
            return try await deleteLocalGatewayRouteTableVpcAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteManagedPrefixList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: The DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteManagedPrefixList(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.DeleteManagedPrefixListResult {
        if let deleteManagedPrefixListOverride = deleteManagedPrefixListOverride {
            return try await deleteManagedPrefixListOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNatGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNatGateway(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteNatGatewayResult {
        if let deleteNatGatewayOverride = deleteNatGatewayOverride {
            return try await deleteNatGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    public func deleteNetworkAcl(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest) async throws {
        if let deleteNetworkAclOverride = deleteNetworkAclOverride {
            return try await deleteNetworkAclOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkAclEntry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    public func deleteNetworkAclEntry(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) async throws {
        if let deleteNetworkAclEntryOverride = deleteNetworkAclEntryOverride {
            return try await deleteNetworkAclEntryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInsightsAccessScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAccessScopeRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAccessScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsAccessScope(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeResult {
        if let deleteNetworkInsightsAccessScopeOverride = deleteNetworkInsightsAccessScopeOverride {
            return try await deleteNetworkInsightsAccessScopeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInsightsAccessScopeAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAccessScopeAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAccessScopeAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsAccessScopeAnalysis(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisResult {
        if let deleteNetworkInsightsAccessScopeAnalysisOverride = deleteNetworkInsightsAccessScopeAnalysisOverride {
            return try await deleteNetworkInsightsAccessScopeAnalysisOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult {
        if let deleteNetworkInsightsAnalysisOverride = deleteNetworkInsightsAnalysisOverride {
            return try await deleteNetworkInsightsAnalysisOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInsightsPath operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsPath(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult {
        if let deleteNetworkInsightsPathOverride = deleteNetworkInsightsPathOverride {
            return try await deleteNetworkInsightsPathOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    public func deleteNetworkInterface(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) async throws {
        if let deleteNetworkInterfaceOverride = deleteNetworkInterfaceOverride {
            return try await deleteNetworkInterfaceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInterfacePermission(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult {
        if let deleteNetworkInterfacePermissionOverride = deleteNetworkInterfacePermissionOverride {
            return try await deleteNetworkInterfacePermissionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePlacementGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    public func deletePlacementGroup(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest) async throws {
        if let deletePlacementGroupOverride = deletePlacementGroupOverride {
            return try await deletePlacementGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePublicIpv4Pool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePublicIpv4PoolRequest object being passed to this operation.
     - Returns: The DeletePublicIpv4PoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deletePublicIpv4Pool(
            input: ElasticComputeCloudModel.DeletePublicIpv4PoolRequest) async throws -> ElasticComputeCloudModel.DeletePublicIpv4PoolResult {
        if let deletePublicIpv4PoolOverride = deletePublicIpv4PoolOverride {
            return try await deletePublicIpv4PoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteQueuedReservedInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: The DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteQueuedReservedInstances(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) async throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult {
        if let deleteQueuedReservedInstancesOverride = deleteQueuedReservedInstancesOverride {
            return try await deleteQueuedReservedInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    public func deleteRoute(
            input: ElasticComputeCloudModel.DeleteRouteRequest) async throws {
        if let deleteRouteOverride = deleteRouteOverride {
            return try await deleteRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    public func deleteRouteTable(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest) async throws {
        if let deleteRouteTableOverride = deleteRouteTableOverride {
            return try await deleteRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    public func deleteSecurityGroup(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) async throws {
        if let deleteSecurityGroupOverride = deleteSecurityGroupOverride {
            return try await deleteSecurityGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    public func deleteSnapshot(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest) async throws {
        if let deleteSnapshotOverride = deleteSnapshotOverride {
            return try await deleteSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    public func deleteSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) async throws {
        if let deleteSpotDatafeedSubscriptionOverride = deleteSpotDatafeedSubscriptionOverride {
            return try await deleteSpotDatafeedSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSubnet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    public func deleteSubnet(
            input: ElasticComputeCloudModel.DeleteSubnetRequest) async throws {
        if let deleteSubnetOverride = deleteSubnetOverride {
            return try await deleteSubnetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSubnetCidrReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSubnetCidrReservationRequest object being passed to this operation.
     - Returns: The DeleteSubnetCidrReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteSubnetCidrReservation(
            input: ElasticComputeCloudModel.DeleteSubnetCidrReservationRequest) async throws -> ElasticComputeCloudModel.DeleteSubnetCidrReservationResult {
        if let deleteSubnetCidrReservationOverride = deleteSubnetCidrReservationOverride {
            return try await deleteSubnetCidrReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    public func deleteTags(
            input: ElasticComputeCloudModel.DeleteTagsRequest) async throws {
        if let deleteTagsOverride = deleteTagsOverride {
            return try await deleteTagsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorFilter operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilter(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult {
        if let deleteTrafficMirrorFilterOverride = deleteTrafficMirrorFilterOverride {
            return try await deleteTrafficMirrorFilterOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult {
        if let deleteTrafficMirrorFilterRuleOverride = deleteTrafficMirrorFilterRuleOverride {
            return try await deleteTrafficMirrorFilterRuleOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorSession operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorSession(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult {
        if let deleteTrafficMirrorSessionOverride = deleteTrafficMirrorSessionOverride {
            return try await deleteTrafficMirrorSessionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorTarget operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorTarget(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult {
        if let deleteTrafficMirrorTargetOverride = deleteTrafficMirrorTargetOverride {
            return try await deleteTrafficMirrorTargetOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGateway(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult {
        if let deleteTransitGatewayOverride = deleteTransitGatewayOverride {
            return try await deleteTransitGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayConnect operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnect(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult {
        if let deleteTransitGatewayConnectOverride = deleteTransitGatewayConnectOverride {
            return try await deleteTransitGatewayConnectOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult {
        if let deleteTransitGatewayConnectPeerOverride = deleteTransitGatewayConnectPeerOverride {
            return try await deleteTransitGatewayConnectPeerOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult {
        if let deleteTransitGatewayMulticastDomainOverride = deleteTransitGatewayMulticastDomainOverride {
            return try await deleteTransitGatewayMulticastDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult {
        if let deleteTransitGatewayPeeringAttachmentOverride = deleteTransitGatewayPeeringAttachmentOverride {
            return try await deleteTransitGatewayPeeringAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableResult {
        if let deleteTransitGatewayPolicyTableOverride = deleteTransitGatewayPolicyTableOverride {
            return try await deleteTransitGatewayPolicyTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult {
        if let deleteTransitGatewayPrefixListReferenceOverride = deleteTransitGatewayPrefixListReferenceOverride {
            return try await deleteTransitGatewayPrefixListReferenceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRoute(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult {
        if let deleteTransitGatewayRouteOverride = deleteTransitGatewayRouteOverride {
            return try await deleteTransitGatewayRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult {
        if let deleteTransitGatewayRouteTableOverride = deleteTransitGatewayRouteTableOverride {
            return try await deleteTransitGatewayRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayRouteTableAnnouncement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableAnnouncementRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableAnnouncementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteTableAnnouncement(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementResult {
        if let deleteTransitGatewayRouteTableAnnouncementOverride = deleteTransitGatewayRouteTableAnnouncementOverride {
            return try await deleteTransitGatewayRouteTableAnnouncementOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult {
        if let deleteTransitGatewayVpcAttachmentOverride = deleteTransitGatewayVpcAttachmentOverride {
            return try await deleteTransitGatewayVpcAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    public func deleteVolume(
            input: ElasticComputeCloudModel.DeleteVolumeRequest) async throws {
        if let deleteVolumeOverride = deleteVolumeOverride {
            return try await deleteVolumeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    public func deleteVpc(
            input: ElasticComputeCloudModel.DeleteVpcRequest) async throws {
        if let deleteVpcOverride = deleteVpcOverride {
            return try await deleteVpcOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult {
        if let deleteVpcEndpointConnectionNotificationsOverride = deleteVpcEndpointConnectionNotificationsOverride {
            return try await deleteVpcEndpointConnectionNotificationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult {
        if let deleteVpcEndpointServiceConfigurationsOverride = deleteVpcEndpointServiceConfigurationsOverride {
            return try await deleteVpcEndpointServiceConfigurationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpoints(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult {
        if let deleteVpcEndpointsOverride = deleteVpcEndpointsOverride {
            return try await deleteVpcEndpointsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcPeeringConnection(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult {
        if let deleteVpcPeeringConnectionOverride = deleteVpcPeeringConnectionOverride {
            return try await deleteVpcPeeringConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpnConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    public func deleteVpnConnection(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) async throws {
        if let deleteVpnConnectionOverride = deleteVpnConnectionOverride {
            return try await deleteVpnConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    public func deleteVpnConnectionRoute(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) async throws {
        if let deleteVpnConnectionRouteOverride = deleteVpnConnectionRouteOverride {
            return try await deleteVpnConnectionRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    public func deleteVpnGateway(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) async throws {
        if let deleteVpnGatewayOverride = deleteVpnGatewayOverride {
            return try await deleteVpnGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprovisionByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deprovisionByoipCidr(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult {
        if let deprovisionByoipCidrOverride = deprovisionByoipCidrOverride {
            return try await deprovisionByoipCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprovisionIpamPoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprovisionIpamPoolCidrRequest object being passed to this operation.
     - Returns: The DeprovisionIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deprovisionIpamPoolCidr(
            input: ElasticComputeCloudModel.DeprovisionIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionIpamPoolCidrResult {
        if let deprovisionIpamPoolCidrOverride = deprovisionIpamPoolCidrOverride {
            return try await deprovisionIpamPoolCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprovisionPublicIpv4PoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprovisionPublicIpv4PoolCidrRequest object being passed to this operation.
     - Returns: The DeprovisionPublicIpv4PoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deprovisionPublicIpv4PoolCidr(
            input: ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrResult {
        if let deprovisionPublicIpv4PoolCidrOverride = deprovisionPublicIpv4PoolCidrOverride {
            return try await deprovisionPublicIpv4PoolCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    public func deregisterImage(
            input: ElasticComputeCloudModel.DeregisterImageRequest) async throws {
        if let deregisterImageOverride = deregisterImageOverride {
            return try await deregisterImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult {
        if let deregisterInstanceEventNotificationAttributesOverride = deregisterInstanceEventNotificationAttributesOverride {
            return try await deregisterInstanceEventNotificationAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) async throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult {
        if let deregisterTransitGatewayMulticastGroupMembersOverride = deregisterTransitGatewayMulticastGroupMembersOverride {
            return try await deregisterTransitGatewayMulticastGroupMembersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) async throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult {
        if let deregisterTransitGatewayMulticastGroupSourcesOverride = deregisterTransitGatewayMulticastGroupSourcesOverride {
            return try await deregisterTransitGatewayMulticastGroupSourcesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAccountAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributes(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) async throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult {
        if let describeAccountAttributesOverride = describeAccountAttributesOverride {
            return try await describeAccountAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddresses(
            input: ElasticComputeCloudModel.DescribeAddressesRequest) async throws -> ElasticComputeCloudModel.DescribeAddressesResult {
        if let describeAddressesOverride = describeAddressesOverride {
            return try await describeAddressesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAddressesAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: The DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddressesAttribute(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeAddressesAttributeResult {
        if let describeAddressesAttributeOverride = describeAddressesAttributeOverride {
            return try await describeAddressesAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAggregateIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAggregateIdFormat(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult {
        if let describeAggregateIdFormatOverride = describeAggregateIdFormatOverride {
            return try await describeAggregateIdFormatOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAvailabilityZones operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAvailabilityZones(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) async throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult {
        if let describeAvailabilityZonesOverride = describeAvailabilityZonesOverride {
            return try await describeAvailabilityZonesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeBundleTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeBundleTasks(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest) async throws -> ElasticComputeCloudModel.DescribeBundleTasksResult {
        if let describeBundleTasksOverride = describeBundleTasksOverride {
            return try await describeBundleTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeByoipCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeByoipCidrs(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) async throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult {
        if let describeByoipCidrsOverride = describeByoipCidrsOverride {
            return try await describeByoipCidrsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCapacityReservationFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationFleetsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCapacityReservationFleets(
            input: ElasticComputeCloudModel.DescribeCapacityReservationFleetsRequest) async throws -> ElasticComputeCloudModel.DescribeCapacityReservationFleetsResult {
        if let describeCapacityReservationFleetsOverride = describeCapacityReservationFleetsOverride {
            return try await describeCapacityReservationFleetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCapacityReservations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCapacityReservations(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) async throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult {
        if let describeCapacityReservationsOverride = describeCapacityReservationsOverride {
            return try await describeCapacityReservationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCarrierGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCarrierGateways(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult {
        if let describeCarrierGatewaysOverride = describeCarrierGatewaysOverride {
            return try await describeCarrierGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClassicLinkInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClassicLinkInstances(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult {
        if let describeClassicLinkInstancesOverride = describeClassicLinkInstancesOverride {
            return try await describeClassicLinkInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnAuthorizationRules(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult {
        if let describeClientVpnAuthorizationRulesOverride = describeClientVpnAuthorizationRulesOverride {
            return try await describeClientVpnAuthorizationRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnConnections(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult {
        if let describeClientVpnConnectionsOverride = describeClientVpnConnectionsOverride {
            return try await describeClientVpnConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnEndpoints(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult {
        if let describeClientVpnEndpointsOverride = describeClientVpnEndpointsOverride {
            return try await describeClientVpnEndpointsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnRoutes(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult {
        if let describeClientVpnRoutesOverride = describeClientVpnRoutesOverride {
            return try await describeClientVpnRoutesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnTargetNetworks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnTargetNetworks(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult {
        if let describeClientVpnTargetNetworksOverride = describeClientVpnTargetNetworksOverride {
            return try await describeClientVpnTargetNetworksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCoipPools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: The DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCoipPools(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) async throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult {
        if let describeCoipPoolsOverride = describeCoipPoolsOverride {
            return try await describeCoipPoolsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeConversionTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeConversionTasks(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest) async throws -> ElasticComputeCloudModel.DescribeConversionTasksResult {
        if let describeConversionTasksOverride = describeConversionTasksOverride {
            return try await describeConversionTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCustomerGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCustomerGateways(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult {
        if let describeCustomerGatewaysOverride = describeCustomerGatewaysOverride {
            return try await describeCustomerGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDhcpOptions(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) async throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult {
        if let describeDhcpOptionsOverride = describeDhcpOptionsOverride {
            return try await describeDhcpOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEgressOnlyInternetGateways(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult {
        if let describeEgressOnlyInternetGatewaysOverride = describeEgressOnlyInternetGatewaysOverride {
            return try await describeEgressOnlyInternetGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeElasticGpus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeElasticGpus(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest) async throws -> ElasticComputeCloudModel.DescribeElasticGpusResult {
        if let describeElasticGpusOverride = describeElasticGpusOverride {
            return try await describeElasticGpusOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExportImageTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportImageTasks(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult {
        if let describeExportImageTasksOverride = describeExportImageTasksOverride {
            return try await describeExportImageTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExportTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportTasks(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest) async throws -> ElasticComputeCloudModel.DescribeExportTasksResult {
        if let describeExportTasksOverride = describeExportTasksOverride {
            return try await describeExportTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFastLaunchImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFastLaunchImagesRequest object being passed to this operation.
     - Returns: The DescribeFastLaunchImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFastLaunchImages(
            input: ElasticComputeCloudModel.DescribeFastLaunchImagesRequest) async throws -> ElasticComputeCloudModel.DescribeFastLaunchImagesResult {
        if let describeFastLaunchImagesOverride = describeFastLaunchImagesOverride {
            return try await describeFastLaunchImagesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFastSnapshotRestores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFastSnapshotRestores(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult {
        if let describeFastSnapshotRestoresOverride = describeFastSnapshotRestoresOverride {
            return try await describeFastSnapshotRestoresOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFleetHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetHistory(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult {
        if let describeFleetHistoryOverride = describeFleetHistoryOverride {
            return try await describeFleetHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFleetInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetInstances(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult {
        if let describeFleetInstancesOverride = describeFleetInstancesOverride {
            return try await describeFleetInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleets(
            input: ElasticComputeCloudModel.DescribeFleetsRequest) async throws -> ElasticComputeCloudModel.DescribeFleetsResult {
        if let describeFleetsOverride = describeFleetsOverride {
            return try await describeFleetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFlowLogs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFlowLogs(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest) async throws -> ElasticComputeCloudModel.DescribeFlowLogsResult {
        if let describeFlowLogsOverride = describeFlowLogsOverride {
            return try await describeFlowLogsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImageAttribute(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult {
        if let describeFpgaImageAttributeOverride = describeFpgaImageAttributeOverride {
            return try await describeFpgaImageAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFpgaImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImages(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) async throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult {
        if let describeFpgaImagesOverride = describeFpgaImagesOverride {
            return try await describeFpgaImagesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeHostReservationOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservationOfferings(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult {
        if let describeHostReservationOfferingsOverride = describeHostReservationOfferingsOverride {
            return try await describeHostReservationOfferingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeHostReservations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservations(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest) async throws -> ElasticComputeCloudModel.DescribeHostReservationsResult {
        if let describeHostReservationsOverride = describeHostReservationsOverride {
            return try await describeHostReservationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHosts(
            input: ElasticComputeCloudModel.DescribeHostsRequest) async throws -> ElasticComputeCloudModel.DescribeHostsResult {
        if let describeHostsOverride = describeHostsOverride {
            return try await describeHostsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIamInstanceProfileAssociations(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult {
        if let describeIamInstanceProfileAssociationsOverride = describeIamInstanceProfileAssociationsOverride {
            return try await describeIamInstanceProfileAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdFormat(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeIdFormatResult {
        if let describeIdFormatOverride = describeIdFormatOverride {
            return try await describeIdFormatOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIdentityIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdentityIdFormat(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult {
        if let describeIdentityIdFormatOverride = describeIdentityIdFormatOverride {
            return try await describeIdentityIdFormatOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImageAttribute(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest) async throws -> ElasticComputeCloudModel.ImageAttribute {
        if let describeImageAttributeOverride = describeImageAttributeOverride {
            return try await describeImageAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImages(
            input: ElasticComputeCloudModel.DescribeImagesRequest) async throws -> ElasticComputeCloudModel.DescribeImagesResult {
        if let describeImagesOverride = describeImagesOverride {
            return try await describeImagesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImportImageTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportImageTasks(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult {
        if let describeImportImageTasksOverride = describeImportImageTasksOverride {
            return try await describeImportImageTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportSnapshotTasks(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) async throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult {
        if let describeImportSnapshotTasksOverride = describeImportSnapshotTasksOverride {
            return try await describeImportSnapshotTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceAttribute(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) async throws -> ElasticComputeCloudModel.InstanceAttribute {
        if let describeInstanceAttributeOverride = describeInstanceAttributeOverride {
            return try await describeInstanceAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceCreditSpecifications(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult {
        if let describeInstanceCreditSpecificationsOverride = describeInstanceCreditSpecificationsOverride {
            return try await describeInstanceCreditSpecificationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult {
        if let describeInstanceEventNotificationAttributesOverride = describeInstanceEventNotificationAttributesOverride {
            return try await describeInstanceEventNotificationAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceEventWindows operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceEventWindowsRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventWindowsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceEventWindows(
            input: ElasticComputeCloudModel.DescribeInstanceEventWindowsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceEventWindowsResult {
        if let describeInstanceEventWindowsOverride = describeInstanceEventWindowsOverride {
            return try await describeInstanceEventWindowsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceStatus(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult {
        if let describeInstanceStatusOverride = describeInstanceStatusOverride {
            return try await describeInstanceStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceTypeOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceTypeOfferings(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult {
        if let describeInstanceTypeOfferingsOverride = describeInstanceTypeOfferingsOverride {
            return try await describeInstanceTypeOfferingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceTypes(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult {
        if let describeInstanceTypesOverride = describeInstanceTypesOverride {
            return try await describeInstanceTypesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstances(
            input: ElasticComputeCloudModel.DescribeInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeInstancesResult {
        if let describeInstancesOverride = describeInstancesOverride {
            return try await describeInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInternetGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInternetGateways(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult {
        if let describeInternetGatewaysOverride = describeInternetGatewaysOverride {
            return try await describeInternetGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIpamPools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamPoolsRequest object being passed to this operation.
     - Returns: The DescribeIpamPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIpamPools(
            input: ElasticComputeCloudModel.DescribeIpamPoolsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamPoolsResult {
        if let describeIpamPoolsOverride = describeIpamPoolsOverride {
            return try await describeIpamPoolsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIpamScopes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamScopesRequest object being passed to this operation.
     - Returns: The DescribeIpamScopesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIpamScopes(
            input: ElasticComputeCloudModel.DescribeIpamScopesRequest) async throws -> ElasticComputeCloudModel.DescribeIpamScopesResult {
        if let describeIpamScopesOverride = describeIpamScopesOverride {
            return try await describeIpamScopesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIpams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamsRequest object being passed to this operation.
     - Returns: The DescribeIpamsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIpams(
            input: ElasticComputeCloudModel.DescribeIpamsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamsResult {
        if let describeIpamsOverride = describeIpamsOverride {
            return try await describeIpamsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIpv6Pools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: The DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIpv6Pools(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) async throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult {
        if let describeIpv6PoolsOverride = describeIpv6PoolsOverride {
            return try await describeIpv6PoolsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeKeyPairs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeKeyPairs(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest) async throws -> ElasticComputeCloudModel.DescribeKeyPairsResult {
        if let describeKeyPairsOverride = describeKeyPairsOverride {
            return try await describeKeyPairsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) async throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult {
        if let describeLaunchTemplateVersionsOverride = describeLaunchTemplateVersionsOverride {
            return try await describeLaunchTemplateVersionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLaunchTemplates operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplates(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) async throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult {
        if let describeLaunchTemplatesOverride = describeLaunchTemplatesOverride {
            return try await describeLaunchTemplatesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult {
        if let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOverride = describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOverride {
            return try await describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVpcAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult {
        if let describeLocalGatewayRouteTableVpcAssociationsOverride = describeLocalGatewayRouteTableVpcAssociationsOverride {
            return try await describeLocalGatewayRouteTableVpcAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayRouteTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult {
        if let describeLocalGatewayRouteTablesOverride = describeLocalGatewayRouteTablesOverride {
            return try await describeLocalGatewayRouteTablesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfaceGroups(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult {
        if let describeLocalGatewayVirtualInterfaceGroupsOverride = describeLocalGatewayVirtualInterfaceGroupsOverride {
            return try await describeLocalGatewayVirtualInterfaceGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfaces(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult {
        if let describeLocalGatewayVirtualInterfacesOverride = describeLocalGatewayVirtualInterfacesOverride {
            return try await describeLocalGatewayVirtualInterfacesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGateways(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult {
        if let describeLocalGatewaysOverride = describeLocalGatewaysOverride {
            return try await describeLocalGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeManagedPrefixLists operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: The DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeManagedPrefixLists(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) async throws -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult {
        if let describeManagedPrefixListsOverride = describeManagedPrefixListsOverride {
            return try await describeManagedPrefixListsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeMovingAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeMovingAddresses(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) async throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult {
        if let describeMovingAddressesOverride = describeMovingAddressesOverride {
            return try await describeMovingAddressesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNatGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNatGateways(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult {
        if let describeNatGatewaysOverride = describeNatGatewaysOverride {
            return try await describeNatGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkAcls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkAcls(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult {
        if let describeNetworkAclsOverride = describeNetworkAclsOverride {
            return try await describeNetworkAclsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInsightsAccessScopeAnalyses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAccessScopeAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAccessScopeAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsAccessScopeAnalyses(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesResult {
        if let describeNetworkInsightsAccessScopeAnalysesOverride = describeNetworkInsightsAccessScopeAnalysesOverride {
            return try await describeNetworkInsightsAccessScopeAnalysesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInsightsAccessScopes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAccessScopesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAccessScopesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsAccessScopes(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesResult {
        if let describeNetworkInsightsAccessScopesOverride = describeNetworkInsightsAccessScopesOverride {
            return try await describeNetworkInsightsAccessScopesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsAnalyses(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult {
        if let describeNetworkInsightsAnalysesOverride = describeNetworkInsightsAnalysesOverride {
            return try await describeNetworkInsightsAnalysesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInsightsPaths operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsPaths(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult {
        if let describeNetworkInsightsPathsOverride = describeNetworkInsightsPathsOverride {
            return try await describeNetworkInsightsPathsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult {
        if let describeNetworkInterfaceAttributeOverride = describeNetworkInterfaceAttributeOverride {
            return try await describeNetworkInterfaceAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfacePermissions(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult {
        if let describeNetworkInterfacePermissionsOverride = describeNetworkInterfacePermissionsOverride {
            return try await describeNetworkInterfacePermissionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInterfaces operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfaces(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult {
        if let describeNetworkInterfacesOverride = describeNetworkInterfacesOverride {
            return try await describeNetworkInterfacesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePlacementGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePlacementGroups(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) async throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult {
        if let describePlacementGroupsOverride = describePlacementGroupsOverride {
            return try await describePlacementGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePrefixLists operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrefixLists(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest) async throws -> ElasticComputeCloudModel.DescribePrefixListsResult {
        if let describePrefixListsOverride = describePrefixListsOverride {
            return try await describePrefixListsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePrincipalIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrincipalIdFormat(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult {
        if let describePrincipalIdFormatOverride = describePrincipalIdFormatOverride {
            return try await describePrincipalIdFormatOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePublicIpv4Pools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePublicIpv4Pools(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) async throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult {
        if let describePublicIpv4PoolsOverride = describePublicIpv4PoolsOverride {
            return try await describePublicIpv4PoolsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeRegions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRegions(
            input: ElasticComputeCloudModel.DescribeRegionsRequest) async throws -> ElasticComputeCloudModel.DescribeRegionsResult {
        if let describeRegionsOverride = describeRegionsOverride {
            return try await describeRegionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReplaceRootVolumeTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReplaceRootVolumeTasksRequest object being passed to this operation.
     - Returns: The DescribeReplaceRootVolumeTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReplaceRootVolumeTasks(
            input: ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksRequest) async throws -> ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksResult {
        if let describeReplaceRootVolumeTasksOverride = describeReplaceRootVolumeTasksOverride {
            return try await describeReplaceRootVolumeTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstances(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult {
        if let describeReservedInstancesOverride = describeReservedInstancesOverride {
            return try await describeReservedInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstancesListings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesListings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult {
        if let describeReservedInstancesListingsOverride = describeReservedInstancesListingsOverride {
            return try await describeReservedInstancesListingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesModifications(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult {
        if let describeReservedInstancesModificationsOverride = describeReservedInstancesModificationsOverride {
            return try await describeReservedInstancesModificationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesOfferings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult {
        if let describeReservedInstancesOfferingsOverride = describeReservedInstancesOfferingsOverride {
            return try await describeReservedInstancesOfferingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeRouteTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRouteTables(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeRouteTablesResult {
        if let describeRouteTablesOverride = describeRouteTablesOverride {
            return try await describeRouteTablesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstanceAvailability(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) async throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult {
        if let describeScheduledInstanceAvailabilityOverride = describeScheduledInstanceAvailabilityOverride {
            return try await describeScheduledInstanceAvailabilityOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeScheduledInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstances(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult {
        if let describeScheduledInstancesOverride = describeScheduledInstancesOverride {
            return try await describeScheduledInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupReferences(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult {
        if let describeSecurityGroupReferencesOverride = describeSecurityGroupReferencesOverride {
            return try await describeSecurityGroupReferencesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSecurityGroupRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupRulesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupRules(
            input: ElasticComputeCloudModel.DescribeSecurityGroupRulesRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupRulesResult {
        if let describeSecurityGroupRulesOverride = describeSecurityGroupRulesOverride {
            return try await describeSecurityGroupRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSecurityGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroups(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult {
        if let describeSecurityGroupsOverride = describeSecurityGroupsOverride {
            return try await describeSecurityGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotAttribute(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult {
        if let describeSnapshotAttributeOverride = describeSnapshotAttributeOverride {
            return try await describeSnapshotAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSnapshotTierStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSnapshotTierStatusRequest object being passed to this operation.
     - Returns: The DescribeSnapshotTierStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotTierStatus(
            input: ElasticComputeCloudModel.DescribeSnapshotTierStatusRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotTierStatusResult {
        if let describeSnapshotTierStatusOverride = describeSnapshotTierStatusOverride {
            return try await describeSnapshotTierStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshots(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotsResult {
        if let describeSnapshotsOverride = describeSnapshotsOverride {
            return try await describeSnapshotsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) async throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult {
        if let describeSpotDatafeedSubscriptionOverride = describeSpotDatafeedSubscriptionOverride {
            return try await describeSpotDatafeedSubscriptionOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotFleetInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetInstances(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse {
        if let describeSpotFleetInstancesOverride = describeSpotFleetInstancesOverride {
            return try await describeSpotFleetInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestHistory(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse {
        if let describeSpotFleetRequestHistoryOverride = describeSpotFleetRequestHistoryOverride {
            return try await describeSpotFleetRequestHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotFleetRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequests(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse {
        if let describeSpotFleetRequestsOverride = describeSpotFleetRequestsOverride {
            return try await describeSpotFleetRequestsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotInstanceRequests(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) async throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult {
        if let describeSpotInstanceRequestsOverride = describeSpotInstanceRequestsOverride {
            return try await describeSpotInstanceRequestsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotPriceHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotPriceHistory(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult {
        if let describeSpotPriceHistoryOverride = describeSpotPriceHistoryOverride {
            return try await describeSpotPriceHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStaleSecurityGroups(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult {
        if let describeStaleSecurityGroupsOverride = describeStaleSecurityGroupsOverride {
            return try await describeStaleSecurityGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStoreImageTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStoreImageTasksRequest object being passed to this operation.
     - Returns: The DescribeStoreImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStoreImageTasks(
            input: ElasticComputeCloudModel.DescribeStoreImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeStoreImageTasksResult {
        if let describeStoreImageTasksOverride = describeStoreImageTasksOverride {
            return try await describeStoreImageTasksOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSubnets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSubnets(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest) async throws -> ElasticComputeCloudModel.DescribeSubnetsResult {
        if let describeSubnetsOverride = describeSubnetsOverride {
            return try await describeSubnetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTags(
            input: ElasticComputeCloudModel.DescribeTagsRequest) async throws -> ElasticComputeCloudModel.DescribeTagsResult {
        if let describeTagsOverride = describeTagsOverride {
            return try await describeTagsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrafficMirrorFilters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorFilters(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult {
        if let describeTrafficMirrorFiltersOverride = describeTrafficMirrorFiltersOverride {
            return try await describeTrafficMirrorFiltersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrafficMirrorSessions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorSessions(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult {
        if let describeTrafficMirrorSessionsOverride = describeTrafficMirrorSessionsOverride {
            return try await describeTrafficMirrorSessionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrafficMirrorTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorTargets(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult {
        if let describeTrafficMirrorTargetsOverride = describeTrafficMirrorTargetsOverride {
            return try await describeTrafficMirrorTargetsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayAttachments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult {
        if let describeTransitGatewayAttachmentsOverride = describeTransitGatewayAttachmentsOverride {
            return try await describeTransitGatewayAttachmentsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnectPeers(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult {
        if let describeTransitGatewayConnectPeersOverride = describeTransitGatewayConnectPeersOverride {
            return try await describeTransitGatewayConnectPeersOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayConnects operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnects(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult {
        if let describeTransitGatewayConnectsOverride = describeTransitGatewayConnectsOverride {
            return try await describeTransitGatewayConnectsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayMulticastDomains(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult {
        if let describeTransitGatewayMulticastDomainsOverride = describeTransitGatewayMulticastDomainsOverride {
            return try await describeTransitGatewayMulticastDomainsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayPeeringAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult {
        if let describeTransitGatewayPeeringAttachmentsOverride = describeTransitGatewayPeeringAttachmentsOverride {
            return try await describeTransitGatewayPeeringAttachmentsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayPolicyTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPolicyTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPolicyTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayPolicyTables(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesResult {
        if let describeTransitGatewayPolicyTablesOverride = describeTransitGatewayPolicyTablesOverride {
            return try await describeTransitGatewayPolicyTablesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayRouteTableAnnouncements operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTableAnnouncementsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTableAnnouncementsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayRouteTableAnnouncements(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsResult {
        if let describeTransitGatewayRouteTableAnnouncementsOverride = describeTransitGatewayRouteTableAnnouncementsOverride {
            return try await describeTransitGatewayRouteTableAnnouncementsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayRouteTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult {
        if let describeTransitGatewayRouteTablesOverride = describeTransitGatewayRouteTablesOverride {
            return try await describeTransitGatewayRouteTablesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayVpcAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult {
        if let describeTransitGatewayVpcAttachmentsOverride = describeTransitGatewayVpcAttachmentsOverride {
            return try await describeTransitGatewayVpcAttachmentsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGateways(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult {
        if let describeTransitGatewaysOverride = describeTransitGatewaysOverride {
            return try await describeTransitGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrunkInterfaceAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrunkInterfaceAssociationsRequest object being passed to this operation.
     - Returns: The DescribeTrunkInterfaceAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrunkInterfaceAssociations(
            input: ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsResult {
        if let describeTrunkInterfaceAssociationsOverride = describeTrunkInterfaceAssociationsOverride {
            return try await describeTrunkInterfaceAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumeAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeAttribute(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult {
        if let describeVolumeAttributeOverride = describeVolumeAttributeOverride {
            return try await describeVolumeAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumeStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeStatus(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) async throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult {
        if let describeVolumeStatusOverride = describeVolumeStatusOverride {
            return try await describeVolumeStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumes(
            input: ElasticComputeCloudModel.DescribeVolumesRequest) async throws -> ElasticComputeCloudModel.DescribeVolumesResult {
        if let describeVolumesOverride = describeVolumesOverride {
            return try await describeVolumesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumesModifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumesModifications(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) async throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult {
        if let describeVolumesModificationsOverride = describeVolumesModificationsOverride {
            return try await describeVolumesModificationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcAttribute(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult {
        if let describeVpcAttributeOverride = describeVpcAttributeOverride {
            return try await describeVpcAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcClassicLink operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLink(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult {
        if let describeVpcClassicLinkOverride = describeVpcClassicLinkOverride {
            return try await describeVpcClassicLinkOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult {
        if let describeVpcClassicLinkDnsSupportOverride = describeVpcClassicLinkDnsSupportOverride {
            return try await describeVpcClassicLinkDnsSupportOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult {
        if let describeVpcEndpointConnectionNotificationsOverride = describeVpcEndpointConnectionNotificationsOverride {
            return try await describeVpcEndpointConnectionNotificationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnections(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult {
        if let describeVpcEndpointConnectionsOverride = describeVpcEndpointConnectionsOverride {
            return try await describeVpcEndpointConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult {
        if let describeVpcEndpointServiceConfigurationsOverride = describeVpcEndpointServiceConfigurationsOverride {
            return try await describeVpcEndpointServiceConfigurationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult {
        if let describeVpcEndpointServicePermissionsOverride = describeVpcEndpointServicePermissionsOverride {
            return try await describeVpcEndpointServicePermissionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServices(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult {
        if let describeVpcEndpointServicesOverride = describeVpcEndpointServicesOverride {
            return try await describeVpcEndpointServicesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpoints(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult {
        if let describeVpcEndpointsOverride = describeVpcEndpointsOverride {
            return try await describeVpcEndpointsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcPeeringConnections(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult {
        if let describeVpcPeeringConnectionsOverride = describeVpcPeeringConnectionsOverride {
            return try await describeVpcPeeringConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcs(
            input: ElasticComputeCloudModel.DescribeVpcsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcsResult {
        if let describeVpcsOverride = describeVpcsOverride {
            return try await describeVpcsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpnConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnConnections(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult {
        if let describeVpnConnectionsOverride = describeVpnConnectionsOverride {
            return try await describeVpnConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpnGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnGateways(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult {
        if let describeVpnGatewaysOverride = describeVpnGatewaysOverride {
            return try await describeVpnGatewaysOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachClassicLinkVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachClassicLinkVpc(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) async throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult {
        if let detachClassicLinkVpcOverride = detachClassicLinkVpcOverride {
            return try await detachClassicLinkVpcOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    public func detachInternetGateway(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest) async throws {
        if let detachInternetGatewayOverride = detachInternetGatewayOverride {
            return try await detachInternetGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    public func detachNetworkInterface(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) async throws {
        if let detachNetworkInterfaceOverride = detachNetworkInterfaceOverride {
            return try await detachNetworkInterfaceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachVolume(
            input: ElasticComputeCloudModel.DetachVolumeRequest) async throws -> ElasticComputeCloudModel.VolumeAttachment {
        if let detachVolumeOverride = detachVolumeOverride {
            return try await detachVolumeOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    public func detachVpnGateway(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest) async throws {
        if let detachVpnGatewayOverride = detachVpnGatewayOverride {
            return try await detachVpnGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableEbsEncryptionByDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult {
        if let disableEbsEncryptionByDefaultOverride = disableEbsEncryptionByDefaultOverride {
            return try await disableEbsEncryptionByDefaultOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableFastLaunch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableFastLaunchRequest object being passed to this operation.
     - Returns: The DisableFastLaunchResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableFastLaunch(
            input: ElasticComputeCloudModel.DisableFastLaunchRequest) async throws -> ElasticComputeCloudModel.DisableFastLaunchResult {
        if let disableFastLaunchOverride = disableFastLaunchOverride {
            return try await disableFastLaunchOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableFastSnapshotRestores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableFastSnapshotRestores(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult {
        if let disableFastSnapshotRestoresOverride = disableFastSnapshotRestoresOverride {
            return try await disableFastSnapshotRestoresOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableImageDeprecation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableImageDeprecationRequest object being passed to this operation.
     - Returns: The DisableImageDeprecationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableImageDeprecation(
            input: ElasticComputeCloudModel.DisableImageDeprecationRequest) async throws -> ElasticComputeCloudModel.DisableImageDeprecationResult {
        if let disableImageDeprecationOverride = disableImageDeprecationOverride {
            return try await disableImageDeprecationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableIpamOrganizationAdminAccount operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableIpamOrganizationAdminAccountRequest object being passed to this operation.
     - Returns: The DisableIpamOrganizationAdminAccountResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableIpamOrganizationAdminAccount(
            input: ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountRequest) async throws -> ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountResult {
        if let disableIpamOrganizationAdminAccountOverride = disableIpamOrganizationAdminAccountOverride {
            return try await disableIpamOrganizationAdminAccountOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableSerialConsoleAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableSerialConsoleAccessRequest object being passed to this operation.
     - Returns: The DisableSerialConsoleAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableSerialConsoleAccess(
            input: ElasticComputeCloudModel.DisableSerialConsoleAccessRequest) async throws -> ElasticComputeCloudModel.DisableSerialConsoleAccessResult {
        if let disableSerialConsoleAccessOverride = disableSerialConsoleAccessOverride {
            return try await disableSerialConsoleAccessOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) async throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult {
        if let disableTransitGatewayRouteTablePropagationOverride = disableTransitGatewayRouteTablePropagationOverride {
            return try await disableTransitGatewayRouteTablePropagationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableVgwRoutePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func disableVgwRoutePropagation(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) async throws {
        if let disableVgwRoutePropagationOverride = disableVgwRoutePropagationOverride {
            return try await disableVgwRoutePropagationOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableVpcClassicLink operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLink(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult {
        if let disableVpcClassicLinkOverride = disableVpcClassicLinkOverride {
            return try await disableVpcClassicLinkOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult {
        if let disableVpcClassicLinkDnsSupportOverride = disableVpcClassicLinkDnsSupportOverride {
            return try await disableVpcClassicLinkDnsSupportOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    public func disassociateAddress(
            input: ElasticComputeCloudModel.DisassociateAddressRequest) async throws {
        if let disassociateAddressOverride = disassociateAddressOverride {
            return try await disassociateAddressOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult {
        if let disassociateClientVpnTargetNetworkOverride = disassociateClientVpnTargetNetworkOverride {
            return try await disassociateClientVpnTargetNetworkOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) async throws -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult {
        if let disassociateEnclaveCertificateIamRoleOverride = disassociateEnclaveCertificateIamRoleOverride {
            return try await disassociateEnclaveCertificateIamRoleOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateIamInstanceProfile(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) async throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult {
        if let disassociateIamInstanceProfileOverride = disassociateIamInstanceProfileOverride {
            return try await disassociateIamInstanceProfileOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The DisassociateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateInstanceEventWindow(
            input: ElasticComputeCloudModel.DisassociateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.DisassociateInstanceEventWindowResult {
        if let disassociateInstanceEventWindowOverride = disassociateInstanceEventWindowOverride {
            return try await disassociateInstanceEventWindowOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    public func disassociateRouteTable(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest) async throws {
        if let disassociateRouteTableOverride = disassociateRouteTableOverride {
            return try await disassociateRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateSubnetCidrBlock(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) async throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult {
        if let disassociateSubnetCidrBlockOverride = disassociateSubnetCidrBlockOverride {
            return try await disassociateSubnetCidrBlockOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult {
        if let disassociateTransitGatewayMulticastDomainOverride = disassociateTransitGatewayMulticastDomainOverride {
            return try await disassociateTransitGatewayMulticastDomainOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableResult {
        if let disassociateTransitGatewayPolicyTableOverride = disassociateTransitGatewayPolicyTableOverride {
            return try await disassociateTransitGatewayPolicyTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult {
        if let disassociateTransitGatewayRouteTableOverride = disassociateTransitGatewayRouteTableOverride {
            return try await disassociateTransitGatewayRouteTableOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateTrunkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTrunkInterfaceRequest object being passed to this operation.
     - Returns: The DisassociateTrunkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTrunkInterface(
            input: ElasticComputeCloudModel.DisassociateTrunkInterfaceRequest) async throws -> ElasticComputeCloudModel.DisassociateTrunkInterfaceResult {
        if let disassociateTrunkInterfaceOverride = disassociateTrunkInterfaceOverride {
            return try await disassociateTrunkInterfaceOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateVpcCidrBlock(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) async throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult {
        if let disassociateVpcCidrBlockOverride = disassociateVpcCidrBlockOverride {
            return try await disassociateVpcCidrBlockOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableEbsEncryptionByDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult {
        if let enableEbsEncryptionByDefaultOverride = enableEbsEncryptionByDefaultOverride {
            return try await enableEbsEncryptionByDefaultOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableFastLaunch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableFastLaunchRequest object being passed to this operation.
     - Returns: The EnableFastLaunchResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableFastLaunch(
            input: ElasticComputeCloudModel.EnableFastLaunchRequest) async throws -> ElasticComputeCloudModel.EnableFastLaunchResult {
        if let enableFastLaunchOverride = enableFastLaunchOverride {
            return try await enableFastLaunchOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableFastSnapshotRestores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableFastSnapshotRestores(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult {
        if let enableFastSnapshotRestoresOverride = enableFastSnapshotRestoresOverride {
            return try await enableFastSnapshotRestoresOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableImageDeprecation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableImageDeprecationRequest object being passed to this operation.
     - Returns: The EnableImageDeprecationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableImageDeprecation(
            input: ElasticComputeCloudModel.EnableImageDeprecationRequest) async throws -> ElasticComputeCloudModel.EnableImageDeprecationResult {
        if let enableImageDeprecationOverride = enableImageDeprecationOverride {
            return try await enableImageDeprecationOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableIpamOrganizationAdminAccount operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableIpamOrganizationAdminAccountRequest object being passed to this operation.
     - Returns: The EnableIpamOrganizationAdminAccountResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableIpamOrganizationAdminAccount(
            input: ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountRequest) async throws -> ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountResult {
        if let enableIpamOrganizationAdminAccountOverride = enableIpamOrganizationAdminAccountOverride {
            return try await enableIpamOrganizationAdminAccountOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableSerialConsoleAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableSerialConsoleAccessRequest object being passed to this operation.
     - Returns: The EnableSerialConsoleAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableSerialConsoleAccess(
            input: ElasticComputeCloudModel.EnableSerialConsoleAccessRequest) async throws -> ElasticComputeCloudModel.EnableSerialConsoleAccessResult {
        if let enableSerialConsoleAccessOverride = enableSerialConsoleAccessOverride {
            return try await enableSerialConsoleAccessOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) async throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult {
        if let enableTransitGatewayRouteTablePropagationOverride = enableTransitGatewayRouteTablePropagationOverride {
            return try await enableTransitGatewayRouteTablePropagationOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVgwRoutePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func enableVgwRoutePropagation(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) async throws {
        if let enableVgwRoutePropagationOverride = enableVgwRoutePropagationOverride {
            return try await enableVgwRoutePropagationOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVolumeIO operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    public func enableVolumeIO(
            input: ElasticComputeCloudModel.EnableVolumeIORequest) async throws {
        if let enableVolumeIOOverride = enableVolumeIOOverride {
            return try await enableVolumeIOOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVpcClassicLink operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLink(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult {
        if let enableVpcClassicLinkOverride = enableVpcClassicLinkOverride {
            return try await enableVpcClassicLinkOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult {
        if let enableVpcClassicLinkDnsSupportOverride = enableVpcClassicLinkDnsSupportOverride {
            return try await enableVpcClassicLinkDnsSupportOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) async throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult {
        if let exportClientVpnClientCertificateRevocationListOverride = exportClientVpnClientCertificateRevocationListOverride {
            return try await exportClientVpnClientCertificateRevocationListOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportClientVpnClientConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportClientVpnClientConfiguration(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) async throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult {
        if let exportClientVpnClientConfigurationOverride = exportClientVpnClientConfigurationOverride {
            return try await exportClientVpnClientConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: The ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportImage(
            input: ElasticComputeCloudModel.ExportImageRequest) async throws -> ElasticComputeCloudModel.ExportImageResult {
        if let exportImageOverride = exportImageOverride {
            return try await exportImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportTransitGatewayRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportTransitGatewayRoutes(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult {
        if let exportTransitGatewayRoutesOverride = exportTransitGatewayRoutesOverride {
            return try await exportTransitGatewayRoutesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: The GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAssociatedEnclaveCertificateIamRoles(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) async throws -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult {
        if let getAssociatedEnclaveCertificateIamRolesOverride = getAssociatedEnclaveCertificateIamRolesOverride {
            return try await getAssociatedEnclaveCertificateIamRolesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: The GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAssociatedIpv6PoolCidrs(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) async throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult {
        if let getAssociatedIpv6PoolCidrsOverride = getAssociatedIpv6PoolCidrsOverride {
            return try await getAssociatedIpv6PoolCidrsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetCapacityReservationUsage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: The GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCapacityReservationUsage(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) async throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult {
        if let getCapacityReservationUsageOverride = getCapacityReservationUsageOverride {
            return try await getCapacityReservationUsageOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetCoipPoolUsage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: The GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCoipPoolUsage(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) async throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult {
        if let getCoipPoolUsageOverride = getCoipPoolUsageOverride {
            return try await getCoipPoolUsageOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetConsoleOutput operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleOutput(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest) async throws -> ElasticComputeCloudModel.GetConsoleOutputResult {
        if let getConsoleOutputOverride = getConsoleOutputOverride {
            return try await getConsoleOutputOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetConsoleScreenshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleScreenshot(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) async throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult {
        if let getConsoleScreenshotOverride = getConsoleScreenshotOverride {
            return try await getConsoleScreenshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDefaultCreditSpecification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getDefaultCreditSpecification(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult {
        if let getDefaultCreditSpecificationOverride = getDefaultCreditSpecificationOverride {
            return try await getDefaultCreditSpecificationOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEbsDefaultKmsKeyId operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult {
        if let getEbsDefaultKmsKeyIdOverride = getEbsDefaultKmsKeyIdOverride {
            return try await getEbsDefaultKmsKeyIdOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEbsEncryptionByDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult {
        if let getEbsEncryptionByDefaultOverride = getEbsEncryptionByDefaultOverride {
            return try await getEbsEncryptionByDefaultOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetFlowLogsIntegrationTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetFlowLogsIntegrationTemplateRequest object being passed to this operation.
     - Returns: The GetFlowLogsIntegrationTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getFlowLogsIntegrationTemplate(
            input: ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateRequest) async throws -> ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateResult {
        if let getFlowLogsIntegrationTemplateOverride = getFlowLogsIntegrationTemplateOverride {
            return try await getFlowLogsIntegrationTemplateOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetGroupsForCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: The GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getGroupsForCapacityReservation(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) async throws -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult {
        if let getGroupsForCapacityReservationOverride = getGroupsForCapacityReservationOverride {
            return try await getGroupsForCapacityReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getHostReservationPurchasePreview(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) async throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult {
        if let getHostReservationPurchasePreviewOverride = getHostReservationPurchasePreviewOverride {
            return try await getHostReservationPurchasePreviewOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetInstanceTypesFromInstanceRequirements operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetInstanceTypesFromInstanceRequirementsRequest object being passed to this operation.
     - Returns: The GetInstanceTypesFromInstanceRequirementsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getInstanceTypesFromInstanceRequirements(
            input: ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsRequest) async throws -> ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsResult {
        if let getInstanceTypesFromInstanceRequirementsOverride = getInstanceTypesFromInstanceRequirementsOverride {
            return try await getInstanceTypesFromInstanceRequirementsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetInstanceUefiData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetInstanceUefiDataRequest object being passed to this operation.
     - Returns: The GetInstanceUefiDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getInstanceUefiData(
            input: ElasticComputeCloudModel.GetInstanceUefiDataRequest) async throws -> ElasticComputeCloudModel.GetInstanceUefiDataResult {
        if let getInstanceUefiDataOverride = getInstanceUefiDataOverride {
            return try await getInstanceUefiDataOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetIpamAddressHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamAddressHistoryRequest object being passed to this operation.
     - Returns: The GetIpamAddressHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getIpamAddressHistory(
            input: ElasticComputeCloudModel.GetIpamAddressHistoryRequest) async throws -> ElasticComputeCloudModel.GetIpamAddressHistoryResult {
        if let getIpamAddressHistoryOverride = getIpamAddressHistoryOverride {
            return try await getIpamAddressHistoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetIpamPoolAllocations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamPoolAllocationsRequest object being passed to this operation.
     - Returns: The GetIpamPoolAllocationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getIpamPoolAllocations(
            input: ElasticComputeCloudModel.GetIpamPoolAllocationsRequest) async throws -> ElasticComputeCloudModel.GetIpamPoolAllocationsResult {
        if let getIpamPoolAllocationsOverride = getIpamPoolAllocationsOverride {
            return try await getIpamPoolAllocationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetIpamPoolCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamPoolCidrsRequest object being passed to this operation.
     - Returns: The GetIpamPoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getIpamPoolCidrs(
            input: ElasticComputeCloudModel.GetIpamPoolCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamPoolCidrsResult {
        if let getIpamPoolCidrsOverride = getIpamPoolCidrsOverride {
            return try await getIpamPoolCidrsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetIpamResourceCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamResourceCidrsRequest object being passed to this operation.
     - Returns: The GetIpamResourceCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getIpamResourceCidrs(
            input: ElasticComputeCloudModel.GetIpamResourceCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamResourceCidrsResult {
        if let getIpamResourceCidrsOverride = getIpamResourceCidrsOverride {
            return try await getIpamResourceCidrsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetLaunchTemplateData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getLaunchTemplateData(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) async throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult {
        if let getLaunchTemplateDataOverride = getLaunchTemplateDataOverride {
            return try await getLaunchTemplateDataOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetManagedPrefixListAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getManagedPrefixListAssociations(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) async throws -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult {
        if let getManagedPrefixListAssociationsOverride = getManagedPrefixListAssociationsOverride {
            return try await getManagedPrefixListAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetManagedPrefixListEntries operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getManagedPrefixListEntries(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) async throws -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult {
        if let getManagedPrefixListEntriesOverride = getManagedPrefixListEntriesOverride {
            return try await getManagedPrefixListEntriesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetNetworkInsightsAccessScopeAnalysisFindings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetNetworkInsightsAccessScopeAnalysisFindingsRequest object being passed to this operation.
     - Returns: The GetNetworkInsightsAccessScopeAnalysisFindingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getNetworkInsightsAccessScopeAnalysisFindings(
            input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsRequest) async throws -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsResult {
        if let getNetworkInsightsAccessScopeAnalysisFindingsOverride = getNetworkInsightsAccessScopeAnalysisFindingsOverride {
            return try await getNetworkInsightsAccessScopeAnalysisFindingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetNetworkInsightsAccessScopeContent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetNetworkInsightsAccessScopeContentRequest object being passed to this operation.
     - Returns: The GetNetworkInsightsAccessScopeContentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getNetworkInsightsAccessScopeContent(
            input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentRequest) async throws -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentResult {
        if let getNetworkInsightsAccessScopeContentOverride = getNetworkInsightsAccessScopeContentOverride {
            return try await getNetworkInsightsAccessScopeContentOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetPasswordData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPasswordData(
            input: ElasticComputeCloudModel.GetPasswordDataRequest) async throws -> ElasticComputeCloudModel.GetPasswordDataResult {
        if let getPasswordDataOverride = getPasswordDataOverride {
            return try await getPasswordDataOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) async throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult {
        if let getReservedInstancesExchangeQuoteOverride = getReservedInstancesExchangeQuoteOverride {
            return try await getReservedInstancesExchangeQuoteOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSerialConsoleAccessStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSerialConsoleAccessStatusRequest object being passed to this operation.
     - Returns: The GetSerialConsoleAccessStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getSerialConsoleAccessStatus(
            input: ElasticComputeCloudModel.GetSerialConsoleAccessStatusRequest) async throws -> ElasticComputeCloudModel.GetSerialConsoleAccessStatusResult {
        if let getSerialConsoleAccessStatusOverride = getSerialConsoleAccessStatusOverride {
            return try await getSerialConsoleAccessStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSpotPlacementScores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSpotPlacementScoresRequest object being passed to this operation.
     - Returns: The GetSpotPlacementScoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getSpotPlacementScores(
            input: ElasticComputeCloudModel.GetSpotPlacementScoresRequest) async throws -> ElasticComputeCloudModel.GetSpotPlacementScoresResult {
        if let getSpotPlacementScoresOverride = getSpotPlacementScoresOverride {
            return try await getSpotPlacementScoresOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSubnetCidrReservations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSubnetCidrReservationsRequest object being passed to this operation.
     - Returns: The GetSubnetCidrReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getSubnetCidrReservations(
            input: ElasticComputeCloudModel.GetSubnetCidrReservationsRequest) async throws -> ElasticComputeCloudModel.GetSubnetCidrReservationsResult {
        if let getSubnetCidrReservationsOverride = getSubnetCidrReservationsOverride {
            return try await getSubnetCidrReservationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayAttachmentPropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult {
        if let getTransitGatewayAttachmentPropagationsOverride = getTransitGatewayAttachmentPropagationsOverride {
            return try await getTransitGatewayAttachmentPropagationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult {
        if let getTransitGatewayMulticastDomainAssociationsOverride = getTransitGatewayMulticastDomainAssociationsOverride {
            return try await getTransitGatewayMulticastDomainAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayPolicyTableAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPolicyTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPolicyTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayPolicyTableAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsResult {
        if let getTransitGatewayPolicyTableAssociationsOverride = getTransitGatewayPolicyTableAssociationsOverride {
            return try await getTransitGatewayPolicyTableAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayPolicyTableEntries operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPolicyTableEntriesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPolicyTableEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayPolicyTableEntries(
            input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesResult {
        if let getTransitGatewayPolicyTableEntriesOverride = getTransitGatewayPolicyTableEntriesOverride {
            return try await getTransitGatewayPolicyTableEntriesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayPrefixListReferences(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult {
        if let getTransitGatewayPrefixListReferencesOverride = getTransitGatewayPrefixListReferencesOverride {
            return try await getTransitGatewayPrefixListReferencesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTableAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult {
        if let getTransitGatewayRouteTableAssociationsOverride = getTransitGatewayRouteTableAssociationsOverride {
            return try await getTransitGatewayRouteTableAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTablePropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult {
        if let getTransitGatewayRouteTablePropagationsOverride = getTransitGatewayRouteTablePropagationsOverride {
            return try await getTransitGatewayRouteTablePropagationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetVpnConnectionDeviceSampleConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVpnConnectionDeviceSampleConfigurationRequest object being passed to this operation.
     - Returns: The GetVpnConnectionDeviceSampleConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getVpnConnectionDeviceSampleConfiguration(
            input: ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationRequest) async throws -> ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationResult {
        if let getVpnConnectionDeviceSampleConfigurationOverride = getVpnConnectionDeviceSampleConfigurationOverride {
            return try await getVpnConnectionDeviceSampleConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetVpnConnectionDeviceTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVpnConnectionDeviceTypesRequest object being passed to this operation.
     - Returns: The GetVpnConnectionDeviceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getVpnConnectionDeviceTypes(
            input: ElasticComputeCloudModel.GetVpnConnectionDeviceTypesRequest) async throws -> ElasticComputeCloudModel.GetVpnConnectionDeviceTypesResult {
        if let getVpnConnectionDeviceTypesOverride = getVpnConnectionDeviceTypesOverride {
            return try await getVpnConnectionDeviceTypesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) async throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult {
        if let importClientVpnClientCertificateRevocationListOverride = importClientVpnClientCertificateRevocationListOverride {
            return try await importClientVpnClientCertificateRevocationListOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importImage(
            input: ElasticComputeCloudModel.ImportImageRequest) async throws -> ElasticComputeCloudModel.ImportImageResult {
        if let importImageOverride = importImageOverride {
            return try await importImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importInstance(
            input: ElasticComputeCloudModel.ImportInstanceRequest) async throws -> ElasticComputeCloudModel.ImportInstanceResult {
        if let importInstanceOverride = importInstanceOverride {
            return try await importInstanceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportKeyPair operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importKeyPair(
            input: ElasticComputeCloudModel.ImportKeyPairRequest) async throws -> ElasticComputeCloudModel.ImportKeyPairResult {
        if let importKeyPairOverride = importKeyPairOverride {
            return try await importKeyPairOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importSnapshot(
            input: ElasticComputeCloudModel.ImportSnapshotRequest) async throws -> ElasticComputeCloudModel.ImportSnapshotResult {
        if let importSnapshotOverride = importSnapshotOverride {
            return try await importSnapshotOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importVolume(
            input: ElasticComputeCloudModel.ImportVolumeRequest) async throws -> ElasticComputeCloudModel.ImportVolumeResult {
        if let importVolumeOverride = importVolumeOverride {
            return try await importVolumeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListImagesInRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImagesInRecycleBinRequest object being passed to this operation.
     - Returns: The ListImagesInRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listImagesInRecycleBin(
            input: ElasticComputeCloudModel.ListImagesInRecycleBinRequest) async throws -> ElasticComputeCloudModel.ListImagesInRecycleBinResult {
        if let listImagesInRecycleBinOverride = listImagesInRecycleBinOverride {
            return try await listImagesInRecycleBinOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListSnapshotsInRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSnapshotsInRecycleBinRequest object being passed to this operation.
     - Returns: The ListSnapshotsInRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listSnapshotsInRecycleBin(
            input: ElasticComputeCloudModel.ListSnapshotsInRecycleBinRequest) async throws -> ElasticComputeCloudModel.ListSnapshotsInRecycleBinResult {
        if let listSnapshotsInRecycleBinOverride = listSnapshotsInRecycleBinOverride {
            return try await listSnapshotsInRecycleBinOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyAddressAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: The ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyAddressAttribute(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) async throws -> ElasticComputeCloudModel.ModifyAddressAttributeResult {
        if let modifyAddressAttributeOverride = modifyAddressAttributeOverride {
            return try await modifyAddressAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyAvailabilityZoneGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: The ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyAvailabilityZoneGroup(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) async throws -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult {
        if let modifyAvailabilityZoneGroupOverride = modifyAvailabilityZoneGroupOverride {
            return try await modifyAvailabilityZoneGroupOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyCapacityReservation(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) async throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult {
        if let modifyCapacityReservationOverride = modifyCapacityReservationOverride {
            return try await modifyCapacityReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyCapacityReservationFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationFleetRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyCapacityReservationFleet(
            input: ElasticComputeCloudModel.ModifyCapacityReservationFleetRequest) async throws -> ElasticComputeCloudModel.ModifyCapacityReservationFleetResult {
        if let modifyCapacityReservationFleetOverride = modifyCapacityReservationFleetOverride {
            return try await modifyCapacityReservationFleetOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyClientVpnEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyClientVpnEndpoint(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult {
        if let modifyClientVpnEndpointOverride = modifyClientVpnEndpointOverride {
            return try await modifyClientVpnEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDefaultCreditSpecification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyDefaultCreditSpecification(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult {
        if let modifyDefaultCreditSpecificationOverride = modifyDefaultCreditSpecificationOverride {
            return try await modifyDefaultCreditSpecificationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult {
        if let modifyEbsDefaultKmsKeyIdOverride = modifyEbsDefaultKmsKeyIdOverride {
            return try await modifyEbsDefaultKmsKeyIdOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFleet(
            input: ElasticComputeCloudModel.ModifyFleetRequest) async throws -> ElasticComputeCloudModel.ModifyFleetResult {
        if let modifyFleetOverride = modifyFleetOverride {
            return try await modifyFleetOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFpgaImageAttribute(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult {
        if let modifyFpgaImageAttributeOverride = modifyFpgaImageAttributeOverride {
            return try await modifyFpgaImageAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyHosts(
            input: ElasticComputeCloudModel.ModifyHostsRequest) async throws -> ElasticComputeCloudModel.ModifyHostsResult {
        if let modifyHostsOverride = modifyHostsOverride {
            return try await modifyHostsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    public func modifyIdFormat(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest) async throws {
        if let modifyIdFormatOverride = modifyIdFormatOverride {
            return try await modifyIdFormatOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIdentityIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    public func modifyIdentityIdFormat(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) async throws {
        if let modifyIdentityIdFormatOverride = modifyIdentityIdFormatOverride {
            return try await modifyIdentityIdFormatOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    public func modifyImageAttribute(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest) async throws {
        if let modifyImageAttributeOverride = modifyImageAttributeOverride {
            return try await modifyImageAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    public func modifyInstanceAttribute(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) async throws {
        if let modifyInstanceAttributeOverride = modifyInstanceAttributeOverride {
            return try await modifyInstanceAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCapacityReservationAttributes(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult {
        if let modifyInstanceCapacityReservationAttributesOverride = modifyInstanceCapacityReservationAttributesOverride {
            return try await modifyInstanceCapacityReservationAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCreditSpecification(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult {
        if let modifyInstanceCreditSpecificationOverride = modifyInstanceCreditSpecificationOverride {
            return try await modifyInstanceCreditSpecificationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceEventStartTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceEventStartTime(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult {
        if let modifyInstanceEventStartTimeOverride = modifyInstanceEventStartTimeOverride {
            return try await modifyInstanceEventStartTimeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventWindowRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceEventWindow(
            input: ElasticComputeCloudModel.ModifyInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceEventWindowResult {
        if let modifyInstanceEventWindowOverride = modifyInstanceEventWindowOverride {
            return try await modifyInstanceEventWindowOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceMaintenanceOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceMaintenanceOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMaintenanceOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceMaintenanceOptions(
            input: ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsResult {
        if let modifyInstanceMaintenanceOptionsOverride = modifyInstanceMaintenanceOptionsOverride {
            return try await modifyInstanceMaintenanceOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceMetadataOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceMetadataOptions(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult {
        if let modifyInstanceMetadataOptionsOverride = modifyInstanceMetadataOptionsOverride {
            return try await modifyInstanceMetadataOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstancePlacement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstancePlacement(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) async throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult {
        if let modifyInstancePlacementOverride = modifyInstancePlacementOverride {
            return try await modifyInstancePlacementOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamRequest object being passed to this operation.
     - Returns: The ModifyIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyIpam(
            input: ElasticComputeCloudModel.ModifyIpamRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResult {
        if let modifyIpamOverride = modifyIpamOverride {
            return try await modifyIpamOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIpamPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamPoolRequest object being passed to this operation.
     - Returns: The ModifyIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyIpamPool(
            input: ElasticComputeCloudModel.ModifyIpamPoolRequest) async throws -> ElasticComputeCloudModel.ModifyIpamPoolResult {
        if let modifyIpamPoolOverride = modifyIpamPoolOverride {
            return try await modifyIpamPoolOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIpamResourceCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamResourceCidrRequest object being passed to this operation.
     - Returns: The ModifyIpamResourceCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyIpamResourceCidr(
            input: ElasticComputeCloudModel.ModifyIpamResourceCidrRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResourceCidrResult {
        if let modifyIpamResourceCidrOverride = modifyIpamResourceCidrOverride {
            return try await modifyIpamResourceCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIpamScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamScopeRequest object being passed to this operation.
     - Returns: The ModifyIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyIpamScope(
            input: ElasticComputeCloudModel.ModifyIpamScopeRequest) async throws -> ElasticComputeCloudModel.ModifyIpamScopeResult {
        if let modifyIpamScopeOverride = modifyIpamScopeOverride {
            return try await modifyIpamScopeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyLaunchTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyLaunchTemplate(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult {
        if let modifyLaunchTemplateOverride = modifyLaunchTemplateOverride {
            return try await modifyLaunchTemplateOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyLocalGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The ModifyLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyLocalGatewayRoute(
            input: ElasticComputeCloudModel.ModifyLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.ModifyLocalGatewayRouteResult {
        if let modifyLocalGatewayRouteOverride = modifyLocalGatewayRouteOverride {
            return try await modifyLocalGatewayRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyManagedPrefixList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: The ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyManagedPrefixList(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.ModifyManagedPrefixListResult {
        if let modifyManagedPrefixListOverride = modifyManagedPrefixListOverride {
            return try await modifyManagedPrefixListOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func modifyNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) async throws {
        if let modifyNetworkInterfaceAttributeOverride = modifyNetworkInterfaceAttributeOverride {
            return try await modifyNetworkInterfaceAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyPrivateDnsNameOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyPrivateDnsNameOptionsRequest object being passed to this operation.
     - Returns: The ModifyPrivateDnsNameOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyPrivateDnsNameOptions(
            input: ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsResult {
        if let modifyPrivateDnsNameOptionsOverride = modifyPrivateDnsNameOptionsOverride {
            return try await modifyPrivateDnsNameOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyReservedInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyReservedInstances(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) async throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult {
        if let modifyReservedInstancesOverride = modifyReservedInstancesOverride {
            return try await modifyReservedInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySecurityGroupRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySecurityGroupRulesRequest object being passed to this operation.
     - Returns: The ModifySecurityGroupRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifySecurityGroupRules(
            input: ElasticComputeCloudModel.ModifySecurityGroupRulesRequest) async throws -> ElasticComputeCloudModel.ModifySecurityGroupRulesResult {
        if let modifySecurityGroupRulesOverride = modifySecurityGroupRulesOverride {
            return try await modifySecurityGroupRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    public func modifySnapshotAttribute(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) async throws {
        if let modifySnapshotAttributeOverride = modifySnapshotAttributeOverride {
            return try await modifySnapshotAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySnapshotTier operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySnapshotTierRequest object being passed to this operation.
     - Returns: The ModifySnapshotTierResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifySnapshotTier(
            input: ElasticComputeCloudModel.ModifySnapshotTierRequest) async throws -> ElasticComputeCloudModel.ModifySnapshotTierResult {
        if let modifySnapshotTierOverride = modifySnapshotTierOverride {
            return try await modifySnapshotTierOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySpotFleetRequest operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifySpotFleetRequest(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) async throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse {
        if let modifySpotFleetRequestOverride = modifySpotFleetRequestOverride {
            return try await modifySpotFleetRequestOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySubnetAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    public func modifySubnetAttribute(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) async throws {
        if let modifySubnetAttributeOverride = modifySubnetAttributeOverride {
            return try await modifySubnetAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterNetworkServices(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult {
        if let modifyTrafficMirrorFilterNetworkServicesOverride = modifyTrafficMirrorFilterNetworkServicesOverride {
            return try await modifyTrafficMirrorFilterNetworkServicesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult {
        if let modifyTrafficMirrorFilterRuleOverride = modifyTrafficMirrorFilterRuleOverride {
            return try await modifyTrafficMirrorFilterRuleOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTrafficMirrorSession operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorSession(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult {
        if let modifyTrafficMirrorSessionOverride = modifyTrafficMirrorSessionOverride {
            return try await modifyTrafficMirrorSessionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTransitGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGateway(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayResult {
        if let modifyTransitGatewayOverride = modifyTransitGatewayOverride {
            return try await modifyTransitGatewayOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult {
        if let modifyTransitGatewayPrefixListReferenceOverride = modifyTransitGatewayPrefixListReferenceOverride {
            return try await modifyTransitGatewayPrefixListReferenceOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult {
        if let modifyTransitGatewayVpcAttachmentOverride = modifyTransitGatewayVpcAttachmentOverride {
            return try await modifyTransitGatewayVpcAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVolume(
            input: ElasticComputeCloudModel.ModifyVolumeRequest) async throws -> ElasticComputeCloudModel.ModifyVolumeResult {
        if let modifyVolumeOverride = modifyVolumeOverride {
            return try await modifyVolumeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVolumeAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    public func modifyVolumeAttribute(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) async throws {
        if let modifyVolumeAttributeOverride = modifyVolumeAttributeOverride {
            return try await modifyVolumeAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    public func modifyVpcAttribute(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) async throws {
        if let modifyVpcAttributeOverride = modifyVpcAttributeOverride {
            return try await modifyVpcAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpoint(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult {
        if let modifyVpcEndpointOverride = modifyVpcEndpointOverride {
            return try await modifyVpcEndpointOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult {
        if let modifyVpcEndpointConnectionNotificationOverride = modifyVpcEndpointConnectionNotificationOverride {
            return try await modifyVpcEndpointConnectionNotificationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult {
        if let modifyVpcEndpointServiceConfigurationOverride = modifyVpcEndpointServiceConfigurationOverride {
            return try await modifyVpcEndpointServiceConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointServicePayerResponsibility operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePayerResponsibilityRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePayerResponsibilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePayerResponsibility(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityResult {
        if let modifyVpcEndpointServicePayerResponsibilityOverride = modifyVpcEndpointServicePayerResponsibilityOverride {
            return try await modifyVpcEndpointServicePayerResponsibilityOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult {
        if let modifyVpcEndpointServicePermissionsOverride = modifyVpcEndpointServicePermissionsOverride {
            return try await modifyVpcEndpointServicePermissionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcPeeringConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult {
        if let modifyVpcPeeringConnectionOptionsOverride = modifyVpcPeeringConnectionOptionsOverride {
            return try await modifyVpcPeeringConnectionOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcTenancy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcTenancy(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) async throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult {
        if let modifyVpcTenancyOverride = modifyVpcTenancyOverride {
            return try await modifyVpcTenancyOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnConnection(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) async throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult {
        if let modifyVpnConnectionOverride = modifyVpnConnectionOverride {
            return try await modifyVpnConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnConnectionOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult {
        if let modifyVpnConnectionOptionsOverride = modifyVpnConnectionOptionsOverride {
            return try await modifyVpnConnectionOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnTunnelCertificate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnTunnelCertificate(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) async throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult {
        if let modifyVpnTunnelCertificateOverride = modifyVpnTunnelCertificateOverride {
            return try await modifyVpnTunnelCertificateOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnTunnelOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnTunnelOptions(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult {
        if let modifyVpnTunnelOptionsOverride = modifyVpnTunnelOptionsOverride {
            return try await modifyVpnTunnelOptionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the MonitorInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func monitorInstances(
            input: ElasticComputeCloudModel.MonitorInstancesRequest) async throws -> ElasticComputeCloudModel.MonitorInstancesResult {
        if let monitorInstancesOverride = monitorInstancesOverride {
            return try await monitorInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the MoveAddressToVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func moveAddressToVpc(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest) async throws -> ElasticComputeCloudModel.MoveAddressToVpcResult {
        if let moveAddressToVpcOverride = moveAddressToVpcOverride {
            return try await moveAddressToVpcOverride(input)
        }

        throw error
    }

    /**
     Invokes the MoveByoipCidrToIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated MoveByoipCidrToIpamRequest object being passed to this operation.
     - Returns: The MoveByoipCidrToIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func moveByoipCidrToIpam(
            input: ElasticComputeCloudModel.MoveByoipCidrToIpamRequest) async throws -> ElasticComputeCloudModel.MoveByoipCidrToIpamResult {
        if let moveByoipCidrToIpamOverride = moveByoipCidrToIpamOverride {
            return try await moveByoipCidrToIpamOverride(input)
        }

        throw error
    }

    /**
     Invokes the ProvisionByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func provisionByoipCidr(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult {
        if let provisionByoipCidrOverride = provisionByoipCidrOverride {
            return try await provisionByoipCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the ProvisionIpamPoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ProvisionIpamPoolCidrRequest object being passed to this operation.
     - Returns: The ProvisionIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func provisionIpamPoolCidr(
            input: ElasticComputeCloudModel.ProvisionIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionIpamPoolCidrResult {
        if let provisionIpamPoolCidrOverride = provisionIpamPoolCidrOverride {
            return try await provisionIpamPoolCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the ProvisionPublicIpv4PoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ProvisionPublicIpv4PoolCidrRequest object being passed to this operation.
     - Returns: The ProvisionPublicIpv4PoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func provisionPublicIpv4PoolCidr(
            input: ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrResult {
        if let provisionPublicIpv4PoolCidrOverride = provisionPublicIpv4PoolCidrOverride {
            return try await provisionPublicIpv4PoolCidrOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseHostReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseHostReservation(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest) async throws -> ElasticComputeCloudModel.PurchaseHostReservationResult {
        if let purchaseHostReservationOverride = purchaseHostReservationOverride {
            return try await purchaseHostReservationOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseReservedInstancesOffering(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) async throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult {
        if let purchaseReservedInstancesOfferingOverride = purchaseReservedInstancesOfferingOverride {
            return try await purchaseReservedInstancesOfferingOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseScheduledInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseScheduledInstances(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult {
        if let purchaseScheduledInstancesOverride = purchaseScheduledInstancesOverride {
            return try await purchaseScheduledInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the RebootInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    public func rebootInstances(
            input: ElasticComputeCloudModel.RebootInstancesRequest) async throws {
        if let rebootInstancesOverride = rebootInstancesOverride {
            return try await rebootInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerImage(
            input: ElasticComputeCloudModel.RegisterImageRequest) async throws -> ElasticComputeCloudModel.RegisterImageResult {
        if let registerImageOverride = registerImageOverride {
            return try await registerImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult {
        if let registerInstanceEventNotificationAttributesOverride = registerInstanceEventNotificationAttributesOverride {
            return try await registerInstanceEventNotificationAttributesOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) async throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult {
        if let registerTransitGatewayMulticastGroupMembersOverride = registerTransitGatewayMulticastGroupMembersOverride {
            return try await registerTransitGatewayMulticastGroupMembersOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) async throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult {
        if let registerTransitGatewayMulticastGroupSourcesOverride = registerTransitGatewayMulticastGroupSourcesOverride {
            return try await registerTransitGatewayMulticastGroupSourcesOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult {
        if let rejectTransitGatewayMulticastDomainAssociationsOverride = rejectTransitGatewayMulticastDomainAssociationsOverride {
            return try await rejectTransitGatewayMulticastDomainAssociationsOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult {
        if let rejectTransitGatewayPeeringAttachmentOverride = rejectTransitGatewayPeeringAttachmentOverride {
            return try await rejectTransitGatewayPeeringAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult {
        if let rejectTransitGatewayVpcAttachmentOverride = rejectTransitGatewayVpcAttachmentOverride {
            return try await rejectTransitGatewayVpcAttachmentOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectVpcEndpointConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcEndpointConnections(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult {
        if let rejectVpcEndpointConnectionsOverride = rejectVpcEndpointConnectionsOverride {
            return try await rejectVpcEndpointConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcPeeringConnection(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult {
        if let rejectVpcPeeringConnectionOverride = rejectVpcPeeringConnectionOverride {
            return try await rejectVpcPeeringConnectionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReleaseAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    public func releaseAddress(
            input: ElasticComputeCloudModel.ReleaseAddressRequest) async throws {
        if let releaseAddressOverride = releaseAddressOverride {
            return try await releaseAddressOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReleaseHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func releaseHosts(
            input: ElasticComputeCloudModel.ReleaseHostsRequest) async throws -> ElasticComputeCloudModel.ReleaseHostsResult {
        if let releaseHostsOverride = releaseHostsOverride {
            return try await releaseHostsOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReleaseIpamPoolAllocation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReleaseIpamPoolAllocationRequest object being passed to this operation.
     - Returns: The ReleaseIpamPoolAllocationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func releaseIpamPoolAllocation(
            input: ElasticComputeCloudModel.ReleaseIpamPoolAllocationRequest) async throws -> ElasticComputeCloudModel.ReleaseIpamPoolAllocationResult {
        if let releaseIpamPoolAllocationOverride = releaseIpamPoolAllocationOverride {
            return try await releaseIpamPoolAllocationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceIamInstanceProfileAssociation(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult {
        if let replaceIamInstanceProfileAssociationOverride = replaceIamInstanceProfileAssociationOverride {
            return try await replaceIamInstanceProfileAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceNetworkAclAssociation(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult {
        if let replaceNetworkAclAssociationOverride = replaceNetworkAclAssociationOverride {
            return try await replaceNetworkAclAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    public func replaceNetworkAclEntry(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) async throws {
        if let replaceNetworkAclEntryOverride = replaceNetworkAclEntryOverride {
            return try await replaceNetworkAclEntryOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    public func replaceRoute(
            input: ElasticComputeCloudModel.ReplaceRouteRequest) async throws {
        if let replaceRouteOverride = replaceRouteOverride {
            return try await replaceRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceRouteTableAssociation(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult {
        if let replaceRouteTableAssociationOverride = replaceRouteTableAssociationOverride {
            return try await replaceRouteTableAssociationOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceTransitGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceTransitGatewayRoute(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult {
        if let replaceTransitGatewayRouteOverride = replaceTransitGatewayRouteOverride {
            return try await replaceTransitGatewayRouteOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReportInstanceStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    public func reportInstanceStatus(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest) async throws {
        if let reportInstanceStatusOverride = reportInstanceStatusOverride {
            return try await reportInstanceStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the RequestSpotFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotFleet(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest) async throws -> ElasticComputeCloudModel.RequestSpotFleetResponse {
        if let requestSpotFleetOverride = requestSpotFleetOverride {
            return try await requestSpotFleetOverride(input)
        }

        throw error
    }

    /**
     Invokes the RequestSpotInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotInstances(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest) async throws -> ElasticComputeCloudModel.RequestSpotInstancesResult {
        if let requestSpotInstancesOverride = requestSpotInstancesOverride {
            return try await requestSpotInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetAddressAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: The ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetAddressAttribute(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest) async throws -> ElasticComputeCloudModel.ResetAddressAttributeResult {
        if let resetAddressAttributeOverride = resetAddressAttributeOverride {
            return try await resetAddressAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult {
        if let resetEbsDefaultKmsKeyIdOverride = resetEbsDefaultKmsKeyIdOverride {
            return try await resetEbsDefaultKmsKeyIdOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetFpgaImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetFpgaImageAttribute(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult {
        if let resetFpgaImageAttributeOverride = resetFpgaImageAttributeOverride {
            return try await resetFpgaImageAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    public func resetImageAttribute(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest) async throws {
        if let resetImageAttributeOverride = resetImageAttributeOverride {
            return try await resetImageAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetInstanceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    public func resetInstanceAttribute(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) async throws {
        if let resetInstanceAttributeOverride = resetInstanceAttributeOverride {
            return try await resetInstanceAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func resetNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) async throws {
        if let resetNetworkInterfaceAttributeOverride = resetNetworkInterfaceAttributeOverride {
            return try await resetNetworkInterfaceAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    public func resetSnapshotAttribute(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) async throws {
        if let resetSnapshotAttributeOverride = resetSnapshotAttributeOverride {
            return try await resetSnapshotAttributeOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreAddressToClassic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreAddressToClassic(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) async throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult {
        if let restoreAddressToClassicOverride = restoreAddressToClassicOverride {
            return try await restoreAddressToClassicOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreImageFromRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreImageFromRecycleBinRequest object being passed to this operation.
     - Returns: The RestoreImageFromRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreImageFromRecycleBin(
            input: ElasticComputeCloudModel.RestoreImageFromRecycleBinRequest) async throws -> ElasticComputeCloudModel.RestoreImageFromRecycleBinResult {
        if let restoreImageFromRecycleBinOverride = restoreImageFromRecycleBinOverride {
            return try await restoreImageFromRecycleBinOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreManagedPrefixListVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: The RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreManagedPrefixListVersion(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) async throws -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult {
        if let restoreManagedPrefixListVersionOverride = restoreManagedPrefixListVersionOverride {
            return try await restoreManagedPrefixListVersionOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreSnapshotFromRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreSnapshotFromRecycleBinRequest object being passed to this operation.
     - Returns: The RestoreSnapshotFromRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreSnapshotFromRecycleBin(
            input: ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinRequest) async throws -> ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinResult {
        if let restoreSnapshotFromRecycleBinOverride = restoreSnapshotFromRecycleBinOverride {
            return try await restoreSnapshotFromRecycleBinOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreSnapshotTier operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreSnapshotTierRequest object being passed to this operation.
     - Returns: The RestoreSnapshotTierResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreSnapshotTier(
            input: ElasticComputeCloudModel.RestoreSnapshotTierRequest) async throws -> ElasticComputeCloudModel.RestoreSnapshotTierResult {
        if let restoreSnapshotTierOverride = restoreSnapshotTierOverride {
            return try await restoreSnapshotTierOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeClientVpnIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeClientVpnIngress(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) async throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult {
        if let revokeClientVpnIngressOverride = revokeClientVpnIngressOverride {
            return try await revokeClientVpnIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeSecurityGroupEgress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) async throws -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult {
        if let revokeSecurityGroupEgressOverride = revokeSecurityGroupEgressOverride {
            return try await revokeSecurityGroupEgressOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeSecurityGroupIngress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) async throws -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult {
        if let revokeSecurityGroupIngressOverride = revokeSecurityGroupIngressOverride {
            return try await revokeSecurityGroupIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the RunInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runInstances(
            input: ElasticComputeCloudModel.RunInstancesRequest) async throws -> ElasticComputeCloudModel.Reservation {
        if let runInstancesOverride = runInstancesOverride {
            return try await runInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the RunScheduledInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runScheduledInstances(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.RunScheduledInstancesResult {
        if let runScheduledInstancesOverride = runScheduledInstancesOverride {
            return try await runScheduledInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the SearchLocalGatewayRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchLocalGatewayRoutes(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult {
        if let searchLocalGatewayRoutesOverride = searchLocalGatewayRoutesOverride {
            return try await searchLocalGatewayRoutesOverride(input)
        }

        throw error
    }

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchTransitGatewayMulticastGroups(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) async throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult {
        if let searchTransitGatewayMulticastGroupsOverride = searchTransitGatewayMulticastGroupsOverride {
            return try await searchTransitGatewayMulticastGroupsOverride(input)
        }

        throw error
    }

    /**
     Invokes the SearchTransitGatewayRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchTransitGatewayRoutes(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult {
        if let searchTransitGatewayRoutesOverride = searchTransitGatewayRoutesOverride {
            return try await searchTransitGatewayRoutesOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendDiagnosticInterrupt operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    public func sendDiagnosticInterrupt(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) async throws {
        if let sendDiagnosticInterruptOverride = sendDiagnosticInterruptOverride {
            return try await sendDiagnosticInterruptOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startInstances(
            input: ElasticComputeCloudModel.StartInstancesRequest) async throws -> ElasticComputeCloudModel.StartInstancesResult {
        if let startInstancesOverride = startInstancesOverride {
            return try await startInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartNetworkInsightsAccessScopeAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartNetworkInsightsAccessScopeAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAccessScopeAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startNetworkInsightsAccessScopeAnalysis(
            input: ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisRequest) async throws -> ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisResult {
        if let startNetworkInsightsAccessScopeAnalysisOverride = startNetworkInsightsAccessScopeAnalysisOverride {
            return try await startNetworkInsightsAccessScopeAnalysisOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartNetworkInsightsAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) async throws -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult {
        if let startNetworkInsightsAnalysisOverride = startNetworkInsightsAnalysisOverride {
            return try await startNetworkInsightsAnalysisOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: The StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startVpcEndpointServicePrivateDnsVerification(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) async throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult {
        if let startVpcEndpointServicePrivateDnsVerificationOverride = startVpcEndpointServicePrivateDnsVerificationOverride {
            return try await startVpcEndpointServicePrivateDnsVerificationOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func stopInstances(
            input: ElasticComputeCloudModel.StopInstancesRequest) async throws -> ElasticComputeCloudModel.StopInstancesResult {
        if let stopInstancesOverride = stopInstancesOverride {
            return try await stopInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the TerminateClientVpnConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateClientVpnConnections(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult {
        if let terminateClientVpnConnectionsOverride = terminateClientVpnConnectionsOverride {
            return try await terminateClientVpnConnectionsOverride(input)
        }

        throw error
    }

    /**
     Invokes the TerminateInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateInstances(
            input: ElasticComputeCloudModel.TerminateInstancesRequest) async throws -> ElasticComputeCloudModel.TerminateInstancesResult {
        if let terminateInstancesOverride = terminateInstancesOverride {
            return try await terminateInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the UnassignIpv6Addresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unassignIpv6Addresses(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) async throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult {
        if let unassignIpv6AddressesOverride = unassignIpv6AddressesOverride {
            return try await unassignIpv6AddressesOverride(input)
        }

        throw error
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    public func unassignPrivateIpAddresses(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) async throws {
        if let unassignPrivateIpAddressesOverride = unassignPrivateIpAddressesOverride {
            return try await unassignPrivateIpAddressesOverride(input)
        }

        throw error
    }

    /**
     Invokes the UnmonitorInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unmonitorInstances(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest) async throws -> ElasticComputeCloudModel.UnmonitorInstancesResult {
        if let unmonitorInstancesOverride = unmonitorInstancesOverride {
            return try await unmonitorInstancesOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsEgress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) async throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult {
        if let updateSecurityGroupRuleDescriptionsEgressOverride = updateSecurityGroupRuleDescriptionsEgressOverride {
            return try await updateSecurityGroupRuleDescriptionsEgressOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsIngress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) async throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult {
        if let updateSecurityGroupRuleDescriptionsIngressOverride = updateSecurityGroupRuleDescriptionsIngressOverride {
            return try await updateSecurityGroupRuleDescriptionsIngressOverride(input)
        }

        throw error
    }

    /**
     Invokes the WithdrawByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func withdrawByoipCidr(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) async throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult {
        if let withdrawByoipCidrOverride = withdrawByoipCidrOverride {
            return try await withdrawByoipCidrOverride(input)
        }

        throw error
    }
#endif
}
