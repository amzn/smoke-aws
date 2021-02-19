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
// ThrowingElasticComputeCloudClient.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the ElasticComputeCloud service that by default always throws from its methods.
 */
public struct ThrowingElasticComputeCloudClient: ElasticComputeCloudClientProtocol {
    let error: ElasticComputeCloudError
    let acceptReservedInstancesExchangeQuoteAsyncOverride: AcceptReservedInstancesExchangeQuoteAsyncType?
    let acceptReservedInstancesExchangeQuoteSyncOverride: AcceptReservedInstancesExchangeQuoteSyncType?
    let acceptTransitGatewayMulticastDomainAssociationsAsyncOverride: AcceptTransitGatewayMulticastDomainAssociationsAsyncType?
    let acceptTransitGatewayMulticastDomainAssociationsSyncOverride: AcceptTransitGatewayMulticastDomainAssociationsSyncType?
    let acceptTransitGatewayPeeringAttachmentAsyncOverride: AcceptTransitGatewayPeeringAttachmentAsyncType?
    let acceptTransitGatewayPeeringAttachmentSyncOverride: AcceptTransitGatewayPeeringAttachmentSyncType?
    let acceptTransitGatewayVpcAttachmentAsyncOverride: AcceptTransitGatewayVpcAttachmentAsyncType?
    let acceptTransitGatewayVpcAttachmentSyncOverride: AcceptTransitGatewayVpcAttachmentSyncType?
    let acceptVpcEndpointConnectionsAsyncOverride: AcceptVpcEndpointConnectionsAsyncType?
    let acceptVpcEndpointConnectionsSyncOverride: AcceptVpcEndpointConnectionsSyncType?
    let acceptVpcPeeringConnectionAsyncOverride: AcceptVpcPeeringConnectionAsyncType?
    let acceptVpcPeeringConnectionSyncOverride: AcceptVpcPeeringConnectionSyncType?
    let advertiseByoipCidrAsyncOverride: AdvertiseByoipCidrAsyncType?
    let advertiseByoipCidrSyncOverride: AdvertiseByoipCidrSyncType?
    let allocateAddressAsyncOverride: AllocateAddressAsyncType?
    let allocateAddressSyncOverride: AllocateAddressSyncType?
    let allocateHostsAsyncOverride: AllocateHostsAsyncType?
    let allocateHostsSyncOverride: AllocateHostsSyncType?
    let applySecurityGroupsToClientVpnTargetNetworkAsyncOverride: ApplySecurityGroupsToClientVpnTargetNetworkAsyncType?
    let applySecurityGroupsToClientVpnTargetNetworkSyncOverride: ApplySecurityGroupsToClientVpnTargetNetworkSyncType?
    let assignIpv6AddressesAsyncOverride: AssignIpv6AddressesAsyncType?
    let assignIpv6AddressesSyncOverride: AssignIpv6AddressesSyncType?
    let assignPrivateIpAddressesAsyncOverride: AssignPrivateIpAddressesAsyncType?
    let assignPrivateIpAddressesSyncOverride: AssignPrivateIpAddressesSyncType?
    let associateAddressAsyncOverride: AssociateAddressAsyncType?
    let associateAddressSyncOverride: AssociateAddressSyncType?
    let associateClientVpnTargetNetworkAsyncOverride: AssociateClientVpnTargetNetworkAsyncType?
    let associateClientVpnTargetNetworkSyncOverride: AssociateClientVpnTargetNetworkSyncType?
    let associateDhcpOptionsAsyncOverride: AssociateDhcpOptionsAsyncType?
    let associateDhcpOptionsSyncOverride: AssociateDhcpOptionsSyncType?
    let associateEnclaveCertificateIamRoleAsyncOverride: AssociateEnclaveCertificateIamRoleAsyncType?
    let associateEnclaveCertificateIamRoleSyncOverride: AssociateEnclaveCertificateIamRoleSyncType?
    let associateIamInstanceProfileAsyncOverride: AssociateIamInstanceProfileAsyncType?
    let associateIamInstanceProfileSyncOverride: AssociateIamInstanceProfileSyncType?
    let associateRouteTableAsyncOverride: AssociateRouteTableAsyncType?
    let associateRouteTableSyncOverride: AssociateRouteTableSyncType?
    let associateSubnetCidrBlockAsyncOverride: AssociateSubnetCidrBlockAsyncType?
    let associateSubnetCidrBlockSyncOverride: AssociateSubnetCidrBlockSyncType?
    let associateTransitGatewayMulticastDomainAsyncOverride: AssociateTransitGatewayMulticastDomainAsyncType?
    let associateTransitGatewayMulticastDomainSyncOverride: AssociateTransitGatewayMulticastDomainSyncType?
    let associateTransitGatewayRouteTableAsyncOverride: AssociateTransitGatewayRouteTableAsyncType?
    let associateTransitGatewayRouteTableSyncOverride: AssociateTransitGatewayRouteTableSyncType?
    let associateVpcCidrBlockAsyncOverride: AssociateVpcCidrBlockAsyncType?
    let associateVpcCidrBlockSyncOverride: AssociateVpcCidrBlockSyncType?
    let attachClassicLinkVpcAsyncOverride: AttachClassicLinkVpcAsyncType?
    let attachClassicLinkVpcSyncOverride: AttachClassicLinkVpcSyncType?
    let attachInternetGatewayAsyncOverride: AttachInternetGatewayAsyncType?
    let attachInternetGatewaySyncOverride: AttachInternetGatewaySyncType?
    let attachNetworkInterfaceAsyncOverride: AttachNetworkInterfaceAsyncType?
    let attachNetworkInterfaceSyncOverride: AttachNetworkInterfaceSyncType?
    let attachVolumeAsyncOverride: AttachVolumeAsyncType?
    let attachVolumeSyncOverride: AttachVolumeSyncType?
    let attachVpnGatewayAsyncOverride: AttachVpnGatewayAsyncType?
    let attachVpnGatewaySyncOverride: AttachVpnGatewaySyncType?
    let authorizeClientVpnIngressAsyncOverride: AuthorizeClientVpnIngressAsyncType?
    let authorizeClientVpnIngressSyncOverride: AuthorizeClientVpnIngressSyncType?
    let authorizeSecurityGroupEgressAsyncOverride: AuthorizeSecurityGroupEgressAsyncType?
    let authorizeSecurityGroupEgressSyncOverride: AuthorizeSecurityGroupEgressSyncType?
    let authorizeSecurityGroupIngressAsyncOverride: AuthorizeSecurityGroupIngressAsyncType?
    let authorizeSecurityGroupIngressSyncOverride: AuthorizeSecurityGroupIngressSyncType?
    let bundleInstanceAsyncOverride: BundleInstanceAsyncType?
    let bundleInstanceSyncOverride: BundleInstanceSyncType?
    let cancelBundleTaskAsyncOverride: CancelBundleTaskAsyncType?
    let cancelBundleTaskSyncOverride: CancelBundleTaskSyncType?
    let cancelCapacityReservationAsyncOverride: CancelCapacityReservationAsyncType?
    let cancelCapacityReservationSyncOverride: CancelCapacityReservationSyncType?
    let cancelConversionTaskAsyncOverride: CancelConversionTaskAsyncType?
    let cancelConversionTaskSyncOverride: CancelConversionTaskSyncType?
    let cancelExportTaskAsyncOverride: CancelExportTaskAsyncType?
    let cancelExportTaskSyncOverride: CancelExportTaskSyncType?
    let cancelImportTaskAsyncOverride: CancelImportTaskAsyncType?
    let cancelImportTaskSyncOverride: CancelImportTaskSyncType?
    let cancelReservedInstancesListingAsyncOverride: CancelReservedInstancesListingAsyncType?
    let cancelReservedInstancesListingSyncOverride: CancelReservedInstancesListingSyncType?
    let cancelSpotFleetRequestsAsyncOverride: CancelSpotFleetRequestsAsyncType?
    let cancelSpotFleetRequestsSyncOverride: CancelSpotFleetRequestsSyncType?
    let cancelSpotInstanceRequestsAsyncOverride: CancelSpotInstanceRequestsAsyncType?
    let cancelSpotInstanceRequestsSyncOverride: CancelSpotInstanceRequestsSyncType?
    let confirmProductInstanceAsyncOverride: ConfirmProductInstanceAsyncType?
    let confirmProductInstanceSyncOverride: ConfirmProductInstanceSyncType?
    let copyFpgaImageAsyncOverride: CopyFpgaImageAsyncType?
    let copyFpgaImageSyncOverride: CopyFpgaImageSyncType?
    let copyImageAsyncOverride: CopyImageAsyncType?
    let copyImageSyncOverride: CopyImageSyncType?
    let copySnapshotAsyncOverride: CopySnapshotAsyncType?
    let copySnapshotSyncOverride: CopySnapshotSyncType?
    let createCapacityReservationAsyncOverride: CreateCapacityReservationAsyncType?
    let createCapacityReservationSyncOverride: CreateCapacityReservationSyncType?
    let createCarrierGatewayAsyncOverride: CreateCarrierGatewayAsyncType?
    let createCarrierGatewaySyncOverride: CreateCarrierGatewaySyncType?
    let createClientVpnEndpointAsyncOverride: CreateClientVpnEndpointAsyncType?
    let createClientVpnEndpointSyncOverride: CreateClientVpnEndpointSyncType?
    let createClientVpnRouteAsyncOverride: CreateClientVpnRouteAsyncType?
    let createClientVpnRouteSyncOverride: CreateClientVpnRouteSyncType?
    let createCustomerGatewayAsyncOverride: CreateCustomerGatewayAsyncType?
    let createCustomerGatewaySyncOverride: CreateCustomerGatewaySyncType?
    let createDefaultSubnetAsyncOverride: CreateDefaultSubnetAsyncType?
    let createDefaultSubnetSyncOverride: CreateDefaultSubnetSyncType?
    let createDefaultVpcAsyncOverride: CreateDefaultVpcAsyncType?
    let createDefaultVpcSyncOverride: CreateDefaultVpcSyncType?
    let createDhcpOptionsAsyncOverride: CreateDhcpOptionsAsyncType?
    let createDhcpOptionsSyncOverride: CreateDhcpOptionsSyncType?
    let createEgressOnlyInternetGatewayAsyncOverride: CreateEgressOnlyInternetGatewayAsyncType?
    let createEgressOnlyInternetGatewaySyncOverride: CreateEgressOnlyInternetGatewaySyncType?
    let createFleetAsyncOverride: CreateFleetAsyncType?
    let createFleetSyncOverride: CreateFleetSyncType?
    let createFlowLogsAsyncOverride: CreateFlowLogsAsyncType?
    let createFlowLogsSyncOverride: CreateFlowLogsSyncType?
    let createFpgaImageAsyncOverride: CreateFpgaImageAsyncType?
    let createFpgaImageSyncOverride: CreateFpgaImageSyncType?
    let createImageAsyncOverride: CreateImageAsyncType?
    let createImageSyncOverride: CreateImageSyncType?
    let createInstanceExportTaskAsyncOverride: CreateInstanceExportTaskAsyncType?
    let createInstanceExportTaskSyncOverride: CreateInstanceExportTaskSyncType?
    let createInternetGatewayAsyncOverride: CreateInternetGatewayAsyncType?
    let createInternetGatewaySyncOverride: CreateInternetGatewaySyncType?
    let createKeyPairAsyncOverride: CreateKeyPairAsyncType?
    let createKeyPairSyncOverride: CreateKeyPairSyncType?
    let createLaunchTemplateAsyncOverride: CreateLaunchTemplateAsyncType?
    let createLaunchTemplateSyncOverride: CreateLaunchTemplateSyncType?
    let createLaunchTemplateVersionAsyncOverride: CreateLaunchTemplateVersionAsyncType?
    let createLaunchTemplateVersionSyncOverride: CreateLaunchTemplateVersionSyncType?
    let createLocalGatewayRouteAsyncOverride: CreateLocalGatewayRouteAsyncType?
    let createLocalGatewayRouteSyncOverride: CreateLocalGatewayRouteSyncType?
    let createLocalGatewayRouteTableVpcAssociationAsyncOverride: CreateLocalGatewayRouteTableVpcAssociationAsyncType?
    let createLocalGatewayRouteTableVpcAssociationSyncOverride: CreateLocalGatewayRouteTableVpcAssociationSyncType?
    let createManagedPrefixListAsyncOverride: CreateManagedPrefixListAsyncType?
    let createManagedPrefixListSyncOverride: CreateManagedPrefixListSyncType?
    let createNatGatewayAsyncOverride: CreateNatGatewayAsyncType?
    let createNatGatewaySyncOverride: CreateNatGatewaySyncType?
    let createNetworkAclAsyncOverride: CreateNetworkAclAsyncType?
    let createNetworkAclSyncOverride: CreateNetworkAclSyncType?
    let createNetworkAclEntryAsyncOverride: CreateNetworkAclEntryAsyncType?
    let createNetworkAclEntrySyncOverride: CreateNetworkAclEntrySyncType?
    let createNetworkInsightsPathAsyncOverride: CreateNetworkInsightsPathAsyncType?
    let createNetworkInsightsPathSyncOverride: CreateNetworkInsightsPathSyncType?
    let createNetworkInterfaceAsyncOverride: CreateNetworkInterfaceAsyncType?
    let createNetworkInterfaceSyncOverride: CreateNetworkInterfaceSyncType?
    let createNetworkInterfacePermissionAsyncOverride: CreateNetworkInterfacePermissionAsyncType?
    let createNetworkInterfacePermissionSyncOverride: CreateNetworkInterfacePermissionSyncType?
    let createPlacementGroupAsyncOverride: CreatePlacementGroupAsyncType?
    let createPlacementGroupSyncOverride: CreatePlacementGroupSyncType?
    let createReservedInstancesListingAsyncOverride: CreateReservedInstancesListingAsyncType?
    let createReservedInstancesListingSyncOverride: CreateReservedInstancesListingSyncType?
    let createRouteAsyncOverride: CreateRouteAsyncType?
    let createRouteSyncOverride: CreateRouteSyncType?
    let createRouteTableAsyncOverride: CreateRouteTableAsyncType?
    let createRouteTableSyncOverride: CreateRouteTableSyncType?
    let createSecurityGroupAsyncOverride: CreateSecurityGroupAsyncType?
    let createSecurityGroupSyncOverride: CreateSecurityGroupSyncType?
    let createSnapshotAsyncOverride: CreateSnapshotAsyncType?
    let createSnapshotSyncOverride: CreateSnapshotSyncType?
    let createSnapshotsAsyncOverride: CreateSnapshotsAsyncType?
    let createSnapshotsSyncOverride: CreateSnapshotsSyncType?
    let createSpotDatafeedSubscriptionAsyncOverride: CreateSpotDatafeedSubscriptionAsyncType?
    let createSpotDatafeedSubscriptionSyncOverride: CreateSpotDatafeedSubscriptionSyncType?
    let createSubnetAsyncOverride: CreateSubnetAsyncType?
    let createSubnetSyncOverride: CreateSubnetSyncType?
    let createTagsAsyncOverride: CreateTagsAsyncType?
    let createTagsSyncOverride: CreateTagsSyncType?
    let createTrafficMirrorFilterAsyncOverride: CreateTrafficMirrorFilterAsyncType?
    let createTrafficMirrorFilterSyncOverride: CreateTrafficMirrorFilterSyncType?
    let createTrafficMirrorFilterRuleAsyncOverride: CreateTrafficMirrorFilterRuleAsyncType?
    let createTrafficMirrorFilterRuleSyncOverride: CreateTrafficMirrorFilterRuleSyncType?
    let createTrafficMirrorSessionAsyncOverride: CreateTrafficMirrorSessionAsyncType?
    let createTrafficMirrorSessionSyncOverride: CreateTrafficMirrorSessionSyncType?
    let createTrafficMirrorTargetAsyncOverride: CreateTrafficMirrorTargetAsyncType?
    let createTrafficMirrorTargetSyncOverride: CreateTrafficMirrorTargetSyncType?
    let createTransitGatewayAsyncOverride: CreateTransitGatewayAsyncType?
    let createTransitGatewaySyncOverride: CreateTransitGatewaySyncType?
    let createTransitGatewayConnectAsyncOverride: CreateTransitGatewayConnectAsyncType?
    let createTransitGatewayConnectSyncOverride: CreateTransitGatewayConnectSyncType?
    let createTransitGatewayConnectPeerAsyncOverride: CreateTransitGatewayConnectPeerAsyncType?
    let createTransitGatewayConnectPeerSyncOverride: CreateTransitGatewayConnectPeerSyncType?
    let createTransitGatewayMulticastDomainAsyncOverride: CreateTransitGatewayMulticastDomainAsyncType?
    let createTransitGatewayMulticastDomainSyncOverride: CreateTransitGatewayMulticastDomainSyncType?
    let createTransitGatewayPeeringAttachmentAsyncOverride: CreateTransitGatewayPeeringAttachmentAsyncType?
    let createTransitGatewayPeeringAttachmentSyncOverride: CreateTransitGatewayPeeringAttachmentSyncType?
    let createTransitGatewayPrefixListReferenceAsyncOverride: CreateTransitGatewayPrefixListReferenceAsyncType?
    let createTransitGatewayPrefixListReferenceSyncOverride: CreateTransitGatewayPrefixListReferenceSyncType?
    let createTransitGatewayRouteAsyncOverride: CreateTransitGatewayRouteAsyncType?
    let createTransitGatewayRouteSyncOverride: CreateTransitGatewayRouteSyncType?
    let createTransitGatewayRouteTableAsyncOverride: CreateTransitGatewayRouteTableAsyncType?
    let createTransitGatewayRouteTableSyncOverride: CreateTransitGatewayRouteTableSyncType?
    let createTransitGatewayVpcAttachmentAsyncOverride: CreateTransitGatewayVpcAttachmentAsyncType?
    let createTransitGatewayVpcAttachmentSyncOverride: CreateTransitGatewayVpcAttachmentSyncType?
    let createVolumeAsyncOverride: CreateVolumeAsyncType?
    let createVolumeSyncOverride: CreateVolumeSyncType?
    let createVpcAsyncOverride: CreateVpcAsyncType?
    let createVpcSyncOverride: CreateVpcSyncType?
    let createVpcEndpointAsyncOverride: CreateVpcEndpointAsyncType?
    let createVpcEndpointSyncOverride: CreateVpcEndpointSyncType?
    let createVpcEndpointConnectionNotificationAsyncOverride: CreateVpcEndpointConnectionNotificationAsyncType?
    let createVpcEndpointConnectionNotificationSyncOverride: CreateVpcEndpointConnectionNotificationSyncType?
    let createVpcEndpointServiceConfigurationAsyncOverride: CreateVpcEndpointServiceConfigurationAsyncType?
    let createVpcEndpointServiceConfigurationSyncOverride: CreateVpcEndpointServiceConfigurationSyncType?
    let createVpcPeeringConnectionAsyncOverride: CreateVpcPeeringConnectionAsyncType?
    let createVpcPeeringConnectionSyncOverride: CreateVpcPeeringConnectionSyncType?
    let createVpnConnectionAsyncOverride: CreateVpnConnectionAsyncType?
    let createVpnConnectionSyncOverride: CreateVpnConnectionSyncType?
    let createVpnConnectionRouteAsyncOverride: CreateVpnConnectionRouteAsyncType?
    let createVpnConnectionRouteSyncOverride: CreateVpnConnectionRouteSyncType?
    let createVpnGatewayAsyncOverride: CreateVpnGatewayAsyncType?
    let createVpnGatewaySyncOverride: CreateVpnGatewaySyncType?
    let deleteCarrierGatewayAsyncOverride: DeleteCarrierGatewayAsyncType?
    let deleteCarrierGatewaySyncOverride: DeleteCarrierGatewaySyncType?
    let deleteClientVpnEndpointAsyncOverride: DeleteClientVpnEndpointAsyncType?
    let deleteClientVpnEndpointSyncOverride: DeleteClientVpnEndpointSyncType?
    let deleteClientVpnRouteAsyncOverride: DeleteClientVpnRouteAsyncType?
    let deleteClientVpnRouteSyncOverride: DeleteClientVpnRouteSyncType?
    let deleteCustomerGatewayAsyncOverride: DeleteCustomerGatewayAsyncType?
    let deleteCustomerGatewaySyncOverride: DeleteCustomerGatewaySyncType?
    let deleteDhcpOptionsAsyncOverride: DeleteDhcpOptionsAsyncType?
    let deleteDhcpOptionsSyncOverride: DeleteDhcpOptionsSyncType?
    let deleteEgressOnlyInternetGatewayAsyncOverride: DeleteEgressOnlyInternetGatewayAsyncType?
    let deleteEgressOnlyInternetGatewaySyncOverride: DeleteEgressOnlyInternetGatewaySyncType?
    let deleteFleetsAsyncOverride: DeleteFleetsAsyncType?
    let deleteFleetsSyncOverride: DeleteFleetsSyncType?
    let deleteFlowLogsAsyncOverride: DeleteFlowLogsAsyncType?
    let deleteFlowLogsSyncOverride: DeleteFlowLogsSyncType?
    let deleteFpgaImageAsyncOverride: DeleteFpgaImageAsyncType?
    let deleteFpgaImageSyncOverride: DeleteFpgaImageSyncType?
    let deleteInternetGatewayAsyncOverride: DeleteInternetGatewayAsyncType?
    let deleteInternetGatewaySyncOverride: DeleteInternetGatewaySyncType?
    let deleteKeyPairAsyncOverride: DeleteKeyPairAsyncType?
    let deleteKeyPairSyncOverride: DeleteKeyPairSyncType?
    let deleteLaunchTemplateAsyncOverride: DeleteLaunchTemplateAsyncType?
    let deleteLaunchTemplateSyncOverride: DeleteLaunchTemplateSyncType?
    let deleteLaunchTemplateVersionsAsyncOverride: DeleteLaunchTemplateVersionsAsyncType?
    let deleteLaunchTemplateVersionsSyncOverride: DeleteLaunchTemplateVersionsSyncType?
    let deleteLocalGatewayRouteAsyncOverride: DeleteLocalGatewayRouteAsyncType?
    let deleteLocalGatewayRouteSyncOverride: DeleteLocalGatewayRouteSyncType?
    let deleteLocalGatewayRouteTableVpcAssociationAsyncOverride: DeleteLocalGatewayRouteTableVpcAssociationAsyncType?
    let deleteLocalGatewayRouteTableVpcAssociationSyncOverride: DeleteLocalGatewayRouteTableVpcAssociationSyncType?
    let deleteManagedPrefixListAsyncOverride: DeleteManagedPrefixListAsyncType?
    let deleteManagedPrefixListSyncOverride: DeleteManagedPrefixListSyncType?
    let deleteNatGatewayAsyncOverride: DeleteNatGatewayAsyncType?
    let deleteNatGatewaySyncOverride: DeleteNatGatewaySyncType?
    let deleteNetworkAclAsyncOverride: DeleteNetworkAclAsyncType?
    let deleteNetworkAclSyncOverride: DeleteNetworkAclSyncType?
    let deleteNetworkAclEntryAsyncOverride: DeleteNetworkAclEntryAsyncType?
    let deleteNetworkAclEntrySyncOverride: DeleteNetworkAclEntrySyncType?
    let deleteNetworkInsightsAnalysisAsyncOverride: DeleteNetworkInsightsAnalysisAsyncType?
    let deleteNetworkInsightsAnalysisSyncOverride: DeleteNetworkInsightsAnalysisSyncType?
    let deleteNetworkInsightsPathAsyncOverride: DeleteNetworkInsightsPathAsyncType?
    let deleteNetworkInsightsPathSyncOverride: DeleteNetworkInsightsPathSyncType?
    let deleteNetworkInterfaceAsyncOverride: DeleteNetworkInterfaceAsyncType?
    let deleteNetworkInterfaceSyncOverride: DeleteNetworkInterfaceSyncType?
    let deleteNetworkInterfacePermissionAsyncOverride: DeleteNetworkInterfacePermissionAsyncType?
    let deleteNetworkInterfacePermissionSyncOverride: DeleteNetworkInterfacePermissionSyncType?
    let deletePlacementGroupAsyncOverride: DeletePlacementGroupAsyncType?
    let deletePlacementGroupSyncOverride: DeletePlacementGroupSyncType?
    let deleteQueuedReservedInstancesAsyncOverride: DeleteQueuedReservedInstancesAsyncType?
    let deleteQueuedReservedInstancesSyncOverride: DeleteQueuedReservedInstancesSyncType?
    let deleteRouteAsyncOverride: DeleteRouteAsyncType?
    let deleteRouteSyncOverride: DeleteRouteSyncType?
    let deleteRouteTableAsyncOverride: DeleteRouteTableAsyncType?
    let deleteRouteTableSyncOverride: DeleteRouteTableSyncType?
    let deleteSecurityGroupAsyncOverride: DeleteSecurityGroupAsyncType?
    let deleteSecurityGroupSyncOverride: DeleteSecurityGroupSyncType?
    let deleteSnapshotAsyncOverride: DeleteSnapshotAsyncType?
    let deleteSnapshotSyncOverride: DeleteSnapshotSyncType?
    let deleteSpotDatafeedSubscriptionAsyncOverride: DeleteSpotDatafeedSubscriptionAsyncType?
    let deleteSpotDatafeedSubscriptionSyncOverride: DeleteSpotDatafeedSubscriptionSyncType?
    let deleteSubnetAsyncOverride: DeleteSubnetAsyncType?
    let deleteSubnetSyncOverride: DeleteSubnetSyncType?
    let deleteTagsAsyncOverride: DeleteTagsAsyncType?
    let deleteTagsSyncOverride: DeleteTagsSyncType?
    let deleteTrafficMirrorFilterAsyncOverride: DeleteTrafficMirrorFilterAsyncType?
    let deleteTrafficMirrorFilterSyncOverride: DeleteTrafficMirrorFilterSyncType?
    let deleteTrafficMirrorFilterRuleAsyncOverride: DeleteTrafficMirrorFilterRuleAsyncType?
    let deleteTrafficMirrorFilterRuleSyncOverride: DeleteTrafficMirrorFilterRuleSyncType?
    let deleteTrafficMirrorSessionAsyncOverride: DeleteTrafficMirrorSessionAsyncType?
    let deleteTrafficMirrorSessionSyncOverride: DeleteTrafficMirrorSessionSyncType?
    let deleteTrafficMirrorTargetAsyncOverride: DeleteTrafficMirrorTargetAsyncType?
    let deleteTrafficMirrorTargetSyncOverride: DeleteTrafficMirrorTargetSyncType?
    let deleteTransitGatewayAsyncOverride: DeleteTransitGatewayAsyncType?
    let deleteTransitGatewaySyncOverride: DeleteTransitGatewaySyncType?
    let deleteTransitGatewayConnectAsyncOverride: DeleteTransitGatewayConnectAsyncType?
    let deleteTransitGatewayConnectSyncOverride: DeleteTransitGatewayConnectSyncType?
    let deleteTransitGatewayConnectPeerAsyncOverride: DeleteTransitGatewayConnectPeerAsyncType?
    let deleteTransitGatewayConnectPeerSyncOverride: DeleteTransitGatewayConnectPeerSyncType?
    let deleteTransitGatewayMulticastDomainAsyncOverride: DeleteTransitGatewayMulticastDomainAsyncType?
    let deleteTransitGatewayMulticastDomainSyncOverride: DeleteTransitGatewayMulticastDomainSyncType?
    let deleteTransitGatewayPeeringAttachmentAsyncOverride: DeleteTransitGatewayPeeringAttachmentAsyncType?
    let deleteTransitGatewayPeeringAttachmentSyncOverride: DeleteTransitGatewayPeeringAttachmentSyncType?
    let deleteTransitGatewayPrefixListReferenceAsyncOverride: DeleteTransitGatewayPrefixListReferenceAsyncType?
    let deleteTransitGatewayPrefixListReferenceSyncOverride: DeleteTransitGatewayPrefixListReferenceSyncType?
    let deleteTransitGatewayRouteAsyncOverride: DeleteTransitGatewayRouteAsyncType?
    let deleteTransitGatewayRouteSyncOverride: DeleteTransitGatewayRouteSyncType?
    let deleteTransitGatewayRouteTableAsyncOverride: DeleteTransitGatewayRouteTableAsyncType?
    let deleteTransitGatewayRouteTableSyncOverride: DeleteTransitGatewayRouteTableSyncType?
    let deleteTransitGatewayVpcAttachmentAsyncOverride: DeleteTransitGatewayVpcAttachmentAsyncType?
    let deleteTransitGatewayVpcAttachmentSyncOverride: DeleteTransitGatewayVpcAttachmentSyncType?
    let deleteVolumeAsyncOverride: DeleteVolumeAsyncType?
    let deleteVolumeSyncOverride: DeleteVolumeSyncType?
    let deleteVpcAsyncOverride: DeleteVpcAsyncType?
    let deleteVpcSyncOverride: DeleteVpcSyncType?
    let deleteVpcEndpointConnectionNotificationsAsyncOverride: DeleteVpcEndpointConnectionNotificationsAsyncType?
    let deleteVpcEndpointConnectionNotificationsSyncOverride: DeleteVpcEndpointConnectionNotificationsSyncType?
    let deleteVpcEndpointServiceConfigurationsAsyncOverride: DeleteVpcEndpointServiceConfigurationsAsyncType?
    let deleteVpcEndpointServiceConfigurationsSyncOverride: DeleteVpcEndpointServiceConfigurationsSyncType?
    let deleteVpcEndpointsAsyncOverride: DeleteVpcEndpointsAsyncType?
    let deleteVpcEndpointsSyncOverride: DeleteVpcEndpointsSyncType?
    let deleteVpcPeeringConnectionAsyncOverride: DeleteVpcPeeringConnectionAsyncType?
    let deleteVpcPeeringConnectionSyncOverride: DeleteVpcPeeringConnectionSyncType?
    let deleteVpnConnectionAsyncOverride: DeleteVpnConnectionAsyncType?
    let deleteVpnConnectionSyncOverride: DeleteVpnConnectionSyncType?
    let deleteVpnConnectionRouteAsyncOverride: DeleteVpnConnectionRouteAsyncType?
    let deleteVpnConnectionRouteSyncOverride: DeleteVpnConnectionRouteSyncType?
    let deleteVpnGatewayAsyncOverride: DeleteVpnGatewayAsyncType?
    let deleteVpnGatewaySyncOverride: DeleteVpnGatewaySyncType?
    let deprovisionByoipCidrAsyncOverride: DeprovisionByoipCidrAsyncType?
    let deprovisionByoipCidrSyncOverride: DeprovisionByoipCidrSyncType?
    let deregisterImageAsyncOverride: DeregisterImageAsyncType?
    let deregisterImageSyncOverride: DeregisterImageSyncType?
    let deregisterInstanceEventNotificationAttributesAsyncOverride: DeregisterInstanceEventNotificationAttributesAsyncType?
    let deregisterInstanceEventNotificationAttributesSyncOverride: DeregisterInstanceEventNotificationAttributesSyncType?
    let deregisterTransitGatewayMulticastGroupMembersAsyncOverride: DeregisterTransitGatewayMulticastGroupMembersAsyncType?
    let deregisterTransitGatewayMulticastGroupMembersSyncOverride: DeregisterTransitGatewayMulticastGroupMembersSyncType?
    let deregisterTransitGatewayMulticastGroupSourcesAsyncOverride: DeregisterTransitGatewayMulticastGroupSourcesAsyncType?
    let deregisterTransitGatewayMulticastGroupSourcesSyncOverride: DeregisterTransitGatewayMulticastGroupSourcesSyncType?
    let describeAccountAttributesAsyncOverride: DescribeAccountAttributesAsyncType?
    let describeAccountAttributesSyncOverride: DescribeAccountAttributesSyncType?
    let describeAddressesAsyncOverride: DescribeAddressesAsyncType?
    let describeAddressesSyncOverride: DescribeAddressesSyncType?
    let describeAddressesAttributeAsyncOverride: DescribeAddressesAttributeAsyncType?
    let describeAddressesAttributeSyncOverride: DescribeAddressesAttributeSyncType?
    let describeAggregateIdFormatAsyncOverride: DescribeAggregateIdFormatAsyncType?
    let describeAggregateIdFormatSyncOverride: DescribeAggregateIdFormatSyncType?
    let describeAvailabilityZonesAsyncOverride: DescribeAvailabilityZonesAsyncType?
    let describeAvailabilityZonesSyncOverride: DescribeAvailabilityZonesSyncType?
    let describeBundleTasksAsyncOverride: DescribeBundleTasksAsyncType?
    let describeBundleTasksSyncOverride: DescribeBundleTasksSyncType?
    let describeByoipCidrsAsyncOverride: DescribeByoipCidrsAsyncType?
    let describeByoipCidrsSyncOverride: DescribeByoipCidrsSyncType?
    let describeCapacityReservationsAsyncOverride: DescribeCapacityReservationsAsyncType?
    let describeCapacityReservationsSyncOverride: DescribeCapacityReservationsSyncType?
    let describeCarrierGatewaysAsyncOverride: DescribeCarrierGatewaysAsyncType?
    let describeCarrierGatewaysSyncOverride: DescribeCarrierGatewaysSyncType?
    let describeClassicLinkInstancesAsyncOverride: DescribeClassicLinkInstancesAsyncType?
    let describeClassicLinkInstancesSyncOverride: DescribeClassicLinkInstancesSyncType?
    let describeClientVpnAuthorizationRulesAsyncOverride: DescribeClientVpnAuthorizationRulesAsyncType?
    let describeClientVpnAuthorizationRulesSyncOverride: DescribeClientVpnAuthorizationRulesSyncType?
    let describeClientVpnConnectionsAsyncOverride: DescribeClientVpnConnectionsAsyncType?
    let describeClientVpnConnectionsSyncOverride: DescribeClientVpnConnectionsSyncType?
    let describeClientVpnEndpointsAsyncOverride: DescribeClientVpnEndpointsAsyncType?
    let describeClientVpnEndpointsSyncOverride: DescribeClientVpnEndpointsSyncType?
    let describeClientVpnRoutesAsyncOverride: DescribeClientVpnRoutesAsyncType?
    let describeClientVpnRoutesSyncOverride: DescribeClientVpnRoutesSyncType?
    let describeClientVpnTargetNetworksAsyncOverride: DescribeClientVpnTargetNetworksAsyncType?
    let describeClientVpnTargetNetworksSyncOverride: DescribeClientVpnTargetNetworksSyncType?
    let describeCoipPoolsAsyncOverride: DescribeCoipPoolsAsyncType?
    let describeCoipPoolsSyncOverride: DescribeCoipPoolsSyncType?
    let describeConversionTasksAsyncOverride: DescribeConversionTasksAsyncType?
    let describeConversionTasksSyncOverride: DescribeConversionTasksSyncType?
    let describeCustomerGatewaysAsyncOverride: DescribeCustomerGatewaysAsyncType?
    let describeCustomerGatewaysSyncOverride: DescribeCustomerGatewaysSyncType?
    let describeDhcpOptionsAsyncOverride: DescribeDhcpOptionsAsyncType?
    let describeDhcpOptionsSyncOverride: DescribeDhcpOptionsSyncType?
    let describeEgressOnlyInternetGatewaysAsyncOverride: DescribeEgressOnlyInternetGatewaysAsyncType?
    let describeEgressOnlyInternetGatewaysSyncOverride: DescribeEgressOnlyInternetGatewaysSyncType?
    let describeElasticGpusAsyncOverride: DescribeElasticGpusAsyncType?
    let describeElasticGpusSyncOverride: DescribeElasticGpusSyncType?
    let describeExportImageTasksAsyncOverride: DescribeExportImageTasksAsyncType?
    let describeExportImageTasksSyncOverride: DescribeExportImageTasksSyncType?
    let describeExportTasksAsyncOverride: DescribeExportTasksAsyncType?
    let describeExportTasksSyncOverride: DescribeExportTasksSyncType?
    let describeFastSnapshotRestoresAsyncOverride: DescribeFastSnapshotRestoresAsyncType?
    let describeFastSnapshotRestoresSyncOverride: DescribeFastSnapshotRestoresSyncType?
    let describeFleetHistoryAsyncOverride: DescribeFleetHistoryAsyncType?
    let describeFleetHistorySyncOverride: DescribeFleetHistorySyncType?
    let describeFleetInstancesAsyncOverride: DescribeFleetInstancesAsyncType?
    let describeFleetInstancesSyncOverride: DescribeFleetInstancesSyncType?
    let describeFleetsAsyncOverride: DescribeFleetsAsyncType?
    let describeFleetsSyncOverride: DescribeFleetsSyncType?
    let describeFlowLogsAsyncOverride: DescribeFlowLogsAsyncType?
    let describeFlowLogsSyncOverride: DescribeFlowLogsSyncType?
    let describeFpgaImageAttributeAsyncOverride: DescribeFpgaImageAttributeAsyncType?
    let describeFpgaImageAttributeSyncOverride: DescribeFpgaImageAttributeSyncType?
    let describeFpgaImagesAsyncOverride: DescribeFpgaImagesAsyncType?
    let describeFpgaImagesSyncOverride: DescribeFpgaImagesSyncType?
    let describeHostReservationOfferingsAsyncOverride: DescribeHostReservationOfferingsAsyncType?
    let describeHostReservationOfferingsSyncOverride: DescribeHostReservationOfferingsSyncType?
    let describeHostReservationsAsyncOverride: DescribeHostReservationsAsyncType?
    let describeHostReservationsSyncOverride: DescribeHostReservationsSyncType?
    let describeHostsAsyncOverride: DescribeHostsAsyncType?
    let describeHostsSyncOverride: DescribeHostsSyncType?
    let describeIamInstanceProfileAssociationsAsyncOverride: DescribeIamInstanceProfileAssociationsAsyncType?
    let describeIamInstanceProfileAssociationsSyncOverride: DescribeIamInstanceProfileAssociationsSyncType?
    let describeIdFormatAsyncOverride: DescribeIdFormatAsyncType?
    let describeIdFormatSyncOverride: DescribeIdFormatSyncType?
    let describeIdentityIdFormatAsyncOverride: DescribeIdentityIdFormatAsyncType?
    let describeIdentityIdFormatSyncOverride: DescribeIdentityIdFormatSyncType?
    let describeImageAttributeAsyncOverride: DescribeImageAttributeAsyncType?
    let describeImageAttributeSyncOverride: DescribeImageAttributeSyncType?
    let describeImagesAsyncOverride: DescribeImagesAsyncType?
    let describeImagesSyncOverride: DescribeImagesSyncType?
    let describeImportImageTasksAsyncOverride: DescribeImportImageTasksAsyncType?
    let describeImportImageTasksSyncOverride: DescribeImportImageTasksSyncType?
    let describeImportSnapshotTasksAsyncOverride: DescribeImportSnapshotTasksAsyncType?
    let describeImportSnapshotTasksSyncOverride: DescribeImportSnapshotTasksSyncType?
    let describeInstanceAttributeAsyncOverride: DescribeInstanceAttributeAsyncType?
    let describeInstanceAttributeSyncOverride: DescribeInstanceAttributeSyncType?
    let describeInstanceCreditSpecificationsAsyncOverride: DescribeInstanceCreditSpecificationsAsyncType?
    let describeInstanceCreditSpecificationsSyncOverride: DescribeInstanceCreditSpecificationsSyncType?
    let describeInstanceEventNotificationAttributesAsyncOverride: DescribeInstanceEventNotificationAttributesAsyncType?
    let describeInstanceEventNotificationAttributesSyncOverride: DescribeInstanceEventNotificationAttributesSyncType?
    let describeInstanceStatusAsyncOverride: DescribeInstanceStatusAsyncType?
    let describeInstanceStatusSyncOverride: DescribeInstanceStatusSyncType?
    let describeInstanceTypeOfferingsAsyncOverride: DescribeInstanceTypeOfferingsAsyncType?
    let describeInstanceTypeOfferingsSyncOverride: DescribeInstanceTypeOfferingsSyncType?
    let describeInstanceTypesAsyncOverride: DescribeInstanceTypesAsyncType?
    let describeInstanceTypesSyncOverride: DescribeInstanceTypesSyncType?
    let describeInstancesAsyncOverride: DescribeInstancesAsyncType?
    let describeInstancesSyncOverride: DescribeInstancesSyncType?
    let describeInternetGatewaysAsyncOverride: DescribeInternetGatewaysAsyncType?
    let describeInternetGatewaysSyncOverride: DescribeInternetGatewaysSyncType?
    let describeIpv6PoolsAsyncOverride: DescribeIpv6PoolsAsyncType?
    let describeIpv6PoolsSyncOverride: DescribeIpv6PoolsSyncType?
    let describeKeyPairsAsyncOverride: DescribeKeyPairsAsyncType?
    let describeKeyPairsSyncOverride: DescribeKeyPairsSyncType?
    let describeLaunchTemplateVersionsAsyncOverride: DescribeLaunchTemplateVersionsAsyncType?
    let describeLaunchTemplateVersionsSyncOverride: DescribeLaunchTemplateVersionsSyncType?
    let describeLaunchTemplatesAsyncOverride: DescribeLaunchTemplatesAsyncType?
    let describeLaunchTemplatesSyncOverride: DescribeLaunchTemplatesSyncType?
    let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncOverride: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncType?
    let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncOverride: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncType?
    let describeLocalGatewayRouteTableVpcAssociationsAsyncOverride: DescribeLocalGatewayRouteTableVpcAssociationsAsyncType?
    let describeLocalGatewayRouteTableVpcAssociationsSyncOverride: DescribeLocalGatewayRouteTableVpcAssociationsSyncType?
    let describeLocalGatewayRouteTablesAsyncOverride: DescribeLocalGatewayRouteTablesAsyncType?
    let describeLocalGatewayRouteTablesSyncOverride: DescribeLocalGatewayRouteTablesSyncType?
    let describeLocalGatewayVirtualInterfaceGroupsAsyncOverride: DescribeLocalGatewayVirtualInterfaceGroupsAsyncType?
    let describeLocalGatewayVirtualInterfaceGroupsSyncOverride: DescribeLocalGatewayVirtualInterfaceGroupsSyncType?
    let describeLocalGatewayVirtualInterfacesAsyncOverride: DescribeLocalGatewayVirtualInterfacesAsyncType?
    let describeLocalGatewayVirtualInterfacesSyncOverride: DescribeLocalGatewayVirtualInterfacesSyncType?
    let describeLocalGatewaysAsyncOverride: DescribeLocalGatewaysAsyncType?
    let describeLocalGatewaysSyncOverride: DescribeLocalGatewaysSyncType?
    let describeManagedPrefixListsAsyncOverride: DescribeManagedPrefixListsAsyncType?
    let describeManagedPrefixListsSyncOverride: DescribeManagedPrefixListsSyncType?
    let describeMovingAddressesAsyncOverride: DescribeMovingAddressesAsyncType?
    let describeMovingAddressesSyncOverride: DescribeMovingAddressesSyncType?
    let describeNatGatewaysAsyncOverride: DescribeNatGatewaysAsyncType?
    let describeNatGatewaysSyncOverride: DescribeNatGatewaysSyncType?
    let describeNetworkAclsAsyncOverride: DescribeNetworkAclsAsyncType?
    let describeNetworkAclsSyncOverride: DescribeNetworkAclsSyncType?
    let describeNetworkInsightsAnalysesAsyncOverride: DescribeNetworkInsightsAnalysesAsyncType?
    let describeNetworkInsightsAnalysesSyncOverride: DescribeNetworkInsightsAnalysesSyncType?
    let describeNetworkInsightsPathsAsyncOverride: DescribeNetworkInsightsPathsAsyncType?
    let describeNetworkInsightsPathsSyncOverride: DescribeNetworkInsightsPathsSyncType?
    let describeNetworkInterfaceAttributeAsyncOverride: DescribeNetworkInterfaceAttributeAsyncType?
    let describeNetworkInterfaceAttributeSyncOverride: DescribeNetworkInterfaceAttributeSyncType?
    let describeNetworkInterfacePermissionsAsyncOverride: DescribeNetworkInterfacePermissionsAsyncType?
    let describeNetworkInterfacePermissionsSyncOverride: DescribeNetworkInterfacePermissionsSyncType?
    let describeNetworkInterfacesAsyncOverride: DescribeNetworkInterfacesAsyncType?
    let describeNetworkInterfacesSyncOverride: DescribeNetworkInterfacesSyncType?
    let describePlacementGroupsAsyncOverride: DescribePlacementGroupsAsyncType?
    let describePlacementGroupsSyncOverride: DescribePlacementGroupsSyncType?
    let describePrefixListsAsyncOverride: DescribePrefixListsAsyncType?
    let describePrefixListsSyncOverride: DescribePrefixListsSyncType?
    let describePrincipalIdFormatAsyncOverride: DescribePrincipalIdFormatAsyncType?
    let describePrincipalIdFormatSyncOverride: DescribePrincipalIdFormatSyncType?
    let describePublicIpv4PoolsAsyncOverride: DescribePublicIpv4PoolsAsyncType?
    let describePublicIpv4PoolsSyncOverride: DescribePublicIpv4PoolsSyncType?
    let describeRegionsAsyncOverride: DescribeRegionsAsyncType?
    let describeRegionsSyncOverride: DescribeRegionsSyncType?
    let describeReservedInstancesAsyncOverride: DescribeReservedInstancesAsyncType?
    let describeReservedInstancesSyncOverride: DescribeReservedInstancesSyncType?
    let describeReservedInstancesListingsAsyncOverride: DescribeReservedInstancesListingsAsyncType?
    let describeReservedInstancesListingsSyncOverride: DescribeReservedInstancesListingsSyncType?
    let describeReservedInstancesModificationsAsyncOverride: DescribeReservedInstancesModificationsAsyncType?
    let describeReservedInstancesModificationsSyncOverride: DescribeReservedInstancesModificationsSyncType?
    let describeReservedInstancesOfferingsAsyncOverride: DescribeReservedInstancesOfferingsAsyncType?
    let describeReservedInstancesOfferingsSyncOverride: DescribeReservedInstancesOfferingsSyncType?
    let describeRouteTablesAsyncOverride: DescribeRouteTablesAsyncType?
    let describeRouteTablesSyncOverride: DescribeRouteTablesSyncType?
    let describeScheduledInstanceAvailabilityAsyncOverride: DescribeScheduledInstanceAvailabilityAsyncType?
    let describeScheduledInstanceAvailabilitySyncOverride: DescribeScheduledInstanceAvailabilitySyncType?
    let describeScheduledInstancesAsyncOverride: DescribeScheduledInstancesAsyncType?
    let describeScheduledInstancesSyncOverride: DescribeScheduledInstancesSyncType?
    let describeSecurityGroupReferencesAsyncOverride: DescribeSecurityGroupReferencesAsyncType?
    let describeSecurityGroupReferencesSyncOverride: DescribeSecurityGroupReferencesSyncType?
    let describeSecurityGroupsAsyncOverride: DescribeSecurityGroupsAsyncType?
    let describeSecurityGroupsSyncOverride: DescribeSecurityGroupsSyncType?
    let describeSnapshotAttributeAsyncOverride: DescribeSnapshotAttributeAsyncType?
    let describeSnapshotAttributeSyncOverride: DescribeSnapshotAttributeSyncType?
    let describeSnapshotsAsyncOverride: DescribeSnapshotsAsyncType?
    let describeSnapshotsSyncOverride: DescribeSnapshotsSyncType?
    let describeSpotDatafeedSubscriptionAsyncOverride: DescribeSpotDatafeedSubscriptionAsyncType?
    let describeSpotDatafeedSubscriptionSyncOverride: DescribeSpotDatafeedSubscriptionSyncType?
    let describeSpotFleetInstancesAsyncOverride: DescribeSpotFleetInstancesAsyncType?
    let describeSpotFleetInstancesSyncOverride: DescribeSpotFleetInstancesSyncType?
    let describeSpotFleetRequestHistoryAsyncOverride: DescribeSpotFleetRequestHistoryAsyncType?
    let describeSpotFleetRequestHistorySyncOverride: DescribeSpotFleetRequestHistorySyncType?
    let describeSpotFleetRequestsAsyncOverride: DescribeSpotFleetRequestsAsyncType?
    let describeSpotFleetRequestsSyncOverride: DescribeSpotFleetRequestsSyncType?
    let describeSpotInstanceRequestsAsyncOverride: DescribeSpotInstanceRequestsAsyncType?
    let describeSpotInstanceRequestsSyncOverride: DescribeSpotInstanceRequestsSyncType?
    let describeSpotPriceHistoryAsyncOverride: DescribeSpotPriceHistoryAsyncType?
    let describeSpotPriceHistorySyncOverride: DescribeSpotPriceHistorySyncType?
    let describeStaleSecurityGroupsAsyncOverride: DescribeStaleSecurityGroupsAsyncType?
    let describeStaleSecurityGroupsSyncOverride: DescribeStaleSecurityGroupsSyncType?
    let describeSubnetsAsyncOverride: DescribeSubnetsAsyncType?
    let describeSubnetsSyncOverride: DescribeSubnetsSyncType?
    let describeTagsAsyncOverride: DescribeTagsAsyncType?
    let describeTagsSyncOverride: DescribeTagsSyncType?
    let describeTrafficMirrorFiltersAsyncOverride: DescribeTrafficMirrorFiltersAsyncType?
    let describeTrafficMirrorFiltersSyncOverride: DescribeTrafficMirrorFiltersSyncType?
    let describeTrafficMirrorSessionsAsyncOverride: DescribeTrafficMirrorSessionsAsyncType?
    let describeTrafficMirrorSessionsSyncOverride: DescribeTrafficMirrorSessionsSyncType?
    let describeTrafficMirrorTargetsAsyncOverride: DescribeTrafficMirrorTargetsAsyncType?
    let describeTrafficMirrorTargetsSyncOverride: DescribeTrafficMirrorTargetsSyncType?
    let describeTransitGatewayAttachmentsAsyncOverride: DescribeTransitGatewayAttachmentsAsyncType?
    let describeTransitGatewayAttachmentsSyncOverride: DescribeTransitGatewayAttachmentsSyncType?
    let describeTransitGatewayConnectPeersAsyncOverride: DescribeTransitGatewayConnectPeersAsyncType?
    let describeTransitGatewayConnectPeersSyncOverride: DescribeTransitGatewayConnectPeersSyncType?
    let describeTransitGatewayConnectsAsyncOverride: DescribeTransitGatewayConnectsAsyncType?
    let describeTransitGatewayConnectsSyncOverride: DescribeTransitGatewayConnectsSyncType?
    let describeTransitGatewayMulticastDomainsAsyncOverride: DescribeTransitGatewayMulticastDomainsAsyncType?
    let describeTransitGatewayMulticastDomainsSyncOverride: DescribeTransitGatewayMulticastDomainsSyncType?
    let describeTransitGatewayPeeringAttachmentsAsyncOverride: DescribeTransitGatewayPeeringAttachmentsAsyncType?
    let describeTransitGatewayPeeringAttachmentsSyncOverride: DescribeTransitGatewayPeeringAttachmentsSyncType?
    let describeTransitGatewayRouteTablesAsyncOverride: DescribeTransitGatewayRouteTablesAsyncType?
    let describeTransitGatewayRouteTablesSyncOverride: DescribeTransitGatewayRouteTablesSyncType?
    let describeTransitGatewayVpcAttachmentsAsyncOverride: DescribeTransitGatewayVpcAttachmentsAsyncType?
    let describeTransitGatewayVpcAttachmentsSyncOverride: DescribeTransitGatewayVpcAttachmentsSyncType?
    let describeTransitGatewaysAsyncOverride: DescribeTransitGatewaysAsyncType?
    let describeTransitGatewaysSyncOverride: DescribeTransitGatewaysSyncType?
    let describeVolumeAttributeAsyncOverride: DescribeVolumeAttributeAsyncType?
    let describeVolumeAttributeSyncOverride: DescribeVolumeAttributeSyncType?
    let describeVolumeStatusAsyncOverride: DescribeVolumeStatusAsyncType?
    let describeVolumeStatusSyncOverride: DescribeVolumeStatusSyncType?
    let describeVolumesAsyncOverride: DescribeVolumesAsyncType?
    let describeVolumesSyncOverride: DescribeVolumesSyncType?
    let describeVolumesModificationsAsyncOverride: DescribeVolumesModificationsAsyncType?
    let describeVolumesModificationsSyncOverride: DescribeVolumesModificationsSyncType?
    let describeVpcAttributeAsyncOverride: DescribeVpcAttributeAsyncType?
    let describeVpcAttributeSyncOverride: DescribeVpcAttributeSyncType?
    let describeVpcClassicLinkAsyncOverride: DescribeVpcClassicLinkAsyncType?
    let describeVpcClassicLinkSyncOverride: DescribeVpcClassicLinkSyncType?
    let describeVpcClassicLinkDnsSupportAsyncOverride: DescribeVpcClassicLinkDnsSupportAsyncType?
    let describeVpcClassicLinkDnsSupportSyncOverride: DescribeVpcClassicLinkDnsSupportSyncType?
    let describeVpcEndpointConnectionNotificationsAsyncOverride: DescribeVpcEndpointConnectionNotificationsAsyncType?
    let describeVpcEndpointConnectionNotificationsSyncOverride: DescribeVpcEndpointConnectionNotificationsSyncType?
    let describeVpcEndpointConnectionsAsyncOverride: DescribeVpcEndpointConnectionsAsyncType?
    let describeVpcEndpointConnectionsSyncOverride: DescribeVpcEndpointConnectionsSyncType?
    let describeVpcEndpointServiceConfigurationsAsyncOverride: DescribeVpcEndpointServiceConfigurationsAsyncType?
    let describeVpcEndpointServiceConfigurationsSyncOverride: DescribeVpcEndpointServiceConfigurationsSyncType?
    let describeVpcEndpointServicePermissionsAsyncOverride: DescribeVpcEndpointServicePermissionsAsyncType?
    let describeVpcEndpointServicePermissionsSyncOverride: DescribeVpcEndpointServicePermissionsSyncType?
    let describeVpcEndpointServicesAsyncOverride: DescribeVpcEndpointServicesAsyncType?
    let describeVpcEndpointServicesSyncOverride: DescribeVpcEndpointServicesSyncType?
    let describeVpcEndpointsAsyncOverride: DescribeVpcEndpointsAsyncType?
    let describeVpcEndpointsSyncOverride: DescribeVpcEndpointsSyncType?
    let describeVpcPeeringConnectionsAsyncOverride: DescribeVpcPeeringConnectionsAsyncType?
    let describeVpcPeeringConnectionsSyncOverride: DescribeVpcPeeringConnectionsSyncType?
    let describeVpcsAsyncOverride: DescribeVpcsAsyncType?
    let describeVpcsSyncOverride: DescribeVpcsSyncType?
    let describeVpnConnectionsAsyncOverride: DescribeVpnConnectionsAsyncType?
    let describeVpnConnectionsSyncOverride: DescribeVpnConnectionsSyncType?
    let describeVpnGatewaysAsyncOverride: DescribeVpnGatewaysAsyncType?
    let describeVpnGatewaysSyncOverride: DescribeVpnGatewaysSyncType?
    let detachClassicLinkVpcAsyncOverride: DetachClassicLinkVpcAsyncType?
    let detachClassicLinkVpcSyncOverride: DetachClassicLinkVpcSyncType?
    let detachInternetGatewayAsyncOverride: DetachInternetGatewayAsyncType?
    let detachInternetGatewaySyncOverride: DetachInternetGatewaySyncType?
    let detachNetworkInterfaceAsyncOverride: DetachNetworkInterfaceAsyncType?
    let detachNetworkInterfaceSyncOverride: DetachNetworkInterfaceSyncType?
    let detachVolumeAsyncOverride: DetachVolumeAsyncType?
    let detachVolumeSyncOverride: DetachVolumeSyncType?
    let detachVpnGatewayAsyncOverride: DetachVpnGatewayAsyncType?
    let detachVpnGatewaySyncOverride: DetachVpnGatewaySyncType?
    let disableEbsEncryptionByDefaultAsyncOverride: DisableEbsEncryptionByDefaultAsyncType?
    let disableEbsEncryptionByDefaultSyncOverride: DisableEbsEncryptionByDefaultSyncType?
    let disableFastSnapshotRestoresAsyncOverride: DisableFastSnapshotRestoresAsyncType?
    let disableFastSnapshotRestoresSyncOverride: DisableFastSnapshotRestoresSyncType?
    let disableTransitGatewayRouteTablePropagationAsyncOverride: DisableTransitGatewayRouteTablePropagationAsyncType?
    let disableTransitGatewayRouteTablePropagationSyncOverride: DisableTransitGatewayRouteTablePropagationSyncType?
    let disableVgwRoutePropagationAsyncOverride: DisableVgwRoutePropagationAsyncType?
    let disableVgwRoutePropagationSyncOverride: DisableVgwRoutePropagationSyncType?
    let disableVpcClassicLinkAsyncOverride: DisableVpcClassicLinkAsyncType?
    let disableVpcClassicLinkSyncOverride: DisableVpcClassicLinkSyncType?
    let disableVpcClassicLinkDnsSupportAsyncOverride: DisableVpcClassicLinkDnsSupportAsyncType?
    let disableVpcClassicLinkDnsSupportSyncOverride: DisableVpcClassicLinkDnsSupportSyncType?
    let disassociateAddressAsyncOverride: DisassociateAddressAsyncType?
    let disassociateAddressSyncOverride: DisassociateAddressSyncType?
    let disassociateClientVpnTargetNetworkAsyncOverride: DisassociateClientVpnTargetNetworkAsyncType?
    let disassociateClientVpnTargetNetworkSyncOverride: DisassociateClientVpnTargetNetworkSyncType?
    let disassociateEnclaveCertificateIamRoleAsyncOverride: DisassociateEnclaveCertificateIamRoleAsyncType?
    let disassociateEnclaveCertificateIamRoleSyncOverride: DisassociateEnclaveCertificateIamRoleSyncType?
    let disassociateIamInstanceProfileAsyncOverride: DisassociateIamInstanceProfileAsyncType?
    let disassociateIamInstanceProfileSyncOverride: DisassociateIamInstanceProfileSyncType?
    let disassociateRouteTableAsyncOverride: DisassociateRouteTableAsyncType?
    let disassociateRouteTableSyncOverride: DisassociateRouteTableSyncType?
    let disassociateSubnetCidrBlockAsyncOverride: DisassociateSubnetCidrBlockAsyncType?
    let disassociateSubnetCidrBlockSyncOverride: DisassociateSubnetCidrBlockSyncType?
    let disassociateTransitGatewayMulticastDomainAsyncOverride: DisassociateTransitGatewayMulticastDomainAsyncType?
    let disassociateTransitGatewayMulticastDomainSyncOverride: DisassociateTransitGatewayMulticastDomainSyncType?
    let disassociateTransitGatewayRouteTableAsyncOverride: DisassociateTransitGatewayRouteTableAsyncType?
    let disassociateTransitGatewayRouteTableSyncOverride: DisassociateTransitGatewayRouteTableSyncType?
    let disassociateVpcCidrBlockAsyncOverride: DisassociateVpcCidrBlockAsyncType?
    let disassociateVpcCidrBlockSyncOverride: DisassociateVpcCidrBlockSyncType?
    let enableEbsEncryptionByDefaultAsyncOverride: EnableEbsEncryptionByDefaultAsyncType?
    let enableEbsEncryptionByDefaultSyncOverride: EnableEbsEncryptionByDefaultSyncType?
    let enableFastSnapshotRestoresAsyncOverride: EnableFastSnapshotRestoresAsyncType?
    let enableFastSnapshotRestoresSyncOverride: EnableFastSnapshotRestoresSyncType?
    let enableTransitGatewayRouteTablePropagationAsyncOverride: EnableTransitGatewayRouteTablePropagationAsyncType?
    let enableTransitGatewayRouteTablePropagationSyncOverride: EnableTransitGatewayRouteTablePropagationSyncType?
    let enableVgwRoutePropagationAsyncOverride: EnableVgwRoutePropagationAsyncType?
    let enableVgwRoutePropagationSyncOverride: EnableVgwRoutePropagationSyncType?
    let enableVolumeIOAsyncOverride: EnableVolumeIOAsyncType?
    let enableVolumeIOSyncOverride: EnableVolumeIOSyncType?
    let enableVpcClassicLinkAsyncOverride: EnableVpcClassicLinkAsyncType?
    let enableVpcClassicLinkSyncOverride: EnableVpcClassicLinkSyncType?
    let enableVpcClassicLinkDnsSupportAsyncOverride: EnableVpcClassicLinkDnsSupportAsyncType?
    let enableVpcClassicLinkDnsSupportSyncOverride: EnableVpcClassicLinkDnsSupportSyncType?
    let exportClientVpnClientCertificateRevocationListAsyncOverride: ExportClientVpnClientCertificateRevocationListAsyncType?
    let exportClientVpnClientCertificateRevocationListSyncOverride: ExportClientVpnClientCertificateRevocationListSyncType?
    let exportClientVpnClientConfigurationAsyncOverride: ExportClientVpnClientConfigurationAsyncType?
    let exportClientVpnClientConfigurationSyncOverride: ExportClientVpnClientConfigurationSyncType?
    let exportImageAsyncOverride: ExportImageAsyncType?
    let exportImageSyncOverride: ExportImageSyncType?
    let exportTransitGatewayRoutesAsyncOverride: ExportTransitGatewayRoutesAsyncType?
    let exportTransitGatewayRoutesSyncOverride: ExportTransitGatewayRoutesSyncType?
    let getAssociatedEnclaveCertificateIamRolesAsyncOverride: GetAssociatedEnclaveCertificateIamRolesAsyncType?
    let getAssociatedEnclaveCertificateIamRolesSyncOverride: GetAssociatedEnclaveCertificateIamRolesSyncType?
    let getAssociatedIpv6PoolCidrsAsyncOverride: GetAssociatedIpv6PoolCidrsAsyncType?
    let getAssociatedIpv6PoolCidrsSyncOverride: GetAssociatedIpv6PoolCidrsSyncType?
    let getCapacityReservationUsageAsyncOverride: GetCapacityReservationUsageAsyncType?
    let getCapacityReservationUsageSyncOverride: GetCapacityReservationUsageSyncType?
    let getCoipPoolUsageAsyncOverride: GetCoipPoolUsageAsyncType?
    let getCoipPoolUsageSyncOverride: GetCoipPoolUsageSyncType?
    let getConsoleOutputAsyncOverride: GetConsoleOutputAsyncType?
    let getConsoleOutputSyncOverride: GetConsoleOutputSyncType?
    let getConsoleScreenshotAsyncOverride: GetConsoleScreenshotAsyncType?
    let getConsoleScreenshotSyncOverride: GetConsoleScreenshotSyncType?
    let getDefaultCreditSpecificationAsyncOverride: GetDefaultCreditSpecificationAsyncType?
    let getDefaultCreditSpecificationSyncOverride: GetDefaultCreditSpecificationSyncType?
    let getEbsDefaultKmsKeyIdAsyncOverride: GetEbsDefaultKmsKeyIdAsyncType?
    let getEbsDefaultKmsKeyIdSyncOverride: GetEbsDefaultKmsKeyIdSyncType?
    let getEbsEncryptionByDefaultAsyncOverride: GetEbsEncryptionByDefaultAsyncType?
    let getEbsEncryptionByDefaultSyncOverride: GetEbsEncryptionByDefaultSyncType?
    let getGroupsForCapacityReservationAsyncOverride: GetGroupsForCapacityReservationAsyncType?
    let getGroupsForCapacityReservationSyncOverride: GetGroupsForCapacityReservationSyncType?
    let getHostReservationPurchasePreviewAsyncOverride: GetHostReservationPurchasePreviewAsyncType?
    let getHostReservationPurchasePreviewSyncOverride: GetHostReservationPurchasePreviewSyncType?
    let getLaunchTemplateDataAsyncOverride: GetLaunchTemplateDataAsyncType?
    let getLaunchTemplateDataSyncOverride: GetLaunchTemplateDataSyncType?
    let getManagedPrefixListAssociationsAsyncOverride: GetManagedPrefixListAssociationsAsyncType?
    let getManagedPrefixListAssociationsSyncOverride: GetManagedPrefixListAssociationsSyncType?
    let getManagedPrefixListEntriesAsyncOverride: GetManagedPrefixListEntriesAsyncType?
    let getManagedPrefixListEntriesSyncOverride: GetManagedPrefixListEntriesSyncType?
    let getPasswordDataAsyncOverride: GetPasswordDataAsyncType?
    let getPasswordDataSyncOverride: GetPasswordDataSyncType?
    let getReservedInstancesExchangeQuoteAsyncOverride: GetReservedInstancesExchangeQuoteAsyncType?
    let getReservedInstancesExchangeQuoteSyncOverride: GetReservedInstancesExchangeQuoteSyncType?
    let getTransitGatewayAttachmentPropagationsAsyncOverride: GetTransitGatewayAttachmentPropagationsAsyncType?
    let getTransitGatewayAttachmentPropagationsSyncOverride: GetTransitGatewayAttachmentPropagationsSyncType?
    let getTransitGatewayMulticastDomainAssociationsAsyncOverride: GetTransitGatewayMulticastDomainAssociationsAsyncType?
    let getTransitGatewayMulticastDomainAssociationsSyncOverride: GetTransitGatewayMulticastDomainAssociationsSyncType?
    let getTransitGatewayPrefixListReferencesAsyncOverride: GetTransitGatewayPrefixListReferencesAsyncType?
    let getTransitGatewayPrefixListReferencesSyncOverride: GetTransitGatewayPrefixListReferencesSyncType?
    let getTransitGatewayRouteTableAssociationsAsyncOverride: GetTransitGatewayRouteTableAssociationsAsyncType?
    let getTransitGatewayRouteTableAssociationsSyncOverride: GetTransitGatewayRouteTableAssociationsSyncType?
    let getTransitGatewayRouteTablePropagationsAsyncOverride: GetTransitGatewayRouteTablePropagationsAsyncType?
    let getTransitGatewayRouteTablePropagationsSyncOverride: GetTransitGatewayRouteTablePropagationsSyncType?
    let importClientVpnClientCertificateRevocationListAsyncOverride: ImportClientVpnClientCertificateRevocationListAsyncType?
    let importClientVpnClientCertificateRevocationListSyncOverride: ImportClientVpnClientCertificateRevocationListSyncType?
    let importImageAsyncOverride: ImportImageAsyncType?
    let importImageSyncOverride: ImportImageSyncType?
    let importInstanceAsyncOverride: ImportInstanceAsyncType?
    let importInstanceSyncOverride: ImportInstanceSyncType?
    let importKeyPairAsyncOverride: ImportKeyPairAsyncType?
    let importKeyPairSyncOverride: ImportKeyPairSyncType?
    let importSnapshotAsyncOverride: ImportSnapshotAsyncType?
    let importSnapshotSyncOverride: ImportSnapshotSyncType?
    let importVolumeAsyncOverride: ImportVolumeAsyncType?
    let importVolumeSyncOverride: ImportVolumeSyncType?
    let modifyAddressAttributeAsyncOverride: ModifyAddressAttributeAsyncType?
    let modifyAddressAttributeSyncOverride: ModifyAddressAttributeSyncType?
    let modifyAvailabilityZoneGroupAsyncOverride: ModifyAvailabilityZoneGroupAsyncType?
    let modifyAvailabilityZoneGroupSyncOverride: ModifyAvailabilityZoneGroupSyncType?
    let modifyCapacityReservationAsyncOverride: ModifyCapacityReservationAsyncType?
    let modifyCapacityReservationSyncOverride: ModifyCapacityReservationSyncType?
    let modifyClientVpnEndpointAsyncOverride: ModifyClientVpnEndpointAsyncType?
    let modifyClientVpnEndpointSyncOverride: ModifyClientVpnEndpointSyncType?
    let modifyDefaultCreditSpecificationAsyncOverride: ModifyDefaultCreditSpecificationAsyncType?
    let modifyDefaultCreditSpecificationSyncOverride: ModifyDefaultCreditSpecificationSyncType?
    let modifyEbsDefaultKmsKeyIdAsyncOverride: ModifyEbsDefaultKmsKeyIdAsyncType?
    let modifyEbsDefaultKmsKeyIdSyncOverride: ModifyEbsDefaultKmsKeyIdSyncType?
    let modifyFleetAsyncOverride: ModifyFleetAsyncType?
    let modifyFleetSyncOverride: ModifyFleetSyncType?
    let modifyFpgaImageAttributeAsyncOverride: ModifyFpgaImageAttributeAsyncType?
    let modifyFpgaImageAttributeSyncOverride: ModifyFpgaImageAttributeSyncType?
    let modifyHostsAsyncOverride: ModifyHostsAsyncType?
    let modifyHostsSyncOverride: ModifyHostsSyncType?
    let modifyIdFormatAsyncOverride: ModifyIdFormatAsyncType?
    let modifyIdFormatSyncOverride: ModifyIdFormatSyncType?
    let modifyIdentityIdFormatAsyncOverride: ModifyIdentityIdFormatAsyncType?
    let modifyIdentityIdFormatSyncOverride: ModifyIdentityIdFormatSyncType?
    let modifyImageAttributeAsyncOverride: ModifyImageAttributeAsyncType?
    let modifyImageAttributeSyncOverride: ModifyImageAttributeSyncType?
    let modifyInstanceAttributeAsyncOverride: ModifyInstanceAttributeAsyncType?
    let modifyInstanceAttributeSyncOverride: ModifyInstanceAttributeSyncType?
    let modifyInstanceCapacityReservationAttributesAsyncOverride: ModifyInstanceCapacityReservationAttributesAsyncType?
    let modifyInstanceCapacityReservationAttributesSyncOverride: ModifyInstanceCapacityReservationAttributesSyncType?
    let modifyInstanceCreditSpecificationAsyncOverride: ModifyInstanceCreditSpecificationAsyncType?
    let modifyInstanceCreditSpecificationSyncOverride: ModifyInstanceCreditSpecificationSyncType?
    let modifyInstanceEventStartTimeAsyncOverride: ModifyInstanceEventStartTimeAsyncType?
    let modifyInstanceEventStartTimeSyncOverride: ModifyInstanceEventStartTimeSyncType?
    let modifyInstanceMetadataOptionsAsyncOverride: ModifyInstanceMetadataOptionsAsyncType?
    let modifyInstanceMetadataOptionsSyncOverride: ModifyInstanceMetadataOptionsSyncType?
    let modifyInstancePlacementAsyncOverride: ModifyInstancePlacementAsyncType?
    let modifyInstancePlacementSyncOverride: ModifyInstancePlacementSyncType?
    let modifyLaunchTemplateAsyncOverride: ModifyLaunchTemplateAsyncType?
    let modifyLaunchTemplateSyncOverride: ModifyLaunchTemplateSyncType?
    let modifyManagedPrefixListAsyncOverride: ModifyManagedPrefixListAsyncType?
    let modifyManagedPrefixListSyncOverride: ModifyManagedPrefixListSyncType?
    let modifyNetworkInterfaceAttributeAsyncOverride: ModifyNetworkInterfaceAttributeAsyncType?
    let modifyNetworkInterfaceAttributeSyncOverride: ModifyNetworkInterfaceAttributeSyncType?
    let modifyReservedInstancesAsyncOverride: ModifyReservedInstancesAsyncType?
    let modifyReservedInstancesSyncOverride: ModifyReservedInstancesSyncType?
    let modifySnapshotAttributeAsyncOverride: ModifySnapshotAttributeAsyncType?
    let modifySnapshotAttributeSyncOverride: ModifySnapshotAttributeSyncType?
    let modifySpotFleetRequestAsyncOverride: ModifySpotFleetRequestAsyncType?
    let modifySpotFleetRequestSyncOverride: ModifySpotFleetRequestSyncType?
    let modifySubnetAttributeAsyncOverride: ModifySubnetAttributeAsyncType?
    let modifySubnetAttributeSyncOverride: ModifySubnetAttributeSyncType?
    let modifyTrafficMirrorFilterNetworkServicesAsyncOverride: ModifyTrafficMirrorFilterNetworkServicesAsyncType?
    let modifyTrafficMirrorFilterNetworkServicesSyncOverride: ModifyTrafficMirrorFilterNetworkServicesSyncType?
    let modifyTrafficMirrorFilterRuleAsyncOverride: ModifyTrafficMirrorFilterRuleAsyncType?
    let modifyTrafficMirrorFilterRuleSyncOverride: ModifyTrafficMirrorFilterRuleSyncType?
    let modifyTrafficMirrorSessionAsyncOverride: ModifyTrafficMirrorSessionAsyncType?
    let modifyTrafficMirrorSessionSyncOverride: ModifyTrafficMirrorSessionSyncType?
    let modifyTransitGatewayAsyncOverride: ModifyTransitGatewayAsyncType?
    let modifyTransitGatewaySyncOverride: ModifyTransitGatewaySyncType?
    let modifyTransitGatewayPrefixListReferenceAsyncOverride: ModifyTransitGatewayPrefixListReferenceAsyncType?
    let modifyTransitGatewayPrefixListReferenceSyncOverride: ModifyTransitGatewayPrefixListReferenceSyncType?
    let modifyTransitGatewayVpcAttachmentAsyncOverride: ModifyTransitGatewayVpcAttachmentAsyncType?
    let modifyTransitGatewayVpcAttachmentSyncOverride: ModifyTransitGatewayVpcAttachmentSyncType?
    let modifyVolumeAsyncOverride: ModifyVolumeAsyncType?
    let modifyVolumeSyncOverride: ModifyVolumeSyncType?
    let modifyVolumeAttributeAsyncOverride: ModifyVolumeAttributeAsyncType?
    let modifyVolumeAttributeSyncOverride: ModifyVolumeAttributeSyncType?
    let modifyVpcAttributeAsyncOverride: ModifyVpcAttributeAsyncType?
    let modifyVpcAttributeSyncOverride: ModifyVpcAttributeSyncType?
    let modifyVpcEndpointAsyncOverride: ModifyVpcEndpointAsyncType?
    let modifyVpcEndpointSyncOverride: ModifyVpcEndpointSyncType?
    let modifyVpcEndpointConnectionNotificationAsyncOverride: ModifyVpcEndpointConnectionNotificationAsyncType?
    let modifyVpcEndpointConnectionNotificationSyncOverride: ModifyVpcEndpointConnectionNotificationSyncType?
    let modifyVpcEndpointServiceConfigurationAsyncOverride: ModifyVpcEndpointServiceConfigurationAsyncType?
    let modifyVpcEndpointServiceConfigurationSyncOverride: ModifyVpcEndpointServiceConfigurationSyncType?
    let modifyVpcEndpointServicePermissionsAsyncOverride: ModifyVpcEndpointServicePermissionsAsyncType?
    let modifyVpcEndpointServicePermissionsSyncOverride: ModifyVpcEndpointServicePermissionsSyncType?
    let modifyVpcPeeringConnectionOptionsAsyncOverride: ModifyVpcPeeringConnectionOptionsAsyncType?
    let modifyVpcPeeringConnectionOptionsSyncOverride: ModifyVpcPeeringConnectionOptionsSyncType?
    let modifyVpcTenancyAsyncOverride: ModifyVpcTenancyAsyncType?
    let modifyVpcTenancySyncOverride: ModifyVpcTenancySyncType?
    let modifyVpnConnectionAsyncOverride: ModifyVpnConnectionAsyncType?
    let modifyVpnConnectionSyncOverride: ModifyVpnConnectionSyncType?
    let modifyVpnConnectionOptionsAsyncOverride: ModifyVpnConnectionOptionsAsyncType?
    let modifyVpnConnectionOptionsSyncOverride: ModifyVpnConnectionOptionsSyncType?
    let modifyVpnTunnelCertificateAsyncOverride: ModifyVpnTunnelCertificateAsyncType?
    let modifyVpnTunnelCertificateSyncOverride: ModifyVpnTunnelCertificateSyncType?
    let modifyVpnTunnelOptionsAsyncOverride: ModifyVpnTunnelOptionsAsyncType?
    let modifyVpnTunnelOptionsSyncOverride: ModifyVpnTunnelOptionsSyncType?
    let monitorInstancesAsyncOverride: MonitorInstancesAsyncType?
    let monitorInstancesSyncOverride: MonitorInstancesSyncType?
    let moveAddressToVpcAsyncOverride: MoveAddressToVpcAsyncType?
    let moveAddressToVpcSyncOverride: MoveAddressToVpcSyncType?
    let provisionByoipCidrAsyncOverride: ProvisionByoipCidrAsyncType?
    let provisionByoipCidrSyncOverride: ProvisionByoipCidrSyncType?
    let purchaseHostReservationAsyncOverride: PurchaseHostReservationAsyncType?
    let purchaseHostReservationSyncOverride: PurchaseHostReservationSyncType?
    let purchaseReservedInstancesOfferingAsyncOverride: PurchaseReservedInstancesOfferingAsyncType?
    let purchaseReservedInstancesOfferingSyncOverride: PurchaseReservedInstancesOfferingSyncType?
    let purchaseScheduledInstancesAsyncOverride: PurchaseScheduledInstancesAsyncType?
    let purchaseScheduledInstancesSyncOverride: PurchaseScheduledInstancesSyncType?
    let rebootInstancesAsyncOverride: RebootInstancesAsyncType?
    let rebootInstancesSyncOverride: RebootInstancesSyncType?
    let registerImageAsyncOverride: RegisterImageAsyncType?
    let registerImageSyncOverride: RegisterImageSyncType?
    let registerInstanceEventNotificationAttributesAsyncOverride: RegisterInstanceEventNotificationAttributesAsyncType?
    let registerInstanceEventNotificationAttributesSyncOverride: RegisterInstanceEventNotificationAttributesSyncType?
    let registerTransitGatewayMulticastGroupMembersAsyncOverride: RegisterTransitGatewayMulticastGroupMembersAsyncType?
    let registerTransitGatewayMulticastGroupMembersSyncOverride: RegisterTransitGatewayMulticastGroupMembersSyncType?
    let registerTransitGatewayMulticastGroupSourcesAsyncOverride: RegisterTransitGatewayMulticastGroupSourcesAsyncType?
    let registerTransitGatewayMulticastGroupSourcesSyncOverride: RegisterTransitGatewayMulticastGroupSourcesSyncType?
    let rejectTransitGatewayMulticastDomainAssociationsAsyncOverride: RejectTransitGatewayMulticastDomainAssociationsAsyncType?
    let rejectTransitGatewayMulticastDomainAssociationsSyncOverride: RejectTransitGatewayMulticastDomainAssociationsSyncType?
    let rejectTransitGatewayPeeringAttachmentAsyncOverride: RejectTransitGatewayPeeringAttachmentAsyncType?
    let rejectTransitGatewayPeeringAttachmentSyncOverride: RejectTransitGatewayPeeringAttachmentSyncType?
    let rejectTransitGatewayVpcAttachmentAsyncOverride: RejectTransitGatewayVpcAttachmentAsyncType?
    let rejectTransitGatewayVpcAttachmentSyncOverride: RejectTransitGatewayVpcAttachmentSyncType?
    let rejectVpcEndpointConnectionsAsyncOverride: RejectVpcEndpointConnectionsAsyncType?
    let rejectVpcEndpointConnectionsSyncOverride: RejectVpcEndpointConnectionsSyncType?
    let rejectVpcPeeringConnectionAsyncOverride: RejectVpcPeeringConnectionAsyncType?
    let rejectVpcPeeringConnectionSyncOverride: RejectVpcPeeringConnectionSyncType?
    let releaseAddressAsyncOverride: ReleaseAddressAsyncType?
    let releaseAddressSyncOverride: ReleaseAddressSyncType?
    let releaseHostsAsyncOverride: ReleaseHostsAsyncType?
    let releaseHostsSyncOverride: ReleaseHostsSyncType?
    let replaceIamInstanceProfileAssociationAsyncOverride: ReplaceIamInstanceProfileAssociationAsyncType?
    let replaceIamInstanceProfileAssociationSyncOverride: ReplaceIamInstanceProfileAssociationSyncType?
    let replaceNetworkAclAssociationAsyncOverride: ReplaceNetworkAclAssociationAsyncType?
    let replaceNetworkAclAssociationSyncOverride: ReplaceNetworkAclAssociationSyncType?
    let replaceNetworkAclEntryAsyncOverride: ReplaceNetworkAclEntryAsyncType?
    let replaceNetworkAclEntrySyncOverride: ReplaceNetworkAclEntrySyncType?
    let replaceRouteAsyncOverride: ReplaceRouteAsyncType?
    let replaceRouteSyncOverride: ReplaceRouteSyncType?
    let replaceRouteTableAssociationAsyncOverride: ReplaceRouteTableAssociationAsyncType?
    let replaceRouteTableAssociationSyncOverride: ReplaceRouteTableAssociationSyncType?
    let replaceTransitGatewayRouteAsyncOverride: ReplaceTransitGatewayRouteAsyncType?
    let replaceTransitGatewayRouteSyncOverride: ReplaceTransitGatewayRouteSyncType?
    let reportInstanceStatusAsyncOverride: ReportInstanceStatusAsyncType?
    let reportInstanceStatusSyncOverride: ReportInstanceStatusSyncType?
    let requestSpotFleetAsyncOverride: RequestSpotFleetAsyncType?
    let requestSpotFleetSyncOverride: RequestSpotFleetSyncType?
    let requestSpotInstancesAsyncOverride: RequestSpotInstancesAsyncType?
    let requestSpotInstancesSyncOverride: RequestSpotInstancesSyncType?
    let resetAddressAttributeAsyncOverride: ResetAddressAttributeAsyncType?
    let resetAddressAttributeSyncOverride: ResetAddressAttributeSyncType?
    let resetEbsDefaultKmsKeyIdAsyncOverride: ResetEbsDefaultKmsKeyIdAsyncType?
    let resetEbsDefaultKmsKeyIdSyncOverride: ResetEbsDefaultKmsKeyIdSyncType?
    let resetFpgaImageAttributeAsyncOverride: ResetFpgaImageAttributeAsyncType?
    let resetFpgaImageAttributeSyncOverride: ResetFpgaImageAttributeSyncType?
    let resetImageAttributeAsyncOverride: ResetImageAttributeAsyncType?
    let resetImageAttributeSyncOverride: ResetImageAttributeSyncType?
    let resetInstanceAttributeAsyncOverride: ResetInstanceAttributeAsyncType?
    let resetInstanceAttributeSyncOverride: ResetInstanceAttributeSyncType?
    let resetNetworkInterfaceAttributeAsyncOverride: ResetNetworkInterfaceAttributeAsyncType?
    let resetNetworkInterfaceAttributeSyncOverride: ResetNetworkInterfaceAttributeSyncType?
    let resetSnapshotAttributeAsyncOverride: ResetSnapshotAttributeAsyncType?
    let resetSnapshotAttributeSyncOverride: ResetSnapshotAttributeSyncType?
    let restoreAddressToClassicAsyncOverride: RestoreAddressToClassicAsyncType?
    let restoreAddressToClassicSyncOverride: RestoreAddressToClassicSyncType?
    let restoreManagedPrefixListVersionAsyncOverride: RestoreManagedPrefixListVersionAsyncType?
    let restoreManagedPrefixListVersionSyncOverride: RestoreManagedPrefixListVersionSyncType?
    let revokeClientVpnIngressAsyncOverride: RevokeClientVpnIngressAsyncType?
    let revokeClientVpnIngressSyncOverride: RevokeClientVpnIngressSyncType?
    let revokeSecurityGroupEgressAsyncOverride: RevokeSecurityGroupEgressAsyncType?
    let revokeSecurityGroupEgressSyncOverride: RevokeSecurityGroupEgressSyncType?
    let revokeSecurityGroupIngressAsyncOverride: RevokeSecurityGroupIngressAsyncType?
    let revokeSecurityGroupIngressSyncOverride: RevokeSecurityGroupIngressSyncType?
    let runInstancesAsyncOverride: RunInstancesAsyncType?
    let runInstancesSyncOverride: RunInstancesSyncType?
    let runScheduledInstancesAsyncOverride: RunScheduledInstancesAsyncType?
    let runScheduledInstancesSyncOverride: RunScheduledInstancesSyncType?
    let searchLocalGatewayRoutesAsyncOverride: SearchLocalGatewayRoutesAsyncType?
    let searchLocalGatewayRoutesSyncOverride: SearchLocalGatewayRoutesSyncType?
    let searchTransitGatewayMulticastGroupsAsyncOverride: SearchTransitGatewayMulticastGroupsAsyncType?
    let searchTransitGatewayMulticastGroupsSyncOverride: SearchTransitGatewayMulticastGroupsSyncType?
    let searchTransitGatewayRoutesAsyncOverride: SearchTransitGatewayRoutesAsyncType?
    let searchTransitGatewayRoutesSyncOverride: SearchTransitGatewayRoutesSyncType?
    let sendDiagnosticInterruptAsyncOverride: SendDiagnosticInterruptAsyncType?
    let sendDiagnosticInterruptSyncOverride: SendDiagnosticInterruptSyncType?
    let startInstancesAsyncOverride: StartInstancesAsyncType?
    let startInstancesSyncOverride: StartInstancesSyncType?
    let startNetworkInsightsAnalysisAsyncOverride: StartNetworkInsightsAnalysisAsyncType?
    let startNetworkInsightsAnalysisSyncOverride: StartNetworkInsightsAnalysisSyncType?
    let startVpcEndpointServicePrivateDnsVerificationAsyncOverride: StartVpcEndpointServicePrivateDnsVerificationAsyncType?
    let startVpcEndpointServicePrivateDnsVerificationSyncOverride: StartVpcEndpointServicePrivateDnsVerificationSyncType?
    let stopInstancesAsyncOverride: StopInstancesAsyncType?
    let stopInstancesSyncOverride: StopInstancesSyncType?
    let terminateClientVpnConnectionsAsyncOverride: TerminateClientVpnConnectionsAsyncType?
    let terminateClientVpnConnectionsSyncOverride: TerminateClientVpnConnectionsSyncType?
    let terminateInstancesAsyncOverride: TerminateInstancesAsyncType?
    let terminateInstancesSyncOverride: TerminateInstancesSyncType?
    let unassignIpv6AddressesAsyncOverride: UnassignIpv6AddressesAsyncType?
    let unassignIpv6AddressesSyncOverride: UnassignIpv6AddressesSyncType?
    let unassignPrivateIpAddressesAsyncOverride: UnassignPrivateIpAddressesAsyncType?
    let unassignPrivateIpAddressesSyncOverride: UnassignPrivateIpAddressesSyncType?
    let unmonitorInstancesAsyncOverride: UnmonitorInstancesAsyncType?
    let unmonitorInstancesSyncOverride: UnmonitorInstancesSyncType?
    let updateSecurityGroupRuleDescriptionsEgressAsyncOverride: UpdateSecurityGroupRuleDescriptionsEgressAsyncType?
    let updateSecurityGroupRuleDescriptionsEgressSyncOverride: UpdateSecurityGroupRuleDescriptionsEgressSyncType?
    let updateSecurityGroupRuleDescriptionsIngressAsyncOverride: UpdateSecurityGroupRuleDescriptionsIngressAsyncType?
    let updateSecurityGroupRuleDescriptionsIngressSyncOverride: UpdateSecurityGroupRuleDescriptionsIngressSyncType?
    let withdrawByoipCidrAsyncOverride: WithdrawByoipCidrAsyncType?
    let withdrawByoipCidrSyncOverride: WithdrawByoipCidrSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: ElasticComputeCloudError,
            acceptReservedInstancesExchangeQuoteAsync: AcceptReservedInstancesExchangeQuoteAsyncType? = nil,
            acceptReservedInstancesExchangeQuoteSync: AcceptReservedInstancesExchangeQuoteSyncType? = nil,
            acceptTransitGatewayMulticastDomainAssociationsAsync: AcceptTransitGatewayMulticastDomainAssociationsAsyncType? = nil,
            acceptTransitGatewayMulticastDomainAssociationsSync: AcceptTransitGatewayMulticastDomainAssociationsSyncType? = nil,
            acceptTransitGatewayPeeringAttachmentAsync: AcceptTransitGatewayPeeringAttachmentAsyncType? = nil,
            acceptTransitGatewayPeeringAttachmentSync: AcceptTransitGatewayPeeringAttachmentSyncType? = nil,
            acceptTransitGatewayVpcAttachmentAsync: AcceptTransitGatewayVpcAttachmentAsyncType? = nil,
            acceptTransitGatewayVpcAttachmentSync: AcceptTransitGatewayVpcAttachmentSyncType? = nil,
            acceptVpcEndpointConnectionsAsync: AcceptVpcEndpointConnectionsAsyncType? = nil,
            acceptVpcEndpointConnectionsSync: AcceptVpcEndpointConnectionsSyncType? = nil,
            acceptVpcPeeringConnectionAsync: AcceptVpcPeeringConnectionAsyncType? = nil,
            acceptVpcPeeringConnectionSync: AcceptVpcPeeringConnectionSyncType? = nil,
            advertiseByoipCidrAsync: AdvertiseByoipCidrAsyncType? = nil,
            advertiseByoipCidrSync: AdvertiseByoipCidrSyncType? = nil,
            allocateAddressAsync: AllocateAddressAsyncType? = nil,
            allocateAddressSync: AllocateAddressSyncType? = nil,
            allocateHostsAsync: AllocateHostsAsyncType? = nil,
            allocateHostsSync: AllocateHostsSyncType? = nil,
            applySecurityGroupsToClientVpnTargetNetworkAsync: ApplySecurityGroupsToClientVpnTargetNetworkAsyncType? = nil,
            applySecurityGroupsToClientVpnTargetNetworkSync: ApplySecurityGroupsToClientVpnTargetNetworkSyncType? = nil,
            assignIpv6AddressesAsync: AssignIpv6AddressesAsyncType? = nil,
            assignIpv6AddressesSync: AssignIpv6AddressesSyncType? = nil,
            assignPrivateIpAddressesAsync: AssignPrivateIpAddressesAsyncType? = nil,
            assignPrivateIpAddressesSync: AssignPrivateIpAddressesSyncType? = nil,
            associateAddressAsync: AssociateAddressAsyncType? = nil,
            associateAddressSync: AssociateAddressSyncType? = nil,
            associateClientVpnTargetNetworkAsync: AssociateClientVpnTargetNetworkAsyncType? = nil,
            associateClientVpnTargetNetworkSync: AssociateClientVpnTargetNetworkSyncType? = nil,
            associateDhcpOptionsAsync: AssociateDhcpOptionsAsyncType? = nil,
            associateDhcpOptionsSync: AssociateDhcpOptionsSyncType? = nil,
            associateEnclaveCertificateIamRoleAsync: AssociateEnclaveCertificateIamRoleAsyncType? = nil,
            associateEnclaveCertificateIamRoleSync: AssociateEnclaveCertificateIamRoleSyncType? = nil,
            associateIamInstanceProfileAsync: AssociateIamInstanceProfileAsyncType? = nil,
            associateIamInstanceProfileSync: AssociateIamInstanceProfileSyncType? = nil,
            associateRouteTableAsync: AssociateRouteTableAsyncType? = nil,
            associateRouteTableSync: AssociateRouteTableSyncType? = nil,
            associateSubnetCidrBlockAsync: AssociateSubnetCidrBlockAsyncType? = nil,
            associateSubnetCidrBlockSync: AssociateSubnetCidrBlockSyncType? = nil,
            associateTransitGatewayMulticastDomainAsync: AssociateTransitGatewayMulticastDomainAsyncType? = nil,
            associateTransitGatewayMulticastDomainSync: AssociateTransitGatewayMulticastDomainSyncType? = nil,
            associateTransitGatewayRouteTableAsync: AssociateTransitGatewayRouteTableAsyncType? = nil,
            associateTransitGatewayRouteTableSync: AssociateTransitGatewayRouteTableSyncType? = nil,
            associateVpcCidrBlockAsync: AssociateVpcCidrBlockAsyncType? = nil,
            associateVpcCidrBlockSync: AssociateVpcCidrBlockSyncType? = nil,
            attachClassicLinkVpcAsync: AttachClassicLinkVpcAsyncType? = nil,
            attachClassicLinkVpcSync: AttachClassicLinkVpcSyncType? = nil,
            attachInternetGatewayAsync: AttachInternetGatewayAsyncType? = nil,
            attachInternetGatewaySync: AttachInternetGatewaySyncType? = nil,
            attachNetworkInterfaceAsync: AttachNetworkInterfaceAsyncType? = nil,
            attachNetworkInterfaceSync: AttachNetworkInterfaceSyncType? = nil,
            attachVolumeAsync: AttachVolumeAsyncType? = nil,
            attachVolumeSync: AttachVolumeSyncType? = nil,
            attachVpnGatewayAsync: AttachVpnGatewayAsyncType? = nil,
            attachVpnGatewaySync: AttachVpnGatewaySyncType? = nil,
            authorizeClientVpnIngressAsync: AuthorizeClientVpnIngressAsyncType? = nil,
            authorizeClientVpnIngressSync: AuthorizeClientVpnIngressSyncType? = nil,
            authorizeSecurityGroupEgressAsync: AuthorizeSecurityGroupEgressAsyncType? = nil,
            authorizeSecurityGroupEgressSync: AuthorizeSecurityGroupEgressSyncType? = nil,
            authorizeSecurityGroupIngressAsync: AuthorizeSecurityGroupIngressAsyncType? = nil,
            authorizeSecurityGroupIngressSync: AuthorizeSecurityGroupIngressSyncType? = nil,
            bundleInstanceAsync: BundleInstanceAsyncType? = nil,
            bundleInstanceSync: BundleInstanceSyncType? = nil,
            cancelBundleTaskAsync: CancelBundleTaskAsyncType? = nil,
            cancelBundleTaskSync: CancelBundleTaskSyncType? = nil,
            cancelCapacityReservationAsync: CancelCapacityReservationAsyncType? = nil,
            cancelCapacityReservationSync: CancelCapacityReservationSyncType? = nil,
            cancelConversionTaskAsync: CancelConversionTaskAsyncType? = nil,
            cancelConversionTaskSync: CancelConversionTaskSyncType? = nil,
            cancelExportTaskAsync: CancelExportTaskAsyncType? = nil,
            cancelExportTaskSync: CancelExportTaskSyncType? = nil,
            cancelImportTaskAsync: CancelImportTaskAsyncType? = nil,
            cancelImportTaskSync: CancelImportTaskSyncType? = nil,
            cancelReservedInstancesListingAsync: CancelReservedInstancesListingAsyncType? = nil,
            cancelReservedInstancesListingSync: CancelReservedInstancesListingSyncType? = nil,
            cancelSpotFleetRequestsAsync: CancelSpotFleetRequestsAsyncType? = nil,
            cancelSpotFleetRequestsSync: CancelSpotFleetRequestsSyncType? = nil,
            cancelSpotInstanceRequestsAsync: CancelSpotInstanceRequestsAsyncType? = nil,
            cancelSpotInstanceRequestsSync: CancelSpotInstanceRequestsSyncType? = nil,
            confirmProductInstanceAsync: ConfirmProductInstanceAsyncType? = nil,
            confirmProductInstanceSync: ConfirmProductInstanceSyncType? = nil,
            copyFpgaImageAsync: CopyFpgaImageAsyncType? = nil,
            copyFpgaImageSync: CopyFpgaImageSyncType? = nil,
            copyImageAsync: CopyImageAsyncType? = nil,
            copyImageSync: CopyImageSyncType? = nil,
            copySnapshotAsync: CopySnapshotAsyncType? = nil,
            copySnapshotSync: CopySnapshotSyncType? = nil,
            createCapacityReservationAsync: CreateCapacityReservationAsyncType? = nil,
            createCapacityReservationSync: CreateCapacityReservationSyncType? = nil,
            createCarrierGatewayAsync: CreateCarrierGatewayAsyncType? = nil,
            createCarrierGatewaySync: CreateCarrierGatewaySyncType? = nil,
            createClientVpnEndpointAsync: CreateClientVpnEndpointAsyncType? = nil,
            createClientVpnEndpointSync: CreateClientVpnEndpointSyncType? = nil,
            createClientVpnRouteAsync: CreateClientVpnRouteAsyncType? = nil,
            createClientVpnRouteSync: CreateClientVpnRouteSyncType? = nil,
            createCustomerGatewayAsync: CreateCustomerGatewayAsyncType? = nil,
            createCustomerGatewaySync: CreateCustomerGatewaySyncType? = nil,
            createDefaultSubnetAsync: CreateDefaultSubnetAsyncType? = nil,
            createDefaultSubnetSync: CreateDefaultSubnetSyncType? = nil,
            createDefaultVpcAsync: CreateDefaultVpcAsyncType? = nil,
            createDefaultVpcSync: CreateDefaultVpcSyncType? = nil,
            createDhcpOptionsAsync: CreateDhcpOptionsAsyncType? = nil,
            createDhcpOptionsSync: CreateDhcpOptionsSyncType? = nil,
            createEgressOnlyInternetGatewayAsync: CreateEgressOnlyInternetGatewayAsyncType? = nil,
            createEgressOnlyInternetGatewaySync: CreateEgressOnlyInternetGatewaySyncType? = nil,
            createFleetAsync: CreateFleetAsyncType? = nil,
            createFleetSync: CreateFleetSyncType? = nil,
            createFlowLogsAsync: CreateFlowLogsAsyncType? = nil,
            createFlowLogsSync: CreateFlowLogsSyncType? = nil,
            createFpgaImageAsync: CreateFpgaImageAsyncType? = nil,
            createFpgaImageSync: CreateFpgaImageSyncType? = nil,
            createImageAsync: CreateImageAsyncType? = nil,
            createImageSync: CreateImageSyncType? = nil,
            createInstanceExportTaskAsync: CreateInstanceExportTaskAsyncType? = nil,
            createInstanceExportTaskSync: CreateInstanceExportTaskSyncType? = nil,
            createInternetGatewayAsync: CreateInternetGatewayAsyncType? = nil,
            createInternetGatewaySync: CreateInternetGatewaySyncType? = nil,
            createKeyPairAsync: CreateKeyPairAsyncType? = nil,
            createKeyPairSync: CreateKeyPairSyncType? = nil,
            createLaunchTemplateAsync: CreateLaunchTemplateAsyncType? = nil,
            createLaunchTemplateSync: CreateLaunchTemplateSyncType? = nil,
            createLaunchTemplateVersionAsync: CreateLaunchTemplateVersionAsyncType? = nil,
            createLaunchTemplateVersionSync: CreateLaunchTemplateVersionSyncType? = nil,
            createLocalGatewayRouteAsync: CreateLocalGatewayRouteAsyncType? = nil,
            createLocalGatewayRouteSync: CreateLocalGatewayRouteSyncType? = nil,
            createLocalGatewayRouteTableVpcAssociationAsync: CreateLocalGatewayRouteTableVpcAssociationAsyncType? = nil,
            createLocalGatewayRouteTableVpcAssociationSync: CreateLocalGatewayRouteTableVpcAssociationSyncType? = nil,
            createManagedPrefixListAsync: CreateManagedPrefixListAsyncType? = nil,
            createManagedPrefixListSync: CreateManagedPrefixListSyncType? = nil,
            createNatGatewayAsync: CreateNatGatewayAsyncType? = nil,
            createNatGatewaySync: CreateNatGatewaySyncType? = nil,
            createNetworkAclAsync: CreateNetworkAclAsyncType? = nil,
            createNetworkAclSync: CreateNetworkAclSyncType? = nil,
            createNetworkAclEntryAsync: CreateNetworkAclEntryAsyncType? = nil,
            createNetworkAclEntrySync: CreateNetworkAclEntrySyncType? = nil,
            createNetworkInsightsPathAsync: CreateNetworkInsightsPathAsyncType? = nil,
            createNetworkInsightsPathSync: CreateNetworkInsightsPathSyncType? = nil,
            createNetworkInterfaceAsync: CreateNetworkInterfaceAsyncType? = nil,
            createNetworkInterfaceSync: CreateNetworkInterfaceSyncType? = nil,
            createNetworkInterfacePermissionAsync: CreateNetworkInterfacePermissionAsyncType? = nil,
            createNetworkInterfacePermissionSync: CreateNetworkInterfacePermissionSyncType? = nil,
            createPlacementGroupAsync: CreatePlacementGroupAsyncType? = nil,
            createPlacementGroupSync: CreatePlacementGroupSyncType? = nil,
            createReservedInstancesListingAsync: CreateReservedInstancesListingAsyncType? = nil,
            createReservedInstancesListingSync: CreateReservedInstancesListingSyncType? = nil,
            createRouteAsync: CreateRouteAsyncType? = nil,
            createRouteSync: CreateRouteSyncType? = nil,
            createRouteTableAsync: CreateRouteTableAsyncType? = nil,
            createRouteTableSync: CreateRouteTableSyncType? = nil,
            createSecurityGroupAsync: CreateSecurityGroupAsyncType? = nil,
            createSecurityGroupSync: CreateSecurityGroupSyncType? = nil,
            createSnapshotAsync: CreateSnapshotAsyncType? = nil,
            createSnapshotSync: CreateSnapshotSyncType? = nil,
            createSnapshotsAsync: CreateSnapshotsAsyncType? = nil,
            createSnapshotsSync: CreateSnapshotsSyncType? = nil,
            createSpotDatafeedSubscriptionAsync: CreateSpotDatafeedSubscriptionAsyncType? = nil,
            createSpotDatafeedSubscriptionSync: CreateSpotDatafeedSubscriptionSyncType? = nil,
            createSubnetAsync: CreateSubnetAsyncType? = nil,
            createSubnetSync: CreateSubnetSyncType? = nil,
            createTagsAsync: CreateTagsAsyncType? = nil,
            createTagsSync: CreateTagsSyncType? = nil,
            createTrafficMirrorFilterAsync: CreateTrafficMirrorFilterAsyncType? = nil,
            createTrafficMirrorFilterSync: CreateTrafficMirrorFilterSyncType? = nil,
            createTrafficMirrorFilterRuleAsync: CreateTrafficMirrorFilterRuleAsyncType? = nil,
            createTrafficMirrorFilterRuleSync: CreateTrafficMirrorFilterRuleSyncType? = nil,
            createTrafficMirrorSessionAsync: CreateTrafficMirrorSessionAsyncType? = nil,
            createTrafficMirrorSessionSync: CreateTrafficMirrorSessionSyncType? = nil,
            createTrafficMirrorTargetAsync: CreateTrafficMirrorTargetAsyncType? = nil,
            createTrafficMirrorTargetSync: CreateTrafficMirrorTargetSyncType? = nil,
            createTransitGatewayAsync: CreateTransitGatewayAsyncType? = nil,
            createTransitGatewaySync: CreateTransitGatewaySyncType? = nil,
            createTransitGatewayConnectAsync: CreateTransitGatewayConnectAsyncType? = nil,
            createTransitGatewayConnectSync: CreateTransitGatewayConnectSyncType? = nil,
            createTransitGatewayConnectPeerAsync: CreateTransitGatewayConnectPeerAsyncType? = nil,
            createTransitGatewayConnectPeerSync: CreateTransitGatewayConnectPeerSyncType? = nil,
            createTransitGatewayMulticastDomainAsync: CreateTransitGatewayMulticastDomainAsyncType? = nil,
            createTransitGatewayMulticastDomainSync: CreateTransitGatewayMulticastDomainSyncType? = nil,
            createTransitGatewayPeeringAttachmentAsync: CreateTransitGatewayPeeringAttachmentAsyncType? = nil,
            createTransitGatewayPeeringAttachmentSync: CreateTransitGatewayPeeringAttachmentSyncType? = nil,
            createTransitGatewayPrefixListReferenceAsync: CreateTransitGatewayPrefixListReferenceAsyncType? = nil,
            createTransitGatewayPrefixListReferenceSync: CreateTransitGatewayPrefixListReferenceSyncType? = nil,
            createTransitGatewayRouteAsync: CreateTransitGatewayRouteAsyncType? = nil,
            createTransitGatewayRouteSync: CreateTransitGatewayRouteSyncType? = nil,
            createTransitGatewayRouteTableAsync: CreateTransitGatewayRouteTableAsyncType? = nil,
            createTransitGatewayRouteTableSync: CreateTransitGatewayRouteTableSyncType? = nil,
            createTransitGatewayVpcAttachmentAsync: CreateTransitGatewayVpcAttachmentAsyncType? = nil,
            createTransitGatewayVpcAttachmentSync: CreateTransitGatewayVpcAttachmentSyncType? = nil,
            createVolumeAsync: CreateVolumeAsyncType? = nil,
            createVolumeSync: CreateVolumeSyncType? = nil,
            createVpcAsync: CreateVpcAsyncType? = nil,
            createVpcSync: CreateVpcSyncType? = nil,
            createVpcEndpointAsync: CreateVpcEndpointAsyncType? = nil,
            createVpcEndpointSync: CreateVpcEndpointSyncType? = nil,
            createVpcEndpointConnectionNotificationAsync: CreateVpcEndpointConnectionNotificationAsyncType? = nil,
            createVpcEndpointConnectionNotificationSync: CreateVpcEndpointConnectionNotificationSyncType? = nil,
            createVpcEndpointServiceConfigurationAsync: CreateVpcEndpointServiceConfigurationAsyncType? = nil,
            createVpcEndpointServiceConfigurationSync: CreateVpcEndpointServiceConfigurationSyncType? = nil,
            createVpcPeeringConnectionAsync: CreateVpcPeeringConnectionAsyncType? = nil,
            createVpcPeeringConnectionSync: CreateVpcPeeringConnectionSyncType? = nil,
            createVpnConnectionAsync: CreateVpnConnectionAsyncType? = nil,
            createVpnConnectionSync: CreateVpnConnectionSyncType? = nil,
            createVpnConnectionRouteAsync: CreateVpnConnectionRouteAsyncType? = nil,
            createVpnConnectionRouteSync: CreateVpnConnectionRouteSyncType? = nil,
            createVpnGatewayAsync: CreateVpnGatewayAsyncType? = nil,
            createVpnGatewaySync: CreateVpnGatewaySyncType? = nil,
            deleteCarrierGatewayAsync: DeleteCarrierGatewayAsyncType? = nil,
            deleteCarrierGatewaySync: DeleteCarrierGatewaySyncType? = nil,
            deleteClientVpnEndpointAsync: DeleteClientVpnEndpointAsyncType? = nil,
            deleteClientVpnEndpointSync: DeleteClientVpnEndpointSyncType? = nil,
            deleteClientVpnRouteAsync: DeleteClientVpnRouteAsyncType? = nil,
            deleteClientVpnRouteSync: DeleteClientVpnRouteSyncType? = nil,
            deleteCustomerGatewayAsync: DeleteCustomerGatewayAsyncType? = nil,
            deleteCustomerGatewaySync: DeleteCustomerGatewaySyncType? = nil,
            deleteDhcpOptionsAsync: DeleteDhcpOptionsAsyncType? = nil,
            deleteDhcpOptionsSync: DeleteDhcpOptionsSyncType? = nil,
            deleteEgressOnlyInternetGatewayAsync: DeleteEgressOnlyInternetGatewayAsyncType? = nil,
            deleteEgressOnlyInternetGatewaySync: DeleteEgressOnlyInternetGatewaySyncType? = nil,
            deleteFleetsAsync: DeleteFleetsAsyncType? = nil,
            deleteFleetsSync: DeleteFleetsSyncType? = nil,
            deleteFlowLogsAsync: DeleteFlowLogsAsyncType? = nil,
            deleteFlowLogsSync: DeleteFlowLogsSyncType? = nil,
            deleteFpgaImageAsync: DeleteFpgaImageAsyncType? = nil,
            deleteFpgaImageSync: DeleteFpgaImageSyncType? = nil,
            deleteInternetGatewayAsync: DeleteInternetGatewayAsyncType? = nil,
            deleteInternetGatewaySync: DeleteInternetGatewaySyncType? = nil,
            deleteKeyPairAsync: DeleteKeyPairAsyncType? = nil,
            deleteKeyPairSync: DeleteKeyPairSyncType? = nil,
            deleteLaunchTemplateAsync: DeleteLaunchTemplateAsyncType? = nil,
            deleteLaunchTemplateSync: DeleteLaunchTemplateSyncType? = nil,
            deleteLaunchTemplateVersionsAsync: DeleteLaunchTemplateVersionsAsyncType? = nil,
            deleteLaunchTemplateVersionsSync: DeleteLaunchTemplateVersionsSyncType? = nil,
            deleteLocalGatewayRouteAsync: DeleteLocalGatewayRouteAsyncType? = nil,
            deleteLocalGatewayRouteSync: DeleteLocalGatewayRouteSyncType? = nil,
            deleteLocalGatewayRouteTableVpcAssociationAsync: DeleteLocalGatewayRouteTableVpcAssociationAsyncType? = nil,
            deleteLocalGatewayRouteTableVpcAssociationSync: DeleteLocalGatewayRouteTableVpcAssociationSyncType? = nil,
            deleteManagedPrefixListAsync: DeleteManagedPrefixListAsyncType? = nil,
            deleteManagedPrefixListSync: DeleteManagedPrefixListSyncType? = nil,
            deleteNatGatewayAsync: DeleteNatGatewayAsyncType? = nil,
            deleteNatGatewaySync: DeleteNatGatewaySyncType? = nil,
            deleteNetworkAclAsync: DeleteNetworkAclAsyncType? = nil,
            deleteNetworkAclSync: DeleteNetworkAclSyncType? = nil,
            deleteNetworkAclEntryAsync: DeleteNetworkAclEntryAsyncType? = nil,
            deleteNetworkAclEntrySync: DeleteNetworkAclEntrySyncType? = nil,
            deleteNetworkInsightsAnalysisAsync: DeleteNetworkInsightsAnalysisAsyncType? = nil,
            deleteNetworkInsightsAnalysisSync: DeleteNetworkInsightsAnalysisSyncType? = nil,
            deleteNetworkInsightsPathAsync: DeleteNetworkInsightsPathAsyncType? = nil,
            deleteNetworkInsightsPathSync: DeleteNetworkInsightsPathSyncType? = nil,
            deleteNetworkInterfaceAsync: DeleteNetworkInterfaceAsyncType? = nil,
            deleteNetworkInterfaceSync: DeleteNetworkInterfaceSyncType? = nil,
            deleteNetworkInterfacePermissionAsync: DeleteNetworkInterfacePermissionAsyncType? = nil,
            deleteNetworkInterfacePermissionSync: DeleteNetworkInterfacePermissionSyncType? = nil,
            deletePlacementGroupAsync: DeletePlacementGroupAsyncType? = nil,
            deletePlacementGroupSync: DeletePlacementGroupSyncType? = nil,
            deleteQueuedReservedInstancesAsync: DeleteQueuedReservedInstancesAsyncType? = nil,
            deleteQueuedReservedInstancesSync: DeleteQueuedReservedInstancesSyncType? = nil,
            deleteRouteAsync: DeleteRouteAsyncType? = nil,
            deleteRouteSync: DeleteRouteSyncType? = nil,
            deleteRouteTableAsync: DeleteRouteTableAsyncType? = nil,
            deleteRouteTableSync: DeleteRouteTableSyncType? = nil,
            deleteSecurityGroupAsync: DeleteSecurityGroupAsyncType? = nil,
            deleteSecurityGroupSync: DeleteSecurityGroupSyncType? = nil,
            deleteSnapshotAsync: DeleteSnapshotAsyncType? = nil,
            deleteSnapshotSync: DeleteSnapshotSyncType? = nil,
            deleteSpotDatafeedSubscriptionAsync: DeleteSpotDatafeedSubscriptionAsyncType? = nil,
            deleteSpotDatafeedSubscriptionSync: DeleteSpotDatafeedSubscriptionSyncType? = nil,
            deleteSubnetAsync: DeleteSubnetAsyncType? = nil,
            deleteSubnetSync: DeleteSubnetSyncType? = nil,
            deleteTagsAsync: DeleteTagsAsyncType? = nil,
            deleteTagsSync: DeleteTagsSyncType? = nil,
            deleteTrafficMirrorFilterAsync: DeleteTrafficMirrorFilterAsyncType? = nil,
            deleteTrafficMirrorFilterSync: DeleteTrafficMirrorFilterSyncType? = nil,
            deleteTrafficMirrorFilterRuleAsync: DeleteTrafficMirrorFilterRuleAsyncType? = nil,
            deleteTrafficMirrorFilterRuleSync: DeleteTrafficMirrorFilterRuleSyncType? = nil,
            deleteTrafficMirrorSessionAsync: DeleteTrafficMirrorSessionAsyncType? = nil,
            deleteTrafficMirrorSessionSync: DeleteTrafficMirrorSessionSyncType? = nil,
            deleteTrafficMirrorTargetAsync: DeleteTrafficMirrorTargetAsyncType? = nil,
            deleteTrafficMirrorTargetSync: DeleteTrafficMirrorTargetSyncType? = nil,
            deleteTransitGatewayAsync: DeleteTransitGatewayAsyncType? = nil,
            deleteTransitGatewaySync: DeleteTransitGatewaySyncType? = nil,
            deleteTransitGatewayConnectAsync: DeleteTransitGatewayConnectAsyncType? = nil,
            deleteTransitGatewayConnectSync: DeleteTransitGatewayConnectSyncType? = nil,
            deleteTransitGatewayConnectPeerAsync: DeleteTransitGatewayConnectPeerAsyncType? = nil,
            deleteTransitGatewayConnectPeerSync: DeleteTransitGatewayConnectPeerSyncType? = nil,
            deleteTransitGatewayMulticastDomainAsync: DeleteTransitGatewayMulticastDomainAsyncType? = nil,
            deleteTransitGatewayMulticastDomainSync: DeleteTransitGatewayMulticastDomainSyncType? = nil,
            deleteTransitGatewayPeeringAttachmentAsync: DeleteTransitGatewayPeeringAttachmentAsyncType? = nil,
            deleteTransitGatewayPeeringAttachmentSync: DeleteTransitGatewayPeeringAttachmentSyncType? = nil,
            deleteTransitGatewayPrefixListReferenceAsync: DeleteTransitGatewayPrefixListReferenceAsyncType? = nil,
            deleteTransitGatewayPrefixListReferenceSync: DeleteTransitGatewayPrefixListReferenceSyncType? = nil,
            deleteTransitGatewayRouteAsync: DeleteTransitGatewayRouteAsyncType? = nil,
            deleteTransitGatewayRouteSync: DeleteTransitGatewayRouteSyncType? = nil,
            deleteTransitGatewayRouteTableAsync: DeleteTransitGatewayRouteTableAsyncType? = nil,
            deleteTransitGatewayRouteTableSync: DeleteTransitGatewayRouteTableSyncType? = nil,
            deleteTransitGatewayVpcAttachmentAsync: DeleteTransitGatewayVpcAttachmentAsyncType? = nil,
            deleteTransitGatewayVpcAttachmentSync: DeleteTransitGatewayVpcAttachmentSyncType? = nil,
            deleteVolumeAsync: DeleteVolumeAsyncType? = nil,
            deleteVolumeSync: DeleteVolumeSyncType? = nil,
            deleteVpcAsync: DeleteVpcAsyncType? = nil,
            deleteVpcSync: DeleteVpcSyncType? = nil,
            deleteVpcEndpointConnectionNotificationsAsync: DeleteVpcEndpointConnectionNotificationsAsyncType? = nil,
            deleteVpcEndpointConnectionNotificationsSync: DeleteVpcEndpointConnectionNotificationsSyncType? = nil,
            deleteVpcEndpointServiceConfigurationsAsync: DeleteVpcEndpointServiceConfigurationsAsyncType? = nil,
            deleteVpcEndpointServiceConfigurationsSync: DeleteVpcEndpointServiceConfigurationsSyncType? = nil,
            deleteVpcEndpointsAsync: DeleteVpcEndpointsAsyncType? = nil,
            deleteVpcEndpointsSync: DeleteVpcEndpointsSyncType? = nil,
            deleteVpcPeeringConnectionAsync: DeleteVpcPeeringConnectionAsyncType? = nil,
            deleteVpcPeeringConnectionSync: DeleteVpcPeeringConnectionSyncType? = nil,
            deleteVpnConnectionAsync: DeleteVpnConnectionAsyncType? = nil,
            deleteVpnConnectionSync: DeleteVpnConnectionSyncType? = nil,
            deleteVpnConnectionRouteAsync: DeleteVpnConnectionRouteAsyncType? = nil,
            deleteVpnConnectionRouteSync: DeleteVpnConnectionRouteSyncType? = nil,
            deleteVpnGatewayAsync: DeleteVpnGatewayAsyncType? = nil,
            deleteVpnGatewaySync: DeleteVpnGatewaySyncType? = nil,
            deprovisionByoipCidrAsync: DeprovisionByoipCidrAsyncType? = nil,
            deprovisionByoipCidrSync: DeprovisionByoipCidrSyncType? = nil,
            deregisterImageAsync: DeregisterImageAsyncType? = nil,
            deregisterImageSync: DeregisterImageSyncType? = nil,
            deregisterInstanceEventNotificationAttributesAsync: DeregisterInstanceEventNotificationAttributesAsyncType? = nil,
            deregisterInstanceEventNotificationAttributesSync: DeregisterInstanceEventNotificationAttributesSyncType? = nil,
            deregisterTransitGatewayMulticastGroupMembersAsync: DeregisterTransitGatewayMulticastGroupMembersAsyncType? = nil,
            deregisterTransitGatewayMulticastGroupMembersSync: DeregisterTransitGatewayMulticastGroupMembersSyncType? = nil,
            deregisterTransitGatewayMulticastGroupSourcesAsync: DeregisterTransitGatewayMulticastGroupSourcesAsyncType? = nil,
            deregisterTransitGatewayMulticastGroupSourcesSync: DeregisterTransitGatewayMulticastGroupSourcesSyncType? = nil,
            describeAccountAttributesAsync: DescribeAccountAttributesAsyncType? = nil,
            describeAccountAttributesSync: DescribeAccountAttributesSyncType? = nil,
            describeAddressesAsync: DescribeAddressesAsyncType? = nil,
            describeAddressesSync: DescribeAddressesSyncType? = nil,
            describeAddressesAttributeAsync: DescribeAddressesAttributeAsyncType? = nil,
            describeAddressesAttributeSync: DescribeAddressesAttributeSyncType? = nil,
            describeAggregateIdFormatAsync: DescribeAggregateIdFormatAsyncType? = nil,
            describeAggregateIdFormatSync: DescribeAggregateIdFormatSyncType? = nil,
            describeAvailabilityZonesAsync: DescribeAvailabilityZonesAsyncType? = nil,
            describeAvailabilityZonesSync: DescribeAvailabilityZonesSyncType? = nil,
            describeBundleTasksAsync: DescribeBundleTasksAsyncType? = nil,
            describeBundleTasksSync: DescribeBundleTasksSyncType? = nil,
            describeByoipCidrsAsync: DescribeByoipCidrsAsyncType? = nil,
            describeByoipCidrsSync: DescribeByoipCidrsSyncType? = nil,
            describeCapacityReservationsAsync: DescribeCapacityReservationsAsyncType? = nil,
            describeCapacityReservationsSync: DescribeCapacityReservationsSyncType? = nil,
            describeCarrierGatewaysAsync: DescribeCarrierGatewaysAsyncType? = nil,
            describeCarrierGatewaysSync: DescribeCarrierGatewaysSyncType? = nil,
            describeClassicLinkInstancesAsync: DescribeClassicLinkInstancesAsyncType? = nil,
            describeClassicLinkInstancesSync: DescribeClassicLinkInstancesSyncType? = nil,
            describeClientVpnAuthorizationRulesAsync: DescribeClientVpnAuthorizationRulesAsyncType? = nil,
            describeClientVpnAuthorizationRulesSync: DescribeClientVpnAuthorizationRulesSyncType? = nil,
            describeClientVpnConnectionsAsync: DescribeClientVpnConnectionsAsyncType? = nil,
            describeClientVpnConnectionsSync: DescribeClientVpnConnectionsSyncType? = nil,
            describeClientVpnEndpointsAsync: DescribeClientVpnEndpointsAsyncType? = nil,
            describeClientVpnEndpointsSync: DescribeClientVpnEndpointsSyncType? = nil,
            describeClientVpnRoutesAsync: DescribeClientVpnRoutesAsyncType? = nil,
            describeClientVpnRoutesSync: DescribeClientVpnRoutesSyncType? = nil,
            describeClientVpnTargetNetworksAsync: DescribeClientVpnTargetNetworksAsyncType? = nil,
            describeClientVpnTargetNetworksSync: DescribeClientVpnTargetNetworksSyncType? = nil,
            describeCoipPoolsAsync: DescribeCoipPoolsAsyncType? = nil,
            describeCoipPoolsSync: DescribeCoipPoolsSyncType? = nil,
            describeConversionTasksAsync: DescribeConversionTasksAsyncType? = nil,
            describeConversionTasksSync: DescribeConversionTasksSyncType? = nil,
            describeCustomerGatewaysAsync: DescribeCustomerGatewaysAsyncType? = nil,
            describeCustomerGatewaysSync: DescribeCustomerGatewaysSyncType? = nil,
            describeDhcpOptionsAsync: DescribeDhcpOptionsAsyncType? = nil,
            describeDhcpOptionsSync: DescribeDhcpOptionsSyncType? = nil,
            describeEgressOnlyInternetGatewaysAsync: DescribeEgressOnlyInternetGatewaysAsyncType? = nil,
            describeEgressOnlyInternetGatewaysSync: DescribeEgressOnlyInternetGatewaysSyncType? = nil,
            describeElasticGpusAsync: DescribeElasticGpusAsyncType? = nil,
            describeElasticGpusSync: DescribeElasticGpusSyncType? = nil,
            describeExportImageTasksAsync: DescribeExportImageTasksAsyncType? = nil,
            describeExportImageTasksSync: DescribeExportImageTasksSyncType? = nil,
            describeExportTasksAsync: DescribeExportTasksAsyncType? = nil,
            describeExportTasksSync: DescribeExportTasksSyncType? = nil,
            describeFastSnapshotRestoresAsync: DescribeFastSnapshotRestoresAsyncType? = nil,
            describeFastSnapshotRestoresSync: DescribeFastSnapshotRestoresSyncType? = nil,
            describeFleetHistoryAsync: DescribeFleetHistoryAsyncType? = nil,
            describeFleetHistorySync: DescribeFleetHistorySyncType? = nil,
            describeFleetInstancesAsync: DescribeFleetInstancesAsyncType? = nil,
            describeFleetInstancesSync: DescribeFleetInstancesSyncType? = nil,
            describeFleetsAsync: DescribeFleetsAsyncType? = nil,
            describeFleetsSync: DescribeFleetsSyncType? = nil,
            describeFlowLogsAsync: DescribeFlowLogsAsyncType? = nil,
            describeFlowLogsSync: DescribeFlowLogsSyncType? = nil,
            describeFpgaImageAttributeAsync: DescribeFpgaImageAttributeAsyncType? = nil,
            describeFpgaImageAttributeSync: DescribeFpgaImageAttributeSyncType? = nil,
            describeFpgaImagesAsync: DescribeFpgaImagesAsyncType? = nil,
            describeFpgaImagesSync: DescribeFpgaImagesSyncType? = nil,
            describeHostReservationOfferingsAsync: DescribeHostReservationOfferingsAsyncType? = nil,
            describeHostReservationOfferingsSync: DescribeHostReservationOfferingsSyncType? = nil,
            describeHostReservationsAsync: DescribeHostReservationsAsyncType? = nil,
            describeHostReservationsSync: DescribeHostReservationsSyncType? = nil,
            describeHostsAsync: DescribeHostsAsyncType? = nil,
            describeHostsSync: DescribeHostsSyncType? = nil,
            describeIamInstanceProfileAssociationsAsync: DescribeIamInstanceProfileAssociationsAsyncType? = nil,
            describeIamInstanceProfileAssociationsSync: DescribeIamInstanceProfileAssociationsSyncType? = nil,
            describeIdFormatAsync: DescribeIdFormatAsyncType? = nil,
            describeIdFormatSync: DescribeIdFormatSyncType? = nil,
            describeIdentityIdFormatAsync: DescribeIdentityIdFormatAsyncType? = nil,
            describeIdentityIdFormatSync: DescribeIdentityIdFormatSyncType? = nil,
            describeImageAttributeAsync: DescribeImageAttributeAsyncType? = nil,
            describeImageAttributeSync: DescribeImageAttributeSyncType? = nil,
            describeImagesAsync: DescribeImagesAsyncType? = nil,
            describeImagesSync: DescribeImagesSyncType? = nil,
            describeImportImageTasksAsync: DescribeImportImageTasksAsyncType? = nil,
            describeImportImageTasksSync: DescribeImportImageTasksSyncType? = nil,
            describeImportSnapshotTasksAsync: DescribeImportSnapshotTasksAsyncType? = nil,
            describeImportSnapshotTasksSync: DescribeImportSnapshotTasksSyncType? = nil,
            describeInstanceAttributeAsync: DescribeInstanceAttributeAsyncType? = nil,
            describeInstanceAttributeSync: DescribeInstanceAttributeSyncType? = nil,
            describeInstanceCreditSpecificationsAsync: DescribeInstanceCreditSpecificationsAsyncType? = nil,
            describeInstanceCreditSpecificationsSync: DescribeInstanceCreditSpecificationsSyncType? = nil,
            describeInstanceEventNotificationAttributesAsync: DescribeInstanceEventNotificationAttributesAsyncType? = nil,
            describeInstanceEventNotificationAttributesSync: DescribeInstanceEventNotificationAttributesSyncType? = nil,
            describeInstanceStatusAsync: DescribeInstanceStatusAsyncType? = nil,
            describeInstanceStatusSync: DescribeInstanceStatusSyncType? = nil,
            describeInstanceTypeOfferingsAsync: DescribeInstanceTypeOfferingsAsyncType? = nil,
            describeInstanceTypeOfferingsSync: DescribeInstanceTypeOfferingsSyncType? = nil,
            describeInstanceTypesAsync: DescribeInstanceTypesAsyncType? = nil,
            describeInstanceTypesSync: DescribeInstanceTypesSyncType? = nil,
            describeInstancesAsync: DescribeInstancesAsyncType? = nil,
            describeInstancesSync: DescribeInstancesSyncType? = nil,
            describeInternetGatewaysAsync: DescribeInternetGatewaysAsyncType? = nil,
            describeInternetGatewaysSync: DescribeInternetGatewaysSyncType? = nil,
            describeIpv6PoolsAsync: DescribeIpv6PoolsAsyncType? = nil,
            describeIpv6PoolsSync: DescribeIpv6PoolsSyncType? = nil,
            describeKeyPairsAsync: DescribeKeyPairsAsyncType? = nil,
            describeKeyPairsSync: DescribeKeyPairsSyncType? = nil,
            describeLaunchTemplateVersionsAsync: DescribeLaunchTemplateVersionsAsyncType? = nil,
            describeLaunchTemplateVersionsSync: DescribeLaunchTemplateVersionsSyncType? = nil,
            describeLaunchTemplatesAsync: DescribeLaunchTemplatesAsyncType? = nil,
            describeLaunchTemplatesSync: DescribeLaunchTemplatesSyncType? = nil,
            describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsync: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncType? = nil,
            describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSync: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncType? = nil,
            describeLocalGatewayRouteTableVpcAssociationsAsync: DescribeLocalGatewayRouteTableVpcAssociationsAsyncType? = nil,
            describeLocalGatewayRouteTableVpcAssociationsSync: DescribeLocalGatewayRouteTableVpcAssociationsSyncType? = nil,
            describeLocalGatewayRouteTablesAsync: DescribeLocalGatewayRouteTablesAsyncType? = nil,
            describeLocalGatewayRouteTablesSync: DescribeLocalGatewayRouteTablesSyncType? = nil,
            describeLocalGatewayVirtualInterfaceGroupsAsync: DescribeLocalGatewayVirtualInterfaceGroupsAsyncType? = nil,
            describeLocalGatewayVirtualInterfaceGroupsSync: DescribeLocalGatewayVirtualInterfaceGroupsSyncType? = nil,
            describeLocalGatewayVirtualInterfacesAsync: DescribeLocalGatewayVirtualInterfacesAsyncType? = nil,
            describeLocalGatewayVirtualInterfacesSync: DescribeLocalGatewayVirtualInterfacesSyncType? = nil,
            describeLocalGatewaysAsync: DescribeLocalGatewaysAsyncType? = nil,
            describeLocalGatewaysSync: DescribeLocalGatewaysSyncType? = nil,
            describeManagedPrefixListsAsync: DescribeManagedPrefixListsAsyncType? = nil,
            describeManagedPrefixListsSync: DescribeManagedPrefixListsSyncType? = nil,
            describeMovingAddressesAsync: DescribeMovingAddressesAsyncType? = nil,
            describeMovingAddressesSync: DescribeMovingAddressesSyncType? = nil,
            describeNatGatewaysAsync: DescribeNatGatewaysAsyncType? = nil,
            describeNatGatewaysSync: DescribeNatGatewaysSyncType? = nil,
            describeNetworkAclsAsync: DescribeNetworkAclsAsyncType? = nil,
            describeNetworkAclsSync: DescribeNetworkAclsSyncType? = nil,
            describeNetworkInsightsAnalysesAsync: DescribeNetworkInsightsAnalysesAsyncType? = nil,
            describeNetworkInsightsAnalysesSync: DescribeNetworkInsightsAnalysesSyncType? = nil,
            describeNetworkInsightsPathsAsync: DescribeNetworkInsightsPathsAsyncType? = nil,
            describeNetworkInsightsPathsSync: DescribeNetworkInsightsPathsSyncType? = nil,
            describeNetworkInterfaceAttributeAsync: DescribeNetworkInterfaceAttributeAsyncType? = nil,
            describeNetworkInterfaceAttributeSync: DescribeNetworkInterfaceAttributeSyncType? = nil,
            describeNetworkInterfacePermissionsAsync: DescribeNetworkInterfacePermissionsAsyncType? = nil,
            describeNetworkInterfacePermissionsSync: DescribeNetworkInterfacePermissionsSyncType? = nil,
            describeNetworkInterfacesAsync: DescribeNetworkInterfacesAsyncType? = nil,
            describeNetworkInterfacesSync: DescribeNetworkInterfacesSyncType? = nil,
            describePlacementGroupsAsync: DescribePlacementGroupsAsyncType? = nil,
            describePlacementGroupsSync: DescribePlacementGroupsSyncType? = nil,
            describePrefixListsAsync: DescribePrefixListsAsyncType? = nil,
            describePrefixListsSync: DescribePrefixListsSyncType? = nil,
            describePrincipalIdFormatAsync: DescribePrincipalIdFormatAsyncType? = nil,
            describePrincipalIdFormatSync: DescribePrincipalIdFormatSyncType? = nil,
            describePublicIpv4PoolsAsync: DescribePublicIpv4PoolsAsyncType? = nil,
            describePublicIpv4PoolsSync: DescribePublicIpv4PoolsSyncType? = nil,
            describeRegionsAsync: DescribeRegionsAsyncType? = nil,
            describeRegionsSync: DescribeRegionsSyncType? = nil,
            describeReservedInstancesAsync: DescribeReservedInstancesAsyncType? = nil,
            describeReservedInstancesSync: DescribeReservedInstancesSyncType? = nil,
            describeReservedInstancesListingsAsync: DescribeReservedInstancesListingsAsyncType? = nil,
            describeReservedInstancesListingsSync: DescribeReservedInstancesListingsSyncType? = nil,
            describeReservedInstancesModificationsAsync: DescribeReservedInstancesModificationsAsyncType? = nil,
            describeReservedInstancesModificationsSync: DescribeReservedInstancesModificationsSyncType? = nil,
            describeReservedInstancesOfferingsAsync: DescribeReservedInstancesOfferingsAsyncType? = nil,
            describeReservedInstancesOfferingsSync: DescribeReservedInstancesOfferingsSyncType? = nil,
            describeRouteTablesAsync: DescribeRouteTablesAsyncType? = nil,
            describeRouteTablesSync: DescribeRouteTablesSyncType? = nil,
            describeScheduledInstanceAvailabilityAsync: DescribeScheduledInstanceAvailabilityAsyncType? = nil,
            describeScheduledInstanceAvailabilitySync: DescribeScheduledInstanceAvailabilitySyncType? = nil,
            describeScheduledInstancesAsync: DescribeScheduledInstancesAsyncType? = nil,
            describeScheduledInstancesSync: DescribeScheduledInstancesSyncType? = nil,
            describeSecurityGroupReferencesAsync: DescribeSecurityGroupReferencesAsyncType? = nil,
            describeSecurityGroupReferencesSync: DescribeSecurityGroupReferencesSyncType? = nil,
            describeSecurityGroupsAsync: DescribeSecurityGroupsAsyncType? = nil,
            describeSecurityGroupsSync: DescribeSecurityGroupsSyncType? = nil,
            describeSnapshotAttributeAsync: DescribeSnapshotAttributeAsyncType? = nil,
            describeSnapshotAttributeSync: DescribeSnapshotAttributeSyncType? = nil,
            describeSnapshotsAsync: DescribeSnapshotsAsyncType? = nil,
            describeSnapshotsSync: DescribeSnapshotsSyncType? = nil,
            describeSpotDatafeedSubscriptionAsync: DescribeSpotDatafeedSubscriptionAsyncType? = nil,
            describeSpotDatafeedSubscriptionSync: DescribeSpotDatafeedSubscriptionSyncType? = nil,
            describeSpotFleetInstancesAsync: DescribeSpotFleetInstancesAsyncType? = nil,
            describeSpotFleetInstancesSync: DescribeSpotFleetInstancesSyncType? = nil,
            describeSpotFleetRequestHistoryAsync: DescribeSpotFleetRequestHistoryAsyncType? = nil,
            describeSpotFleetRequestHistorySync: DescribeSpotFleetRequestHistorySyncType? = nil,
            describeSpotFleetRequestsAsync: DescribeSpotFleetRequestsAsyncType? = nil,
            describeSpotFleetRequestsSync: DescribeSpotFleetRequestsSyncType? = nil,
            describeSpotInstanceRequestsAsync: DescribeSpotInstanceRequestsAsyncType? = nil,
            describeSpotInstanceRequestsSync: DescribeSpotInstanceRequestsSyncType? = nil,
            describeSpotPriceHistoryAsync: DescribeSpotPriceHistoryAsyncType? = nil,
            describeSpotPriceHistorySync: DescribeSpotPriceHistorySyncType? = nil,
            describeStaleSecurityGroupsAsync: DescribeStaleSecurityGroupsAsyncType? = nil,
            describeStaleSecurityGroupsSync: DescribeStaleSecurityGroupsSyncType? = nil,
            describeSubnetsAsync: DescribeSubnetsAsyncType? = nil,
            describeSubnetsSync: DescribeSubnetsSyncType? = nil,
            describeTagsAsync: DescribeTagsAsyncType? = nil,
            describeTagsSync: DescribeTagsSyncType? = nil,
            describeTrafficMirrorFiltersAsync: DescribeTrafficMirrorFiltersAsyncType? = nil,
            describeTrafficMirrorFiltersSync: DescribeTrafficMirrorFiltersSyncType? = nil,
            describeTrafficMirrorSessionsAsync: DescribeTrafficMirrorSessionsAsyncType? = nil,
            describeTrafficMirrorSessionsSync: DescribeTrafficMirrorSessionsSyncType? = nil,
            describeTrafficMirrorTargetsAsync: DescribeTrafficMirrorTargetsAsyncType? = nil,
            describeTrafficMirrorTargetsSync: DescribeTrafficMirrorTargetsSyncType? = nil,
            describeTransitGatewayAttachmentsAsync: DescribeTransitGatewayAttachmentsAsyncType? = nil,
            describeTransitGatewayAttachmentsSync: DescribeTransitGatewayAttachmentsSyncType? = nil,
            describeTransitGatewayConnectPeersAsync: DescribeTransitGatewayConnectPeersAsyncType? = nil,
            describeTransitGatewayConnectPeersSync: DescribeTransitGatewayConnectPeersSyncType? = nil,
            describeTransitGatewayConnectsAsync: DescribeTransitGatewayConnectsAsyncType? = nil,
            describeTransitGatewayConnectsSync: DescribeTransitGatewayConnectsSyncType? = nil,
            describeTransitGatewayMulticastDomainsAsync: DescribeTransitGatewayMulticastDomainsAsyncType? = nil,
            describeTransitGatewayMulticastDomainsSync: DescribeTransitGatewayMulticastDomainsSyncType? = nil,
            describeTransitGatewayPeeringAttachmentsAsync: DescribeTransitGatewayPeeringAttachmentsAsyncType? = nil,
            describeTransitGatewayPeeringAttachmentsSync: DescribeTransitGatewayPeeringAttachmentsSyncType? = nil,
            describeTransitGatewayRouteTablesAsync: DescribeTransitGatewayRouteTablesAsyncType? = nil,
            describeTransitGatewayRouteTablesSync: DescribeTransitGatewayRouteTablesSyncType? = nil,
            describeTransitGatewayVpcAttachmentsAsync: DescribeTransitGatewayVpcAttachmentsAsyncType? = nil,
            describeTransitGatewayVpcAttachmentsSync: DescribeTransitGatewayVpcAttachmentsSyncType? = nil,
            describeTransitGatewaysAsync: DescribeTransitGatewaysAsyncType? = nil,
            describeTransitGatewaysSync: DescribeTransitGatewaysSyncType? = nil,
            describeVolumeAttributeAsync: DescribeVolumeAttributeAsyncType? = nil,
            describeVolumeAttributeSync: DescribeVolumeAttributeSyncType? = nil,
            describeVolumeStatusAsync: DescribeVolumeStatusAsyncType? = nil,
            describeVolumeStatusSync: DescribeVolumeStatusSyncType? = nil,
            describeVolumesAsync: DescribeVolumesAsyncType? = nil,
            describeVolumesSync: DescribeVolumesSyncType? = nil,
            describeVolumesModificationsAsync: DescribeVolumesModificationsAsyncType? = nil,
            describeVolumesModificationsSync: DescribeVolumesModificationsSyncType? = nil,
            describeVpcAttributeAsync: DescribeVpcAttributeAsyncType? = nil,
            describeVpcAttributeSync: DescribeVpcAttributeSyncType? = nil,
            describeVpcClassicLinkAsync: DescribeVpcClassicLinkAsyncType? = nil,
            describeVpcClassicLinkSync: DescribeVpcClassicLinkSyncType? = nil,
            describeVpcClassicLinkDnsSupportAsync: DescribeVpcClassicLinkDnsSupportAsyncType? = nil,
            describeVpcClassicLinkDnsSupportSync: DescribeVpcClassicLinkDnsSupportSyncType? = nil,
            describeVpcEndpointConnectionNotificationsAsync: DescribeVpcEndpointConnectionNotificationsAsyncType? = nil,
            describeVpcEndpointConnectionNotificationsSync: DescribeVpcEndpointConnectionNotificationsSyncType? = nil,
            describeVpcEndpointConnectionsAsync: DescribeVpcEndpointConnectionsAsyncType? = nil,
            describeVpcEndpointConnectionsSync: DescribeVpcEndpointConnectionsSyncType? = nil,
            describeVpcEndpointServiceConfigurationsAsync: DescribeVpcEndpointServiceConfigurationsAsyncType? = nil,
            describeVpcEndpointServiceConfigurationsSync: DescribeVpcEndpointServiceConfigurationsSyncType? = nil,
            describeVpcEndpointServicePermissionsAsync: DescribeVpcEndpointServicePermissionsAsyncType? = nil,
            describeVpcEndpointServicePermissionsSync: DescribeVpcEndpointServicePermissionsSyncType? = nil,
            describeVpcEndpointServicesAsync: DescribeVpcEndpointServicesAsyncType? = nil,
            describeVpcEndpointServicesSync: DescribeVpcEndpointServicesSyncType? = nil,
            describeVpcEndpointsAsync: DescribeVpcEndpointsAsyncType? = nil,
            describeVpcEndpointsSync: DescribeVpcEndpointsSyncType? = nil,
            describeVpcPeeringConnectionsAsync: DescribeVpcPeeringConnectionsAsyncType? = nil,
            describeVpcPeeringConnectionsSync: DescribeVpcPeeringConnectionsSyncType? = nil,
            describeVpcsAsync: DescribeVpcsAsyncType? = nil,
            describeVpcsSync: DescribeVpcsSyncType? = nil,
            describeVpnConnectionsAsync: DescribeVpnConnectionsAsyncType? = nil,
            describeVpnConnectionsSync: DescribeVpnConnectionsSyncType? = nil,
            describeVpnGatewaysAsync: DescribeVpnGatewaysAsyncType? = nil,
            describeVpnGatewaysSync: DescribeVpnGatewaysSyncType? = nil,
            detachClassicLinkVpcAsync: DetachClassicLinkVpcAsyncType? = nil,
            detachClassicLinkVpcSync: DetachClassicLinkVpcSyncType? = nil,
            detachInternetGatewayAsync: DetachInternetGatewayAsyncType? = nil,
            detachInternetGatewaySync: DetachInternetGatewaySyncType? = nil,
            detachNetworkInterfaceAsync: DetachNetworkInterfaceAsyncType? = nil,
            detachNetworkInterfaceSync: DetachNetworkInterfaceSyncType? = nil,
            detachVolumeAsync: DetachVolumeAsyncType? = nil,
            detachVolumeSync: DetachVolumeSyncType? = nil,
            detachVpnGatewayAsync: DetachVpnGatewayAsyncType? = nil,
            detachVpnGatewaySync: DetachVpnGatewaySyncType? = nil,
            disableEbsEncryptionByDefaultAsync: DisableEbsEncryptionByDefaultAsyncType? = nil,
            disableEbsEncryptionByDefaultSync: DisableEbsEncryptionByDefaultSyncType? = nil,
            disableFastSnapshotRestoresAsync: DisableFastSnapshotRestoresAsyncType? = nil,
            disableFastSnapshotRestoresSync: DisableFastSnapshotRestoresSyncType? = nil,
            disableTransitGatewayRouteTablePropagationAsync: DisableTransitGatewayRouteTablePropagationAsyncType? = nil,
            disableTransitGatewayRouteTablePropagationSync: DisableTransitGatewayRouteTablePropagationSyncType? = nil,
            disableVgwRoutePropagationAsync: DisableVgwRoutePropagationAsyncType? = nil,
            disableVgwRoutePropagationSync: DisableVgwRoutePropagationSyncType? = nil,
            disableVpcClassicLinkAsync: DisableVpcClassicLinkAsyncType? = nil,
            disableVpcClassicLinkSync: DisableVpcClassicLinkSyncType? = nil,
            disableVpcClassicLinkDnsSupportAsync: DisableVpcClassicLinkDnsSupportAsyncType? = nil,
            disableVpcClassicLinkDnsSupportSync: DisableVpcClassicLinkDnsSupportSyncType? = nil,
            disassociateAddressAsync: DisassociateAddressAsyncType? = nil,
            disassociateAddressSync: DisassociateAddressSyncType? = nil,
            disassociateClientVpnTargetNetworkAsync: DisassociateClientVpnTargetNetworkAsyncType? = nil,
            disassociateClientVpnTargetNetworkSync: DisassociateClientVpnTargetNetworkSyncType? = nil,
            disassociateEnclaveCertificateIamRoleAsync: DisassociateEnclaveCertificateIamRoleAsyncType? = nil,
            disassociateEnclaveCertificateIamRoleSync: DisassociateEnclaveCertificateIamRoleSyncType? = nil,
            disassociateIamInstanceProfileAsync: DisassociateIamInstanceProfileAsyncType? = nil,
            disassociateIamInstanceProfileSync: DisassociateIamInstanceProfileSyncType? = nil,
            disassociateRouteTableAsync: DisassociateRouteTableAsyncType? = nil,
            disassociateRouteTableSync: DisassociateRouteTableSyncType? = nil,
            disassociateSubnetCidrBlockAsync: DisassociateSubnetCidrBlockAsyncType? = nil,
            disassociateSubnetCidrBlockSync: DisassociateSubnetCidrBlockSyncType? = nil,
            disassociateTransitGatewayMulticastDomainAsync: DisassociateTransitGatewayMulticastDomainAsyncType? = nil,
            disassociateTransitGatewayMulticastDomainSync: DisassociateTransitGatewayMulticastDomainSyncType? = nil,
            disassociateTransitGatewayRouteTableAsync: DisassociateTransitGatewayRouteTableAsyncType? = nil,
            disassociateTransitGatewayRouteTableSync: DisassociateTransitGatewayRouteTableSyncType? = nil,
            disassociateVpcCidrBlockAsync: DisassociateVpcCidrBlockAsyncType? = nil,
            disassociateVpcCidrBlockSync: DisassociateVpcCidrBlockSyncType? = nil,
            enableEbsEncryptionByDefaultAsync: EnableEbsEncryptionByDefaultAsyncType? = nil,
            enableEbsEncryptionByDefaultSync: EnableEbsEncryptionByDefaultSyncType? = nil,
            enableFastSnapshotRestoresAsync: EnableFastSnapshotRestoresAsyncType? = nil,
            enableFastSnapshotRestoresSync: EnableFastSnapshotRestoresSyncType? = nil,
            enableTransitGatewayRouteTablePropagationAsync: EnableTransitGatewayRouteTablePropagationAsyncType? = nil,
            enableTransitGatewayRouteTablePropagationSync: EnableTransitGatewayRouteTablePropagationSyncType? = nil,
            enableVgwRoutePropagationAsync: EnableVgwRoutePropagationAsyncType? = nil,
            enableVgwRoutePropagationSync: EnableVgwRoutePropagationSyncType? = nil,
            enableVolumeIOAsync: EnableVolumeIOAsyncType? = nil,
            enableVolumeIOSync: EnableVolumeIOSyncType? = nil,
            enableVpcClassicLinkAsync: EnableVpcClassicLinkAsyncType? = nil,
            enableVpcClassicLinkSync: EnableVpcClassicLinkSyncType? = nil,
            enableVpcClassicLinkDnsSupportAsync: EnableVpcClassicLinkDnsSupportAsyncType? = nil,
            enableVpcClassicLinkDnsSupportSync: EnableVpcClassicLinkDnsSupportSyncType? = nil,
            exportClientVpnClientCertificateRevocationListAsync: ExportClientVpnClientCertificateRevocationListAsyncType? = nil,
            exportClientVpnClientCertificateRevocationListSync: ExportClientVpnClientCertificateRevocationListSyncType? = nil,
            exportClientVpnClientConfigurationAsync: ExportClientVpnClientConfigurationAsyncType? = nil,
            exportClientVpnClientConfigurationSync: ExportClientVpnClientConfigurationSyncType? = nil,
            exportImageAsync: ExportImageAsyncType? = nil,
            exportImageSync: ExportImageSyncType? = nil,
            exportTransitGatewayRoutesAsync: ExportTransitGatewayRoutesAsyncType? = nil,
            exportTransitGatewayRoutesSync: ExportTransitGatewayRoutesSyncType? = nil,
            getAssociatedEnclaveCertificateIamRolesAsync: GetAssociatedEnclaveCertificateIamRolesAsyncType? = nil,
            getAssociatedEnclaveCertificateIamRolesSync: GetAssociatedEnclaveCertificateIamRolesSyncType? = nil,
            getAssociatedIpv6PoolCidrsAsync: GetAssociatedIpv6PoolCidrsAsyncType? = nil,
            getAssociatedIpv6PoolCidrsSync: GetAssociatedIpv6PoolCidrsSyncType? = nil,
            getCapacityReservationUsageAsync: GetCapacityReservationUsageAsyncType? = nil,
            getCapacityReservationUsageSync: GetCapacityReservationUsageSyncType? = nil,
            getCoipPoolUsageAsync: GetCoipPoolUsageAsyncType? = nil,
            getCoipPoolUsageSync: GetCoipPoolUsageSyncType? = nil,
            getConsoleOutputAsync: GetConsoleOutputAsyncType? = nil,
            getConsoleOutputSync: GetConsoleOutputSyncType? = nil,
            getConsoleScreenshotAsync: GetConsoleScreenshotAsyncType? = nil,
            getConsoleScreenshotSync: GetConsoleScreenshotSyncType? = nil,
            getDefaultCreditSpecificationAsync: GetDefaultCreditSpecificationAsyncType? = nil,
            getDefaultCreditSpecificationSync: GetDefaultCreditSpecificationSyncType? = nil,
            getEbsDefaultKmsKeyIdAsync: GetEbsDefaultKmsKeyIdAsyncType? = nil,
            getEbsDefaultKmsKeyIdSync: GetEbsDefaultKmsKeyIdSyncType? = nil,
            getEbsEncryptionByDefaultAsync: GetEbsEncryptionByDefaultAsyncType? = nil,
            getEbsEncryptionByDefaultSync: GetEbsEncryptionByDefaultSyncType? = nil,
            getGroupsForCapacityReservationAsync: GetGroupsForCapacityReservationAsyncType? = nil,
            getGroupsForCapacityReservationSync: GetGroupsForCapacityReservationSyncType? = nil,
            getHostReservationPurchasePreviewAsync: GetHostReservationPurchasePreviewAsyncType? = nil,
            getHostReservationPurchasePreviewSync: GetHostReservationPurchasePreviewSyncType? = nil,
            getLaunchTemplateDataAsync: GetLaunchTemplateDataAsyncType? = nil,
            getLaunchTemplateDataSync: GetLaunchTemplateDataSyncType? = nil,
            getManagedPrefixListAssociationsAsync: GetManagedPrefixListAssociationsAsyncType? = nil,
            getManagedPrefixListAssociationsSync: GetManagedPrefixListAssociationsSyncType? = nil,
            getManagedPrefixListEntriesAsync: GetManagedPrefixListEntriesAsyncType? = nil,
            getManagedPrefixListEntriesSync: GetManagedPrefixListEntriesSyncType? = nil,
            getPasswordDataAsync: GetPasswordDataAsyncType? = nil,
            getPasswordDataSync: GetPasswordDataSyncType? = nil,
            getReservedInstancesExchangeQuoteAsync: GetReservedInstancesExchangeQuoteAsyncType? = nil,
            getReservedInstancesExchangeQuoteSync: GetReservedInstancesExchangeQuoteSyncType? = nil,
            getTransitGatewayAttachmentPropagationsAsync: GetTransitGatewayAttachmentPropagationsAsyncType? = nil,
            getTransitGatewayAttachmentPropagationsSync: GetTransitGatewayAttachmentPropagationsSyncType? = nil,
            getTransitGatewayMulticastDomainAssociationsAsync: GetTransitGatewayMulticastDomainAssociationsAsyncType? = nil,
            getTransitGatewayMulticastDomainAssociationsSync: GetTransitGatewayMulticastDomainAssociationsSyncType? = nil,
            getTransitGatewayPrefixListReferencesAsync: GetTransitGatewayPrefixListReferencesAsyncType? = nil,
            getTransitGatewayPrefixListReferencesSync: GetTransitGatewayPrefixListReferencesSyncType? = nil,
            getTransitGatewayRouteTableAssociationsAsync: GetTransitGatewayRouteTableAssociationsAsyncType? = nil,
            getTransitGatewayRouteTableAssociationsSync: GetTransitGatewayRouteTableAssociationsSyncType? = nil,
            getTransitGatewayRouteTablePropagationsAsync: GetTransitGatewayRouteTablePropagationsAsyncType? = nil,
            getTransitGatewayRouteTablePropagationsSync: GetTransitGatewayRouteTablePropagationsSyncType? = nil,
            importClientVpnClientCertificateRevocationListAsync: ImportClientVpnClientCertificateRevocationListAsyncType? = nil,
            importClientVpnClientCertificateRevocationListSync: ImportClientVpnClientCertificateRevocationListSyncType? = nil,
            importImageAsync: ImportImageAsyncType? = nil,
            importImageSync: ImportImageSyncType? = nil,
            importInstanceAsync: ImportInstanceAsyncType? = nil,
            importInstanceSync: ImportInstanceSyncType? = nil,
            importKeyPairAsync: ImportKeyPairAsyncType? = nil,
            importKeyPairSync: ImportKeyPairSyncType? = nil,
            importSnapshotAsync: ImportSnapshotAsyncType? = nil,
            importSnapshotSync: ImportSnapshotSyncType? = nil,
            importVolumeAsync: ImportVolumeAsyncType? = nil,
            importVolumeSync: ImportVolumeSyncType? = nil,
            modifyAddressAttributeAsync: ModifyAddressAttributeAsyncType? = nil,
            modifyAddressAttributeSync: ModifyAddressAttributeSyncType? = nil,
            modifyAvailabilityZoneGroupAsync: ModifyAvailabilityZoneGroupAsyncType? = nil,
            modifyAvailabilityZoneGroupSync: ModifyAvailabilityZoneGroupSyncType? = nil,
            modifyCapacityReservationAsync: ModifyCapacityReservationAsyncType? = nil,
            modifyCapacityReservationSync: ModifyCapacityReservationSyncType? = nil,
            modifyClientVpnEndpointAsync: ModifyClientVpnEndpointAsyncType? = nil,
            modifyClientVpnEndpointSync: ModifyClientVpnEndpointSyncType? = nil,
            modifyDefaultCreditSpecificationAsync: ModifyDefaultCreditSpecificationAsyncType? = nil,
            modifyDefaultCreditSpecificationSync: ModifyDefaultCreditSpecificationSyncType? = nil,
            modifyEbsDefaultKmsKeyIdAsync: ModifyEbsDefaultKmsKeyIdAsyncType? = nil,
            modifyEbsDefaultKmsKeyIdSync: ModifyEbsDefaultKmsKeyIdSyncType? = nil,
            modifyFleetAsync: ModifyFleetAsyncType? = nil,
            modifyFleetSync: ModifyFleetSyncType? = nil,
            modifyFpgaImageAttributeAsync: ModifyFpgaImageAttributeAsyncType? = nil,
            modifyFpgaImageAttributeSync: ModifyFpgaImageAttributeSyncType? = nil,
            modifyHostsAsync: ModifyHostsAsyncType? = nil,
            modifyHostsSync: ModifyHostsSyncType? = nil,
            modifyIdFormatAsync: ModifyIdFormatAsyncType? = nil,
            modifyIdFormatSync: ModifyIdFormatSyncType? = nil,
            modifyIdentityIdFormatAsync: ModifyIdentityIdFormatAsyncType? = nil,
            modifyIdentityIdFormatSync: ModifyIdentityIdFormatSyncType? = nil,
            modifyImageAttributeAsync: ModifyImageAttributeAsyncType? = nil,
            modifyImageAttributeSync: ModifyImageAttributeSyncType? = nil,
            modifyInstanceAttributeAsync: ModifyInstanceAttributeAsyncType? = nil,
            modifyInstanceAttributeSync: ModifyInstanceAttributeSyncType? = nil,
            modifyInstanceCapacityReservationAttributesAsync: ModifyInstanceCapacityReservationAttributesAsyncType? = nil,
            modifyInstanceCapacityReservationAttributesSync: ModifyInstanceCapacityReservationAttributesSyncType? = nil,
            modifyInstanceCreditSpecificationAsync: ModifyInstanceCreditSpecificationAsyncType? = nil,
            modifyInstanceCreditSpecificationSync: ModifyInstanceCreditSpecificationSyncType? = nil,
            modifyInstanceEventStartTimeAsync: ModifyInstanceEventStartTimeAsyncType? = nil,
            modifyInstanceEventStartTimeSync: ModifyInstanceEventStartTimeSyncType? = nil,
            modifyInstanceMetadataOptionsAsync: ModifyInstanceMetadataOptionsAsyncType? = nil,
            modifyInstanceMetadataOptionsSync: ModifyInstanceMetadataOptionsSyncType? = nil,
            modifyInstancePlacementAsync: ModifyInstancePlacementAsyncType? = nil,
            modifyInstancePlacementSync: ModifyInstancePlacementSyncType? = nil,
            modifyLaunchTemplateAsync: ModifyLaunchTemplateAsyncType? = nil,
            modifyLaunchTemplateSync: ModifyLaunchTemplateSyncType? = nil,
            modifyManagedPrefixListAsync: ModifyManagedPrefixListAsyncType? = nil,
            modifyManagedPrefixListSync: ModifyManagedPrefixListSyncType? = nil,
            modifyNetworkInterfaceAttributeAsync: ModifyNetworkInterfaceAttributeAsyncType? = nil,
            modifyNetworkInterfaceAttributeSync: ModifyNetworkInterfaceAttributeSyncType? = nil,
            modifyReservedInstancesAsync: ModifyReservedInstancesAsyncType? = nil,
            modifyReservedInstancesSync: ModifyReservedInstancesSyncType? = nil,
            modifySnapshotAttributeAsync: ModifySnapshotAttributeAsyncType? = nil,
            modifySnapshotAttributeSync: ModifySnapshotAttributeSyncType? = nil,
            modifySpotFleetRequestAsync: ModifySpotFleetRequestAsyncType? = nil,
            modifySpotFleetRequestSync: ModifySpotFleetRequestSyncType? = nil,
            modifySubnetAttributeAsync: ModifySubnetAttributeAsyncType? = nil,
            modifySubnetAttributeSync: ModifySubnetAttributeSyncType? = nil,
            modifyTrafficMirrorFilterNetworkServicesAsync: ModifyTrafficMirrorFilterNetworkServicesAsyncType? = nil,
            modifyTrafficMirrorFilterNetworkServicesSync: ModifyTrafficMirrorFilterNetworkServicesSyncType? = nil,
            modifyTrafficMirrorFilterRuleAsync: ModifyTrafficMirrorFilterRuleAsyncType? = nil,
            modifyTrafficMirrorFilterRuleSync: ModifyTrafficMirrorFilterRuleSyncType? = nil,
            modifyTrafficMirrorSessionAsync: ModifyTrafficMirrorSessionAsyncType? = nil,
            modifyTrafficMirrorSessionSync: ModifyTrafficMirrorSessionSyncType? = nil,
            modifyTransitGatewayAsync: ModifyTransitGatewayAsyncType? = nil,
            modifyTransitGatewaySync: ModifyTransitGatewaySyncType? = nil,
            modifyTransitGatewayPrefixListReferenceAsync: ModifyTransitGatewayPrefixListReferenceAsyncType? = nil,
            modifyTransitGatewayPrefixListReferenceSync: ModifyTransitGatewayPrefixListReferenceSyncType? = nil,
            modifyTransitGatewayVpcAttachmentAsync: ModifyTransitGatewayVpcAttachmentAsyncType? = nil,
            modifyTransitGatewayVpcAttachmentSync: ModifyTransitGatewayVpcAttachmentSyncType? = nil,
            modifyVolumeAsync: ModifyVolumeAsyncType? = nil,
            modifyVolumeSync: ModifyVolumeSyncType? = nil,
            modifyVolumeAttributeAsync: ModifyVolumeAttributeAsyncType? = nil,
            modifyVolumeAttributeSync: ModifyVolumeAttributeSyncType? = nil,
            modifyVpcAttributeAsync: ModifyVpcAttributeAsyncType? = nil,
            modifyVpcAttributeSync: ModifyVpcAttributeSyncType? = nil,
            modifyVpcEndpointAsync: ModifyVpcEndpointAsyncType? = nil,
            modifyVpcEndpointSync: ModifyVpcEndpointSyncType? = nil,
            modifyVpcEndpointConnectionNotificationAsync: ModifyVpcEndpointConnectionNotificationAsyncType? = nil,
            modifyVpcEndpointConnectionNotificationSync: ModifyVpcEndpointConnectionNotificationSyncType? = nil,
            modifyVpcEndpointServiceConfigurationAsync: ModifyVpcEndpointServiceConfigurationAsyncType? = nil,
            modifyVpcEndpointServiceConfigurationSync: ModifyVpcEndpointServiceConfigurationSyncType? = nil,
            modifyVpcEndpointServicePermissionsAsync: ModifyVpcEndpointServicePermissionsAsyncType? = nil,
            modifyVpcEndpointServicePermissionsSync: ModifyVpcEndpointServicePermissionsSyncType? = nil,
            modifyVpcPeeringConnectionOptionsAsync: ModifyVpcPeeringConnectionOptionsAsyncType? = nil,
            modifyVpcPeeringConnectionOptionsSync: ModifyVpcPeeringConnectionOptionsSyncType? = nil,
            modifyVpcTenancyAsync: ModifyVpcTenancyAsyncType? = nil,
            modifyVpcTenancySync: ModifyVpcTenancySyncType? = nil,
            modifyVpnConnectionAsync: ModifyVpnConnectionAsyncType? = nil,
            modifyVpnConnectionSync: ModifyVpnConnectionSyncType? = nil,
            modifyVpnConnectionOptionsAsync: ModifyVpnConnectionOptionsAsyncType? = nil,
            modifyVpnConnectionOptionsSync: ModifyVpnConnectionOptionsSyncType? = nil,
            modifyVpnTunnelCertificateAsync: ModifyVpnTunnelCertificateAsyncType? = nil,
            modifyVpnTunnelCertificateSync: ModifyVpnTunnelCertificateSyncType? = nil,
            modifyVpnTunnelOptionsAsync: ModifyVpnTunnelOptionsAsyncType? = nil,
            modifyVpnTunnelOptionsSync: ModifyVpnTunnelOptionsSyncType? = nil,
            monitorInstancesAsync: MonitorInstancesAsyncType? = nil,
            monitorInstancesSync: MonitorInstancesSyncType? = nil,
            moveAddressToVpcAsync: MoveAddressToVpcAsyncType? = nil,
            moveAddressToVpcSync: MoveAddressToVpcSyncType? = nil,
            provisionByoipCidrAsync: ProvisionByoipCidrAsyncType? = nil,
            provisionByoipCidrSync: ProvisionByoipCidrSyncType? = nil,
            purchaseHostReservationAsync: PurchaseHostReservationAsyncType? = nil,
            purchaseHostReservationSync: PurchaseHostReservationSyncType? = nil,
            purchaseReservedInstancesOfferingAsync: PurchaseReservedInstancesOfferingAsyncType? = nil,
            purchaseReservedInstancesOfferingSync: PurchaseReservedInstancesOfferingSyncType? = nil,
            purchaseScheduledInstancesAsync: PurchaseScheduledInstancesAsyncType? = nil,
            purchaseScheduledInstancesSync: PurchaseScheduledInstancesSyncType? = nil,
            rebootInstancesAsync: RebootInstancesAsyncType? = nil,
            rebootInstancesSync: RebootInstancesSyncType? = nil,
            registerImageAsync: RegisterImageAsyncType? = nil,
            registerImageSync: RegisterImageSyncType? = nil,
            registerInstanceEventNotificationAttributesAsync: RegisterInstanceEventNotificationAttributesAsyncType? = nil,
            registerInstanceEventNotificationAttributesSync: RegisterInstanceEventNotificationAttributesSyncType? = nil,
            registerTransitGatewayMulticastGroupMembersAsync: RegisterTransitGatewayMulticastGroupMembersAsyncType? = nil,
            registerTransitGatewayMulticastGroupMembersSync: RegisterTransitGatewayMulticastGroupMembersSyncType? = nil,
            registerTransitGatewayMulticastGroupSourcesAsync: RegisterTransitGatewayMulticastGroupSourcesAsyncType? = nil,
            registerTransitGatewayMulticastGroupSourcesSync: RegisterTransitGatewayMulticastGroupSourcesSyncType? = nil,
            rejectTransitGatewayMulticastDomainAssociationsAsync: RejectTransitGatewayMulticastDomainAssociationsAsyncType? = nil,
            rejectTransitGatewayMulticastDomainAssociationsSync: RejectTransitGatewayMulticastDomainAssociationsSyncType? = nil,
            rejectTransitGatewayPeeringAttachmentAsync: RejectTransitGatewayPeeringAttachmentAsyncType? = nil,
            rejectTransitGatewayPeeringAttachmentSync: RejectTransitGatewayPeeringAttachmentSyncType? = nil,
            rejectTransitGatewayVpcAttachmentAsync: RejectTransitGatewayVpcAttachmentAsyncType? = nil,
            rejectTransitGatewayVpcAttachmentSync: RejectTransitGatewayVpcAttachmentSyncType? = nil,
            rejectVpcEndpointConnectionsAsync: RejectVpcEndpointConnectionsAsyncType? = nil,
            rejectVpcEndpointConnectionsSync: RejectVpcEndpointConnectionsSyncType? = nil,
            rejectVpcPeeringConnectionAsync: RejectVpcPeeringConnectionAsyncType? = nil,
            rejectVpcPeeringConnectionSync: RejectVpcPeeringConnectionSyncType? = nil,
            releaseAddressAsync: ReleaseAddressAsyncType? = nil,
            releaseAddressSync: ReleaseAddressSyncType? = nil,
            releaseHostsAsync: ReleaseHostsAsyncType? = nil,
            releaseHostsSync: ReleaseHostsSyncType? = nil,
            replaceIamInstanceProfileAssociationAsync: ReplaceIamInstanceProfileAssociationAsyncType? = nil,
            replaceIamInstanceProfileAssociationSync: ReplaceIamInstanceProfileAssociationSyncType? = nil,
            replaceNetworkAclAssociationAsync: ReplaceNetworkAclAssociationAsyncType? = nil,
            replaceNetworkAclAssociationSync: ReplaceNetworkAclAssociationSyncType? = nil,
            replaceNetworkAclEntryAsync: ReplaceNetworkAclEntryAsyncType? = nil,
            replaceNetworkAclEntrySync: ReplaceNetworkAclEntrySyncType? = nil,
            replaceRouteAsync: ReplaceRouteAsyncType? = nil,
            replaceRouteSync: ReplaceRouteSyncType? = nil,
            replaceRouteTableAssociationAsync: ReplaceRouteTableAssociationAsyncType? = nil,
            replaceRouteTableAssociationSync: ReplaceRouteTableAssociationSyncType? = nil,
            replaceTransitGatewayRouteAsync: ReplaceTransitGatewayRouteAsyncType? = nil,
            replaceTransitGatewayRouteSync: ReplaceTransitGatewayRouteSyncType? = nil,
            reportInstanceStatusAsync: ReportInstanceStatusAsyncType? = nil,
            reportInstanceStatusSync: ReportInstanceStatusSyncType? = nil,
            requestSpotFleetAsync: RequestSpotFleetAsyncType? = nil,
            requestSpotFleetSync: RequestSpotFleetSyncType? = nil,
            requestSpotInstancesAsync: RequestSpotInstancesAsyncType? = nil,
            requestSpotInstancesSync: RequestSpotInstancesSyncType? = nil,
            resetAddressAttributeAsync: ResetAddressAttributeAsyncType? = nil,
            resetAddressAttributeSync: ResetAddressAttributeSyncType? = nil,
            resetEbsDefaultKmsKeyIdAsync: ResetEbsDefaultKmsKeyIdAsyncType? = nil,
            resetEbsDefaultKmsKeyIdSync: ResetEbsDefaultKmsKeyIdSyncType? = nil,
            resetFpgaImageAttributeAsync: ResetFpgaImageAttributeAsyncType? = nil,
            resetFpgaImageAttributeSync: ResetFpgaImageAttributeSyncType? = nil,
            resetImageAttributeAsync: ResetImageAttributeAsyncType? = nil,
            resetImageAttributeSync: ResetImageAttributeSyncType? = nil,
            resetInstanceAttributeAsync: ResetInstanceAttributeAsyncType? = nil,
            resetInstanceAttributeSync: ResetInstanceAttributeSyncType? = nil,
            resetNetworkInterfaceAttributeAsync: ResetNetworkInterfaceAttributeAsyncType? = nil,
            resetNetworkInterfaceAttributeSync: ResetNetworkInterfaceAttributeSyncType? = nil,
            resetSnapshotAttributeAsync: ResetSnapshotAttributeAsyncType? = nil,
            resetSnapshotAttributeSync: ResetSnapshotAttributeSyncType? = nil,
            restoreAddressToClassicAsync: RestoreAddressToClassicAsyncType? = nil,
            restoreAddressToClassicSync: RestoreAddressToClassicSyncType? = nil,
            restoreManagedPrefixListVersionAsync: RestoreManagedPrefixListVersionAsyncType? = nil,
            restoreManagedPrefixListVersionSync: RestoreManagedPrefixListVersionSyncType? = nil,
            revokeClientVpnIngressAsync: RevokeClientVpnIngressAsyncType? = nil,
            revokeClientVpnIngressSync: RevokeClientVpnIngressSyncType? = nil,
            revokeSecurityGroupEgressAsync: RevokeSecurityGroupEgressAsyncType? = nil,
            revokeSecurityGroupEgressSync: RevokeSecurityGroupEgressSyncType? = nil,
            revokeSecurityGroupIngressAsync: RevokeSecurityGroupIngressAsyncType? = nil,
            revokeSecurityGroupIngressSync: RevokeSecurityGroupIngressSyncType? = nil,
            runInstancesAsync: RunInstancesAsyncType? = nil,
            runInstancesSync: RunInstancesSyncType? = nil,
            runScheduledInstancesAsync: RunScheduledInstancesAsyncType? = nil,
            runScheduledInstancesSync: RunScheduledInstancesSyncType? = nil,
            searchLocalGatewayRoutesAsync: SearchLocalGatewayRoutesAsyncType? = nil,
            searchLocalGatewayRoutesSync: SearchLocalGatewayRoutesSyncType? = nil,
            searchTransitGatewayMulticastGroupsAsync: SearchTransitGatewayMulticastGroupsAsyncType? = nil,
            searchTransitGatewayMulticastGroupsSync: SearchTransitGatewayMulticastGroupsSyncType? = nil,
            searchTransitGatewayRoutesAsync: SearchTransitGatewayRoutesAsyncType? = nil,
            searchTransitGatewayRoutesSync: SearchTransitGatewayRoutesSyncType? = nil,
            sendDiagnosticInterruptAsync: SendDiagnosticInterruptAsyncType? = nil,
            sendDiagnosticInterruptSync: SendDiagnosticInterruptSyncType? = nil,
            startInstancesAsync: StartInstancesAsyncType? = nil,
            startInstancesSync: StartInstancesSyncType? = nil,
            startNetworkInsightsAnalysisAsync: StartNetworkInsightsAnalysisAsyncType? = nil,
            startNetworkInsightsAnalysisSync: StartNetworkInsightsAnalysisSyncType? = nil,
            startVpcEndpointServicePrivateDnsVerificationAsync: StartVpcEndpointServicePrivateDnsVerificationAsyncType? = nil,
            startVpcEndpointServicePrivateDnsVerificationSync: StartVpcEndpointServicePrivateDnsVerificationSyncType? = nil,
            stopInstancesAsync: StopInstancesAsyncType? = nil,
            stopInstancesSync: StopInstancesSyncType? = nil,
            terminateClientVpnConnectionsAsync: TerminateClientVpnConnectionsAsyncType? = nil,
            terminateClientVpnConnectionsSync: TerminateClientVpnConnectionsSyncType? = nil,
            terminateInstancesAsync: TerminateInstancesAsyncType? = nil,
            terminateInstancesSync: TerminateInstancesSyncType? = nil,
            unassignIpv6AddressesAsync: UnassignIpv6AddressesAsyncType? = nil,
            unassignIpv6AddressesSync: UnassignIpv6AddressesSyncType? = nil,
            unassignPrivateIpAddressesAsync: UnassignPrivateIpAddressesAsyncType? = nil,
            unassignPrivateIpAddressesSync: UnassignPrivateIpAddressesSyncType? = nil,
            unmonitorInstancesAsync: UnmonitorInstancesAsyncType? = nil,
            unmonitorInstancesSync: UnmonitorInstancesSyncType? = nil,
            updateSecurityGroupRuleDescriptionsEgressAsync: UpdateSecurityGroupRuleDescriptionsEgressAsyncType? = nil,
            updateSecurityGroupRuleDescriptionsEgressSync: UpdateSecurityGroupRuleDescriptionsEgressSyncType? = nil,
            updateSecurityGroupRuleDescriptionsIngressAsync: UpdateSecurityGroupRuleDescriptionsIngressAsyncType? = nil,
            updateSecurityGroupRuleDescriptionsIngressSync: UpdateSecurityGroupRuleDescriptionsIngressSyncType? = nil,
            withdrawByoipCidrAsync: WithdrawByoipCidrAsyncType? = nil,
            withdrawByoipCidrSync: WithdrawByoipCidrSyncType? = nil) {
        self.error = error
        self.acceptReservedInstancesExchangeQuoteAsyncOverride = acceptReservedInstancesExchangeQuoteAsync
        self.acceptReservedInstancesExchangeQuoteSyncOverride = acceptReservedInstancesExchangeQuoteSync
        self.acceptTransitGatewayMulticastDomainAssociationsAsyncOverride = acceptTransitGatewayMulticastDomainAssociationsAsync
        self.acceptTransitGatewayMulticastDomainAssociationsSyncOverride = acceptTransitGatewayMulticastDomainAssociationsSync
        self.acceptTransitGatewayPeeringAttachmentAsyncOverride = acceptTransitGatewayPeeringAttachmentAsync
        self.acceptTransitGatewayPeeringAttachmentSyncOverride = acceptTransitGatewayPeeringAttachmentSync
        self.acceptTransitGatewayVpcAttachmentAsyncOverride = acceptTransitGatewayVpcAttachmentAsync
        self.acceptTransitGatewayVpcAttachmentSyncOverride = acceptTransitGatewayVpcAttachmentSync
        self.acceptVpcEndpointConnectionsAsyncOverride = acceptVpcEndpointConnectionsAsync
        self.acceptVpcEndpointConnectionsSyncOverride = acceptVpcEndpointConnectionsSync
        self.acceptVpcPeeringConnectionAsyncOverride = acceptVpcPeeringConnectionAsync
        self.acceptVpcPeeringConnectionSyncOverride = acceptVpcPeeringConnectionSync
        self.advertiseByoipCidrAsyncOverride = advertiseByoipCidrAsync
        self.advertiseByoipCidrSyncOverride = advertiseByoipCidrSync
        self.allocateAddressAsyncOverride = allocateAddressAsync
        self.allocateAddressSyncOverride = allocateAddressSync
        self.allocateHostsAsyncOverride = allocateHostsAsync
        self.allocateHostsSyncOverride = allocateHostsSync
        self.applySecurityGroupsToClientVpnTargetNetworkAsyncOverride = applySecurityGroupsToClientVpnTargetNetworkAsync
        self.applySecurityGroupsToClientVpnTargetNetworkSyncOverride = applySecurityGroupsToClientVpnTargetNetworkSync
        self.assignIpv6AddressesAsyncOverride = assignIpv6AddressesAsync
        self.assignIpv6AddressesSyncOverride = assignIpv6AddressesSync
        self.assignPrivateIpAddressesAsyncOverride = assignPrivateIpAddressesAsync
        self.assignPrivateIpAddressesSyncOverride = assignPrivateIpAddressesSync
        self.associateAddressAsyncOverride = associateAddressAsync
        self.associateAddressSyncOverride = associateAddressSync
        self.associateClientVpnTargetNetworkAsyncOverride = associateClientVpnTargetNetworkAsync
        self.associateClientVpnTargetNetworkSyncOverride = associateClientVpnTargetNetworkSync
        self.associateDhcpOptionsAsyncOverride = associateDhcpOptionsAsync
        self.associateDhcpOptionsSyncOverride = associateDhcpOptionsSync
        self.associateEnclaveCertificateIamRoleAsyncOverride = associateEnclaveCertificateIamRoleAsync
        self.associateEnclaveCertificateIamRoleSyncOverride = associateEnclaveCertificateIamRoleSync
        self.associateIamInstanceProfileAsyncOverride = associateIamInstanceProfileAsync
        self.associateIamInstanceProfileSyncOverride = associateIamInstanceProfileSync
        self.associateRouteTableAsyncOverride = associateRouteTableAsync
        self.associateRouteTableSyncOverride = associateRouteTableSync
        self.associateSubnetCidrBlockAsyncOverride = associateSubnetCidrBlockAsync
        self.associateSubnetCidrBlockSyncOverride = associateSubnetCidrBlockSync
        self.associateTransitGatewayMulticastDomainAsyncOverride = associateTransitGatewayMulticastDomainAsync
        self.associateTransitGatewayMulticastDomainSyncOverride = associateTransitGatewayMulticastDomainSync
        self.associateTransitGatewayRouteTableAsyncOverride = associateTransitGatewayRouteTableAsync
        self.associateTransitGatewayRouteTableSyncOverride = associateTransitGatewayRouteTableSync
        self.associateVpcCidrBlockAsyncOverride = associateVpcCidrBlockAsync
        self.associateVpcCidrBlockSyncOverride = associateVpcCidrBlockSync
        self.attachClassicLinkVpcAsyncOverride = attachClassicLinkVpcAsync
        self.attachClassicLinkVpcSyncOverride = attachClassicLinkVpcSync
        self.attachInternetGatewayAsyncOverride = attachInternetGatewayAsync
        self.attachInternetGatewaySyncOverride = attachInternetGatewaySync
        self.attachNetworkInterfaceAsyncOverride = attachNetworkInterfaceAsync
        self.attachNetworkInterfaceSyncOverride = attachNetworkInterfaceSync
        self.attachVolumeAsyncOverride = attachVolumeAsync
        self.attachVolumeSyncOverride = attachVolumeSync
        self.attachVpnGatewayAsyncOverride = attachVpnGatewayAsync
        self.attachVpnGatewaySyncOverride = attachVpnGatewaySync
        self.authorizeClientVpnIngressAsyncOverride = authorizeClientVpnIngressAsync
        self.authorizeClientVpnIngressSyncOverride = authorizeClientVpnIngressSync
        self.authorizeSecurityGroupEgressAsyncOverride = authorizeSecurityGroupEgressAsync
        self.authorizeSecurityGroupEgressSyncOverride = authorizeSecurityGroupEgressSync
        self.authorizeSecurityGroupIngressAsyncOverride = authorizeSecurityGroupIngressAsync
        self.authorizeSecurityGroupIngressSyncOverride = authorizeSecurityGroupIngressSync
        self.bundleInstanceAsyncOverride = bundleInstanceAsync
        self.bundleInstanceSyncOverride = bundleInstanceSync
        self.cancelBundleTaskAsyncOverride = cancelBundleTaskAsync
        self.cancelBundleTaskSyncOverride = cancelBundleTaskSync
        self.cancelCapacityReservationAsyncOverride = cancelCapacityReservationAsync
        self.cancelCapacityReservationSyncOverride = cancelCapacityReservationSync
        self.cancelConversionTaskAsyncOverride = cancelConversionTaskAsync
        self.cancelConversionTaskSyncOverride = cancelConversionTaskSync
        self.cancelExportTaskAsyncOverride = cancelExportTaskAsync
        self.cancelExportTaskSyncOverride = cancelExportTaskSync
        self.cancelImportTaskAsyncOverride = cancelImportTaskAsync
        self.cancelImportTaskSyncOverride = cancelImportTaskSync
        self.cancelReservedInstancesListingAsyncOverride = cancelReservedInstancesListingAsync
        self.cancelReservedInstancesListingSyncOverride = cancelReservedInstancesListingSync
        self.cancelSpotFleetRequestsAsyncOverride = cancelSpotFleetRequestsAsync
        self.cancelSpotFleetRequestsSyncOverride = cancelSpotFleetRequestsSync
        self.cancelSpotInstanceRequestsAsyncOverride = cancelSpotInstanceRequestsAsync
        self.cancelSpotInstanceRequestsSyncOverride = cancelSpotInstanceRequestsSync
        self.confirmProductInstanceAsyncOverride = confirmProductInstanceAsync
        self.confirmProductInstanceSyncOverride = confirmProductInstanceSync
        self.copyFpgaImageAsyncOverride = copyFpgaImageAsync
        self.copyFpgaImageSyncOverride = copyFpgaImageSync
        self.copyImageAsyncOverride = copyImageAsync
        self.copyImageSyncOverride = copyImageSync
        self.copySnapshotAsyncOverride = copySnapshotAsync
        self.copySnapshotSyncOverride = copySnapshotSync
        self.createCapacityReservationAsyncOverride = createCapacityReservationAsync
        self.createCapacityReservationSyncOverride = createCapacityReservationSync
        self.createCarrierGatewayAsyncOverride = createCarrierGatewayAsync
        self.createCarrierGatewaySyncOverride = createCarrierGatewaySync
        self.createClientVpnEndpointAsyncOverride = createClientVpnEndpointAsync
        self.createClientVpnEndpointSyncOverride = createClientVpnEndpointSync
        self.createClientVpnRouteAsyncOverride = createClientVpnRouteAsync
        self.createClientVpnRouteSyncOverride = createClientVpnRouteSync
        self.createCustomerGatewayAsyncOverride = createCustomerGatewayAsync
        self.createCustomerGatewaySyncOverride = createCustomerGatewaySync
        self.createDefaultSubnetAsyncOverride = createDefaultSubnetAsync
        self.createDefaultSubnetSyncOverride = createDefaultSubnetSync
        self.createDefaultVpcAsyncOverride = createDefaultVpcAsync
        self.createDefaultVpcSyncOverride = createDefaultVpcSync
        self.createDhcpOptionsAsyncOverride = createDhcpOptionsAsync
        self.createDhcpOptionsSyncOverride = createDhcpOptionsSync
        self.createEgressOnlyInternetGatewayAsyncOverride = createEgressOnlyInternetGatewayAsync
        self.createEgressOnlyInternetGatewaySyncOverride = createEgressOnlyInternetGatewaySync
        self.createFleetAsyncOverride = createFleetAsync
        self.createFleetSyncOverride = createFleetSync
        self.createFlowLogsAsyncOverride = createFlowLogsAsync
        self.createFlowLogsSyncOverride = createFlowLogsSync
        self.createFpgaImageAsyncOverride = createFpgaImageAsync
        self.createFpgaImageSyncOverride = createFpgaImageSync
        self.createImageAsyncOverride = createImageAsync
        self.createImageSyncOverride = createImageSync
        self.createInstanceExportTaskAsyncOverride = createInstanceExportTaskAsync
        self.createInstanceExportTaskSyncOverride = createInstanceExportTaskSync
        self.createInternetGatewayAsyncOverride = createInternetGatewayAsync
        self.createInternetGatewaySyncOverride = createInternetGatewaySync
        self.createKeyPairAsyncOverride = createKeyPairAsync
        self.createKeyPairSyncOverride = createKeyPairSync
        self.createLaunchTemplateAsyncOverride = createLaunchTemplateAsync
        self.createLaunchTemplateSyncOverride = createLaunchTemplateSync
        self.createLaunchTemplateVersionAsyncOverride = createLaunchTemplateVersionAsync
        self.createLaunchTemplateVersionSyncOverride = createLaunchTemplateVersionSync
        self.createLocalGatewayRouteAsyncOverride = createLocalGatewayRouteAsync
        self.createLocalGatewayRouteSyncOverride = createLocalGatewayRouteSync
        self.createLocalGatewayRouteTableVpcAssociationAsyncOverride = createLocalGatewayRouteTableVpcAssociationAsync
        self.createLocalGatewayRouteTableVpcAssociationSyncOverride = createLocalGatewayRouteTableVpcAssociationSync
        self.createManagedPrefixListAsyncOverride = createManagedPrefixListAsync
        self.createManagedPrefixListSyncOverride = createManagedPrefixListSync
        self.createNatGatewayAsyncOverride = createNatGatewayAsync
        self.createNatGatewaySyncOverride = createNatGatewaySync
        self.createNetworkAclAsyncOverride = createNetworkAclAsync
        self.createNetworkAclSyncOverride = createNetworkAclSync
        self.createNetworkAclEntryAsyncOverride = createNetworkAclEntryAsync
        self.createNetworkAclEntrySyncOverride = createNetworkAclEntrySync
        self.createNetworkInsightsPathAsyncOverride = createNetworkInsightsPathAsync
        self.createNetworkInsightsPathSyncOverride = createNetworkInsightsPathSync
        self.createNetworkInterfaceAsyncOverride = createNetworkInterfaceAsync
        self.createNetworkInterfaceSyncOverride = createNetworkInterfaceSync
        self.createNetworkInterfacePermissionAsyncOverride = createNetworkInterfacePermissionAsync
        self.createNetworkInterfacePermissionSyncOverride = createNetworkInterfacePermissionSync
        self.createPlacementGroupAsyncOverride = createPlacementGroupAsync
        self.createPlacementGroupSyncOverride = createPlacementGroupSync
        self.createReservedInstancesListingAsyncOverride = createReservedInstancesListingAsync
        self.createReservedInstancesListingSyncOverride = createReservedInstancesListingSync
        self.createRouteAsyncOverride = createRouteAsync
        self.createRouteSyncOverride = createRouteSync
        self.createRouteTableAsyncOverride = createRouteTableAsync
        self.createRouteTableSyncOverride = createRouteTableSync
        self.createSecurityGroupAsyncOverride = createSecurityGroupAsync
        self.createSecurityGroupSyncOverride = createSecurityGroupSync
        self.createSnapshotAsyncOverride = createSnapshotAsync
        self.createSnapshotSyncOverride = createSnapshotSync
        self.createSnapshotsAsyncOverride = createSnapshotsAsync
        self.createSnapshotsSyncOverride = createSnapshotsSync
        self.createSpotDatafeedSubscriptionAsyncOverride = createSpotDatafeedSubscriptionAsync
        self.createSpotDatafeedSubscriptionSyncOverride = createSpotDatafeedSubscriptionSync
        self.createSubnetAsyncOverride = createSubnetAsync
        self.createSubnetSyncOverride = createSubnetSync
        self.createTagsAsyncOverride = createTagsAsync
        self.createTagsSyncOverride = createTagsSync
        self.createTrafficMirrorFilterAsyncOverride = createTrafficMirrorFilterAsync
        self.createTrafficMirrorFilterSyncOverride = createTrafficMirrorFilterSync
        self.createTrafficMirrorFilterRuleAsyncOverride = createTrafficMirrorFilterRuleAsync
        self.createTrafficMirrorFilterRuleSyncOverride = createTrafficMirrorFilterRuleSync
        self.createTrafficMirrorSessionAsyncOverride = createTrafficMirrorSessionAsync
        self.createTrafficMirrorSessionSyncOverride = createTrafficMirrorSessionSync
        self.createTrafficMirrorTargetAsyncOverride = createTrafficMirrorTargetAsync
        self.createTrafficMirrorTargetSyncOverride = createTrafficMirrorTargetSync
        self.createTransitGatewayAsyncOverride = createTransitGatewayAsync
        self.createTransitGatewaySyncOverride = createTransitGatewaySync
        self.createTransitGatewayConnectAsyncOverride = createTransitGatewayConnectAsync
        self.createTransitGatewayConnectSyncOverride = createTransitGatewayConnectSync
        self.createTransitGatewayConnectPeerAsyncOverride = createTransitGatewayConnectPeerAsync
        self.createTransitGatewayConnectPeerSyncOverride = createTransitGatewayConnectPeerSync
        self.createTransitGatewayMulticastDomainAsyncOverride = createTransitGatewayMulticastDomainAsync
        self.createTransitGatewayMulticastDomainSyncOverride = createTransitGatewayMulticastDomainSync
        self.createTransitGatewayPeeringAttachmentAsyncOverride = createTransitGatewayPeeringAttachmentAsync
        self.createTransitGatewayPeeringAttachmentSyncOverride = createTransitGatewayPeeringAttachmentSync
        self.createTransitGatewayPrefixListReferenceAsyncOverride = createTransitGatewayPrefixListReferenceAsync
        self.createTransitGatewayPrefixListReferenceSyncOverride = createTransitGatewayPrefixListReferenceSync
        self.createTransitGatewayRouteAsyncOverride = createTransitGatewayRouteAsync
        self.createTransitGatewayRouteSyncOverride = createTransitGatewayRouteSync
        self.createTransitGatewayRouteTableAsyncOverride = createTransitGatewayRouteTableAsync
        self.createTransitGatewayRouteTableSyncOverride = createTransitGatewayRouteTableSync
        self.createTransitGatewayVpcAttachmentAsyncOverride = createTransitGatewayVpcAttachmentAsync
        self.createTransitGatewayVpcAttachmentSyncOverride = createTransitGatewayVpcAttachmentSync
        self.createVolumeAsyncOverride = createVolumeAsync
        self.createVolumeSyncOverride = createVolumeSync
        self.createVpcAsyncOverride = createVpcAsync
        self.createVpcSyncOverride = createVpcSync
        self.createVpcEndpointAsyncOverride = createVpcEndpointAsync
        self.createVpcEndpointSyncOverride = createVpcEndpointSync
        self.createVpcEndpointConnectionNotificationAsyncOverride = createVpcEndpointConnectionNotificationAsync
        self.createVpcEndpointConnectionNotificationSyncOverride = createVpcEndpointConnectionNotificationSync
        self.createVpcEndpointServiceConfigurationAsyncOverride = createVpcEndpointServiceConfigurationAsync
        self.createVpcEndpointServiceConfigurationSyncOverride = createVpcEndpointServiceConfigurationSync
        self.createVpcPeeringConnectionAsyncOverride = createVpcPeeringConnectionAsync
        self.createVpcPeeringConnectionSyncOverride = createVpcPeeringConnectionSync
        self.createVpnConnectionAsyncOverride = createVpnConnectionAsync
        self.createVpnConnectionSyncOverride = createVpnConnectionSync
        self.createVpnConnectionRouteAsyncOverride = createVpnConnectionRouteAsync
        self.createVpnConnectionRouteSyncOverride = createVpnConnectionRouteSync
        self.createVpnGatewayAsyncOverride = createVpnGatewayAsync
        self.createVpnGatewaySyncOverride = createVpnGatewaySync
        self.deleteCarrierGatewayAsyncOverride = deleteCarrierGatewayAsync
        self.deleteCarrierGatewaySyncOverride = deleteCarrierGatewaySync
        self.deleteClientVpnEndpointAsyncOverride = deleteClientVpnEndpointAsync
        self.deleteClientVpnEndpointSyncOverride = deleteClientVpnEndpointSync
        self.deleteClientVpnRouteAsyncOverride = deleteClientVpnRouteAsync
        self.deleteClientVpnRouteSyncOverride = deleteClientVpnRouteSync
        self.deleteCustomerGatewayAsyncOverride = deleteCustomerGatewayAsync
        self.deleteCustomerGatewaySyncOverride = deleteCustomerGatewaySync
        self.deleteDhcpOptionsAsyncOverride = deleteDhcpOptionsAsync
        self.deleteDhcpOptionsSyncOverride = deleteDhcpOptionsSync
        self.deleteEgressOnlyInternetGatewayAsyncOverride = deleteEgressOnlyInternetGatewayAsync
        self.deleteEgressOnlyInternetGatewaySyncOverride = deleteEgressOnlyInternetGatewaySync
        self.deleteFleetsAsyncOverride = deleteFleetsAsync
        self.deleteFleetsSyncOverride = deleteFleetsSync
        self.deleteFlowLogsAsyncOverride = deleteFlowLogsAsync
        self.deleteFlowLogsSyncOverride = deleteFlowLogsSync
        self.deleteFpgaImageAsyncOverride = deleteFpgaImageAsync
        self.deleteFpgaImageSyncOverride = deleteFpgaImageSync
        self.deleteInternetGatewayAsyncOverride = deleteInternetGatewayAsync
        self.deleteInternetGatewaySyncOverride = deleteInternetGatewaySync
        self.deleteKeyPairAsyncOverride = deleteKeyPairAsync
        self.deleteKeyPairSyncOverride = deleteKeyPairSync
        self.deleteLaunchTemplateAsyncOverride = deleteLaunchTemplateAsync
        self.deleteLaunchTemplateSyncOverride = deleteLaunchTemplateSync
        self.deleteLaunchTemplateVersionsAsyncOverride = deleteLaunchTemplateVersionsAsync
        self.deleteLaunchTemplateVersionsSyncOverride = deleteLaunchTemplateVersionsSync
        self.deleteLocalGatewayRouteAsyncOverride = deleteLocalGatewayRouteAsync
        self.deleteLocalGatewayRouteSyncOverride = deleteLocalGatewayRouteSync
        self.deleteLocalGatewayRouteTableVpcAssociationAsyncOverride = deleteLocalGatewayRouteTableVpcAssociationAsync
        self.deleteLocalGatewayRouteTableVpcAssociationSyncOverride = deleteLocalGatewayRouteTableVpcAssociationSync
        self.deleteManagedPrefixListAsyncOverride = deleteManagedPrefixListAsync
        self.deleteManagedPrefixListSyncOverride = deleteManagedPrefixListSync
        self.deleteNatGatewayAsyncOverride = deleteNatGatewayAsync
        self.deleteNatGatewaySyncOverride = deleteNatGatewaySync
        self.deleteNetworkAclAsyncOverride = deleteNetworkAclAsync
        self.deleteNetworkAclSyncOverride = deleteNetworkAclSync
        self.deleteNetworkAclEntryAsyncOverride = deleteNetworkAclEntryAsync
        self.deleteNetworkAclEntrySyncOverride = deleteNetworkAclEntrySync
        self.deleteNetworkInsightsAnalysisAsyncOverride = deleteNetworkInsightsAnalysisAsync
        self.deleteNetworkInsightsAnalysisSyncOverride = deleteNetworkInsightsAnalysisSync
        self.deleteNetworkInsightsPathAsyncOverride = deleteNetworkInsightsPathAsync
        self.deleteNetworkInsightsPathSyncOverride = deleteNetworkInsightsPathSync
        self.deleteNetworkInterfaceAsyncOverride = deleteNetworkInterfaceAsync
        self.deleteNetworkInterfaceSyncOverride = deleteNetworkInterfaceSync
        self.deleteNetworkInterfacePermissionAsyncOverride = deleteNetworkInterfacePermissionAsync
        self.deleteNetworkInterfacePermissionSyncOverride = deleteNetworkInterfacePermissionSync
        self.deletePlacementGroupAsyncOverride = deletePlacementGroupAsync
        self.deletePlacementGroupSyncOverride = deletePlacementGroupSync
        self.deleteQueuedReservedInstancesAsyncOverride = deleteQueuedReservedInstancesAsync
        self.deleteQueuedReservedInstancesSyncOverride = deleteQueuedReservedInstancesSync
        self.deleteRouteAsyncOverride = deleteRouteAsync
        self.deleteRouteSyncOverride = deleteRouteSync
        self.deleteRouteTableAsyncOverride = deleteRouteTableAsync
        self.deleteRouteTableSyncOverride = deleteRouteTableSync
        self.deleteSecurityGroupAsyncOverride = deleteSecurityGroupAsync
        self.deleteSecurityGroupSyncOverride = deleteSecurityGroupSync
        self.deleteSnapshotAsyncOverride = deleteSnapshotAsync
        self.deleteSnapshotSyncOverride = deleteSnapshotSync
        self.deleteSpotDatafeedSubscriptionAsyncOverride = deleteSpotDatafeedSubscriptionAsync
        self.deleteSpotDatafeedSubscriptionSyncOverride = deleteSpotDatafeedSubscriptionSync
        self.deleteSubnetAsyncOverride = deleteSubnetAsync
        self.deleteSubnetSyncOverride = deleteSubnetSync
        self.deleteTagsAsyncOverride = deleteTagsAsync
        self.deleteTagsSyncOverride = deleteTagsSync
        self.deleteTrafficMirrorFilterAsyncOverride = deleteTrafficMirrorFilterAsync
        self.deleteTrafficMirrorFilterSyncOverride = deleteTrafficMirrorFilterSync
        self.deleteTrafficMirrorFilterRuleAsyncOverride = deleteTrafficMirrorFilterRuleAsync
        self.deleteTrafficMirrorFilterRuleSyncOverride = deleteTrafficMirrorFilterRuleSync
        self.deleteTrafficMirrorSessionAsyncOverride = deleteTrafficMirrorSessionAsync
        self.deleteTrafficMirrorSessionSyncOverride = deleteTrafficMirrorSessionSync
        self.deleteTrafficMirrorTargetAsyncOverride = deleteTrafficMirrorTargetAsync
        self.deleteTrafficMirrorTargetSyncOverride = deleteTrafficMirrorTargetSync
        self.deleteTransitGatewayAsyncOverride = deleteTransitGatewayAsync
        self.deleteTransitGatewaySyncOverride = deleteTransitGatewaySync
        self.deleteTransitGatewayConnectAsyncOverride = deleteTransitGatewayConnectAsync
        self.deleteTransitGatewayConnectSyncOverride = deleteTransitGatewayConnectSync
        self.deleteTransitGatewayConnectPeerAsyncOverride = deleteTransitGatewayConnectPeerAsync
        self.deleteTransitGatewayConnectPeerSyncOverride = deleteTransitGatewayConnectPeerSync
        self.deleteTransitGatewayMulticastDomainAsyncOverride = deleteTransitGatewayMulticastDomainAsync
        self.deleteTransitGatewayMulticastDomainSyncOverride = deleteTransitGatewayMulticastDomainSync
        self.deleteTransitGatewayPeeringAttachmentAsyncOverride = deleteTransitGatewayPeeringAttachmentAsync
        self.deleteTransitGatewayPeeringAttachmentSyncOverride = deleteTransitGatewayPeeringAttachmentSync
        self.deleteTransitGatewayPrefixListReferenceAsyncOverride = deleteTransitGatewayPrefixListReferenceAsync
        self.deleteTransitGatewayPrefixListReferenceSyncOverride = deleteTransitGatewayPrefixListReferenceSync
        self.deleteTransitGatewayRouteAsyncOverride = deleteTransitGatewayRouteAsync
        self.deleteTransitGatewayRouteSyncOverride = deleteTransitGatewayRouteSync
        self.deleteTransitGatewayRouteTableAsyncOverride = deleteTransitGatewayRouteTableAsync
        self.deleteTransitGatewayRouteTableSyncOverride = deleteTransitGatewayRouteTableSync
        self.deleteTransitGatewayVpcAttachmentAsyncOverride = deleteTransitGatewayVpcAttachmentAsync
        self.deleteTransitGatewayVpcAttachmentSyncOverride = deleteTransitGatewayVpcAttachmentSync
        self.deleteVolumeAsyncOverride = deleteVolumeAsync
        self.deleteVolumeSyncOverride = deleteVolumeSync
        self.deleteVpcAsyncOverride = deleteVpcAsync
        self.deleteVpcSyncOverride = deleteVpcSync
        self.deleteVpcEndpointConnectionNotificationsAsyncOverride = deleteVpcEndpointConnectionNotificationsAsync
        self.deleteVpcEndpointConnectionNotificationsSyncOverride = deleteVpcEndpointConnectionNotificationsSync
        self.deleteVpcEndpointServiceConfigurationsAsyncOverride = deleteVpcEndpointServiceConfigurationsAsync
        self.deleteVpcEndpointServiceConfigurationsSyncOverride = deleteVpcEndpointServiceConfigurationsSync
        self.deleteVpcEndpointsAsyncOverride = deleteVpcEndpointsAsync
        self.deleteVpcEndpointsSyncOverride = deleteVpcEndpointsSync
        self.deleteVpcPeeringConnectionAsyncOverride = deleteVpcPeeringConnectionAsync
        self.deleteVpcPeeringConnectionSyncOverride = deleteVpcPeeringConnectionSync
        self.deleteVpnConnectionAsyncOverride = deleteVpnConnectionAsync
        self.deleteVpnConnectionSyncOverride = deleteVpnConnectionSync
        self.deleteVpnConnectionRouteAsyncOverride = deleteVpnConnectionRouteAsync
        self.deleteVpnConnectionRouteSyncOverride = deleteVpnConnectionRouteSync
        self.deleteVpnGatewayAsyncOverride = deleteVpnGatewayAsync
        self.deleteVpnGatewaySyncOverride = deleteVpnGatewaySync
        self.deprovisionByoipCidrAsyncOverride = deprovisionByoipCidrAsync
        self.deprovisionByoipCidrSyncOverride = deprovisionByoipCidrSync
        self.deregisterImageAsyncOverride = deregisterImageAsync
        self.deregisterImageSyncOverride = deregisterImageSync
        self.deregisterInstanceEventNotificationAttributesAsyncOverride = deregisterInstanceEventNotificationAttributesAsync
        self.deregisterInstanceEventNotificationAttributesSyncOverride = deregisterInstanceEventNotificationAttributesSync
        self.deregisterTransitGatewayMulticastGroupMembersAsyncOverride = deregisterTransitGatewayMulticastGroupMembersAsync
        self.deregisterTransitGatewayMulticastGroupMembersSyncOverride = deregisterTransitGatewayMulticastGroupMembersSync
        self.deregisterTransitGatewayMulticastGroupSourcesAsyncOverride = deregisterTransitGatewayMulticastGroupSourcesAsync
        self.deregisterTransitGatewayMulticastGroupSourcesSyncOverride = deregisterTransitGatewayMulticastGroupSourcesSync
        self.describeAccountAttributesAsyncOverride = describeAccountAttributesAsync
        self.describeAccountAttributesSyncOverride = describeAccountAttributesSync
        self.describeAddressesAsyncOverride = describeAddressesAsync
        self.describeAddressesSyncOverride = describeAddressesSync
        self.describeAddressesAttributeAsyncOverride = describeAddressesAttributeAsync
        self.describeAddressesAttributeSyncOverride = describeAddressesAttributeSync
        self.describeAggregateIdFormatAsyncOverride = describeAggregateIdFormatAsync
        self.describeAggregateIdFormatSyncOverride = describeAggregateIdFormatSync
        self.describeAvailabilityZonesAsyncOverride = describeAvailabilityZonesAsync
        self.describeAvailabilityZonesSyncOverride = describeAvailabilityZonesSync
        self.describeBundleTasksAsyncOverride = describeBundleTasksAsync
        self.describeBundleTasksSyncOverride = describeBundleTasksSync
        self.describeByoipCidrsAsyncOverride = describeByoipCidrsAsync
        self.describeByoipCidrsSyncOverride = describeByoipCidrsSync
        self.describeCapacityReservationsAsyncOverride = describeCapacityReservationsAsync
        self.describeCapacityReservationsSyncOverride = describeCapacityReservationsSync
        self.describeCarrierGatewaysAsyncOverride = describeCarrierGatewaysAsync
        self.describeCarrierGatewaysSyncOverride = describeCarrierGatewaysSync
        self.describeClassicLinkInstancesAsyncOverride = describeClassicLinkInstancesAsync
        self.describeClassicLinkInstancesSyncOverride = describeClassicLinkInstancesSync
        self.describeClientVpnAuthorizationRulesAsyncOverride = describeClientVpnAuthorizationRulesAsync
        self.describeClientVpnAuthorizationRulesSyncOverride = describeClientVpnAuthorizationRulesSync
        self.describeClientVpnConnectionsAsyncOverride = describeClientVpnConnectionsAsync
        self.describeClientVpnConnectionsSyncOverride = describeClientVpnConnectionsSync
        self.describeClientVpnEndpointsAsyncOverride = describeClientVpnEndpointsAsync
        self.describeClientVpnEndpointsSyncOverride = describeClientVpnEndpointsSync
        self.describeClientVpnRoutesAsyncOverride = describeClientVpnRoutesAsync
        self.describeClientVpnRoutesSyncOverride = describeClientVpnRoutesSync
        self.describeClientVpnTargetNetworksAsyncOverride = describeClientVpnTargetNetworksAsync
        self.describeClientVpnTargetNetworksSyncOverride = describeClientVpnTargetNetworksSync
        self.describeCoipPoolsAsyncOverride = describeCoipPoolsAsync
        self.describeCoipPoolsSyncOverride = describeCoipPoolsSync
        self.describeConversionTasksAsyncOverride = describeConversionTasksAsync
        self.describeConversionTasksSyncOverride = describeConversionTasksSync
        self.describeCustomerGatewaysAsyncOverride = describeCustomerGatewaysAsync
        self.describeCustomerGatewaysSyncOverride = describeCustomerGatewaysSync
        self.describeDhcpOptionsAsyncOverride = describeDhcpOptionsAsync
        self.describeDhcpOptionsSyncOverride = describeDhcpOptionsSync
        self.describeEgressOnlyInternetGatewaysAsyncOverride = describeEgressOnlyInternetGatewaysAsync
        self.describeEgressOnlyInternetGatewaysSyncOverride = describeEgressOnlyInternetGatewaysSync
        self.describeElasticGpusAsyncOverride = describeElasticGpusAsync
        self.describeElasticGpusSyncOverride = describeElasticGpusSync
        self.describeExportImageTasksAsyncOverride = describeExportImageTasksAsync
        self.describeExportImageTasksSyncOverride = describeExportImageTasksSync
        self.describeExportTasksAsyncOverride = describeExportTasksAsync
        self.describeExportTasksSyncOverride = describeExportTasksSync
        self.describeFastSnapshotRestoresAsyncOverride = describeFastSnapshotRestoresAsync
        self.describeFastSnapshotRestoresSyncOverride = describeFastSnapshotRestoresSync
        self.describeFleetHistoryAsyncOverride = describeFleetHistoryAsync
        self.describeFleetHistorySyncOverride = describeFleetHistorySync
        self.describeFleetInstancesAsyncOverride = describeFleetInstancesAsync
        self.describeFleetInstancesSyncOverride = describeFleetInstancesSync
        self.describeFleetsAsyncOverride = describeFleetsAsync
        self.describeFleetsSyncOverride = describeFleetsSync
        self.describeFlowLogsAsyncOverride = describeFlowLogsAsync
        self.describeFlowLogsSyncOverride = describeFlowLogsSync
        self.describeFpgaImageAttributeAsyncOverride = describeFpgaImageAttributeAsync
        self.describeFpgaImageAttributeSyncOverride = describeFpgaImageAttributeSync
        self.describeFpgaImagesAsyncOverride = describeFpgaImagesAsync
        self.describeFpgaImagesSyncOverride = describeFpgaImagesSync
        self.describeHostReservationOfferingsAsyncOverride = describeHostReservationOfferingsAsync
        self.describeHostReservationOfferingsSyncOverride = describeHostReservationOfferingsSync
        self.describeHostReservationsAsyncOverride = describeHostReservationsAsync
        self.describeHostReservationsSyncOverride = describeHostReservationsSync
        self.describeHostsAsyncOverride = describeHostsAsync
        self.describeHostsSyncOverride = describeHostsSync
        self.describeIamInstanceProfileAssociationsAsyncOverride = describeIamInstanceProfileAssociationsAsync
        self.describeIamInstanceProfileAssociationsSyncOverride = describeIamInstanceProfileAssociationsSync
        self.describeIdFormatAsyncOverride = describeIdFormatAsync
        self.describeIdFormatSyncOverride = describeIdFormatSync
        self.describeIdentityIdFormatAsyncOverride = describeIdentityIdFormatAsync
        self.describeIdentityIdFormatSyncOverride = describeIdentityIdFormatSync
        self.describeImageAttributeAsyncOverride = describeImageAttributeAsync
        self.describeImageAttributeSyncOverride = describeImageAttributeSync
        self.describeImagesAsyncOverride = describeImagesAsync
        self.describeImagesSyncOverride = describeImagesSync
        self.describeImportImageTasksAsyncOverride = describeImportImageTasksAsync
        self.describeImportImageTasksSyncOverride = describeImportImageTasksSync
        self.describeImportSnapshotTasksAsyncOverride = describeImportSnapshotTasksAsync
        self.describeImportSnapshotTasksSyncOverride = describeImportSnapshotTasksSync
        self.describeInstanceAttributeAsyncOverride = describeInstanceAttributeAsync
        self.describeInstanceAttributeSyncOverride = describeInstanceAttributeSync
        self.describeInstanceCreditSpecificationsAsyncOverride = describeInstanceCreditSpecificationsAsync
        self.describeInstanceCreditSpecificationsSyncOverride = describeInstanceCreditSpecificationsSync
        self.describeInstanceEventNotificationAttributesAsyncOverride = describeInstanceEventNotificationAttributesAsync
        self.describeInstanceEventNotificationAttributesSyncOverride = describeInstanceEventNotificationAttributesSync
        self.describeInstanceStatusAsyncOverride = describeInstanceStatusAsync
        self.describeInstanceStatusSyncOverride = describeInstanceStatusSync
        self.describeInstanceTypeOfferingsAsyncOverride = describeInstanceTypeOfferingsAsync
        self.describeInstanceTypeOfferingsSyncOverride = describeInstanceTypeOfferingsSync
        self.describeInstanceTypesAsyncOverride = describeInstanceTypesAsync
        self.describeInstanceTypesSyncOverride = describeInstanceTypesSync
        self.describeInstancesAsyncOverride = describeInstancesAsync
        self.describeInstancesSyncOverride = describeInstancesSync
        self.describeInternetGatewaysAsyncOverride = describeInternetGatewaysAsync
        self.describeInternetGatewaysSyncOverride = describeInternetGatewaysSync
        self.describeIpv6PoolsAsyncOverride = describeIpv6PoolsAsync
        self.describeIpv6PoolsSyncOverride = describeIpv6PoolsSync
        self.describeKeyPairsAsyncOverride = describeKeyPairsAsync
        self.describeKeyPairsSyncOverride = describeKeyPairsSync
        self.describeLaunchTemplateVersionsAsyncOverride = describeLaunchTemplateVersionsAsync
        self.describeLaunchTemplateVersionsSyncOverride = describeLaunchTemplateVersionsSync
        self.describeLaunchTemplatesAsyncOverride = describeLaunchTemplatesAsync
        self.describeLaunchTemplatesSyncOverride = describeLaunchTemplatesSync
        self.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncOverride = describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsync
        self.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncOverride = describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSync
        self.describeLocalGatewayRouteTableVpcAssociationsAsyncOverride = describeLocalGatewayRouteTableVpcAssociationsAsync
        self.describeLocalGatewayRouteTableVpcAssociationsSyncOverride = describeLocalGatewayRouteTableVpcAssociationsSync
        self.describeLocalGatewayRouteTablesAsyncOverride = describeLocalGatewayRouteTablesAsync
        self.describeLocalGatewayRouteTablesSyncOverride = describeLocalGatewayRouteTablesSync
        self.describeLocalGatewayVirtualInterfaceGroupsAsyncOverride = describeLocalGatewayVirtualInterfaceGroupsAsync
        self.describeLocalGatewayVirtualInterfaceGroupsSyncOverride = describeLocalGatewayVirtualInterfaceGroupsSync
        self.describeLocalGatewayVirtualInterfacesAsyncOverride = describeLocalGatewayVirtualInterfacesAsync
        self.describeLocalGatewayVirtualInterfacesSyncOverride = describeLocalGatewayVirtualInterfacesSync
        self.describeLocalGatewaysAsyncOverride = describeLocalGatewaysAsync
        self.describeLocalGatewaysSyncOverride = describeLocalGatewaysSync
        self.describeManagedPrefixListsAsyncOverride = describeManagedPrefixListsAsync
        self.describeManagedPrefixListsSyncOverride = describeManagedPrefixListsSync
        self.describeMovingAddressesAsyncOverride = describeMovingAddressesAsync
        self.describeMovingAddressesSyncOverride = describeMovingAddressesSync
        self.describeNatGatewaysAsyncOverride = describeNatGatewaysAsync
        self.describeNatGatewaysSyncOverride = describeNatGatewaysSync
        self.describeNetworkAclsAsyncOverride = describeNetworkAclsAsync
        self.describeNetworkAclsSyncOverride = describeNetworkAclsSync
        self.describeNetworkInsightsAnalysesAsyncOverride = describeNetworkInsightsAnalysesAsync
        self.describeNetworkInsightsAnalysesSyncOverride = describeNetworkInsightsAnalysesSync
        self.describeNetworkInsightsPathsAsyncOverride = describeNetworkInsightsPathsAsync
        self.describeNetworkInsightsPathsSyncOverride = describeNetworkInsightsPathsSync
        self.describeNetworkInterfaceAttributeAsyncOverride = describeNetworkInterfaceAttributeAsync
        self.describeNetworkInterfaceAttributeSyncOverride = describeNetworkInterfaceAttributeSync
        self.describeNetworkInterfacePermissionsAsyncOverride = describeNetworkInterfacePermissionsAsync
        self.describeNetworkInterfacePermissionsSyncOverride = describeNetworkInterfacePermissionsSync
        self.describeNetworkInterfacesAsyncOverride = describeNetworkInterfacesAsync
        self.describeNetworkInterfacesSyncOverride = describeNetworkInterfacesSync
        self.describePlacementGroupsAsyncOverride = describePlacementGroupsAsync
        self.describePlacementGroupsSyncOverride = describePlacementGroupsSync
        self.describePrefixListsAsyncOverride = describePrefixListsAsync
        self.describePrefixListsSyncOverride = describePrefixListsSync
        self.describePrincipalIdFormatAsyncOverride = describePrincipalIdFormatAsync
        self.describePrincipalIdFormatSyncOverride = describePrincipalIdFormatSync
        self.describePublicIpv4PoolsAsyncOverride = describePublicIpv4PoolsAsync
        self.describePublicIpv4PoolsSyncOverride = describePublicIpv4PoolsSync
        self.describeRegionsAsyncOverride = describeRegionsAsync
        self.describeRegionsSyncOverride = describeRegionsSync
        self.describeReservedInstancesAsyncOverride = describeReservedInstancesAsync
        self.describeReservedInstancesSyncOverride = describeReservedInstancesSync
        self.describeReservedInstancesListingsAsyncOverride = describeReservedInstancesListingsAsync
        self.describeReservedInstancesListingsSyncOverride = describeReservedInstancesListingsSync
        self.describeReservedInstancesModificationsAsyncOverride = describeReservedInstancesModificationsAsync
        self.describeReservedInstancesModificationsSyncOverride = describeReservedInstancesModificationsSync
        self.describeReservedInstancesOfferingsAsyncOverride = describeReservedInstancesOfferingsAsync
        self.describeReservedInstancesOfferingsSyncOverride = describeReservedInstancesOfferingsSync
        self.describeRouteTablesAsyncOverride = describeRouteTablesAsync
        self.describeRouteTablesSyncOverride = describeRouteTablesSync
        self.describeScheduledInstanceAvailabilityAsyncOverride = describeScheduledInstanceAvailabilityAsync
        self.describeScheduledInstanceAvailabilitySyncOverride = describeScheduledInstanceAvailabilitySync
        self.describeScheduledInstancesAsyncOverride = describeScheduledInstancesAsync
        self.describeScheduledInstancesSyncOverride = describeScheduledInstancesSync
        self.describeSecurityGroupReferencesAsyncOverride = describeSecurityGroupReferencesAsync
        self.describeSecurityGroupReferencesSyncOverride = describeSecurityGroupReferencesSync
        self.describeSecurityGroupsAsyncOverride = describeSecurityGroupsAsync
        self.describeSecurityGroupsSyncOverride = describeSecurityGroupsSync
        self.describeSnapshotAttributeAsyncOverride = describeSnapshotAttributeAsync
        self.describeSnapshotAttributeSyncOverride = describeSnapshotAttributeSync
        self.describeSnapshotsAsyncOverride = describeSnapshotsAsync
        self.describeSnapshotsSyncOverride = describeSnapshotsSync
        self.describeSpotDatafeedSubscriptionAsyncOverride = describeSpotDatafeedSubscriptionAsync
        self.describeSpotDatafeedSubscriptionSyncOverride = describeSpotDatafeedSubscriptionSync
        self.describeSpotFleetInstancesAsyncOverride = describeSpotFleetInstancesAsync
        self.describeSpotFleetInstancesSyncOverride = describeSpotFleetInstancesSync
        self.describeSpotFleetRequestHistoryAsyncOverride = describeSpotFleetRequestHistoryAsync
        self.describeSpotFleetRequestHistorySyncOverride = describeSpotFleetRequestHistorySync
        self.describeSpotFleetRequestsAsyncOverride = describeSpotFleetRequestsAsync
        self.describeSpotFleetRequestsSyncOverride = describeSpotFleetRequestsSync
        self.describeSpotInstanceRequestsAsyncOverride = describeSpotInstanceRequestsAsync
        self.describeSpotInstanceRequestsSyncOverride = describeSpotInstanceRequestsSync
        self.describeSpotPriceHistoryAsyncOverride = describeSpotPriceHistoryAsync
        self.describeSpotPriceHistorySyncOverride = describeSpotPriceHistorySync
        self.describeStaleSecurityGroupsAsyncOverride = describeStaleSecurityGroupsAsync
        self.describeStaleSecurityGroupsSyncOverride = describeStaleSecurityGroupsSync
        self.describeSubnetsAsyncOverride = describeSubnetsAsync
        self.describeSubnetsSyncOverride = describeSubnetsSync
        self.describeTagsAsyncOverride = describeTagsAsync
        self.describeTagsSyncOverride = describeTagsSync
        self.describeTrafficMirrorFiltersAsyncOverride = describeTrafficMirrorFiltersAsync
        self.describeTrafficMirrorFiltersSyncOverride = describeTrafficMirrorFiltersSync
        self.describeTrafficMirrorSessionsAsyncOverride = describeTrafficMirrorSessionsAsync
        self.describeTrafficMirrorSessionsSyncOverride = describeTrafficMirrorSessionsSync
        self.describeTrafficMirrorTargetsAsyncOverride = describeTrafficMirrorTargetsAsync
        self.describeTrafficMirrorTargetsSyncOverride = describeTrafficMirrorTargetsSync
        self.describeTransitGatewayAttachmentsAsyncOverride = describeTransitGatewayAttachmentsAsync
        self.describeTransitGatewayAttachmentsSyncOverride = describeTransitGatewayAttachmentsSync
        self.describeTransitGatewayConnectPeersAsyncOverride = describeTransitGatewayConnectPeersAsync
        self.describeTransitGatewayConnectPeersSyncOverride = describeTransitGatewayConnectPeersSync
        self.describeTransitGatewayConnectsAsyncOverride = describeTransitGatewayConnectsAsync
        self.describeTransitGatewayConnectsSyncOverride = describeTransitGatewayConnectsSync
        self.describeTransitGatewayMulticastDomainsAsyncOverride = describeTransitGatewayMulticastDomainsAsync
        self.describeTransitGatewayMulticastDomainsSyncOverride = describeTransitGatewayMulticastDomainsSync
        self.describeTransitGatewayPeeringAttachmentsAsyncOverride = describeTransitGatewayPeeringAttachmentsAsync
        self.describeTransitGatewayPeeringAttachmentsSyncOverride = describeTransitGatewayPeeringAttachmentsSync
        self.describeTransitGatewayRouteTablesAsyncOverride = describeTransitGatewayRouteTablesAsync
        self.describeTransitGatewayRouteTablesSyncOverride = describeTransitGatewayRouteTablesSync
        self.describeTransitGatewayVpcAttachmentsAsyncOverride = describeTransitGatewayVpcAttachmentsAsync
        self.describeTransitGatewayVpcAttachmentsSyncOverride = describeTransitGatewayVpcAttachmentsSync
        self.describeTransitGatewaysAsyncOverride = describeTransitGatewaysAsync
        self.describeTransitGatewaysSyncOverride = describeTransitGatewaysSync
        self.describeVolumeAttributeAsyncOverride = describeVolumeAttributeAsync
        self.describeVolumeAttributeSyncOverride = describeVolumeAttributeSync
        self.describeVolumeStatusAsyncOverride = describeVolumeStatusAsync
        self.describeVolumeStatusSyncOverride = describeVolumeStatusSync
        self.describeVolumesAsyncOverride = describeVolumesAsync
        self.describeVolumesSyncOverride = describeVolumesSync
        self.describeVolumesModificationsAsyncOverride = describeVolumesModificationsAsync
        self.describeVolumesModificationsSyncOverride = describeVolumesModificationsSync
        self.describeVpcAttributeAsyncOverride = describeVpcAttributeAsync
        self.describeVpcAttributeSyncOverride = describeVpcAttributeSync
        self.describeVpcClassicLinkAsyncOverride = describeVpcClassicLinkAsync
        self.describeVpcClassicLinkSyncOverride = describeVpcClassicLinkSync
        self.describeVpcClassicLinkDnsSupportAsyncOverride = describeVpcClassicLinkDnsSupportAsync
        self.describeVpcClassicLinkDnsSupportSyncOverride = describeVpcClassicLinkDnsSupportSync
        self.describeVpcEndpointConnectionNotificationsAsyncOverride = describeVpcEndpointConnectionNotificationsAsync
        self.describeVpcEndpointConnectionNotificationsSyncOverride = describeVpcEndpointConnectionNotificationsSync
        self.describeVpcEndpointConnectionsAsyncOverride = describeVpcEndpointConnectionsAsync
        self.describeVpcEndpointConnectionsSyncOverride = describeVpcEndpointConnectionsSync
        self.describeVpcEndpointServiceConfigurationsAsyncOverride = describeVpcEndpointServiceConfigurationsAsync
        self.describeVpcEndpointServiceConfigurationsSyncOverride = describeVpcEndpointServiceConfigurationsSync
        self.describeVpcEndpointServicePermissionsAsyncOverride = describeVpcEndpointServicePermissionsAsync
        self.describeVpcEndpointServicePermissionsSyncOverride = describeVpcEndpointServicePermissionsSync
        self.describeVpcEndpointServicesAsyncOverride = describeVpcEndpointServicesAsync
        self.describeVpcEndpointServicesSyncOverride = describeVpcEndpointServicesSync
        self.describeVpcEndpointsAsyncOverride = describeVpcEndpointsAsync
        self.describeVpcEndpointsSyncOverride = describeVpcEndpointsSync
        self.describeVpcPeeringConnectionsAsyncOverride = describeVpcPeeringConnectionsAsync
        self.describeVpcPeeringConnectionsSyncOverride = describeVpcPeeringConnectionsSync
        self.describeVpcsAsyncOverride = describeVpcsAsync
        self.describeVpcsSyncOverride = describeVpcsSync
        self.describeVpnConnectionsAsyncOverride = describeVpnConnectionsAsync
        self.describeVpnConnectionsSyncOverride = describeVpnConnectionsSync
        self.describeVpnGatewaysAsyncOverride = describeVpnGatewaysAsync
        self.describeVpnGatewaysSyncOverride = describeVpnGatewaysSync
        self.detachClassicLinkVpcAsyncOverride = detachClassicLinkVpcAsync
        self.detachClassicLinkVpcSyncOverride = detachClassicLinkVpcSync
        self.detachInternetGatewayAsyncOverride = detachInternetGatewayAsync
        self.detachInternetGatewaySyncOverride = detachInternetGatewaySync
        self.detachNetworkInterfaceAsyncOverride = detachNetworkInterfaceAsync
        self.detachNetworkInterfaceSyncOverride = detachNetworkInterfaceSync
        self.detachVolumeAsyncOverride = detachVolumeAsync
        self.detachVolumeSyncOverride = detachVolumeSync
        self.detachVpnGatewayAsyncOverride = detachVpnGatewayAsync
        self.detachVpnGatewaySyncOverride = detachVpnGatewaySync
        self.disableEbsEncryptionByDefaultAsyncOverride = disableEbsEncryptionByDefaultAsync
        self.disableEbsEncryptionByDefaultSyncOverride = disableEbsEncryptionByDefaultSync
        self.disableFastSnapshotRestoresAsyncOverride = disableFastSnapshotRestoresAsync
        self.disableFastSnapshotRestoresSyncOverride = disableFastSnapshotRestoresSync
        self.disableTransitGatewayRouteTablePropagationAsyncOverride = disableTransitGatewayRouteTablePropagationAsync
        self.disableTransitGatewayRouteTablePropagationSyncOverride = disableTransitGatewayRouteTablePropagationSync
        self.disableVgwRoutePropagationAsyncOverride = disableVgwRoutePropagationAsync
        self.disableVgwRoutePropagationSyncOverride = disableVgwRoutePropagationSync
        self.disableVpcClassicLinkAsyncOverride = disableVpcClassicLinkAsync
        self.disableVpcClassicLinkSyncOverride = disableVpcClassicLinkSync
        self.disableVpcClassicLinkDnsSupportAsyncOverride = disableVpcClassicLinkDnsSupportAsync
        self.disableVpcClassicLinkDnsSupportSyncOverride = disableVpcClassicLinkDnsSupportSync
        self.disassociateAddressAsyncOverride = disassociateAddressAsync
        self.disassociateAddressSyncOverride = disassociateAddressSync
        self.disassociateClientVpnTargetNetworkAsyncOverride = disassociateClientVpnTargetNetworkAsync
        self.disassociateClientVpnTargetNetworkSyncOverride = disassociateClientVpnTargetNetworkSync
        self.disassociateEnclaveCertificateIamRoleAsyncOverride = disassociateEnclaveCertificateIamRoleAsync
        self.disassociateEnclaveCertificateIamRoleSyncOverride = disassociateEnclaveCertificateIamRoleSync
        self.disassociateIamInstanceProfileAsyncOverride = disassociateIamInstanceProfileAsync
        self.disassociateIamInstanceProfileSyncOverride = disassociateIamInstanceProfileSync
        self.disassociateRouteTableAsyncOverride = disassociateRouteTableAsync
        self.disassociateRouteTableSyncOverride = disassociateRouteTableSync
        self.disassociateSubnetCidrBlockAsyncOverride = disassociateSubnetCidrBlockAsync
        self.disassociateSubnetCidrBlockSyncOverride = disassociateSubnetCidrBlockSync
        self.disassociateTransitGatewayMulticastDomainAsyncOverride = disassociateTransitGatewayMulticastDomainAsync
        self.disassociateTransitGatewayMulticastDomainSyncOverride = disassociateTransitGatewayMulticastDomainSync
        self.disassociateTransitGatewayRouteTableAsyncOverride = disassociateTransitGatewayRouteTableAsync
        self.disassociateTransitGatewayRouteTableSyncOverride = disassociateTransitGatewayRouteTableSync
        self.disassociateVpcCidrBlockAsyncOverride = disassociateVpcCidrBlockAsync
        self.disassociateVpcCidrBlockSyncOverride = disassociateVpcCidrBlockSync
        self.enableEbsEncryptionByDefaultAsyncOverride = enableEbsEncryptionByDefaultAsync
        self.enableEbsEncryptionByDefaultSyncOverride = enableEbsEncryptionByDefaultSync
        self.enableFastSnapshotRestoresAsyncOverride = enableFastSnapshotRestoresAsync
        self.enableFastSnapshotRestoresSyncOverride = enableFastSnapshotRestoresSync
        self.enableTransitGatewayRouteTablePropagationAsyncOverride = enableTransitGatewayRouteTablePropagationAsync
        self.enableTransitGatewayRouteTablePropagationSyncOverride = enableTransitGatewayRouteTablePropagationSync
        self.enableVgwRoutePropagationAsyncOverride = enableVgwRoutePropagationAsync
        self.enableVgwRoutePropagationSyncOverride = enableVgwRoutePropagationSync
        self.enableVolumeIOAsyncOverride = enableVolumeIOAsync
        self.enableVolumeIOSyncOverride = enableVolumeIOSync
        self.enableVpcClassicLinkAsyncOverride = enableVpcClassicLinkAsync
        self.enableVpcClassicLinkSyncOverride = enableVpcClassicLinkSync
        self.enableVpcClassicLinkDnsSupportAsyncOverride = enableVpcClassicLinkDnsSupportAsync
        self.enableVpcClassicLinkDnsSupportSyncOverride = enableVpcClassicLinkDnsSupportSync
        self.exportClientVpnClientCertificateRevocationListAsyncOverride = exportClientVpnClientCertificateRevocationListAsync
        self.exportClientVpnClientCertificateRevocationListSyncOverride = exportClientVpnClientCertificateRevocationListSync
        self.exportClientVpnClientConfigurationAsyncOverride = exportClientVpnClientConfigurationAsync
        self.exportClientVpnClientConfigurationSyncOverride = exportClientVpnClientConfigurationSync
        self.exportImageAsyncOverride = exportImageAsync
        self.exportImageSyncOverride = exportImageSync
        self.exportTransitGatewayRoutesAsyncOverride = exportTransitGatewayRoutesAsync
        self.exportTransitGatewayRoutesSyncOverride = exportTransitGatewayRoutesSync
        self.getAssociatedEnclaveCertificateIamRolesAsyncOverride = getAssociatedEnclaveCertificateIamRolesAsync
        self.getAssociatedEnclaveCertificateIamRolesSyncOverride = getAssociatedEnclaveCertificateIamRolesSync
        self.getAssociatedIpv6PoolCidrsAsyncOverride = getAssociatedIpv6PoolCidrsAsync
        self.getAssociatedIpv6PoolCidrsSyncOverride = getAssociatedIpv6PoolCidrsSync
        self.getCapacityReservationUsageAsyncOverride = getCapacityReservationUsageAsync
        self.getCapacityReservationUsageSyncOverride = getCapacityReservationUsageSync
        self.getCoipPoolUsageAsyncOverride = getCoipPoolUsageAsync
        self.getCoipPoolUsageSyncOverride = getCoipPoolUsageSync
        self.getConsoleOutputAsyncOverride = getConsoleOutputAsync
        self.getConsoleOutputSyncOverride = getConsoleOutputSync
        self.getConsoleScreenshotAsyncOverride = getConsoleScreenshotAsync
        self.getConsoleScreenshotSyncOverride = getConsoleScreenshotSync
        self.getDefaultCreditSpecificationAsyncOverride = getDefaultCreditSpecificationAsync
        self.getDefaultCreditSpecificationSyncOverride = getDefaultCreditSpecificationSync
        self.getEbsDefaultKmsKeyIdAsyncOverride = getEbsDefaultKmsKeyIdAsync
        self.getEbsDefaultKmsKeyIdSyncOverride = getEbsDefaultKmsKeyIdSync
        self.getEbsEncryptionByDefaultAsyncOverride = getEbsEncryptionByDefaultAsync
        self.getEbsEncryptionByDefaultSyncOverride = getEbsEncryptionByDefaultSync
        self.getGroupsForCapacityReservationAsyncOverride = getGroupsForCapacityReservationAsync
        self.getGroupsForCapacityReservationSyncOverride = getGroupsForCapacityReservationSync
        self.getHostReservationPurchasePreviewAsyncOverride = getHostReservationPurchasePreviewAsync
        self.getHostReservationPurchasePreviewSyncOverride = getHostReservationPurchasePreviewSync
        self.getLaunchTemplateDataAsyncOverride = getLaunchTemplateDataAsync
        self.getLaunchTemplateDataSyncOverride = getLaunchTemplateDataSync
        self.getManagedPrefixListAssociationsAsyncOverride = getManagedPrefixListAssociationsAsync
        self.getManagedPrefixListAssociationsSyncOverride = getManagedPrefixListAssociationsSync
        self.getManagedPrefixListEntriesAsyncOverride = getManagedPrefixListEntriesAsync
        self.getManagedPrefixListEntriesSyncOverride = getManagedPrefixListEntriesSync
        self.getPasswordDataAsyncOverride = getPasswordDataAsync
        self.getPasswordDataSyncOverride = getPasswordDataSync
        self.getReservedInstancesExchangeQuoteAsyncOverride = getReservedInstancesExchangeQuoteAsync
        self.getReservedInstancesExchangeQuoteSyncOverride = getReservedInstancesExchangeQuoteSync
        self.getTransitGatewayAttachmentPropagationsAsyncOverride = getTransitGatewayAttachmentPropagationsAsync
        self.getTransitGatewayAttachmentPropagationsSyncOverride = getTransitGatewayAttachmentPropagationsSync
        self.getTransitGatewayMulticastDomainAssociationsAsyncOverride = getTransitGatewayMulticastDomainAssociationsAsync
        self.getTransitGatewayMulticastDomainAssociationsSyncOverride = getTransitGatewayMulticastDomainAssociationsSync
        self.getTransitGatewayPrefixListReferencesAsyncOverride = getTransitGatewayPrefixListReferencesAsync
        self.getTransitGatewayPrefixListReferencesSyncOverride = getTransitGatewayPrefixListReferencesSync
        self.getTransitGatewayRouteTableAssociationsAsyncOverride = getTransitGatewayRouteTableAssociationsAsync
        self.getTransitGatewayRouteTableAssociationsSyncOverride = getTransitGatewayRouteTableAssociationsSync
        self.getTransitGatewayRouteTablePropagationsAsyncOverride = getTransitGatewayRouteTablePropagationsAsync
        self.getTransitGatewayRouteTablePropagationsSyncOverride = getTransitGatewayRouteTablePropagationsSync
        self.importClientVpnClientCertificateRevocationListAsyncOverride = importClientVpnClientCertificateRevocationListAsync
        self.importClientVpnClientCertificateRevocationListSyncOverride = importClientVpnClientCertificateRevocationListSync
        self.importImageAsyncOverride = importImageAsync
        self.importImageSyncOverride = importImageSync
        self.importInstanceAsyncOverride = importInstanceAsync
        self.importInstanceSyncOverride = importInstanceSync
        self.importKeyPairAsyncOverride = importKeyPairAsync
        self.importKeyPairSyncOverride = importKeyPairSync
        self.importSnapshotAsyncOverride = importSnapshotAsync
        self.importSnapshotSyncOverride = importSnapshotSync
        self.importVolumeAsyncOverride = importVolumeAsync
        self.importVolumeSyncOverride = importVolumeSync
        self.modifyAddressAttributeAsyncOverride = modifyAddressAttributeAsync
        self.modifyAddressAttributeSyncOverride = modifyAddressAttributeSync
        self.modifyAvailabilityZoneGroupAsyncOverride = modifyAvailabilityZoneGroupAsync
        self.modifyAvailabilityZoneGroupSyncOverride = modifyAvailabilityZoneGroupSync
        self.modifyCapacityReservationAsyncOverride = modifyCapacityReservationAsync
        self.modifyCapacityReservationSyncOverride = modifyCapacityReservationSync
        self.modifyClientVpnEndpointAsyncOverride = modifyClientVpnEndpointAsync
        self.modifyClientVpnEndpointSyncOverride = modifyClientVpnEndpointSync
        self.modifyDefaultCreditSpecificationAsyncOverride = modifyDefaultCreditSpecificationAsync
        self.modifyDefaultCreditSpecificationSyncOverride = modifyDefaultCreditSpecificationSync
        self.modifyEbsDefaultKmsKeyIdAsyncOverride = modifyEbsDefaultKmsKeyIdAsync
        self.modifyEbsDefaultKmsKeyIdSyncOverride = modifyEbsDefaultKmsKeyIdSync
        self.modifyFleetAsyncOverride = modifyFleetAsync
        self.modifyFleetSyncOverride = modifyFleetSync
        self.modifyFpgaImageAttributeAsyncOverride = modifyFpgaImageAttributeAsync
        self.modifyFpgaImageAttributeSyncOverride = modifyFpgaImageAttributeSync
        self.modifyHostsAsyncOverride = modifyHostsAsync
        self.modifyHostsSyncOverride = modifyHostsSync
        self.modifyIdFormatAsyncOverride = modifyIdFormatAsync
        self.modifyIdFormatSyncOverride = modifyIdFormatSync
        self.modifyIdentityIdFormatAsyncOverride = modifyIdentityIdFormatAsync
        self.modifyIdentityIdFormatSyncOverride = modifyIdentityIdFormatSync
        self.modifyImageAttributeAsyncOverride = modifyImageAttributeAsync
        self.modifyImageAttributeSyncOverride = modifyImageAttributeSync
        self.modifyInstanceAttributeAsyncOverride = modifyInstanceAttributeAsync
        self.modifyInstanceAttributeSyncOverride = modifyInstanceAttributeSync
        self.modifyInstanceCapacityReservationAttributesAsyncOverride = modifyInstanceCapacityReservationAttributesAsync
        self.modifyInstanceCapacityReservationAttributesSyncOverride = modifyInstanceCapacityReservationAttributesSync
        self.modifyInstanceCreditSpecificationAsyncOverride = modifyInstanceCreditSpecificationAsync
        self.modifyInstanceCreditSpecificationSyncOverride = modifyInstanceCreditSpecificationSync
        self.modifyInstanceEventStartTimeAsyncOverride = modifyInstanceEventStartTimeAsync
        self.modifyInstanceEventStartTimeSyncOverride = modifyInstanceEventStartTimeSync
        self.modifyInstanceMetadataOptionsAsyncOverride = modifyInstanceMetadataOptionsAsync
        self.modifyInstanceMetadataOptionsSyncOverride = modifyInstanceMetadataOptionsSync
        self.modifyInstancePlacementAsyncOverride = modifyInstancePlacementAsync
        self.modifyInstancePlacementSyncOverride = modifyInstancePlacementSync
        self.modifyLaunchTemplateAsyncOverride = modifyLaunchTemplateAsync
        self.modifyLaunchTemplateSyncOverride = modifyLaunchTemplateSync
        self.modifyManagedPrefixListAsyncOverride = modifyManagedPrefixListAsync
        self.modifyManagedPrefixListSyncOverride = modifyManagedPrefixListSync
        self.modifyNetworkInterfaceAttributeAsyncOverride = modifyNetworkInterfaceAttributeAsync
        self.modifyNetworkInterfaceAttributeSyncOverride = modifyNetworkInterfaceAttributeSync
        self.modifyReservedInstancesAsyncOverride = modifyReservedInstancesAsync
        self.modifyReservedInstancesSyncOverride = modifyReservedInstancesSync
        self.modifySnapshotAttributeAsyncOverride = modifySnapshotAttributeAsync
        self.modifySnapshotAttributeSyncOverride = modifySnapshotAttributeSync
        self.modifySpotFleetRequestAsyncOverride = modifySpotFleetRequestAsync
        self.modifySpotFleetRequestSyncOverride = modifySpotFleetRequestSync
        self.modifySubnetAttributeAsyncOverride = modifySubnetAttributeAsync
        self.modifySubnetAttributeSyncOverride = modifySubnetAttributeSync
        self.modifyTrafficMirrorFilterNetworkServicesAsyncOverride = modifyTrafficMirrorFilterNetworkServicesAsync
        self.modifyTrafficMirrorFilterNetworkServicesSyncOverride = modifyTrafficMirrorFilterNetworkServicesSync
        self.modifyTrafficMirrorFilterRuleAsyncOverride = modifyTrafficMirrorFilterRuleAsync
        self.modifyTrafficMirrorFilterRuleSyncOverride = modifyTrafficMirrorFilterRuleSync
        self.modifyTrafficMirrorSessionAsyncOverride = modifyTrafficMirrorSessionAsync
        self.modifyTrafficMirrorSessionSyncOverride = modifyTrafficMirrorSessionSync
        self.modifyTransitGatewayAsyncOverride = modifyTransitGatewayAsync
        self.modifyTransitGatewaySyncOverride = modifyTransitGatewaySync
        self.modifyTransitGatewayPrefixListReferenceAsyncOverride = modifyTransitGatewayPrefixListReferenceAsync
        self.modifyTransitGatewayPrefixListReferenceSyncOverride = modifyTransitGatewayPrefixListReferenceSync
        self.modifyTransitGatewayVpcAttachmentAsyncOverride = modifyTransitGatewayVpcAttachmentAsync
        self.modifyTransitGatewayVpcAttachmentSyncOverride = modifyTransitGatewayVpcAttachmentSync
        self.modifyVolumeAsyncOverride = modifyVolumeAsync
        self.modifyVolumeSyncOverride = modifyVolumeSync
        self.modifyVolumeAttributeAsyncOverride = modifyVolumeAttributeAsync
        self.modifyVolumeAttributeSyncOverride = modifyVolumeAttributeSync
        self.modifyVpcAttributeAsyncOverride = modifyVpcAttributeAsync
        self.modifyVpcAttributeSyncOverride = modifyVpcAttributeSync
        self.modifyVpcEndpointAsyncOverride = modifyVpcEndpointAsync
        self.modifyVpcEndpointSyncOverride = modifyVpcEndpointSync
        self.modifyVpcEndpointConnectionNotificationAsyncOverride = modifyVpcEndpointConnectionNotificationAsync
        self.modifyVpcEndpointConnectionNotificationSyncOverride = modifyVpcEndpointConnectionNotificationSync
        self.modifyVpcEndpointServiceConfigurationAsyncOverride = modifyVpcEndpointServiceConfigurationAsync
        self.modifyVpcEndpointServiceConfigurationSyncOverride = modifyVpcEndpointServiceConfigurationSync
        self.modifyVpcEndpointServicePermissionsAsyncOverride = modifyVpcEndpointServicePermissionsAsync
        self.modifyVpcEndpointServicePermissionsSyncOverride = modifyVpcEndpointServicePermissionsSync
        self.modifyVpcPeeringConnectionOptionsAsyncOverride = modifyVpcPeeringConnectionOptionsAsync
        self.modifyVpcPeeringConnectionOptionsSyncOverride = modifyVpcPeeringConnectionOptionsSync
        self.modifyVpcTenancyAsyncOverride = modifyVpcTenancyAsync
        self.modifyVpcTenancySyncOverride = modifyVpcTenancySync
        self.modifyVpnConnectionAsyncOverride = modifyVpnConnectionAsync
        self.modifyVpnConnectionSyncOverride = modifyVpnConnectionSync
        self.modifyVpnConnectionOptionsAsyncOverride = modifyVpnConnectionOptionsAsync
        self.modifyVpnConnectionOptionsSyncOverride = modifyVpnConnectionOptionsSync
        self.modifyVpnTunnelCertificateAsyncOverride = modifyVpnTunnelCertificateAsync
        self.modifyVpnTunnelCertificateSyncOverride = modifyVpnTunnelCertificateSync
        self.modifyVpnTunnelOptionsAsyncOverride = modifyVpnTunnelOptionsAsync
        self.modifyVpnTunnelOptionsSyncOverride = modifyVpnTunnelOptionsSync
        self.monitorInstancesAsyncOverride = monitorInstancesAsync
        self.monitorInstancesSyncOverride = monitorInstancesSync
        self.moveAddressToVpcAsyncOverride = moveAddressToVpcAsync
        self.moveAddressToVpcSyncOverride = moveAddressToVpcSync
        self.provisionByoipCidrAsyncOverride = provisionByoipCidrAsync
        self.provisionByoipCidrSyncOverride = provisionByoipCidrSync
        self.purchaseHostReservationAsyncOverride = purchaseHostReservationAsync
        self.purchaseHostReservationSyncOverride = purchaseHostReservationSync
        self.purchaseReservedInstancesOfferingAsyncOverride = purchaseReservedInstancesOfferingAsync
        self.purchaseReservedInstancesOfferingSyncOverride = purchaseReservedInstancesOfferingSync
        self.purchaseScheduledInstancesAsyncOverride = purchaseScheduledInstancesAsync
        self.purchaseScheduledInstancesSyncOverride = purchaseScheduledInstancesSync
        self.rebootInstancesAsyncOverride = rebootInstancesAsync
        self.rebootInstancesSyncOverride = rebootInstancesSync
        self.registerImageAsyncOverride = registerImageAsync
        self.registerImageSyncOverride = registerImageSync
        self.registerInstanceEventNotificationAttributesAsyncOverride = registerInstanceEventNotificationAttributesAsync
        self.registerInstanceEventNotificationAttributesSyncOverride = registerInstanceEventNotificationAttributesSync
        self.registerTransitGatewayMulticastGroupMembersAsyncOverride = registerTransitGatewayMulticastGroupMembersAsync
        self.registerTransitGatewayMulticastGroupMembersSyncOverride = registerTransitGatewayMulticastGroupMembersSync
        self.registerTransitGatewayMulticastGroupSourcesAsyncOverride = registerTransitGatewayMulticastGroupSourcesAsync
        self.registerTransitGatewayMulticastGroupSourcesSyncOverride = registerTransitGatewayMulticastGroupSourcesSync
        self.rejectTransitGatewayMulticastDomainAssociationsAsyncOverride = rejectTransitGatewayMulticastDomainAssociationsAsync
        self.rejectTransitGatewayMulticastDomainAssociationsSyncOverride = rejectTransitGatewayMulticastDomainAssociationsSync
        self.rejectTransitGatewayPeeringAttachmentAsyncOverride = rejectTransitGatewayPeeringAttachmentAsync
        self.rejectTransitGatewayPeeringAttachmentSyncOverride = rejectTransitGatewayPeeringAttachmentSync
        self.rejectTransitGatewayVpcAttachmentAsyncOverride = rejectTransitGatewayVpcAttachmentAsync
        self.rejectTransitGatewayVpcAttachmentSyncOverride = rejectTransitGatewayVpcAttachmentSync
        self.rejectVpcEndpointConnectionsAsyncOverride = rejectVpcEndpointConnectionsAsync
        self.rejectVpcEndpointConnectionsSyncOverride = rejectVpcEndpointConnectionsSync
        self.rejectVpcPeeringConnectionAsyncOverride = rejectVpcPeeringConnectionAsync
        self.rejectVpcPeeringConnectionSyncOverride = rejectVpcPeeringConnectionSync
        self.releaseAddressAsyncOverride = releaseAddressAsync
        self.releaseAddressSyncOverride = releaseAddressSync
        self.releaseHostsAsyncOverride = releaseHostsAsync
        self.releaseHostsSyncOverride = releaseHostsSync
        self.replaceIamInstanceProfileAssociationAsyncOverride = replaceIamInstanceProfileAssociationAsync
        self.replaceIamInstanceProfileAssociationSyncOverride = replaceIamInstanceProfileAssociationSync
        self.replaceNetworkAclAssociationAsyncOverride = replaceNetworkAclAssociationAsync
        self.replaceNetworkAclAssociationSyncOverride = replaceNetworkAclAssociationSync
        self.replaceNetworkAclEntryAsyncOverride = replaceNetworkAclEntryAsync
        self.replaceNetworkAclEntrySyncOverride = replaceNetworkAclEntrySync
        self.replaceRouteAsyncOverride = replaceRouteAsync
        self.replaceRouteSyncOverride = replaceRouteSync
        self.replaceRouteTableAssociationAsyncOverride = replaceRouteTableAssociationAsync
        self.replaceRouteTableAssociationSyncOverride = replaceRouteTableAssociationSync
        self.replaceTransitGatewayRouteAsyncOverride = replaceTransitGatewayRouteAsync
        self.replaceTransitGatewayRouteSyncOverride = replaceTransitGatewayRouteSync
        self.reportInstanceStatusAsyncOverride = reportInstanceStatusAsync
        self.reportInstanceStatusSyncOverride = reportInstanceStatusSync
        self.requestSpotFleetAsyncOverride = requestSpotFleetAsync
        self.requestSpotFleetSyncOverride = requestSpotFleetSync
        self.requestSpotInstancesAsyncOverride = requestSpotInstancesAsync
        self.requestSpotInstancesSyncOverride = requestSpotInstancesSync
        self.resetAddressAttributeAsyncOverride = resetAddressAttributeAsync
        self.resetAddressAttributeSyncOverride = resetAddressAttributeSync
        self.resetEbsDefaultKmsKeyIdAsyncOverride = resetEbsDefaultKmsKeyIdAsync
        self.resetEbsDefaultKmsKeyIdSyncOverride = resetEbsDefaultKmsKeyIdSync
        self.resetFpgaImageAttributeAsyncOverride = resetFpgaImageAttributeAsync
        self.resetFpgaImageAttributeSyncOverride = resetFpgaImageAttributeSync
        self.resetImageAttributeAsyncOverride = resetImageAttributeAsync
        self.resetImageAttributeSyncOverride = resetImageAttributeSync
        self.resetInstanceAttributeAsyncOverride = resetInstanceAttributeAsync
        self.resetInstanceAttributeSyncOverride = resetInstanceAttributeSync
        self.resetNetworkInterfaceAttributeAsyncOverride = resetNetworkInterfaceAttributeAsync
        self.resetNetworkInterfaceAttributeSyncOverride = resetNetworkInterfaceAttributeSync
        self.resetSnapshotAttributeAsyncOverride = resetSnapshotAttributeAsync
        self.resetSnapshotAttributeSyncOverride = resetSnapshotAttributeSync
        self.restoreAddressToClassicAsyncOverride = restoreAddressToClassicAsync
        self.restoreAddressToClassicSyncOverride = restoreAddressToClassicSync
        self.restoreManagedPrefixListVersionAsyncOverride = restoreManagedPrefixListVersionAsync
        self.restoreManagedPrefixListVersionSyncOverride = restoreManagedPrefixListVersionSync
        self.revokeClientVpnIngressAsyncOverride = revokeClientVpnIngressAsync
        self.revokeClientVpnIngressSyncOverride = revokeClientVpnIngressSync
        self.revokeSecurityGroupEgressAsyncOverride = revokeSecurityGroupEgressAsync
        self.revokeSecurityGroupEgressSyncOverride = revokeSecurityGroupEgressSync
        self.revokeSecurityGroupIngressAsyncOverride = revokeSecurityGroupIngressAsync
        self.revokeSecurityGroupIngressSyncOverride = revokeSecurityGroupIngressSync
        self.runInstancesAsyncOverride = runInstancesAsync
        self.runInstancesSyncOverride = runInstancesSync
        self.runScheduledInstancesAsyncOverride = runScheduledInstancesAsync
        self.runScheduledInstancesSyncOverride = runScheduledInstancesSync
        self.searchLocalGatewayRoutesAsyncOverride = searchLocalGatewayRoutesAsync
        self.searchLocalGatewayRoutesSyncOverride = searchLocalGatewayRoutesSync
        self.searchTransitGatewayMulticastGroupsAsyncOverride = searchTransitGatewayMulticastGroupsAsync
        self.searchTransitGatewayMulticastGroupsSyncOverride = searchTransitGatewayMulticastGroupsSync
        self.searchTransitGatewayRoutesAsyncOverride = searchTransitGatewayRoutesAsync
        self.searchTransitGatewayRoutesSyncOverride = searchTransitGatewayRoutesSync
        self.sendDiagnosticInterruptAsyncOverride = sendDiagnosticInterruptAsync
        self.sendDiagnosticInterruptSyncOverride = sendDiagnosticInterruptSync
        self.startInstancesAsyncOverride = startInstancesAsync
        self.startInstancesSyncOverride = startInstancesSync
        self.startNetworkInsightsAnalysisAsyncOverride = startNetworkInsightsAnalysisAsync
        self.startNetworkInsightsAnalysisSyncOverride = startNetworkInsightsAnalysisSync
        self.startVpcEndpointServicePrivateDnsVerificationAsyncOverride = startVpcEndpointServicePrivateDnsVerificationAsync
        self.startVpcEndpointServicePrivateDnsVerificationSyncOverride = startVpcEndpointServicePrivateDnsVerificationSync
        self.stopInstancesAsyncOverride = stopInstancesAsync
        self.stopInstancesSyncOverride = stopInstancesSync
        self.terminateClientVpnConnectionsAsyncOverride = terminateClientVpnConnectionsAsync
        self.terminateClientVpnConnectionsSyncOverride = terminateClientVpnConnectionsSync
        self.terminateInstancesAsyncOverride = terminateInstancesAsync
        self.terminateInstancesSyncOverride = terminateInstancesSync
        self.unassignIpv6AddressesAsyncOverride = unassignIpv6AddressesAsync
        self.unassignIpv6AddressesSyncOverride = unassignIpv6AddressesSync
        self.unassignPrivateIpAddressesAsyncOverride = unassignPrivateIpAddressesAsync
        self.unassignPrivateIpAddressesSyncOverride = unassignPrivateIpAddressesSync
        self.unmonitorInstancesAsyncOverride = unmonitorInstancesAsync
        self.unmonitorInstancesSyncOverride = unmonitorInstancesSync
        self.updateSecurityGroupRuleDescriptionsEgressAsyncOverride = updateSecurityGroupRuleDescriptionsEgressAsync
        self.updateSecurityGroupRuleDescriptionsEgressSyncOverride = updateSecurityGroupRuleDescriptionsEgressSync
        self.updateSecurityGroupRuleDescriptionsIngressAsyncOverride = updateSecurityGroupRuleDescriptionsIngressAsync
        self.updateSecurityGroupRuleDescriptionsIngressSyncOverride = updateSecurityGroupRuleDescriptionsIngressSync
        self.withdrawByoipCidrAsyncOverride = withdrawByoipCidrAsync
        self.withdrawByoipCidrSyncOverride = withdrawByoipCidrSync
    }

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The AcceptReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    public func acceptReservedInstancesExchangeQuoteAsync(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult, ElasticComputeCloudError>) -> ()) throws {
        if let acceptReservedInstancesExchangeQuoteAsyncOverride = acceptReservedInstancesExchangeQuoteAsyncOverride {
            return try acceptReservedInstancesExchangeQuoteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptReservedInstancesExchangeQuoteSync(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult {
        if let acceptReservedInstancesExchangeQuoteSyncOverride = acceptReservedInstancesExchangeQuoteSyncOverride {
            return try acceptReservedInstancesExchangeQuoteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    public func acceptTransitGatewayMulticastDomainAssociationsAsync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let acceptTransitGatewayMulticastDomainAssociationsAsyncOverride = acceptTransitGatewayMulticastDomainAssociationsAsyncOverride {
            return try acceptTransitGatewayMulticastDomainAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayMulticastDomainAssociationsSync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult {
        if let acceptTransitGatewayMulticastDomainAssociationsSyncOverride = acceptTransitGatewayMulticastDomainAssociationsSyncOverride {
            return try acceptTransitGatewayMulticastDomainAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    public func acceptTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let acceptTransitGatewayPeeringAttachmentAsyncOverride = acceptTransitGatewayPeeringAttachmentAsyncOverride {
            return try acceptTransitGatewayPeeringAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult {
        if let acceptTransitGatewayPeeringAttachmentSyncOverride = acceptTransitGatewayPeeringAttachmentSyncOverride {
            return try acceptTransitGatewayPeeringAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    public func acceptTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let acceptTransitGatewayVpcAttachmentAsyncOverride = acceptTransitGatewayVpcAttachmentAsyncOverride {
            return try acceptTransitGatewayVpcAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult {
        if let acceptTransitGatewayVpcAttachmentSyncOverride = acceptTransitGatewayVpcAttachmentSyncOverride {
            return try acceptTransitGatewayVpcAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The AcceptVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    public func acceptVpcEndpointConnectionsAsync(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let acceptVpcEndpointConnectionsAsyncOverride = acceptVpcEndpointConnectionsAsyncOverride {
            return try acceptVpcEndpointConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcEndpointConnectionsSync(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult {
        if let acceptVpcEndpointConnectionsSyncOverride = acceptVpcEndpointConnectionsSyncOverride {
            return try acceptVpcEndpointConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The AcceptVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func acceptVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws {
        if let acceptVpcPeeringConnectionAsyncOverride = acceptVpcPeeringConnectionAsyncOverride {
            return try acceptVpcPeeringConnectionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult {
        if let acceptVpcPeeringConnectionSyncOverride = acceptVpcPeeringConnectionSyncOverride {
            return try acceptVpcPeeringConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
         - completion: The AdvertiseByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The AdvertiseByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func advertiseByoipCidrAsync(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AdvertiseByoipCidrResult, ElasticComputeCloudError>) -> ()) throws {
        if let advertiseByoipCidrAsyncOverride = advertiseByoipCidrAsyncOverride {
            return try advertiseByoipCidrAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AdvertiseByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func advertiseByoipCidrSync(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult {
        if let advertiseByoipCidrSyncOverride = advertiseByoipCidrSyncOverride {
            return try advertiseByoipCidrSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AllocateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
         - completion: The AllocateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateAddressResult
           object will be validated before being returned to caller.
     */
    public func allocateAddressAsync(
            input: ElasticComputeCloudModel.AllocateAddressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AllocateAddressResult, ElasticComputeCloudError>) -> ()) throws {
        if let allocateAddressAsyncOverride = allocateAddressAsyncOverride {
            return try allocateAddressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AllocateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateAddressSync(
            input: ElasticComputeCloudModel.AllocateAddressRequest) throws -> ElasticComputeCloudModel.AllocateAddressResult {
        if let allocateAddressSyncOverride = allocateAddressSyncOverride {
            return try allocateAddressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AllocateHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
         - completion: The AllocateHostsResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateHostsResult
           object will be validated before being returned to caller.
     */
    public func allocateHostsAsync(
            input: ElasticComputeCloudModel.AllocateHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AllocateHostsResult, ElasticComputeCloudError>) -> ()) throws {
        if let allocateHostsAsyncOverride = allocateHostsAsyncOverride {
            return try allocateHostsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AllocateHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateHostsSync(
            input: ElasticComputeCloudModel.AllocateHostsRequest) throws -> ElasticComputeCloudModel.AllocateHostsResult {
        if let allocateHostsSyncOverride = allocateHostsSyncOverride {
            return try allocateHostsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The ApplySecurityGroupsToClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The ApplySecurityGroupsToClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    public func applySecurityGroupsToClientVpnTargetNetworkAsync(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws {
        if let applySecurityGroupsToClientVpnTargetNetworkAsyncOverride = applySecurityGroupsToClientVpnTargetNetworkAsyncOverride {
            return try applySecurityGroupsToClientVpnTargetNetworkAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func applySecurityGroupsToClientVpnTargetNetworkSync(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult {
        if let applySecurityGroupsToClientVpnTargetNetworkSyncOverride = applySecurityGroupsToClientVpnTargetNetworkSyncOverride {
            return try applySecurityGroupsToClientVpnTargetNetworkSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
         - completion: The AssignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    public func assignIpv6AddressesAsync(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssignIpv6AddressesResult, ElasticComputeCloudError>) -> ()) throws {
        if let assignIpv6AddressesAsyncOverride = assignIpv6AddressesAsyncOverride {
            return try assignIpv6AddressesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignIpv6AddressesSync(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult {
        if let assignIpv6AddressesSyncOverride = assignIpv6AddressesSyncOverride {
            return try assignIpv6AddressesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
         - completion: The AssignPrivateIpAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignPrivateIpAddressesResult
           object will be validated before being returned to caller.
     */
    public func assignPrivateIpAddressesAsync(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssignPrivateIpAddressesResult, ElasticComputeCloudError>) -> ()) throws {
        if let assignPrivateIpAddressesAsyncOverride = assignPrivateIpAddressesAsyncOverride {
            return try assignPrivateIpAddressesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: The AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignPrivateIpAddressesSync(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult {
        if let assignPrivateIpAddressesSyncOverride = assignPrivateIpAddressesSyncOverride {
            return try assignPrivateIpAddressesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
         - completion: The AssociateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateAddressResult
           object will be validated before being returned to caller.
     */
    public func associateAddressAsync(
            input: ElasticComputeCloudModel.AssociateAddressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateAddressResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateAddressAsyncOverride = associateAddressAsyncOverride {
            return try associateAddressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateAddressSync(
            input: ElasticComputeCloudModel.AssociateAddressRequest) throws -> ElasticComputeCloudModel.AssociateAddressResult {
        if let associateAddressSyncOverride = associateAddressSyncOverride {
            return try associateAddressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The AssociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    public func associateClientVpnTargetNetworkAsync(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateClientVpnTargetNetworkAsyncOverride = associateClientVpnTargetNetworkAsyncOverride {
            return try associateClientVpnTargetNetworkAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateClientVpnTargetNetworkSync(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult {
        if let associateClientVpnTargetNetworkSyncOverride = associateClientVpnTargetNetworkSyncOverride {
            return try associateClientVpnTargetNetworkSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func associateDhcpOptionsAsync(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let associateDhcpOptionsAsyncOverride = associateDhcpOptionsAsyncOverride {
            return try associateDhcpOptionsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AssociateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    public func associateDhcpOptionsSync(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) throws {
        if let associateDhcpOptionsSyncOverride = associateDhcpOptionsSyncOverride {
            return try associateDhcpOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
         - completion: The AssociateEnclaveCertificateIamRoleResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateEnclaveCertificateIamRoleResult
           object will be validated before being returned to caller.
     */
    public func associateEnclaveCertificateIamRoleAsync(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateEnclaveCertificateIamRoleAsyncOverride = associateEnclaveCertificateIamRoleAsyncOverride {
            return try associateEnclaveCertificateIamRoleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateEnclaveCertificateIamRoleSync(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) throws -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult {
        if let associateEnclaveCertificateIamRoleSyncOverride = associateEnclaveCertificateIamRoleSyncOverride {
            return try associateEnclaveCertificateIamRoleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The AssociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    public func associateIamInstanceProfileAsync(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateIamInstanceProfileResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateIamInstanceProfileAsyncOverride = associateIamInstanceProfileAsyncOverride {
            return try associateIamInstanceProfileAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateIamInstanceProfileSync(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult {
        if let associateIamInstanceProfileSyncOverride = associateIamInstanceProfileSyncOverride {
            return try associateIamInstanceProfileSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
         - completion: The AssociateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateRouteTableResult
           object will be validated before being returned to caller.
     */
    public func associateRouteTableAsync(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateRouteTableResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateRouteTableAsyncOverride = associateRouteTableAsyncOverride {
            return try associateRouteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateRouteTableSync(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateRouteTableResult {
        if let associateRouteTableSyncOverride = associateRouteTableSyncOverride {
            return try associateRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The AssociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func associateSubnetCidrBlockAsync(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateSubnetCidrBlockAsyncOverride = associateSubnetCidrBlockAsyncOverride {
            return try associateSubnetCidrBlockAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateSubnetCidrBlockSync(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult {
        if let associateSubnetCidrBlockSyncOverride = associateSubnetCidrBlockSyncOverride {
            return try associateSubnetCidrBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    public func associateTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateTransitGatewayMulticastDomainAsyncOverride = associateTransitGatewayMulticastDomainAsyncOverride {
            return try associateTransitGatewayMulticastDomainAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult {
        if let associateTransitGatewayMulticastDomainSyncOverride = associateTransitGatewayMulticastDomainSyncOverride {
            return try associateTransitGatewayMulticastDomainSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    public func associateTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateTransitGatewayRouteTableAsyncOverride = associateTransitGatewayRouteTableAsyncOverride {
            return try associateTransitGatewayRouteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult {
        if let associateTransitGatewayRouteTableSyncOverride = associateTransitGatewayRouteTableSyncOverride {
            return try associateTransitGatewayRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The AssociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func associateVpcCidrBlockAsync(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AssociateVpcCidrBlockResult, ElasticComputeCloudError>) -> ()) throws {
        if let associateVpcCidrBlockAsyncOverride = associateVpcCidrBlockAsyncOverride {
            return try associateVpcCidrBlockAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateVpcCidrBlockSync(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult {
        if let associateVpcCidrBlockSyncOverride = associateVpcCidrBlockSyncOverride {
            return try associateVpcCidrBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
         - completion: The AttachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The AttachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    public func attachClassicLinkVpcAsync(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AttachClassicLinkVpcResult, ElasticComputeCloudError>) -> ()) throws {
        if let attachClassicLinkVpcAsyncOverride = attachClassicLinkVpcAsyncOverride {
            return try attachClassicLinkVpcAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AttachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachClassicLinkVpcSync(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult {
        if let attachClassicLinkVpcSyncOverride = attachClassicLinkVpcSyncOverride {
            return try attachClassicLinkVpcSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func attachInternetGatewayAsync(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let attachInternetGatewayAsyncOverride = attachInternetGatewayAsyncOverride {
            return try attachInternetGatewayAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AttachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    public func attachInternetGatewaySync(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest) throws {
        if let attachInternetGatewaySyncOverride = attachInternetGatewaySyncOverride {
            return try attachInternetGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
         - completion: The AttachNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The AttachNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    public func attachNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AttachNetworkInterfaceResult, ElasticComputeCloudError>) -> ()) throws {
        if let attachNetworkInterfaceAsyncOverride = attachNetworkInterfaceAsyncOverride {
            return try attachNetworkInterfaceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AttachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachNetworkInterfaceSync(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult {
        if let attachNetworkInterfaceSyncOverride = attachNetworkInterfaceSyncOverride {
            return try attachNetworkInterfaceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    public func attachVolumeAsync(
            input: ElasticComputeCloudModel.AttachVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, ElasticComputeCloudError>) -> ()) throws {
        if let attachVolumeAsyncOverride = attachVolumeAsyncOverride {
            return try attachVolumeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AttachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVolumeSync(
            input: ElasticComputeCloudModel.AttachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment {
        if let attachVolumeSyncOverride = attachVolumeSyncOverride {
            return try attachVolumeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AttachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
         - completion: The AttachVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The AttachVpnGatewayResult
           object will be validated before being returned to caller.
     */
    public func attachVpnGatewayAsync(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AttachVpnGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let attachVpnGatewayAsyncOverride = attachVpnGatewayAsyncOverride {
            return try attachVpnGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AttachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVpnGatewaySync(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult {
        if let attachVpnGatewaySyncOverride = attachVpnGatewaySyncOverride {
            return try attachVpnGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
         - completion: The AuthorizeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    public func authorizeClientVpnIngressAsync(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult, ElasticComputeCloudError>) -> ()) throws {
        if let authorizeClientVpnIngressAsyncOverride = authorizeClientVpnIngressAsyncOverride {
            return try authorizeClientVpnIngressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AuthorizeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func authorizeClientVpnIngressSync(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult {
        if let authorizeClientVpnIngressSyncOverride = authorizeClientVpnIngressSyncOverride {
            return try authorizeClientVpnIngressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func authorizeSecurityGroupEgressAsync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let authorizeSecurityGroupEgressAsyncOverride = authorizeSecurityGroupEgressAsyncOverride {
            return try authorizeSecurityGroupEgressAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    public func authorizeSecurityGroupEgressSync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) throws {
        if let authorizeSecurityGroupEgressSyncOverride = authorizeSecurityGroupEgressSyncOverride {
            return try authorizeSecurityGroupEgressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func authorizeSecurityGroupIngressAsync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let authorizeSecurityGroupIngressAsyncOverride = authorizeSecurityGroupIngressAsyncOverride {
            return try authorizeSecurityGroupIngressAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    public func authorizeSecurityGroupIngressSync(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) throws {
        if let authorizeSecurityGroupIngressSyncOverride = authorizeSecurityGroupIngressSyncOverride {
            return try authorizeSecurityGroupIngressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the BundleInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
         - completion: The BundleInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The BundleInstanceResult
           object will be validated before being returned to caller.
     */
    public func bundleInstanceAsync(
            input: ElasticComputeCloudModel.BundleInstanceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.BundleInstanceResult, ElasticComputeCloudError>) -> ()) throws {
        if let bundleInstanceAsyncOverride = bundleInstanceAsyncOverride {
            return try bundleInstanceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the BundleInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func bundleInstanceSync(
            input: ElasticComputeCloudModel.BundleInstanceRequest) throws -> ElasticComputeCloudModel.BundleInstanceResult {
        if let bundleInstanceSyncOverride = bundleInstanceSyncOverride {
            return try bundleInstanceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelBundleTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
         - completion: The CancelBundleTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelBundleTaskResult
           object will be validated before being returned to caller.
     */
    public func cancelBundleTaskAsync(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelBundleTaskResult, ElasticComputeCloudError>) -> ()) throws {
        if let cancelBundleTaskAsyncOverride = cancelBundleTaskAsyncOverride {
            return try cancelBundleTaskAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelBundleTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelBundleTaskSync(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest) throws -> ElasticComputeCloudModel.CancelBundleTaskResult {
        if let cancelBundleTaskSyncOverride = cancelBundleTaskSyncOverride {
            return try cancelBundleTaskSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
         - completion: The CancelCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CancelCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func cancelCapacityReservationAsync(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws {
        if let cancelCapacityReservationAsyncOverride = cancelCapacityReservationAsyncOverride {
            return try cancelCapacityReservationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelCapacityReservationSync(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult {
        if let cancelCapacityReservationSyncOverride = cancelCapacityReservationSyncOverride {
            return try cancelCapacityReservationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelConversionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func cancelConversionTaskAsync(
            input: ElasticComputeCloudModel.CancelConversionRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let cancelConversionTaskAsyncOverride = cancelConversionTaskAsyncOverride {
            return try cancelConversionTaskAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the CancelConversionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    public func cancelConversionTaskSync(
            input: ElasticComputeCloudModel.CancelConversionRequest) throws {
        if let cancelConversionTaskSyncOverride = cancelConversionTaskSyncOverride {
            return try cancelConversionTaskSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func cancelExportTaskAsync(
            input: ElasticComputeCloudModel.CancelExportTaskRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let cancelExportTaskAsyncOverride = cancelExportTaskAsyncOverride {
            return try cancelExportTaskAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    public func cancelExportTaskSync(
            input: ElasticComputeCloudModel.CancelExportTaskRequest) throws {
        if let cancelExportTaskSyncOverride = cancelExportTaskSyncOverride {
            return try cancelExportTaskSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelImportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
         - completion: The CancelImportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelImportTaskResult
           object will be validated before being returned to caller.
     */
    public func cancelImportTaskAsync(
            input: ElasticComputeCloudModel.CancelImportTaskRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelImportTaskResult, ElasticComputeCloudError>) -> ()) throws {
        if let cancelImportTaskAsyncOverride = cancelImportTaskAsyncOverride {
            return try cancelImportTaskAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelImportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelImportTaskSync(
            input: ElasticComputeCloudModel.CancelImportTaskRequest) throws -> ElasticComputeCloudModel.CancelImportTaskResult {
        if let cancelImportTaskSyncOverride = cancelImportTaskSyncOverride {
            return try cancelImportTaskSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
         - completion: The CancelReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CancelReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    public func cancelReservedInstancesListingAsync(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelReservedInstancesListingResult, ElasticComputeCloudError>) -> ()) throws {
        if let cancelReservedInstancesListingAsyncOverride = cancelReservedInstancesListingAsyncOverride {
            return try cancelReservedInstancesListingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelReservedInstancesListingSync(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult {
        if let cancelReservedInstancesListingSyncOverride = cancelReservedInstancesListingSyncOverride {
            return try cancelReservedInstancesListingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
         - completion: The CancelSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    public func cancelSpotFleetRequestsAsync(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse, ElasticComputeCloudError>) -> ()) throws {
        if let cancelSpotFleetRequestsAsyncOverride = cancelSpotFleetRequestsAsyncOverride {
            return try cancelSpotFleetRequestsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotFleetRequestsSync(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse {
        if let cancelSpotFleetRequestsSyncOverride = cancelSpotFleetRequestsSyncOverride {
            return try cancelSpotFleetRequestsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The CancelSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    public func cancelSpotInstanceRequestsAsync(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult, ElasticComputeCloudError>) -> ()) throws {
        if let cancelSpotInstanceRequestsAsyncOverride = cancelSpotInstanceRequestsAsyncOverride {
            return try cancelSpotInstanceRequestsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CancelSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotInstanceRequestsSync(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult {
        if let cancelSpotInstanceRequestsSyncOverride = cancelSpotInstanceRequestsSyncOverride {
            return try cancelSpotInstanceRequestsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ConfirmProductInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
         - completion: The ConfirmProductInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ConfirmProductInstanceResult
           object will be validated before being returned to caller.
     */
    public func confirmProductInstanceAsync(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ConfirmProductInstanceResult, ElasticComputeCloudError>) -> ()) throws {
        if let confirmProductInstanceAsyncOverride = confirmProductInstanceAsyncOverride {
            return try confirmProductInstanceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ConfirmProductInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func confirmProductInstanceSync(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult {
        if let confirmProductInstanceSyncOverride = confirmProductInstanceSyncOverride {
            return try confirmProductInstanceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
         - completion: The CopyFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyFpgaImageResult
           object will be validated before being returned to caller.
     */
    public func copyFpgaImageAsync(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CopyFpgaImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let copyFpgaImageAsyncOverride = copyFpgaImageAsyncOverride {
            return try copyFpgaImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyFpgaImageSync(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest) throws -> ElasticComputeCloudModel.CopyFpgaImageResult {
        if let copyFpgaImageSyncOverride = copyFpgaImageSyncOverride {
            return try copyFpgaImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
         - completion: The CopyImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyImageResult
           object will be validated before being returned to caller.
     */
    public func copyImageAsync(
            input: ElasticComputeCloudModel.CopyImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CopyImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let copyImageAsyncOverride = copyImageAsyncOverride {
            return try copyImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyImageSync(
            input: ElasticComputeCloudModel.CopyImageRequest) throws -> ElasticComputeCloudModel.CopyImageResult {
        if let copyImageSyncOverride = copyImageSyncOverride {
            return try copyImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopySnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
         - completion: The CopySnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The CopySnapshotResult
           object will be validated before being returned to caller.
     */
    public func copySnapshotAsync(
            input: ElasticComputeCloudModel.CopySnapshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CopySnapshotResult, ElasticComputeCloudError>) -> ()) throws {
        if let copySnapshotAsyncOverride = copySnapshotAsyncOverride {
            return try copySnapshotAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopySnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copySnapshotSync(
            input: ElasticComputeCloudModel.CopySnapshotRequest) throws -> ElasticComputeCloudModel.CopySnapshotResult {
        if let copySnapshotSyncOverride = copySnapshotSyncOverride {
            return try copySnapshotSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
         - completion: The CreateCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func createCapacityReservationAsync(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws {
        if let createCapacityReservationAsyncOverride = createCapacityReservationAsyncOverride {
            return try createCapacityReservationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCapacityReservationSync(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult {
        if let createCapacityReservationSyncOverride = createCapacityReservationSyncOverride {
            return try createCapacityReservationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCarrierGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
         - completion: The CreateCarrierGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCarrierGatewayResult
           object will be validated before being returned to caller.
     */
    public func createCarrierGatewayAsync(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCarrierGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createCarrierGatewayAsyncOverride = createCarrierGatewayAsyncOverride {
            return try createCarrierGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCarrierGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: The CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCarrierGatewaySync(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) throws -> ElasticComputeCloudModel.CreateCarrierGatewayResult {
        if let createCarrierGatewaySyncOverride = createCarrierGatewaySyncOverride {
            return try createCarrierGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
         - completion: The CreateClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    public func createClientVpnEndpointAsync(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws {
        if let createClientVpnEndpointAsyncOverride = createClientVpnEndpointAsyncOverride {
            return try createClientVpnEndpointAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createClientVpnEndpointSync(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult {
        if let createClientVpnEndpointSyncOverride = createClientVpnEndpointSyncOverride {
            return try createClientVpnEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
         - completion: The CreateClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    public func createClientVpnRouteAsync(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateClientVpnRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let createClientVpnRouteAsyncOverride = createClientVpnRouteAsyncOverride {
            return try createClientVpnRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createClientVpnRouteSync(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult {
        if let createClientVpnRouteSyncOverride = createClientVpnRouteSyncOverride {
            return try createClientVpnRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
         - completion: The CreateCustomerGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomerGatewayResult
           object will be validated before being returned to caller.
     */
    public func createCustomerGatewayAsync(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateCustomerGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createCustomerGatewayAsyncOverride = createCustomerGatewayAsyncOverride {
            return try createCustomerGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCustomerGatewaySync(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult {
        if let createCustomerGatewaySyncOverride = createCustomerGatewaySyncOverride {
            return try createCustomerGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDefaultSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
         - completion: The CreateDefaultSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultSubnetResult
           object will be validated before being returned to caller.
     */
    public func createDefaultSubnetAsync(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultSubnetResult, ElasticComputeCloudError>) -> ()) throws {
        if let createDefaultSubnetAsyncOverride = createDefaultSubnetAsyncOverride {
            return try createDefaultSubnetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDefaultSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultSubnetSync(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult {
        if let createDefaultSubnetSyncOverride = createDefaultSubnetSyncOverride {
            return try createDefaultSubnetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDefaultVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
         - completion: The CreateDefaultVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultVpcResult
           object will be validated before being returned to caller.
     */
    public func createDefaultVpcAsync(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDefaultVpcResult, ElasticComputeCloudError>) -> ()) throws {
        if let createDefaultVpcAsyncOverride = createDefaultVpcAsyncOverride {
            return try createDefaultVpcAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDefaultVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultVpcSync(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult {
        if let createDefaultVpcSyncOverride = createDefaultVpcSyncOverride {
            return try createDefaultVpcSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
         - completion: The CreateDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    public func createDhcpOptionsAsync(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateDhcpOptionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let createDhcpOptionsAsyncOverride = createDhcpOptionsAsyncOverride {
            return try createDhcpOptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDhcpOptionsSync(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult {
        if let createDhcpOptionsSyncOverride = createDhcpOptionsSyncOverride {
            return try createDhcpOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The CreateEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    public func createEgressOnlyInternetGatewayAsync(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createEgressOnlyInternetGatewayAsyncOverride = createEgressOnlyInternetGatewayAsyncOverride {
            return try createEgressOnlyInternetGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createEgressOnlyInternetGatewaySync(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult {
        if let createEgressOnlyInternetGatewaySyncOverride = createEgressOnlyInternetGatewaySyncOverride {
            return try createEgressOnlyInternetGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
         - completion: The CreateFleetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFleetResult
           object will be validated before being returned to caller.
     */
    public func createFleetAsync(
            input: ElasticComputeCloudModel.CreateFleetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFleetResult, ElasticComputeCloudError>) -> ()) throws {
        if let createFleetAsyncOverride = createFleetAsyncOverride {
            return try createFleetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFleetSync(
            input: ElasticComputeCloudModel.CreateFleetRequest) throws -> ElasticComputeCloudModel.CreateFleetResult {
        if let createFleetSyncOverride = createFleetSyncOverride {
            return try createFleetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
         - completion: The CreateFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFlowLogsResult
           object will be validated before being returned to caller.
     */
    public func createFlowLogsAsync(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFlowLogsResult, ElasticComputeCloudError>) -> ()) throws {
        if let createFlowLogsAsyncOverride = createFlowLogsAsyncOverride {
            return try createFlowLogsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFlowLogsSync(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest) throws -> ElasticComputeCloudModel.CreateFlowLogsResult {
        if let createFlowLogsSyncOverride = createFlowLogsSyncOverride {
            return try createFlowLogsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
         - completion: The CreateFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFpgaImageResult
           object will be validated before being returned to caller.
     */
    public func createFpgaImageAsync(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateFpgaImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let createFpgaImageAsyncOverride = createFpgaImageAsyncOverride {
            return try createFpgaImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFpgaImageSync(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest) throws -> ElasticComputeCloudModel.CreateFpgaImageResult {
        if let createFpgaImageSyncOverride = createFpgaImageSyncOverride {
            return try createFpgaImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
         - completion: The CreateImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateImageResult
           object will be validated before being returned to caller.
     */
    public func createImageAsync(
            input: ElasticComputeCloudModel.CreateImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let createImageAsyncOverride = createImageAsyncOverride {
            return try createImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createImageSync(
            input: ElasticComputeCloudModel.CreateImageRequest) throws -> ElasticComputeCloudModel.CreateImageResult {
        if let createImageSyncOverride = createImageSyncOverride {
            return try createImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateInstanceExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
         - completion: The CreateInstanceExportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInstanceExportTaskResult
           object will be validated before being returned to caller.
     */
    public func createInstanceExportTaskAsync(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateInstanceExportTaskResult, ElasticComputeCloudError>) -> ()) throws {
        if let createInstanceExportTaskAsyncOverride = createInstanceExportTaskAsyncOverride {
            return try createInstanceExportTaskAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateInstanceExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInstanceExportTaskSync(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult {
        if let createInstanceExportTaskSyncOverride = createInstanceExportTaskSyncOverride {
            return try createInstanceExportTaskSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
         - completion: The CreateInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInternetGatewayResult
           object will be validated before being returned to caller.
     */
    public func createInternetGatewayAsync(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createInternetGatewayAsyncOverride = createInternetGatewayAsyncOverride {
            return try createInternetGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInternetGatewaySync(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult {
        if let createInternetGatewaySyncOverride = createInternetGatewaySyncOverride {
            return try createInternetGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
         - completion: The KeyPair object or an error will be passed to this 
           callback when the operation is complete. The KeyPair
           object will be validated before being returned to caller.
     */
    public func createKeyPairAsync(
            input: ElasticComputeCloudModel.CreateKeyPairRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.KeyPair, ElasticComputeCloudError>) -> ()) throws {
        if let createKeyPairAsyncOverride = createKeyPairAsyncOverride {
            return try createKeyPairAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createKeyPairSync(
            input: ElasticComputeCloudModel.CreateKeyPairRequest) throws -> ElasticComputeCloudModel.KeyPair {
        if let createKeyPairSyncOverride = createKeyPairSyncOverride {
            return try createKeyPairSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    public func createLaunchTemplateAsync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws {
        if let createLaunchTemplateAsyncOverride = createLaunchTemplateAsyncOverride {
            return try createLaunchTemplateAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplateSync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult {
        if let createLaunchTemplateSyncOverride = createLaunchTemplateSyncOverride {
            return try createLaunchTemplateSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateVersionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateVersionResult
           object will be validated before being returned to caller.
     */
    public func createLaunchTemplateVersionAsync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult, ElasticComputeCloudError>) -> ()) throws {
        if let createLaunchTemplateVersionAsyncOverride = createLaunchTemplateVersionAsyncOverride {
            return try createLaunchTemplateVersionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplateVersionSync(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult {
        if let createLaunchTemplateVersionSyncOverride = createLaunchTemplateVersionSyncOverride {
            return try createLaunchTemplateVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLocalGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
         - completion: The CreateLocalGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLocalGatewayRouteResult
           object will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteAsync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let createLocalGatewayRouteAsyncOverride = createLocalGatewayRouteAsyncOverride {
            return try createLocalGatewayRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateLocalGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteSync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult {
        if let createLocalGatewayRouteSyncOverride = createLocalGatewayRouteSyncOverride {
            return try createLocalGatewayRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
         - completion: The CreateLocalGatewayRouteTableVpcAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLocalGatewayRouteTableVpcAssociationResult
           object will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteTableVpcAssociationAsync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult, ElasticComputeCloudError>) -> ()) throws {
        if let createLocalGatewayRouteTableVpcAssociationAsyncOverride = createLocalGatewayRouteTableVpcAssociationAsyncOverride {
            return try createLocalGatewayRouteTableVpcAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteTableVpcAssociationSync(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult {
        if let createLocalGatewayRouteTableVpcAssociationSyncOverride = createLocalGatewayRouteTableVpcAssociationSyncOverride {
            return try createLocalGatewayRouteTableVpcAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateManagedPrefixList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
         - completion: The CreateManagedPrefixListResult object or an error will be passed to this 
           callback when the operation is complete. The CreateManagedPrefixListResult
           object will be validated before being returned to caller.
     */
    public func createManagedPrefixListAsync(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws {
        if let createManagedPrefixListAsyncOverride = createManagedPrefixListAsyncOverride {
            return try createManagedPrefixListAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateManagedPrefixList operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: The CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createManagedPrefixListSync(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) throws -> ElasticComputeCloudModel.CreateManagedPrefixListResult {
        if let createManagedPrefixListSyncOverride = createManagedPrefixListSyncOverride {
            return try createManagedPrefixListSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
         - completion: The CreateNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNatGatewayResult
           object will be validated before being returned to caller.
     */
    public func createNatGatewayAsync(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNatGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createNatGatewayAsyncOverride = createNatGatewayAsyncOverride {
            return try createNatGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNatGatewaySync(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest) throws -> ElasticComputeCloudModel.CreateNatGatewayResult {
        if let createNatGatewaySyncOverride = createNatGatewaySyncOverride {
            return try createNatGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
         - completion: The CreateNetworkAclResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkAclResult
           object will be validated before being returned to caller.
     */
    public func createNetworkAclAsync(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkAclResult, ElasticComputeCloudError>) -> ()) throws {
        if let createNetworkAclAsyncOverride = createNetworkAclAsyncOverride {
            return try createNetworkAclAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkAclSync(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest) throws -> ElasticComputeCloudModel.CreateNetworkAclResult {
        if let createNetworkAclSyncOverride = createNetworkAclSyncOverride {
            return try createNetworkAclSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createNetworkAclEntryAsync(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let createNetworkAclEntryAsyncOverride = createNetworkAclEntryAsyncOverride {
            return try createNetworkAclEntryAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the CreateNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    public func createNetworkAclEntrySync(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) throws {
        if let createNetworkAclEntrySyncOverride = createNetworkAclEntrySyncOverride {
            return try createNetworkAclEntrySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInsightsPath operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
         - completion: The CreateNetworkInsightsPathResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInsightsPathResult
           object will be validated before being returned to caller.
     */
    public func createNetworkInsightsPathAsync(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInsightsPathResult, ElasticComputeCloudError>) -> ()) throws {
        if let createNetworkInsightsPathAsyncOverride = createNetworkInsightsPathAsyncOverride {
            return try createNetworkInsightsPathAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateNetworkInsightsPath operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInsightsPathSync(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) throws -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult {
        if let createNetworkInsightsPathSyncOverride = createNetworkInsightsPathSyncOverride {
            return try createNetworkInsightsPathSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
         - completion: The CreateNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    public func createNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfaceResult, ElasticComputeCloudError>) -> ()) throws {
        if let createNetworkInterfaceAsyncOverride = createNetworkInterfaceAsyncOverride {
            return try createNetworkInterfaceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterfaceSync(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult {
        if let createNetworkInterfaceSyncOverride = createNetworkInterfaceSyncOverride {
            return try createNetworkInterfaceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The CreateNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    public func createNetworkInterfacePermissionAsync(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult, ElasticComputeCloudError>) -> ()) throws {
        if let createNetworkInterfacePermissionAsyncOverride = createNetworkInterfacePermissionAsyncOverride {
            return try createNetworkInterfacePermissionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterfacePermissionSync(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult {
        if let createNetworkInterfacePermissionSyncOverride = createNetworkInterfacePermissionSyncOverride {
            return try createNetworkInterfacePermissionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
         - completion: The CreatePlacementGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreatePlacementGroupResult
           object will be validated before being returned to caller.
     */
    public func createPlacementGroupAsync(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreatePlacementGroupResult, ElasticComputeCloudError>) -> ()) throws {
        if let createPlacementGroupAsyncOverride = createPlacementGroupAsyncOverride {
            return try createPlacementGroupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreatePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: The CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createPlacementGroupSync(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest) throws -> ElasticComputeCloudModel.CreatePlacementGroupResult {
        if let createPlacementGroupSyncOverride = createPlacementGroupSyncOverride {
            return try createPlacementGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
         - completion: The CreateReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CreateReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    public func createReservedInstancesListingAsync(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateReservedInstancesListingResult, ElasticComputeCloudError>) -> ()) throws {
        if let createReservedInstancesListingAsyncOverride = createReservedInstancesListingAsyncOverride {
            return try createReservedInstancesListingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createReservedInstancesListingSync(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult {
        if let createReservedInstancesListingSyncOverride = createReservedInstancesListingSyncOverride {
            return try createReservedInstancesListingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
         - completion: The CreateRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteResult
           object will be validated before being returned to caller.
     */
    public func createRouteAsync(
            input: ElasticComputeCloudModel.CreateRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let createRouteAsyncOverride = createRouteAsyncOverride {
            return try createRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRouteSync(
            input: ElasticComputeCloudModel.CreateRouteRequest) throws -> ElasticComputeCloudModel.CreateRouteResult {
        if let createRouteSyncOverride = createRouteSyncOverride {
            return try createRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
         - completion: The CreateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteTableResult
           object will be validated before being returned to caller.
     */
    public func createRouteTableAsync(
            input: ElasticComputeCloudModel.CreateRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateRouteTableResult, ElasticComputeCloudError>) -> ()) throws {
        if let createRouteTableAsyncOverride = createRouteTableAsyncOverride {
            return try createRouteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRouteTableSync(
            input: ElasticComputeCloudModel.CreateRouteTableRequest) throws -> ElasticComputeCloudModel.CreateRouteTableResult {
        if let createRouteTableSyncOverride = createRouteTableSyncOverride {
            return try createRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
         - completion: The CreateSecurityGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityGroupResult
           object will be validated before being returned to caller.
     */
    public func createSecurityGroupAsync(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSecurityGroupResult, ElasticComputeCloudError>) -> ()) throws {
        if let createSecurityGroupAsyncOverride = createSecurityGroupAsyncOverride {
            return try createSecurityGroupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSecurityGroupSync(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult {
        if let createSecurityGroupSyncOverride = createSecurityGroupSyncOverride {
            return try createSecurityGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
         - completion: The Snapshot object or an error will be passed to this 
           callback when the operation is complete. The Snapshot
           object will be validated before being returned to caller.
     */
    public func createSnapshotAsync(
            input: ElasticComputeCloudModel.CreateSnapshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.Snapshot, ElasticComputeCloudError>) -> ()) throws {
        if let createSnapshotAsyncOverride = createSnapshotAsyncOverride {
            return try createSnapshotAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshotSync(
            input: ElasticComputeCloudModel.CreateSnapshotRequest) throws -> ElasticComputeCloudModel.Snapshot {
        if let createSnapshotSyncOverride = createSnapshotSyncOverride {
            return try createSnapshotSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
         - completion: The CreateSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSnapshotsResult
           object will be validated before being returned to caller.
     */
    public func createSnapshotsAsync(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSnapshotsResult, ElasticComputeCloudError>) -> ()) throws {
        if let createSnapshotsAsyncOverride = createSnapshotsAsyncOverride {
            return try createSnapshotsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: The CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshotsSync(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest) throws -> ElasticComputeCloudModel.CreateSnapshotsResult {
        if let createSnapshotsSyncOverride = createSnapshotsSyncOverride {
            return try createSnapshotsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The CreateSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    public func createSpotDatafeedSubscriptionAsync(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult, ElasticComputeCloudError>) -> ()) throws {
        if let createSpotDatafeedSubscriptionAsyncOverride = createSpotDatafeedSubscriptionAsyncOverride {
            return try createSpotDatafeedSubscriptionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSpotDatafeedSubscriptionSync(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult {
        if let createSpotDatafeedSubscriptionSyncOverride = createSpotDatafeedSubscriptionSyncOverride {
            return try createSpotDatafeedSubscriptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
         - completion: The CreateSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSubnetResult
           object will be validated before being returned to caller.
     */
    public func createSubnetAsync(
            input: ElasticComputeCloudModel.CreateSubnetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateSubnetResult, ElasticComputeCloudError>) -> ()) throws {
        if let createSubnetAsyncOverride = createSubnetAsyncOverride {
            return try createSubnetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSubnetSync(
            input: ElasticComputeCloudModel.CreateSubnetRequest) throws -> ElasticComputeCloudModel.CreateSubnetResult {
        if let createSubnetSyncOverride = createSubnetSyncOverride {
            return try createSubnetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createTagsAsync(
            input: ElasticComputeCloudModel.CreateTagsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let createTagsAsyncOverride = createTagsAsyncOverride {
            return try createTagsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the CreateTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    public func createTagsSync(
            input: ElasticComputeCloudModel.CreateTagsRequest) throws {
        if let createTagsSyncOverride = createTagsSyncOverride {
            return try createTagsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorFilter operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorFilterResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorFilterResult
           object will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilterAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTrafficMirrorFilterAsyncOverride = createTrafficMirrorFilterAsyncOverride {
            return try createTrafficMirrorFilterAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTrafficMirrorFilter operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilterSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult {
        if let createTrafficMirrorFilterSyncOverride = createTrafficMirrorFilterSyncOverride {
            return try createTrafficMirrorFilterSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilterRuleAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTrafficMirrorFilterRuleAsyncOverride = createTrafficMirrorFilterRuleAsyncOverride {
            return try createTrafficMirrorFilterRuleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilterRuleSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult {
        if let createTrafficMirrorFilterRuleSyncOverride = createTrafficMirrorFilterRuleSyncOverride {
            return try createTrafficMirrorFilterRuleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    public func createTrafficMirrorSessionAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTrafficMirrorSessionAsyncOverride = createTrafficMirrorSessionAsyncOverride {
            return try createTrafficMirrorSessionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorSessionSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult {
        if let createTrafficMirrorSessionSyncOverride = createTrafficMirrorSessionSyncOverride {
            return try createTrafficMirrorSessionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTrafficMirrorTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
         - completion: The CreateTrafficMirrorTargetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTrafficMirrorTargetResult
           object will be validated before being returned to caller.
     */
    public func createTrafficMirrorTargetAsync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTrafficMirrorTargetAsyncOverride = createTrafficMirrorTargetAsyncOverride {
            return try createTrafficMirrorTargetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTrafficMirrorTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorTargetSync(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult {
        if let createTrafficMirrorTargetSyncOverride = createTrafficMirrorTargetSyncOverride {
            return try createTrafficMirrorTargetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
         - completion: The CreateTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayAsyncOverride = createTransitGatewayAsyncOverride {
            return try createTransitGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewaySync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult {
        if let createTransitGatewaySyncOverride = createTransitGatewaySyncOverride {
            return try createTransitGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayConnect operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
         - completion: The CreateTransitGatewayConnectResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayConnectResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayConnectAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayConnectResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayConnectAsyncOverride = createTransitGatewayConnectAsyncOverride {
            return try createTransitGatewayConnectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayConnect operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayConnectSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult {
        if let createTransitGatewayConnectSyncOverride = createTransitGatewayConnectSyncOverride {
            return try createTransitGatewayConnectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayConnectPeer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
         - completion: The CreateTransitGatewayConnectPeerResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayConnectPeerResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayConnectPeerAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayConnectPeerAsyncOverride = createTransitGatewayConnectPeerAsyncOverride {
            return try createTransitGatewayConnectPeerAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayConnectPeer operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayConnectPeerSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult {
        if let createTransitGatewayConnectPeerSyncOverride = createTransitGatewayConnectPeerSyncOverride {
            return try createTransitGatewayConnectPeerSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The CreateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayMulticastDomainAsyncOverride = createTransitGatewayMulticastDomainAsyncOverride {
            return try createTransitGatewayMulticastDomainAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult {
        if let createTransitGatewayMulticastDomainSyncOverride = createTransitGatewayMulticastDomainSyncOverride {
            return try createTransitGatewayMulticastDomainSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayPeeringAttachmentAsyncOverride = createTransitGatewayPeeringAttachmentAsyncOverride {
            return try createTransitGatewayPeeringAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult {
        if let createTransitGatewayPeeringAttachmentSyncOverride = createTransitGatewayPeeringAttachmentSyncOverride {
            return try createTransitGatewayPeeringAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
         - completion: The CreateTransitGatewayPrefixListReferenceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayPrefixListReferenceResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayPrefixListReferenceAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayPrefixListReferenceAsyncOverride = createTransitGatewayPrefixListReferenceAsyncOverride {
            return try createTransitGatewayPrefixListReferenceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPrefixListReferenceSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult {
        if let createTransitGatewayPrefixListReferenceSyncOverride = createTransitGatewayPrefixListReferenceSyncOverride {
            return try createTransitGatewayPrefixListReferenceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayRouteAsyncOverride = createTransitGatewayRouteAsyncOverride {
            return try createTransitGatewayRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult {
        if let createTransitGatewayRouteSyncOverride = createTransitGatewayRouteSyncOverride {
            return try createTransitGatewayRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayRouteTableAsyncOverride = createTransitGatewayRouteTableAsyncOverride {
            return try createTransitGatewayRouteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult {
        if let createTransitGatewayRouteTableSyncOverride = createTransitGatewayRouteTableSyncOverride {
            return try createTransitGatewayRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    public func createTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let createTransitGatewayVpcAttachmentAsyncOverride = createTransitGatewayVpcAttachmentAsyncOverride {
            return try createTransitGatewayVpcAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult {
        if let createTransitGatewayVpcAttachmentSyncOverride = createTransitGatewayVpcAttachmentSyncOverride {
            return try createTransitGatewayVpcAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
         - completion: The Volume object or an error will be passed to this 
           callback when the operation is complete. The Volume
           object will be validated before being returned to caller.
     */
    public func createVolumeAsync(
            input: ElasticComputeCloudModel.CreateVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.Volume, ElasticComputeCloudError>) -> ()) throws {
        if let createVolumeAsyncOverride = createVolumeAsyncOverride {
            return try createVolumeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVolumeSync(
            input: ElasticComputeCloudModel.CreateVolumeRequest) throws -> ElasticComputeCloudModel.Volume {
        if let createVolumeSyncOverride = createVolumeSyncOverride {
            return try createVolumeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
         - completion: The CreateVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcResult
           object will be validated before being returned to caller.
     */
    public func createVpcAsync(
            input: ElasticComputeCloudModel.CreateVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpcAsyncOverride = createVpcAsyncOverride {
            return try createVpcAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcSync(
            input: ElasticComputeCloudModel.CreateVpcRequest) throws -> ElasticComputeCloudModel.CreateVpcResult {
        if let createVpcSyncOverride = createVpcSyncOverride {
            return try createVpcSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
         - completion: The CreateVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointResult
           object will be validated before being returned to caller.
     */
    public func createVpcEndpointAsync(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpcEndpointAsyncOverride = createVpcEndpointAsyncOverride {
            return try createVpcEndpointAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointSync(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult {
        if let createVpcEndpointSyncOverride = createVpcEndpointSyncOverride {
            return try createVpcEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    public func createVpcEndpointConnectionNotificationAsync(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpcEndpointConnectionNotificationAsyncOverride = createVpcEndpointConnectionNotificationAsyncOverride {
            return try createVpcEndpointConnectionNotificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointConnectionNotificationSync(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult {
        if let createVpcEndpointConnectionNotificationSyncOverride = createVpcEndpointConnectionNotificationSyncOverride {
            return try createVpcEndpointConnectionNotificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    public func createVpcEndpointServiceConfigurationAsync(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpcEndpointServiceConfigurationAsyncOverride = createVpcEndpointServiceConfigurationAsyncOverride {
            return try createVpcEndpointServiceConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointServiceConfigurationSync(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult {
        if let createVpcEndpointServiceConfigurationSyncOverride = createVpcEndpointServiceConfigurationSyncOverride {
            return try createVpcEndpointServiceConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The CreateVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func createVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpcPeeringConnectionAsyncOverride = createVpcPeeringConnectionAsyncOverride {
            return try createVpcPeeringConnectionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult {
        if let createVpcPeeringConnectionSyncOverride = createVpcPeeringConnectionSyncOverride {
            return try createVpcPeeringConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
         - completion: The CreateVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnConnectionResult
           object will be validated before being returned to caller.
     */
    public func createVpnConnectionAsync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnConnectionResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpnConnectionAsyncOverride = createVpnConnectionAsyncOverride {
            return try createVpnConnectionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnConnectionSync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult {
        if let createVpnConnectionSyncOverride = createVpnConnectionSyncOverride {
            return try createVpnConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func createVpnConnectionRouteAsync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let createVpnConnectionRouteAsyncOverride = createVpnConnectionRouteAsyncOverride {
            return try createVpnConnectionRouteAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the CreateVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    public func createVpnConnectionRouteSync(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) throws {
        if let createVpnConnectionRouteSyncOverride = createVpnConnectionRouteSyncOverride {
            return try createVpnConnectionRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
         - completion: The CreateVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnGatewayResult
           object will be validated before being returned to caller.
     */
    public func createVpnGatewayAsync(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.CreateVpnGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let createVpnGatewayAsyncOverride = createVpnGatewayAsyncOverride {
            return try createVpnGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnGatewaySync(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult {
        if let createVpnGatewaySyncOverride = createVpnGatewaySyncOverride {
            return try createVpnGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCarrierGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
         - completion: The DeleteCarrierGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteCarrierGatewayResult
           object will be validated before being returned to caller.
     */
    public func deleteCarrierGatewayAsync(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteCarrierGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteCarrierGatewayAsyncOverride = deleteCarrierGatewayAsyncOverride {
            return try deleteCarrierGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteCarrierGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: The DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteCarrierGatewaySync(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) throws -> ElasticComputeCloudModel.DeleteCarrierGatewayResult {
        if let deleteCarrierGatewaySyncOverride = deleteCarrierGatewaySyncOverride {
            return try deleteCarrierGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
         - completion: The DeleteClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    public func deleteClientVpnEndpointAsync(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteClientVpnEndpointAsyncOverride = deleteClientVpnEndpointAsyncOverride {
            return try deleteClientVpnEndpointAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteClientVpnEndpointSync(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult {
        if let deleteClientVpnEndpointSyncOverride = deleteClientVpnEndpointSyncOverride {
            return try deleteClientVpnEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
         - completion: The DeleteClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    public func deleteClientVpnRouteAsync(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteClientVpnRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteClientVpnRouteAsyncOverride = deleteClientVpnRouteAsyncOverride {
            return try deleteClientVpnRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteClientVpnRouteSync(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult {
        if let deleteClientVpnRouteSyncOverride = deleteClientVpnRouteSyncOverride {
            return try deleteClientVpnRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteCustomerGatewayAsync(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteCustomerGatewayAsyncOverride = deleteCustomerGatewayAsyncOverride {
            return try deleteCustomerGatewayAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    public func deleteCustomerGatewaySync(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) throws {
        if let deleteCustomerGatewaySyncOverride = deleteCustomerGatewaySyncOverride {
            return try deleteCustomerGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteDhcpOptionsAsync(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteDhcpOptionsAsyncOverride = deleteDhcpOptionsAsyncOverride {
            return try deleteDhcpOptionsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    public func deleteDhcpOptionsSync(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) throws {
        if let deleteDhcpOptionsSyncOverride = deleteDhcpOptionsSyncOverride {
            return try deleteDhcpOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The DeleteEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    public func deleteEgressOnlyInternetGatewayAsync(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteEgressOnlyInternetGatewayAsyncOverride = deleteEgressOnlyInternetGatewayAsyncOverride {
            return try deleteEgressOnlyInternetGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteEgressOnlyInternetGatewaySync(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult {
        if let deleteEgressOnlyInternetGatewaySyncOverride = deleteEgressOnlyInternetGatewaySyncOverride {
            return try deleteEgressOnlyInternetGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
         - completion: The DeleteFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFleetsResult
           object will be validated before being returned to caller.
     */
    public func deleteFleetsAsync(
            input: ElasticComputeCloudModel.DeleteFleetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFleetsResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteFleetsAsyncOverride = deleteFleetsAsyncOverride {
            return try deleteFleetsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFleetsSync(
            input: ElasticComputeCloudModel.DeleteFleetsRequest) throws -> ElasticComputeCloudModel.DeleteFleetsResult {
        if let deleteFleetsSyncOverride = deleteFleetsSyncOverride {
            return try deleteFleetsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
         - completion: The DeleteFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFlowLogsResult
           object will be validated before being returned to caller.
     */
    public func deleteFlowLogsAsync(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFlowLogsResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteFlowLogsAsyncOverride = deleteFlowLogsAsyncOverride {
            return try deleteFlowLogsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFlowLogsSync(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult {
        if let deleteFlowLogsSyncOverride = deleteFlowLogsSyncOverride {
            return try deleteFlowLogsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
         - completion: The DeleteFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFpgaImageResult
           object will be validated before being returned to caller.
     */
    public func deleteFpgaImageAsync(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteFpgaImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteFpgaImageAsyncOverride = deleteFpgaImageAsyncOverride {
            return try deleteFpgaImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFpgaImageSync(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult {
        if let deleteFpgaImageSyncOverride = deleteFpgaImageSyncOverride {
            return try deleteFpgaImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteInternetGatewayAsync(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteInternetGatewayAsyncOverride = deleteInternetGatewayAsyncOverride {
            return try deleteInternetGatewayAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    public func deleteInternetGatewaySync(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) throws {
        if let deleteInternetGatewaySyncOverride = deleteInternetGatewaySyncOverride {
            return try deleteInternetGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteKeyPairAsync(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteKeyPairAsyncOverride = deleteKeyPairAsyncOverride {
            return try deleteKeyPairAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    public func deleteKeyPairSync(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest) throws {
        if let deleteKeyPairSyncOverride = deleteKeyPairSyncOverride {
            return try deleteKeyPairSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateAsync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteLaunchTemplateAsyncOverride = deleteLaunchTemplateAsyncOverride {
            return try deleteLaunchTemplateAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateSync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult {
        if let deleteLaunchTemplateSyncOverride = deleteLaunchTemplateSyncOverride {
            return try deleteLaunchTemplateSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateVersionsAsync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteLaunchTemplateVersionsAsyncOverride = deleteLaunchTemplateVersionsAsyncOverride {
            return try deleteLaunchTemplateVersionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateVersionsSync(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult {
        if let deleteLaunchTemplateVersionsSyncOverride = deleteLaunchTemplateVersionsSyncOverride {
            return try deleteLaunchTemplateVersionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLocalGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteLocalGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLocalGatewayRouteResult
           object will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteAsync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteLocalGatewayRouteAsyncOverride = deleteLocalGatewayRouteAsyncOverride {
            return try deleteLocalGatewayRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteLocalGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteSync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult {
        if let deleteLocalGatewayRouteSyncOverride = deleteLocalGatewayRouteSyncOverride {
            return try deleteLocalGatewayRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
         - completion: The DeleteLocalGatewayRouteTableVpcAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLocalGatewayRouteTableVpcAssociationResult
           object will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteTableVpcAssociationAsync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteLocalGatewayRouteTableVpcAssociationAsyncOverride = deleteLocalGatewayRouteTableVpcAssociationAsyncOverride {
            return try deleteLocalGatewayRouteTableVpcAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteTableVpcAssociationSync(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult {
        if let deleteLocalGatewayRouteTableVpcAssociationSyncOverride = deleteLocalGatewayRouteTableVpcAssociationSyncOverride {
            return try deleteLocalGatewayRouteTableVpcAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteManagedPrefixList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
         - completion: The DeleteManagedPrefixListResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteManagedPrefixListResult
           object will be validated before being returned to caller.
     */
    public func deleteManagedPrefixListAsync(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteManagedPrefixListAsyncOverride = deleteManagedPrefixListAsyncOverride {
            return try deleteManagedPrefixListAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteManagedPrefixList operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: The DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteManagedPrefixListSync(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) throws -> ElasticComputeCloudModel.DeleteManagedPrefixListResult {
        if let deleteManagedPrefixListSyncOverride = deleteManagedPrefixListSyncOverride {
            return try deleteManagedPrefixListSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
         - completion: The DeleteNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNatGatewayResult
           object will be validated before being returned to caller.
     */
    public func deleteNatGatewayAsync(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNatGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteNatGatewayAsyncOverride = deleteNatGatewayAsyncOverride {
            return try deleteNatGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNatGatewaySync(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult {
        if let deleteNatGatewaySyncOverride = deleteNatGatewaySyncOverride {
            return try deleteNatGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteNetworkAclAsync(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteNetworkAclAsyncOverride = deleteNetworkAclAsyncOverride {
            return try deleteNetworkAclAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    public func deleteNetworkAclSync(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest) throws {
        if let deleteNetworkAclSyncOverride = deleteNetworkAclSyncOverride {
            return try deleteNetworkAclSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteNetworkAclEntryAsync(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteNetworkAclEntryAsyncOverride = deleteNetworkAclEntryAsyncOverride {
            return try deleteNetworkAclEntryAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    public func deleteNetworkAclEntrySync(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) throws {
        if let deleteNetworkAclEntrySyncOverride = deleteNetworkAclEntrySyncOverride {
            return try deleteNetworkAclEntrySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
         - completion: The DeleteNetworkInsightsAnalysisResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInsightsAnalysisResult
           object will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsAnalysisAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteNetworkInsightsAnalysisAsyncOverride = deleteNetworkInsightsAnalysisAsyncOverride {
            return try deleteNetworkInsightsAnalysisAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsAnalysisSync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult {
        if let deleteNetworkInsightsAnalysisSyncOverride = deleteNetworkInsightsAnalysisSyncOverride {
            return try deleteNetworkInsightsAnalysisSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInsightsPath operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
         - completion: The DeleteNetworkInsightsPathResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInsightsPathResult
           object will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsPathAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInsightsPathResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteNetworkInsightsPathAsyncOverride = deleteNetworkInsightsPathAsyncOverride {
            return try deleteNetworkInsightsPathAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteNetworkInsightsPath operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsPathSync(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult {
        if let deleteNetworkInsightsPathSyncOverride = deleteNetworkInsightsPathSyncOverride {
            return try deleteNetworkInsightsPathSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteNetworkInterfaceAsyncOverride = deleteNetworkInterfaceAsyncOverride {
            return try deleteNetworkInterfaceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    public func deleteNetworkInterfaceSync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) throws {
        if let deleteNetworkInterfaceSyncOverride = deleteNetworkInterfaceSyncOverride {
            return try deleteNetworkInterfaceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The DeleteNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    public func deleteNetworkInterfacePermissionAsync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteNetworkInterfacePermissionAsyncOverride = deleteNetworkInterfacePermissionAsyncOverride {
            return try deleteNetworkInterfacePermissionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInterfacePermissionSync(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult {
        if let deleteNetworkInterfacePermissionSyncOverride = deleteNetworkInterfacePermissionSyncOverride {
            return try deleteNetworkInterfacePermissionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deletePlacementGroupAsync(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deletePlacementGroupAsyncOverride = deletePlacementGroupAsyncOverride {
            return try deletePlacementGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeletePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    public func deletePlacementGroupSync(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest) throws {
        if let deletePlacementGroupSyncOverride = deletePlacementGroupSyncOverride {
            return try deletePlacementGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteQueuedReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
         - completion: The DeleteQueuedReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteQueuedReservedInstancesResult
           object will be validated before being returned to caller.
     */
    public func deleteQueuedReservedInstancesAsync(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteQueuedReservedInstancesAsyncOverride = deleteQueuedReservedInstancesAsyncOverride {
            return try deleteQueuedReservedInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteQueuedReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: The DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteQueuedReservedInstancesSync(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult {
        if let deleteQueuedReservedInstancesSyncOverride = deleteQueuedReservedInstancesSyncOverride {
            return try deleteQueuedReservedInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteRouteAsync(
            input: ElasticComputeCloudModel.DeleteRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteRouteAsyncOverride = deleteRouteAsyncOverride {
            return try deleteRouteAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    public func deleteRouteSync(
            input: ElasticComputeCloudModel.DeleteRouteRequest) throws {
        if let deleteRouteSyncOverride = deleteRouteSyncOverride {
            return try deleteRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteRouteTableAsync(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteRouteTableAsyncOverride = deleteRouteTableAsyncOverride {
            return try deleteRouteTableAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    public func deleteRouteTableSync(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest) throws {
        if let deleteRouteTableSyncOverride = deleteRouteTableSyncOverride {
            return try deleteRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSecurityGroupAsync(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteSecurityGroupAsyncOverride = deleteSecurityGroupAsyncOverride {
            return try deleteSecurityGroupAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    public func deleteSecurityGroupSync(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) throws {
        if let deleteSecurityGroupSyncOverride = deleteSecurityGroupSyncOverride {
            return try deleteSecurityGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSnapshotAsync(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteSnapshotAsyncOverride = deleteSnapshotAsyncOverride {
            return try deleteSnapshotAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    public func deleteSnapshotSync(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest) throws {
        if let deleteSnapshotSyncOverride = deleteSnapshotSyncOverride {
            return try deleteSnapshotSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSpotDatafeedSubscriptionAsync(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteSpotDatafeedSubscriptionAsyncOverride = deleteSpotDatafeedSubscriptionAsyncOverride {
            return try deleteSpotDatafeedSubscriptionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    public func deleteSpotDatafeedSubscriptionSync(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) throws {
        if let deleteSpotDatafeedSubscriptionSyncOverride = deleteSpotDatafeedSubscriptionSyncOverride {
            return try deleteSpotDatafeedSubscriptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteSubnetAsync(
            input: ElasticComputeCloudModel.DeleteSubnetRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteSubnetAsyncOverride = deleteSubnetAsyncOverride {
            return try deleteSubnetAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    public func deleteSubnetSync(
            input: ElasticComputeCloudModel.DeleteSubnetRequest) throws {
        if let deleteSubnetSyncOverride = deleteSubnetSyncOverride {
            return try deleteSubnetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteTagsAsync(
            input: ElasticComputeCloudModel.DeleteTagsRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteTagsAsyncOverride = deleteTagsAsyncOverride {
            return try deleteTagsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    public func deleteTagsSync(
            input: ElasticComputeCloudModel.DeleteTagsRequest) throws {
        if let deleteTagsSyncOverride = deleteTagsSyncOverride {
            return try deleteTagsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorFilter operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorFilterResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorFilterResult
           object will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilterAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTrafficMirrorFilterAsyncOverride = deleteTrafficMirrorFilterAsyncOverride {
            return try deleteTrafficMirrorFilterAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTrafficMirrorFilter operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilterSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult {
        if let deleteTrafficMirrorFilterSyncOverride = deleteTrafficMirrorFilterSyncOverride {
            return try deleteTrafficMirrorFilterSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilterRuleAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTrafficMirrorFilterRuleAsyncOverride = deleteTrafficMirrorFilterRuleAsyncOverride {
            return try deleteTrafficMirrorFilterRuleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilterRuleSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult {
        if let deleteTrafficMirrorFilterRuleSyncOverride = deleteTrafficMirrorFilterRuleSyncOverride {
            return try deleteTrafficMirrorFilterRuleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorSessionAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTrafficMirrorSessionAsyncOverride = deleteTrafficMirrorSessionAsyncOverride {
            return try deleteTrafficMirrorSessionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorSessionSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult {
        if let deleteTrafficMirrorSessionSyncOverride = deleteTrafficMirrorSessionSyncOverride {
            return try deleteTrafficMirrorSessionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTrafficMirrorTarget operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
         - completion: The DeleteTrafficMirrorTargetResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTrafficMirrorTargetResult
           object will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorTargetAsync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTrafficMirrorTargetAsyncOverride = deleteTrafficMirrorTargetAsyncOverride {
            return try deleteTrafficMirrorTargetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTrafficMirrorTarget operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorTargetSync(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult {
        if let deleteTrafficMirrorTargetSyncOverride = deleteTrafficMirrorTargetSyncOverride {
            return try deleteTrafficMirrorTargetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayAsyncOverride = deleteTransitGatewayAsyncOverride {
            return try deleteTransitGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewaySync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult {
        if let deleteTransitGatewaySyncOverride = deleteTransitGatewaySyncOverride {
            return try deleteTransitGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayConnect operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayConnectResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayConnectResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnectAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayConnectResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayConnectAsyncOverride = deleteTransitGatewayConnectAsyncOverride {
            return try deleteTransitGatewayConnectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayConnect operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnectSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult {
        if let deleteTransitGatewayConnectSyncOverride = deleteTransitGatewayConnectSyncOverride {
            return try deleteTransitGatewayConnectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayConnectPeerResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayConnectPeerResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnectPeerAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayConnectPeerAsyncOverride = deleteTransitGatewayConnectPeerAsyncOverride {
            return try deleteTransitGatewayConnectPeerAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnectPeerSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult {
        if let deleteTransitGatewayConnectPeerSyncOverride = deleteTransitGatewayConnectPeerSyncOverride {
            return try deleteTransitGatewayConnectPeerSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayMulticastDomainAsyncOverride = deleteTransitGatewayMulticastDomainAsyncOverride {
            return try deleteTransitGatewayMulticastDomainAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult {
        if let deleteTransitGatewayMulticastDomainSyncOverride = deleteTransitGatewayMulticastDomainSyncOverride {
            return try deleteTransitGatewayMulticastDomainSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayPeeringAttachmentAsyncOverride = deleteTransitGatewayPeeringAttachmentAsyncOverride {
            return try deleteTransitGatewayPeeringAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult {
        if let deleteTransitGatewayPeeringAttachmentSyncOverride = deleteTransitGatewayPeeringAttachmentSyncOverride {
            return try deleteTransitGatewayPeeringAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayPrefixListReferenceResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayPrefixListReferenceResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPrefixListReferenceAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayPrefixListReferenceAsyncOverride = deleteTransitGatewayPrefixListReferenceAsyncOverride {
            return try deleteTransitGatewayPrefixListReferenceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPrefixListReferenceSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult {
        if let deleteTransitGatewayPrefixListReferenceSyncOverride = deleteTransitGatewayPrefixListReferenceSyncOverride {
            return try deleteTransitGatewayPrefixListReferenceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayRouteAsyncOverride = deleteTransitGatewayRouteAsyncOverride {
            return try deleteTransitGatewayRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult {
        if let deleteTransitGatewayRouteSyncOverride = deleteTransitGatewayRouteSyncOverride {
            return try deleteTransitGatewayRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayRouteTableAsyncOverride = deleteTransitGatewayRouteTableAsyncOverride {
            return try deleteTransitGatewayRouteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult {
        if let deleteTransitGatewayRouteTableSyncOverride = deleteTransitGatewayRouteTableSyncOverride {
            return try deleteTransitGatewayRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    public func deleteTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteTransitGatewayVpcAttachmentAsyncOverride = deleteTransitGatewayVpcAttachmentAsyncOverride {
            return try deleteTransitGatewayVpcAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult {
        if let deleteTransitGatewayVpcAttachmentSyncOverride = deleteTransitGatewayVpcAttachmentSyncOverride {
            return try deleteTransitGatewayVpcAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVolumeAsync(
            input: ElasticComputeCloudModel.DeleteVolumeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteVolumeAsyncOverride = deleteVolumeAsyncOverride {
            return try deleteVolumeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    public func deleteVolumeSync(
            input: ElasticComputeCloudModel.DeleteVolumeRequest) throws {
        if let deleteVolumeSyncOverride = deleteVolumeSyncOverride {
            return try deleteVolumeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpcAsync(
            input: ElasticComputeCloudModel.DeleteVpcRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteVpcAsyncOverride = deleteVpcAsyncOverride {
            return try deleteVpcAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    public func deleteVpcSync(
            input: ElasticComputeCloudModel.DeleteVpcRequest) throws {
        if let deleteVpcSyncOverride = deleteVpcSyncOverride {
            return try deleteVpcSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcEndpointConnectionNotificationsAsync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteVpcEndpointConnectionNotificationsAsyncOverride = deleteVpcEndpointConnectionNotificationsAsyncOverride {
            return try deleteVpcEndpointConnectionNotificationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointConnectionNotificationsSync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult {
        if let deleteVpcEndpointConnectionNotificationsSyncOverride = deleteVpcEndpointConnectionNotificationsSyncOverride {
            return try deleteVpcEndpointConnectionNotificationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcEndpointServiceConfigurationsAsync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteVpcEndpointServiceConfigurationsAsyncOverride = deleteVpcEndpointServiceConfigurationsAsyncOverride {
            return try deleteVpcEndpointServiceConfigurationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointServiceConfigurationsSync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult {
        if let deleteVpcEndpointServiceConfigurationsSyncOverride = deleteVpcEndpointServiceConfigurationsSyncOverride {
            return try deleteVpcEndpointServiceConfigurationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcEndpointsAsync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcEndpointsResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteVpcEndpointsAsyncOverride = deleteVpcEndpointsAsyncOverride {
            return try deleteVpcEndpointsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointsSync(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult {
        if let deleteVpcEndpointsSyncOverride = deleteVpcEndpointsSyncOverride {
            return try deleteVpcEndpointsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The DeleteVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func deleteVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws {
        if let deleteVpcPeeringConnectionAsyncOverride = deleteVpcPeeringConnectionAsyncOverride {
            return try deleteVpcPeeringConnectionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult {
        if let deleteVpcPeeringConnectionSyncOverride = deleteVpcPeeringConnectionSyncOverride {
            return try deleteVpcPeeringConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpnConnectionAsync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteVpnConnectionAsyncOverride = deleteVpnConnectionAsyncOverride {
            return try deleteVpnConnectionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    public func deleteVpnConnectionSync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) throws {
        if let deleteVpnConnectionSyncOverride = deleteVpnConnectionSyncOverride {
            return try deleteVpnConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpnConnectionRouteAsync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteVpnConnectionRouteAsyncOverride = deleteVpnConnectionRouteAsyncOverride {
            return try deleteVpnConnectionRouteAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    public func deleteVpnConnectionRouteSync(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) throws {
        if let deleteVpnConnectionRouteSyncOverride = deleteVpnConnectionRouteSyncOverride {
            return try deleteVpnConnectionRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteVpnGatewayAsync(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deleteVpnGatewayAsyncOverride = deleteVpnGatewayAsyncOverride {
            return try deleteVpnGatewayAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    public func deleteVpnGatewaySync(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) throws {
        if let deleteVpnGatewaySyncOverride = deleteVpnGatewaySyncOverride {
            return try deleteVpnGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
         - completion: The DeprovisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The DeprovisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func deprovisionByoipCidrAsync(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeprovisionByoipCidrResult, ElasticComputeCloudError>) -> ()) throws {
        if let deprovisionByoipCidrAsyncOverride = deprovisionByoipCidrAsyncOverride {
            return try deprovisionByoipCidrAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeprovisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deprovisionByoipCidrSync(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult {
        if let deprovisionByoipCidrSyncOverride = deprovisionByoipCidrSyncOverride {
            return try deprovisionByoipCidrSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deregisterImageAsync(
            input: ElasticComputeCloudModel.DeregisterImageRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let deregisterImageAsyncOverride = deregisterImageAsyncOverride {
            return try deregisterImageAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeregisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    public func deregisterImageSync(
            input: ElasticComputeCloudModel.DeregisterImageRequest) throws {
        if let deregisterImageSyncOverride = deregisterImageSyncOverride {
            return try deregisterImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
         - completion: The DeregisterInstanceEventNotificationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterInstanceEventNotificationAttributesResult
           object will be validated before being returned to caller.
     */
    public func deregisterInstanceEventNotificationAttributesAsync(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws {
        if let deregisterInstanceEventNotificationAttributesAsyncOverride = deregisterInstanceEventNotificationAttributesAsyncOverride {
            return try deregisterInstanceEventNotificationAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterInstanceEventNotificationAttributesSync(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult {
        if let deregisterInstanceEventNotificationAttributesSyncOverride = deregisterInstanceEventNotificationAttributesSyncOverride {
            return try deregisterInstanceEventNotificationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
         - completion: The DeregisterTransitGatewayMulticastGroupMembersResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTransitGatewayMulticastGroupMembersResult
           object will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupMembersAsync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult, ElasticComputeCloudError>) -> ()) throws {
        if let deregisterTransitGatewayMulticastGroupMembersAsyncOverride = deregisterTransitGatewayMulticastGroupMembersAsyncOverride {
            return try deregisterTransitGatewayMulticastGroupMembersAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupMembersSync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult {
        if let deregisterTransitGatewayMulticastGroupMembersSyncOverride = deregisterTransitGatewayMulticastGroupMembersSyncOverride {
            return try deregisterTransitGatewayMulticastGroupMembersSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
         - completion: The DeregisterTransitGatewayMulticastGroupSourcesResult object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTransitGatewayMulticastGroupSourcesResult
           object will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupSourcesAsync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult, ElasticComputeCloudError>) -> ()) throws {
        if let deregisterTransitGatewayMulticastGroupSourcesAsyncOverride = deregisterTransitGatewayMulticastGroupSourcesAsyncOverride {
            return try deregisterTransitGatewayMulticastGroupSourcesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupSourcesSync(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult {
        if let deregisterTransitGatewayMulticastGroupSourcesSyncOverride = deregisterTransitGatewayMulticastGroupSourcesSyncOverride {
            return try deregisterTransitGatewayMulticastGroupSourcesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
         - completion: The DescribeAccountAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAttributesResult
           object will be validated before being returned to caller.
     */
    public func describeAccountAttributesAsync(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAccountAttributesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeAccountAttributesAsyncOverride = describeAccountAttributesAsyncOverride {
            return try describeAccountAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributesSync(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult {
        if let describeAccountAttributesSyncOverride = describeAccountAttributesSyncOverride {
            return try describeAccountAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
         - completion: The DescribeAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesResult
           object will be validated before being returned to caller.
     */
    public func describeAddressesAsync(
            input: ElasticComputeCloudModel.DescribeAddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeAddressesAsyncOverride = describeAddressesAsyncOverride {
            return try describeAddressesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddressesSync(
            input: ElasticComputeCloudModel.DescribeAddressesRequest) throws -> ElasticComputeCloudModel.DescribeAddressesResult {
        if let describeAddressesSyncOverride = describeAddressesSyncOverride {
            return try describeAddressesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAddressesAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
         - completion: The DescribeAddressesAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeAddressesAttributeAsync(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAddressesAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeAddressesAttributeAsyncOverride = describeAddressesAttributeAsyncOverride {
            return try describeAddressesAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAddressesAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: The DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddressesAttributeSync(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) throws -> ElasticComputeCloudModel.DescribeAddressesAttributeResult {
        if let describeAddressesAttributeSyncOverride = describeAddressesAttributeSyncOverride {
            return try describeAddressesAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
         - completion: The DescribeAggregateIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAggregateIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describeAggregateIdFormatAsync(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAggregateIdFormatResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeAggregateIdFormatAsyncOverride = describeAggregateIdFormatAsyncOverride {
            return try describeAggregateIdFormatAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAggregateIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAggregateIdFormatSync(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult {
        if let describeAggregateIdFormatSyncOverride = describeAggregateIdFormatSyncOverride {
            return try describeAggregateIdFormatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
         - completion: The DescribeAvailabilityZonesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAvailabilityZonesResult
           object will be validated before being returned to caller.
     */
    public func describeAvailabilityZonesAsync(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeAvailabilityZonesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeAvailabilityZonesAsyncOverride = describeAvailabilityZonesAsyncOverride {
            return try describeAvailabilityZonesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAvailabilityZonesSync(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult {
        if let describeAvailabilityZonesSyncOverride = describeAvailabilityZonesSyncOverride {
            return try describeAvailabilityZonesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeBundleTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
         - completion: The DescribeBundleTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeBundleTasksResult
           object will be validated before being returned to caller.
     */
    public func describeBundleTasksAsync(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeBundleTasksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeBundleTasksAsyncOverride = describeBundleTasksAsyncOverride {
            return try describeBundleTasksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeBundleTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeBundleTasksSync(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult {
        if let describeBundleTasksSyncOverride = describeBundleTasksSyncOverride {
            return try describeBundleTasksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeByoipCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
         - completion: The DescribeByoipCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeByoipCidrsResult
           object will be validated before being returned to caller.
     */
    public func describeByoipCidrsAsync(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeByoipCidrsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeByoipCidrsAsyncOverride = describeByoipCidrsAsyncOverride {
            return try describeByoipCidrsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeByoipCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeByoipCidrsSync(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult {
        if let describeByoipCidrsSyncOverride = describeByoipCidrsSyncOverride {
            return try describeByoipCidrsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCapacityReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
         - completion: The DescribeCapacityReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityReservationsResult
           object will be validated before being returned to caller.
     */
    public func describeCapacityReservationsAsync(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCapacityReservationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeCapacityReservationsAsyncOverride = describeCapacityReservationsAsyncOverride {
            return try describeCapacityReservationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCapacityReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCapacityReservationsSync(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult {
        if let describeCapacityReservationsSyncOverride = describeCapacityReservationsSyncOverride {
            return try describeCapacityReservationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCarrierGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
         - completion: The DescribeCarrierGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCarrierGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeCarrierGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCarrierGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeCarrierGatewaysAsyncOverride = describeCarrierGatewaysAsyncOverride {
            return try describeCarrierGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCarrierGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCarrierGatewaysSync(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult {
        if let describeCarrierGatewaysSyncOverride = describeCarrierGatewaysSyncOverride {
            return try describeCarrierGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
         - completion: The DescribeClassicLinkInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClassicLinkInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeClassicLinkInstancesAsync(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeClassicLinkInstancesAsyncOverride = describeClassicLinkInstancesAsyncOverride {
            return try describeClassicLinkInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClassicLinkInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClassicLinkInstancesSync(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult {
        if let describeClassicLinkInstancesSyncOverride = describeClassicLinkInstancesSyncOverride {
            return try describeClassicLinkInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
         - completion: The DescribeClientVpnAuthorizationRulesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnAuthorizationRulesResult
           object will be validated before being returned to caller.
     */
    public func describeClientVpnAuthorizationRulesAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeClientVpnAuthorizationRulesAsyncOverride = describeClientVpnAuthorizationRulesAsyncOverride {
            return try describeClientVpnAuthorizationRulesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnAuthorizationRulesSync(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult {
        if let describeClientVpnAuthorizationRulesSyncOverride = describeClientVpnAuthorizationRulesSyncOverride {
            return try describeClientVpnAuthorizationRulesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeClientVpnConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeClientVpnConnectionsAsyncOverride = describeClientVpnConnectionsAsyncOverride {
            return try describeClientVpnConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnConnectionsSync(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult {
        if let describeClientVpnConnectionsSyncOverride = describeClientVpnConnectionsSyncOverride {
            return try describeClientVpnConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
         - completion: The DescribeClientVpnEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnEndpointsResult
           object will be validated before being returned to caller.
     */
    public func describeClientVpnEndpointsAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeClientVpnEndpointsAsyncOverride = describeClientVpnEndpointsAsyncOverride {
            return try describeClientVpnEndpointsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClientVpnEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnEndpointsSync(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult {
        if let describeClientVpnEndpointsSyncOverride = describeClientVpnEndpointsSyncOverride {
            return try describeClientVpnEndpointsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
         - completion: The DescribeClientVpnRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnRoutesResult
           object will be validated before being returned to caller.
     */
    public func describeClientVpnRoutesAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnRoutesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeClientVpnRoutesAsyncOverride = describeClientVpnRoutesAsyncOverride {
            return try describeClientVpnRoutesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClientVpnRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnRoutesSync(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult {
        if let describeClientVpnRoutesSyncOverride = describeClientVpnRoutesSyncOverride {
            return try describeClientVpnRoutesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeClientVpnTargetNetworks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
         - completion: The DescribeClientVpnTargetNetworksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnTargetNetworksResult
           object will be validated before being returned to caller.
     */
    public func describeClientVpnTargetNetworksAsync(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeClientVpnTargetNetworksAsyncOverride = describeClientVpnTargetNetworksAsyncOverride {
            return try describeClientVpnTargetNetworksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeClientVpnTargetNetworks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnTargetNetworksSync(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult {
        if let describeClientVpnTargetNetworksSyncOverride = describeClientVpnTargetNetworksSyncOverride {
            return try describeClientVpnTargetNetworksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCoipPools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
         - completion: The DescribeCoipPoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCoipPoolsResult
           object will be validated before being returned to caller.
     */
    public func describeCoipPoolsAsync(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCoipPoolsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeCoipPoolsAsyncOverride = describeCoipPoolsAsyncOverride {
            return try describeCoipPoolsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCoipPools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: The DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCoipPoolsSync(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult {
        if let describeCoipPoolsSyncOverride = describeCoipPoolsSyncOverride {
            return try describeCoipPoolsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeConversionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
         - completion: The DescribeConversionTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeConversionTasksResult
           object will be validated before being returned to caller.
     */
    public func describeConversionTasksAsync(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeConversionTasksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeConversionTasksAsyncOverride = describeConversionTasksAsyncOverride {
            return try describeConversionTasksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeConversionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeConversionTasksSync(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult {
        if let describeConversionTasksSyncOverride = describeConversionTasksSyncOverride {
            return try describeConversionTasksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeCustomerGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
         - completion: The DescribeCustomerGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCustomerGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeCustomerGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeCustomerGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeCustomerGatewaysAsyncOverride = describeCustomerGatewaysAsyncOverride {
            return try describeCustomerGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeCustomerGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCustomerGatewaysSync(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult {
        if let describeCustomerGatewaysSyncOverride = describeCustomerGatewaysSyncOverride {
            return try describeCustomerGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
         - completion: The DescribeDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    public func describeDhcpOptionsAsync(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeDhcpOptionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeDhcpOptionsAsyncOverride = describeDhcpOptionsAsyncOverride {
            return try describeDhcpOptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDhcpOptionsSync(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult {
        if let describeDhcpOptionsSyncOverride = describeDhcpOptionsSyncOverride {
            return try describeDhcpOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeEgressOnlyInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeEgressOnlyInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeEgressOnlyInternetGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeEgressOnlyInternetGatewaysAsyncOverride = describeEgressOnlyInternetGatewaysAsyncOverride {
            return try describeEgressOnlyInternetGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEgressOnlyInternetGatewaysSync(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult {
        if let describeEgressOnlyInternetGatewaysSyncOverride = describeEgressOnlyInternetGatewaysSyncOverride {
            return try describeEgressOnlyInternetGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeElasticGpus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
         - completion: The DescribeElasticGpusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeElasticGpusResult
           object will be validated before being returned to caller.
     */
    public func describeElasticGpusAsync(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeElasticGpusResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeElasticGpusAsyncOverride = describeElasticGpusAsyncOverride {
            return try describeElasticGpusAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeElasticGpus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeElasticGpusSync(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult {
        if let describeElasticGpusSyncOverride = describeElasticGpusSyncOverride {
            return try describeElasticGpusSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
         - completion: The DescribeExportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportImageTasksResult
           object will be validated before being returned to caller.
     */
    public func describeExportImageTasksAsync(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportImageTasksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeExportImageTasksAsyncOverride = describeExportImageTasksAsyncOverride {
            return try describeExportImageTasksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeExportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportImageTasksSync(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult {
        if let describeExportImageTasksSyncOverride = describeExportImageTasksSyncOverride {
            return try describeExportImageTasksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
         - completion: The DescribeExportTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportTasksResult
           object will be validated before being returned to caller.
     */
    public func describeExportTasksAsync(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeExportTasksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeExportTasksAsyncOverride = describeExportTasksAsyncOverride {
            return try describeExportTasksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportTasksSync(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportTasksResult {
        if let describeExportTasksSyncOverride = describeExportTasksSyncOverride {
            return try describeExportTasksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The DescribeFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    public func describeFastSnapshotRestoresAsync(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFastSnapshotRestoresAsyncOverride = describeFastSnapshotRestoresAsyncOverride {
            return try describeFastSnapshotRestoresAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFastSnapshotRestoresSync(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult {
        if let describeFastSnapshotRestoresSyncOverride = describeFastSnapshotRestoresSyncOverride {
            return try describeFastSnapshotRestoresSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFleetHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
         - completion: The DescribeFleetHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetHistoryResult
           object will be validated before being returned to caller.
     */
    public func describeFleetHistoryAsync(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetHistoryResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFleetHistoryAsyncOverride = describeFleetHistoryAsyncOverride {
            return try describeFleetHistoryAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFleetHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetHistorySync(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult {
        if let describeFleetHistorySyncOverride = describeFleetHistorySyncOverride {
            return try describeFleetHistorySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeFleetInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeFleetInstancesAsync(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFleetInstancesAsyncOverride = describeFleetInstancesAsyncOverride {
            return try describeFleetInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetInstancesSync(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult {
        if let describeFleetInstancesSyncOverride = describeFleetInstancesSyncOverride {
            return try describeFleetInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
         - completion: The DescribeFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetsResult
           object will be validated before being returned to caller.
     */
    public func describeFleetsAsync(
            input: ElasticComputeCloudModel.DescribeFleetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFleetsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFleetsAsyncOverride = describeFleetsAsyncOverride {
            return try describeFleetsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetsSync(
            input: ElasticComputeCloudModel.DescribeFleetsRequest) throws -> ElasticComputeCloudModel.DescribeFleetsResult {
        if let describeFleetsSyncOverride = describeFleetsSyncOverride {
            return try describeFleetsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
         - completion: The DescribeFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFlowLogsResult
           object will be validated before being returned to caller.
     */
    public func describeFlowLogsAsync(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFlowLogsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFlowLogsAsyncOverride = describeFlowLogsAsyncOverride {
            return try describeFlowLogsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFlowLogsSync(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult {
        if let describeFlowLogsSyncOverride = describeFlowLogsSyncOverride {
            return try describeFlowLogsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
         - completion: The DescribeFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeFpgaImageAttributeAsync(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFpgaImageAttributeAsyncOverride = describeFpgaImageAttributeAsyncOverride {
            return try describeFpgaImageAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImageAttributeSync(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult {
        if let describeFpgaImageAttributeSyncOverride = describeFpgaImageAttributeSyncOverride {
            return try describeFpgaImageAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeFpgaImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
         - completion: The DescribeFpgaImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImagesResult
           object will be validated before being returned to caller.
     */
    public func describeFpgaImagesAsync(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeFpgaImagesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeFpgaImagesAsyncOverride = describeFpgaImagesAsyncOverride {
            return try describeFpgaImagesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeFpgaImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImagesSync(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult {
        if let describeFpgaImagesSyncOverride = describeFpgaImagesSyncOverride {
            return try describeFpgaImagesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
         - completion: The DescribeHostReservationOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationOfferingsResult
           object will be validated before being returned to caller.
     */
    public func describeHostReservationOfferingsAsync(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeHostReservationOfferingsAsyncOverride = describeHostReservationOfferingsAsyncOverride {
            return try describeHostReservationOfferingsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeHostReservationOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservationOfferingsSync(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult {
        if let describeHostReservationOfferingsSyncOverride = describeHostReservationOfferingsSyncOverride {
            return try describeHostReservationOfferingsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeHostReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
         - completion: The DescribeHostReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationsResult
           object will be validated before being returned to caller.
     */
    public func describeHostReservationsAsync(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostReservationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeHostReservationsAsyncOverride = describeHostReservationsAsyncOverride {
            return try describeHostReservationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeHostReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservationsSync(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult {
        if let describeHostReservationsSyncOverride = describeHostReservationsSyncOverride {
            return try describeHostReservationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
         - completion: The DescribeHostsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostsResult
           object will be validated before being returned to caller.
     */
    public func describeHostsAsync(
            input: ElasticComputeCloudModel.DescribeHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeHostsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeHostsAsyncOverride = describeHostsAsyncOverride {
            return try describeHostsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostsSync(
            input: ElasticComputeCloudModel.DescribeHostsRequest) throws -> ElasticComputeCloudModel.DescribeHostsResult {
        if let describeHostsSyncOverride = describeHostsSyncOverride {
            return try describeHostsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
         - completion: The DescribeIamInstanceProfileAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIamInstanceProfileAssociationsResult
           object will be validated before being returned to caller.
     */
    public func describeIamInstanceProfileAssociationsAsync(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeIamInstanceProfileAssociationsAsyncOverride = describeIamInstanceProfileAssociationsAsyncOverride {
            return try describeIamInstanceProfileAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIamInstanceProfileAssociationsSync(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult {
        if let describeIamInstanceProfileAssociationsSyncOverride = describeIamInstanceProfileAssociationsSyncOverride {
            return try describeIamInstanceProfileAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describeIdFormatAsync(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdFormatResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeIdFormatAsyncOverride = describeIdFormatAsyncOverride {
            return try describeIdFormatAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdFormatSync(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdFormatResult {
        if let describeIdFormatSyncOverride = describeIdFormatSyncOverride {
            return try describeIdFormatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdentityIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdentityIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describeIdentityIdFormatAsync(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIdentityIdFormatResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeIdentityIdFormatAsyncOverride = describeIdentityIdFormatAsyncOverride {
            return try describeIdentityIdFormatAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdentityIdFormatSync(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult {
        if let describeIdentityIdFormatSyncOverride = describeIdentityIdFormatSyncOverride {
            return try describeIdentityIdFormatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
         - completion: The ImageAttribute object or an error will be passed to this 
           callback when the operation is complete. The ImageAttribute
           object will be validated before being returned to caller.
     */
    public func describeImageAttributeAsync(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImageAttribute, ElasticComputeCloudError>) -> ()) throws {
        if let describeImageAttributeAsyncOverride = describeImageAttributeAsyncOverride {
            return try describeImageAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImageAttributeSync(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest) throws -> ElasticComputeCloudModel.ImageAttribute {
        if let describeImageAttributeSyncOverride = describeImageAttributeSyncOverride {
            return try describeImageAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResult
           object will be validated before being returned to caller.
     */
    public func describeImagesAsync(
            input: ElasticComputeCloudModel.DescribeImagesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImagesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeImagesAsyncOverride = describeImagesAsyncOverride {
            return try describeImagesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImagesSync(
            input: ElasticComputeCloudModel.DescribeImagesRequest) throws -> ElasticComputeCloudModel.DescribeImagesResult {
        if let describeImagesSyncOverride = describeImagesSyncOverride {
            return try describeImagesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
         - completion: The DescribeImportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportImageTasksResult
           object will be validated before being returned to caller.
     */
    public func describeImportImageTasksAsync(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportImageTasksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeImportImageTasksAsyncOverride = describeImportImageTasksAsyncOverride {
            return try describeImportImageTasksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeImportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportImageTasksSync(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult {
        if let describeImportImageTasksSyncOverride = describeImportImageTasksSyncOverride {
            return try describeImportImageTasksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
         - completion: The DescribeImportSnapshotTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportSnapshotTasksResult
           object will be validated before being returned to caller.
     */
    public func describeImportSnapshotTasksAsync(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeImportSnapshotTasksAsyncOverride = describeImportSnapshotTasksAsyncOverride {
            return try describeImportSnapshotTasksAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportSnapshotTasksSync(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult {
        if let describeImportSnapshotTasksSyncOverride = describeImportSnapshotTasksSyncOverride {
            return try describeImportSnapshotTasksSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
         - completion: The InstanceAttribute object or an error will be passed to this 
           callback when the operation is complete. The InstanceAttribute
           object will be validated before being returned to caller.
     */
    public func describeInstanceAttributeAsync(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.InstanceAttribute, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstanceAttributeAsyncOverride = describeInstanceAttributeAsyncOverride {
            return try describeInstanceAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceAttributeSync(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) throws -> ElasticComputeCloudModel.InstanceAttribute {
        if let describeInstanceAttributeSyncOverride = describeInstanceAttributeSyncOverride {
            return try describeInstanceAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
         - completion: The DescribeInstanceCreditSpecificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceCreditSpecificationsResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceCreditSpecificationsAsync(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstanceCreditSpecificationsAsyncOverride = describeInstanceCreditSpecificationsAsyncOverride {
            return try describeInstanceCreditSpecificationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceCreditSpecificationsSync(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult {
        if let describeInstanceCreditSpecificationsSyncOverride = describeInstanceCreditSpecificationsSyncOverride {
            return try describeInstanceCreditSpecificationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
         - completion: The DescribeInstanceEventNotificationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceEventNotificationAttributesResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceEventNotificationAttributesAsync(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstanceEventNotificationAttributesAsyncOverride = describeInstanceEventNotificationAttributesAsyncOverride {
            return try describeInstanceEventNotificationAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceEventNotificationAttributesSync(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult {
        if let describeInstanceEventNotificationAttributesSyncOverride = describeInstanceEventNotificationAttributesSyncOverride {
            return try describeInstanceEventNotificationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
         - completion: The DescribeInstanceStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceStatusResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceStatusAsync(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceStatusResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstanceStatusAsyncOverride = describeInstanceStatusAsyncOverride {
            return try describeInstanceStatusAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceStatusSync(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult {
        if let describeInstanceStatusSyncOverride = describeInstanceStatusSyncOverride {
            return try describeInstanceStatusSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceTypeOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
         - completion: The DescribeInstanceTypeOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceTypeOfferingsResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceTypeOfferingsAsync(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstanceTypeOfferingsAsyncOverride = describeInstanceTypeOfferingsAsyncOverride {
            return try describeInstanceTypeOfferingsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstanceTypeOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceTypeOfferingsSync(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult {
        if let describeInstanceTypeOfferingsSyncOverride = describeInstanceTypeOfferingsSyncOverride {
            return try describeInstanceTypeOfferingsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstanceTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
         - completion: The DescribeInstanceTypesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceTypesResult
           object will be validated before being returned to caller.
     */
    public func describeInstanceTypesAsync(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstanceTypesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstanceTypesAsyncOverride = describeInstanceTypesAsyncOverride {
            return try describeInstanceTypesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstanceTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceTypesSync(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult {
        if let describeInstanceTypesSyncOverride = describeInstanceTypesSyncOverride {
            return try describeInstanceTypesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
         - completion: The DescribeInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeInstancesAsync(
            input: ElasticComputeCloudModel.DescribeInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInstancesAsyncOverride = describeInstancesAsyncOverride {
            return try describeInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstancesSync(
            input: ElasticComputeCloudModel.DescribeInstancesRequest) throws -> ElasticComputeCloudModel.DescribeInstancesResult {
        if let describeInstancesSyncOverride = describeInstancesSyncOverride {
            return try describeInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeInternetGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeInternetGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeInternetGatewaysAsyncOverride = describeInternetGatewaysAsyncOverride {
            return try describeInternetGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInternetGatewaysSync(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult {
        if let describeInternetGatewaysSyncOverride = describeInternetGatewaysSyncOverride {
            return try describeInternetGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeIpv6Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
         - completion: The DescribeIpv6PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIpv6PoolsResult
           object will be validated before being returned to caller.
     */
    public func describeIpv6PoolsAsync(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeIpv6PoolsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeIpv6PoolsAsyncOverride = describeIpv6PoolsAsyncOverride {
            return try describeIpv6PoolsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeIpv6Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: The DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIpv6PoolsSync(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult {
        if let describeIpv6PoolsSyncOverride = describeIpv6PoolsSyncOverride {
            return try describeIpv6PoolsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeKeyPairs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
         - completion: The DescribeKeyPairsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeKeyPairsResult
           object will be validated before being returned to caller.
     */
    public func describeKeyPairsAsync(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeKeyPairsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeKeyPairsAsyncOverride = describeKeyPairsAsyncOverride {
            return try describeKeyPairsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeKeyPairs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeKeyPairsSync(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult {
        if let describeKeyPairsSyncOverride = describeKeyPairsSyncOverride {
            return try describeKeyPairsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    public func describeLaunchTemplateVersionsAsync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLaunchTemplateVersionsAsyncOverride = describeLaunchTemplateVersionsAsyncOverride {
            return try describeLaunchTemplateVersionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplateVersionsSync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult {
        if let describeLaunchTemplateVersionsSyncOverride = describeLaunchTemplateVersionsSyncOverride {
            return try describeLaunchTemplateVersionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplatesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplatesResult
           object will be validated before being returned to caller.
     */
    public func describeLaunchTemplatesAsync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLaunchTemplatesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLaunchTemplatesAsyncOverride = describeLaunchTemplatesAsyncOverride {
            return try describeLaunchTemplatesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLaunchTemplates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplatesSync(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult {
        if let describeLaunchTemplatesSyncOverride = describeLaunchTemplatesSyncOverride {
            return try describeLaunchTemplatesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
           object will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncOverride = describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncOverride {
            return try describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult {
        if let describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncOverride = describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncOverride {
            return try describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTableVpcAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTableVpcAssociationsResult
           object will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVpcAssociationsAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLocalGatewayRouteTableVpcAssociationsAsyncOverride = describeLocalGatewayRouteTableVpcAssociationsAsyncOverride {
            return try describeLocalGatewayRouteTableVpcAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVpcAssociationsSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult {
        if let describeLocalGatewayRouteTableVpcAssociationsSyncOverride = describeLocalGatewayRouteTableVpcAssociationsSyncOverride {
            return try describeLocalGatewayRouteTableVpcAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTablesAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLocalGatewayRouteTablesAsyncOverride = describeLocalGatewayRouteTablesAsyncOverride {
            return try describeLocalGatewayRouteTablesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLocalGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTablesSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult {
        if let describeLocalGatewayRouteTablesSyncOverride = describeLocalGatewayRouteTablesSyncOverride {
            return try describeLocalGatewayRouteTablesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayVirtualInterfaceGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayVirtualInterfaceGroupsResult
           object will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfaceGroupsAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLocalGatewayVirtualInterfaceGroupsAsyncOverride = describeLocalGatewayVirtualInterfaceGroupsAsyncOverride {
            return try describeLocalGatewayVirtualInterfaceGroupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfaceGroupsSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult {
        if let describeLocalGatewayVirtualInterfaceGroupsSyncOverride = describeLocalGatewayVirtualInterfaceGroupsSyncOverride {
            return try describeLocalGatewayVirtualInterfaceGroupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
         - completion: The DescribeLocalGatewayVirtualInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewayVirtualInterfacesResult
           object will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfacesAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLocalGatewayVirtualInterfacesAsyncOverride = describeLocalGatewayVirtualInterfacesAsyncOverride {
            return try describeLocalGatewayVirtualInterfacesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfacesSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult {
        if let describeLocalGatewayVirtualInterfacesSyncOverride = describeLocalGatewayVirtualInterfacesSyncOverride {
            return try describeLocalGatewayVirtualInterfacesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLocalGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
         - completion: The DescribeLocalGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLocalGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeLocalGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeLocalGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeLocalGatewaysAsyncOverride = describeLocalGatewaysAsyncOverride {
            return try describeLocalGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLocalGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewaysSync(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult {
        if let describeLocalGatewaysSyncOverride = describeLocalGatewaysSyncOverride {
            return try describeLocalGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeManagedPrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
         - completion: The DescribeManagedPrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeManagedPrefixListsResult
           object will be validated before being returned to caller.
     */
    public func describeManagedPrefixListsAsync(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeManagedPrefixListsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeManagedPrefixListsAsyncOverride = describeManagedPrefixListsAsyncOverride {
            return try describeManagedPrefixListsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeManagedPrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: The DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeManagedPrefixListsSync(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) throws -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult {
        if let describeManagedPrefixListsSyncOverride = describeManagedPrefixListsSyncOverride {
            return try describeManagedPrefixListsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeMovingAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
         - completion: The DescribeMovingAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeMovingAddressesResult
           object will be validated before being returned to caller.
     */
    public func describeMovingAddressesAsync(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeMovingAddressesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeMovingAddressesAsyncOverride = describeMovingAddressesAsyncOverride {
            return try describeMovingAddressesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeMovingAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeMovingAddressesSync(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult {
        if let describeMovingAddressesSyncOverride = describeMovingAddressesSyncOverride {
            return try describeMovingAddressesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNatGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
         - completion: The DescribeNatGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNatGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeNatGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNatGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNatGatewaysAsyncOverride = describeNatGatewaysAsyncOverride {
            return try describeNatGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNatGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNatGatewaysSync(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult {
        if let describeNatGatewaysSyncOverride = describeNatGatewaysSyncOverride {
            return try describeNatGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkAcls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
         - completion: The DescribeNetworkAclsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkAclsResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkAclsAsync(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkAclsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNetworkAclsAsyncOverride = describeNetworkAclsAsyncOverride {
            return try describeNetworkAclsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNetworkAcls operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkAclsSync(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult {
        if let describeNetworkAclsSyncOverride = describeNetworkAclsSyncOverride {
            return try describeNetworkAclsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
         - completion: The DescribeNetworkInsightsAnalysesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInsightsAnalysesResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInsightsAnalysesAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNetworkInsightsAnalysesAsyncOverride = describeNetworkInsightsAnalysesAsyncOverride {
            return try describeNetworkInsightsAnalysesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsAnalysesSync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult {
        if let describeNetworkInsightsAnalysesSyncOverride = describeNetworkInsightsAnalysesSyncOverride {
            return try describeNetworkInsightsAnalysesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInsightsPaths operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
         - completion: The DescribeNetworkInsightsPathsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInsightsPathsResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInsightsPathsAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNetworkInsightsPathsAsyncOverride = describeNetworkInsightsPathsAsyncOverride {
            return try describeNetworkInsightsPathsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNetworkInsightsPaths operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsPathsSync(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult {
        if let describeNetworkInsightsPathsSyncOverride = describeNetworkInsightsPathsSyncOverride {
            return try describeNetworkInsightsPathsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfaceAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfaceAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInterfaceAttributeAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNetworkInterfaceAttributeAsyncOverride = describeNetworkInterfaceAttributeAsyncOverride {
            return try describeNetworkInterfaceAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfaceAttributeSync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult {
        if let describeNetworkInterfaceAttributeSyncOverride = describeNetworkInterfaceAttributeSyncOverride {
            return try describeNetworkInterfaceAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacePermissionsResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInterfacePermissionsAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNetworkInterfacePermissionsAsyncOverride = describeNetworkInterfacePermissionsAsyncOverride {
            return try describeNetworkInterfacePermissionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfacePermissionsSync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult {
        if let describeNetworkInterfacePermissionsSyncOverride = describeNetworkInterfacePermissionsSyncOverride {
            return try describeNetworkInterfacePermissionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacesResult
           object will be validated before being returned to caller.
     */
    public func describeNetworkInterfacesAsync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeNetworkInterfacesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeNetworkInterfacesAsyncOverride = describeNetworkInterfacesAsyncOverride {
            return try describeNetworkInterfacesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeNetworkInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfacesSync(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult {
        if let describeNetworkInterfacesSyncOverride = describeNetworkInterfacesSyncOverride {
            return try describeNetworkInterfacesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePlacementGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
         - completion: The DescribePlacementGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePlacementGroupsResult
           object will be validated before being returned to caller.
     */
    public func describePlacementGroupsAsync(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePlacementGroupsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describePlacementGroupsAsyncOverride = describePlacementGroupsAsyncOverride {
            return try describePlacementGroupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribePlacementGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePlacementGroupsSync(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult {
        if let describePlacementGroupsSyncOverride = describePlacementGroupsSyncOverride {
            return try describePlacementGroupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
         - completion: The DescribePrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrefixListsResult
           object will be validated before being returned to caller.
     */
    public func describePrefixListsAsync(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePrefixListsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describePrefixListsAsyncOverride = describePrefixListsAsyncOverride {
            return try describePrefixListsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribePrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrefixListsSync(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest) throws -> ElasticComputeCloudModel.DescribePrefixListsResult {
        if let describePrefixListsSyncOverride = describePrefixListsSyncOverride {
            return try describePrefixListsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
         - completion: The DescribePrincipalIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrincipalIdFormatResult
           object will be validated before being returned to caller.
     */
    public func describePrincipalIdFormatAsync(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePrincipalIdFormatResult, ElasticComputeCloudError>) -> ()) throws {
        if let describePrincipalIdFormatAsyncOverride = describePrincipalIdFormatAsyncOverride {
            return try describePrincipalIdFormatAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribePrincipalIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrincipalIdFormatSync(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult {
        if let describePrincipalIdFormatSyncOverride = describePrincipalIdFormatSyncOverride {
            return try describePrincipalIdFormatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
         - completion: The DescribePublicIpv4PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePublicIpv4PoolsResult
           object will be validated before being returned to caller.
     */
    public func describePublicIpv4PoolsAsync(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describePublicIpv4PoolsAsyncOverride = describePublicIpv4PoolsAsyncOverride {
            return try describePublicIpv4PoolsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribePublicIpv4Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePublicIpv4PoolsSync(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult {
        if let describePublicIpv4PoolsSyncOverride = describePublicIpv4PoolsSyncOverride {
            return try describePublicIpv4PoolsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
         - completion: The DescribeRegionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegionsResult
           object will be validated before being returned to caller.
     */
    public func describeRegionsAsync(
            input: ElasticComputeCloudModel.DescribeRegionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeRegionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeRegionsAsyncOverride = describeRegionsAsyncOverride {
            return try describeRegionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRegionsSync(
            input: ElasticComputeCloudModel.DescribeRegionsRequest) throws -> ElasticComputeCloudModel.DescribeRegionsResult {
        if let describeRegionsSyncOverride = describeRegionsSyncOverride {
            return try describeRegionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeReservedInstancesAsyncOverride = describeReservedInstancesAsyncOverride {
            return try describeReservedInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult {
        if let describeReservedInstancesSyncOverride = describeReservedInstancesSyncOverride {
            return try describeReservedInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesListingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesListingsResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesListingsAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeReservedInstancesListingsAsyncOverride = describeReservedInstancesListingsAsyncOverride {
            return try describeReservedInstancesListingsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedInstancesListings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesListingsSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult {
        if let describeReservedInstancesListingsSyncOverride = describeReservedInstancesListingsSyncOverride {
            return try describeReservedInstancesListingsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesModificationsResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesModificationsAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeReservedInstancesModificationsAsyncOverride = describeReservedInstancesModificationsAsyncOverride {
            return try describeReservedInstancesModificationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesModificationsSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult {
        if let describeReservedInstancesModificationsSyncOverride = describeReservedInstancesModificationsSyncOverride {
            return try describeReservedInstancesModificationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesOfferingsResult
           object will be validated before being returned to caller.
     */
    public func describeReservedInstancesOfferingsAsync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeReservedInstancesOfferingsAsyncOverride = describeReservedInstancesOfferingsAsyncOverride {
            return try describeReservedInstancesOfferingsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesOfferingsSync(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult {
        if let describeReservedInstancesOfferingsSyncOverride = describeReservedInstancesOfferingsSyncOverride {
            return try describeReservedInstancesOfferingsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
         - completion: The DescribeRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRouteTablesResult
           object will be validated before being returned to caller.
     */
    public func describeRouteTablesAsync(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeRouteTablesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeRouteTablesAsyncOverride = describeRouteTablesAsyncOverride {
            return try describeRouteTablesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRouteTablesSync(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult {
        if let describeRouteTablesSyncOverride = describeRouteTablesSyncOverride {
            return try describeRouteTablesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
         - completion: The DescribeScheduledInstanceAvailabilityResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstanceAvailabilityResult
           object will be validated before being returned to caller.
     */
    public func describeScheduledInstanceAvailabilityAsync(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeScheduledInstanceAvailabilityAsyncOverride = describeScheduledInstanceAvailabilityAsyncOverride {
            return try describeScheduledInstanceAvailabilityAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstanceAvailabilitySync(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult {
        if let describeScheduledInstanceAvailabilitySyncOverride = describeScheduledInstanceAvailabilitySyncOverride {
            return try describeScheduledInstanceAvailabilitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
         - completion: The DescribeScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    public func describeScheduledInstancesAsync(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeScheduledInstancesAsyncOverride = describeScheduledInstancesAsyncOverride {
            return try describeScheduledInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstancesSync(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult {
        if let describeScheduledInstancesSyncOverride = describeScheduledInstancesSyncOverride {
            return try describeScheduledInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupReferencesResult
           object will be validated before being returned to caller.
     */
    public func describeSecurityGroupReferencesAsync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSecurityGroupReferencesAsyncOverride = describeSecurityGroupReferencesAsyncOverride {
            return try describeSecurityGroupReferencesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupReferencesSync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult {
        if let describeSecurityGroupReferencesSyncOverride = describeSecurityGroupReferencesSyncOverride {
            return try describeSecurityGroupReferencesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    public func describeSecurityGroupsAsync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSecurityGroupsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSecurityGroupsAsyncOverride = describeSecurityGroupsAsyncOverride {
            return try describeSecurityGroupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupsSync(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult {
        if let describeSecurityGroupsSyncOverride = describeSecurityGroupsSyncOverride {
            return try describeSecurityGroupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
         - completion: The DescribeSnapshotAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeSnapshotAttributeAsync(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSnapshotAttributeAsyncOverride = describeSnapshotAttributeAsyncOverride {
            return try describeSnapshotAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotAttributeSync(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult {
        if let describeSnapshotAttributeSyncOverride = describeSnapshotAttributeSyncOverride {
            return try describeSnapshotAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
         - completion: The DescribeSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotsResult
           object will be validated before being returned to caller.
     */
    public func describeSnapshotsAsync(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSnapshotsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSnapshotsAsyncOverride = describeSnapshotsAsyncOverride {
            return try describeSnapshotsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotsSync(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult {
        if let describeSnapshotsSyncOverride = describeSnapshotsSyncOverride {
            return try describeSnapshotsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The DescribeSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    public func describeSpotDatafeedSubscriptionAsync(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSpotDatafeedSubscriptionAsyncOverride = describeSpotDatafeedSubscriptionAsyncOverride {
            return try describeSpotDatafeedSubscriptionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotDatafeedSubscriptionSync(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult {
        if let describeSpotDatafeedSubscriptionSyncOverride = describeSpotDatafeedSubscriptionSyncOverride {
            return try describeSpotDatafeedSubscriptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeSpotFleetInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetInstancesResponse
           object will be validated before being returned to caller.
     */
    public func describeSpotFleetInstancesAsync(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse, ElasticComputeCloudError>) -> ()) throws {
        if let describeSpotFleetInstancesAsyncOverride = describeSpotFleetInstancesAsyncOverride {
            return try describeSpotFleetInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSpotFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetInstancesSync(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse {
        if let describeSpotFleetInstancesSyncOverride = describeSpotFleetInstancesSyncOverride {
            return try describeSpotFleetInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestHistoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestHistoryResponse
           object will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestHistoryAsync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse, ElasticComputeCloudError>) -> ()) throws {
        if let describeSpotFleetRequestHistoryAsyncOverride = describeSpotFleetRequestHistoryAsyncOverride {
            return try describeSpotFleetRequestHistoryAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestHistorySync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse {
        if let describeSpotFleetRequestHistorySyncOverride = describeSpotFleetRequestHistorySyncOverride {
            return try describeSpotFleetRequestHistorySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestsAsync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse, ElasticComputeCloudError>) -> ()) throws {
        if let describeSpotFleetRequestsAsyncOverride = describeSpotFleetRequestsAsyncOverride {
            return try describeSpotFleetRequestsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestsSync(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse {
        if let describeSpotFleetRequestsSyncOverride = describeSpotFleetRequestsSyncOverride {
            return try describeSpotFleetRequestsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    public func describeSpotInstanceRequestsAsync(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSpotInstanceRequestsAsyncOverride = describeSpotInstanceRequestsAsyncOverride {
            return try describeSpotInstanceRequestsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotInstanceRequestsSync(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult {
        if let describeSpotInstanceRequestsSyncOverride = describeSpotInstanceRequestsSyncOverride {
            return try describeSpotInstanceRequestsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotPriceHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotPriceHistoryResult
           object will be validated before being returned to caller.
     */
    public func describeSpotPriceHistoryAsync(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSpotPriceHistoryAsyncOverride = describeSpotPriceHistoryAsyncOverride {
            return try describeSpotPriceHistoryAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSpotPriceHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotPriceHistorySync(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult {
        if let describeSpotPriceHistorySyncOverride = describeSpotPriceHistorySyncOverride {
            return try describeSpotPriceHistorySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeStaleSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeStaleSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    public func describeStaleSecurityGroupsAsync(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeStaleSecurityGroupsAsyncOverride = describeStaleSecurityGroupsAsyncOverride {
            return try describeStaleSecurityGroupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStaleSecurityGroupsSync(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult {
        if let describeStaleSecurityGroupsSyncOverride = describeStaleSecurityGroupsSyncOverride {
            return try describeStaleSecurityGroupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeSubnets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
         - completion: The DescribeSubnetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSubnetsResult
           object will be validated before being returned to caller.
     */
    public func describeSubnetsAsync(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeSubnetsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeSubnetsAsyncOverride = describeSubnetsAsyncOverride {
            return try describeSubnetsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeSubnets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSubnetsSync(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest) throws -> ElasticComputeCloudModel.DescribeSubnetsResult {
        if let describeSubnetsSyncOverride = describeSubnetsSyncOverride {
            return try describeSubnetsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
         - completion: The DescribeTagsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTagsResult
           object will be validated before being returned to caller.
     */
    public func describeTagsAsync(
            input: ElasticComputeCloudModel.DescribeTagsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTagsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTagsAsyncOverride = describeTagsAsyncOverride {
            return try describeTagsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTagsSync(
            input: ElasticComputeCloudModel.DescribeTagsRequest) throws -> ElasticComputeCloudModel.DescribeTagsResult {
        if let describeTagsSyncOverride = describeTagsSyncOverride {
            return try describeTagsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrafficMirrorFilters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorFiltersResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorFiltersResult
           object will be validated before being returned to caller.
     */
    public func describeTrafficMirrorFiltersAsync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTrafficMirrorFiltersAsyncOverride = describeTrafficMirrorFiltersAsyncOverride {
            return try describeTrafficMirrorFiltersAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTrafficMirrorFilters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorFiltersSync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult {
        if let describeTrafficMirrorFiltersSyncOverride = describeTrafficMirrorFiltersSyncOverride {
            return try describeTrafficMirrorFiltersSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrafficMirrorSessions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorSessionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorSessionsResult
           object will be validated before being returned to caller.
     */
    public func describeTrafficMirrorSessionsAsync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTrafficMirrorSessionsAsyncOverride = describeTrafficMirrorSessionsAsyncOverride {
            return try describeTrafficMirrorSessionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTrafficMirrorSessions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorSessionsSync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult {
        if let describeTrafficMirrorSessionsSyncOverride = describeTrafficMirrorSessionsSyncOverride {
            return try describeTrafficMirrorSessionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTrafficMirrorTargets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
         - completion: The DescribeTrafficMirrorTargetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTrafficMirrorTargetsResult
           object will be validated before being returned to caller.
     */
    public func describeTrafficMirrorTargetsAsync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTrafficMirrorTargetsAsyncOverride = describeTrafficMirrorTargetsAsyncOverride {
            return try describeTrafficMirrorTargetsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTrafficMirrorTargets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorTargetsSync(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult {
        if let describeTrafficMirrorTargetsSyncOverride = describeTrafficMirrorTargetsSyncOverride {
            return try describeTrafficMirrorTargetsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayAttachmentsResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayAttachmentsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayAttachmentsAsyncOverride = describeTransitGatewayAttachmentsAsyncOverride {
            return try describeTransitGatewayAttachmentsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayAttachmentsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult {
        if let describeTransitGatewayAttachmentsSyncOverride = describeTransitGatewayAttachmentsSyncOverride {
            return try describeTransitGatewayAttachmentsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayConnectPeersResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayConnectPeersResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnectPeersAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayConnectPeersAsyncOverride = describeTransitGatewayConnectPeersAsyncOverride {
            return try describeTransitGatewayConnectPeersAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnectPeersSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult {
        if let describeTransitGatewayConnectPeersSyncOverride = describeTransitGatewayConnectPeersSyncOverride {
            return try describeTransitGatewayConnectPeersSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayConnects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayConnectsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayConnectsResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnectsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayConnectsAsyncOverride = describeTransitGatewayConnectsAsyncOverride {
            return try describeTransitGatewayConnectsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayConnects operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnectsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult {
        if let describeTransitGatewayConnectsSyncOverride = describeTransitGatewayConnectsSyncOverride {
            return try describeTransitGatewayConnectsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayMulticastDomainsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayMulticastDomainsResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayMulticastDomainsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayMulticastDomainsAsyncOverride = describeTransitGatewayMulticastDomainsAsyncOverride {
            return try describeTransitGatewayMulticastDomainsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayMulticastDomainsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult {
        if let describeTransitGatewayMulticastDomainsSyncOverride = describeTransitGatewayMulticastDomainsSyncOverride {
            return try describeTransitGatewayMulticastDomainsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayPeeringAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayPeeringAttachmentsResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayPeeringAttachmentsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayPeeringAttachmentsAsyncOverride = describeTransitGatewayPeeringAttachmentsAsyncOverride {
            return try describeTransitGatewayPeeringAttachmentsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayPeeringAttachmentsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult {
        if let describeTransitGatewayPeeringAttachmentsSyncOverride = describeTransitGatewayPeeringAttachmentsSyncOverride {
            return try describeTransitGatewayPeeringAttachmentsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayRouteTablesAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayRouteTablesAsyncOverride = describeTransitGatewayRouteTablesAsyncOverride {
            return try describeTransitGatewayRouteTablesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayRouteTablesSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult {
        if let describeTransitGatewayRouteTablesSyncOverride = describeTransitGatewayRouteTablesSyncOverride {
            return try describeTransitGatewayRouteTablesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayVpcAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayVpcAttachmentsResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewayVpcAttachmentsAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewayVpcAttachmentsAsyncOverride = describeTransitGatewayVpcAttachmentsAsyncOverride {
            return try describeTransitGatewayVpcAttachmentsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayVpcAttachmentsSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult {
        if let describeTransitGatewayVpcAttachmentsSyncOverride = describeTransitGatewayVpcAttachmentsSyncOverride {
            return try describeTransitGatewayVpcAttachmentsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTransitGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
         - completion: The DescribeTransitGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeTransitGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeTransitGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeTransitGatewaysAsyncOverride = describeTransitGatewaysAsyncOverride {
            return try describeTransitGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTransitGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewaysSync(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult {
        if let describeTransitGatewaysSyncOverride = describeTransitGatewaysSyncOverride {
            return try describeTransitGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
         - completion: The DescribeVolumeAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeVolumeAttributeAsync(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVolumeAttributeAsyncOverride = describeVolumeAttributeAsyncOverride {
            return try describeVolumeAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeAttributeSync(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult {
        if let describeVolumeAttributeSyncOverride = describeVolumeAttributeSyncOverride {
            return try describeVolumeAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumeStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
         - completion: The DescribeVolumeStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeStatusResult
           object will be validated before being returned to caller.
     */
    public func describeVolumeStatusAsync(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumeStatusResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVolumeStatusAsyncOverride = describeVolumeStatusAsyncOverride {
            return try describeVolumeStatusAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVolumeStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeStatusSync(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult {
        if let describeVolumeStatusSyncOverride = describeVolumeStatusSyncOverride {
            return try describeVolumeStatusSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
         - completion: The DescribeVolumesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesResult
           object will be validated before being returned to caller.
     */
    public func describeVolumesAsync(
            input: ElasticComputeCloudModel.DescribeVolumesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVolumesAsyncOverride = describeVolumesAsyncOverride {
            return try describeVolumesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVolumes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumesSync(
            input: ElasticComputeCloudModel.DescribeVolumesRequest) throws -> ElasticComputeCloudModel.DescribeVolumesResult {
        if let describeVolumesSyncOverride = describeVolumesSyncOverride {
            return try describeVolumesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVolumesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
         - completion: The DescribeVolumesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesModificationsResult
           object will be validated before being returned to caller.
     */
    public func describeVolumesModificationsAsync(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVolumesModificationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVolumesModificationsAsyncOverride = describeVolumesModificationsAsyncOverride {
            return try describeVolumesModificationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVolumesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumesModificationsSync(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult {
        if let describeVolumesModificationsSyncOverride = describeVolumesModificationsSyncOverride {
            return try describeVolumesModificationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
         - completion: The DescribeVpcAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcAttributeResult
           object will be validated before being returned to caller.
     */
    public func describeVpcAttributeAsync(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcAttributeAsyncOverride = describeVpcAttributeAsyncOverride {
            return try describeVpcAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcAttributeSync(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult {
        if let describeVpcAttributeSyncOverride = describeVpcAttributeSyncOverride {
            return try describeVpcAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkAsync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcClassicLinkAsyncOverride = describeVpcClassicLinkAsyncOverride {
            return try describeVpcClassicLinkAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkSync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult {
        if let describeVpcClassicLinkSyncOverride = describeVpcClassicLinkSyncOverride {
            return try describeVpcClassicLinkSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkDnsSupportAsync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcClassicLinkDnsSupportAsyncOverride = describeVpcClassicLinkDnsSupportAsyncOverride {
            return try describeVpcClassicLinkDnsSupportAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkDnsSupportSync(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult {
        if let describeVpcClassicLinkDnsSupportSyncOverride = describeVpcClassicLinkDnsSupportSyncOverride {
            return try describeVpcClassicLinkDnsSupportSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionNotificationsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcEndpointConnectionNotificationsAsyncOverride = describeVpcEndpointConnectionNotificationsAsyncOverride {
            return try describeVpcEndpointConnectionNotificationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionNotificationsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult {
        if let describeVpcEndpointConnectionNotificationsSyncOverride = describeVpcEndpointConnectionNotificationsSyncOverride {
            return try describeVpcEndpointConnectionNotificationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcEndpointConnectionsAsyncOverride = describeVpcEndpointConnectionsAsyncOverride {
            return try describeVpcEndpointConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult {
        if let describeVpcEndpointConnectionsSyncOverride = describeVpcEndpointConnectionsSyncOverride {
            return try describeVpcEndpointConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointServiceConfigurationsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcEndpointServiceConfigurationsAsyncOverride = describeVpcEndpointServiceConfigurationsAsyncOverride {
            return try describeVpcEndpointServiceConfigurationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServiceConfigurationsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult {
        if let describeVpcEndpointServiceConfigurationsSyncOverride = describeVpcEndpointServiceConfigurationsSyncOverride {
            return try describeVpcEndpointServiceConfigurationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicePermissionsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcEndpointServicePermissionsAsyncOverride = describeVpcEndpointServicePermissionsAsyncOverride {
            return try describeVpcEndpointServicePermissionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicePermissionsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult {
        if let describeVpcEndpointServicePermissionsSyncOverride = describeVpcEndpointServicePermissionsSyncOverride {
            return try describeVpcEndpointServicePermissionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicesResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicesAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcEndpointServicesAsyncOverride = describeVpcEndpointServicesAsyncOverride {
            return try describeVpcEndpointServicesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcEndpointServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicesSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult {
        if let describeVpcEndpointServicesSyncOverride = describeVpcEndpointServicesSyncOverride {
            return try describeVpcEndpointServicesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcEndpointsAsync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcEndpointsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcEndpointsAsyncOverride = describeVpcEndpointsAsyncOverride {
            return try describeVpcEndpointsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointsSync(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult {
        if let describeVpcEndpointsSyncOverride = describeVpcEndpointsSyncOverride {
            return try describeVpcEndpointsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcPeeringConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcPeeringConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcPeeringConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcPeeringConnectionsAsyncOverride = describeVpcPeeringConnectionsAsyncOverride {
            return try describeVpcPeeringConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcPeeringConnectionsSync(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult {
        if let describeVpcPeeringConnectionsSyncOverride = describeVpcPeeringConnectionsSyncOverride {
            return try describeVpcPeeringConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpcs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
         - completion: The DescribeVpcsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcsResult
           object will be validated before being returned to caller.
     */
    public func describeVpcsAsync(
            input: ElasticComputeCloudModel.DescribeVpcsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpcsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpcsAsyncOverride = describeVpcsAsyncOverride {
            return try describeVpcsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpcs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcsSync(
            input: ElasticComputeCloudModel.DescribeVpcsRequest) throws -> ElasticComputeCloudModel.DescribeVpcsResult {
        if let describeVpcsSyncOverride = describeVpcsSyncOverride {
            return try describeVpcsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    public func describeVpnConnectionsAsync(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpnConnectionsAsyncOverride = describeVpnConnectionsAsyncOverride {
            return try describeVpnConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnConnectionsSync(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult {
        if let describeVpnConnectionsSyncOverride = describeVpnConnectionsSyncOverride {
            return try describeVpnConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeVpnGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
         - completion: The DescribeVpnGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnGatewaysResult
           object will be validated before being returned to caller.
     */
    public func describeVpnGatewaysAsync(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DescribeVpnGatewaysResult, ElasticComputeCloudError>) -> ()) throws {
        if let describeVpnGatewaysAsyncOverride = describeVpnGatewaysAsyncOverride {
            return try describeVpnGatewaysAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeVpnGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnGatewaysSync(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult {
        if let describeVpnGatewaysSyncOverride = describeVpnGatewaysSyncOverride {
            return try describeVpnGatewaysSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
         - completion: The DetachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The DetachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    public func detachClassicLinkVpcAsync(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DetachClassicLinkVpcResult, ElasticComputeCloudError>) -> ()) throws {
        if let detachClassicLinkVpcAsyncOverride = detachClassicLinkVpcAsyncOverride {
            return try detachClassicLinkVpcAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DetachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachClassicLinkVpcSync(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult {
        if let detachClassicLinkVpcSyncOverride = detachClassicLinkVpcSyncOverride {
            return try detachClassicLinkVpcSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func detachInternetGatewayAsync(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let detachInternetGatewayAsyncOverride = detachInternetGatewayAsyncOverride {
            return try detachInternetGatewayAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DetachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    public func detachInternetGatewaySync(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest) throws {
        if let detachInternetGatewaySyncOverride = detachInternetGatewaySyncOverride {
            return try detachInternetGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func detachNetworkInterfaceAsync(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let detachNetworkInterfaceAsyncOverride = detachNetworkInterfaceAsyncOverride {
            return try detachNetworkInterfaceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DetachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    public func detachNetworkInterfaceSync(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) throws {
        if let detachNetworkInterfaceSyncOverride = detachNetworkInterfaceSyncOverride {
            return try detachNetworkInterfaceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    public func detachVolumeAsync(
            input: ElasticComputeCloudModel.DetachVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.VolumeAttachment, ElasticComputeCloudError>) -> ()) throws {
        if let detachVolumeAsyncOverride = detachVolumeAsyncOverride {
            return try detachVolumeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DetachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachVolumeSync(
            input: ElasticComputeCloudModel.DetachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment {
        if let detachVolumeSyncOverride = detachVolumeSyncOverride {
            return try detachVolumeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DetachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func detachVpnGatewayAsync(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let detachVpnGatewayAsyncOverride = detachVpnGatewayAsyncOverride {
            return try detachVpnGatewayAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DetachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    public func detachVpnGatewaySync(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest) throws {
        if let detachVpnGatewaySyncOverride = detachVpnGatewaySyncOverride {
            return try detachVpnGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The DisableEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The DisableEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    public func disableEbsEncryptionByDefaultAsync(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws {
        if let disableEbsEncryptionByDefaultAsyncOverride = disableEbsEncryptionByDefaultAsyncOverride {
            return try disableEbsEncryptionByDefaultAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisableEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableEbsEncryptionByDefaultSync(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult {
        if let disableEbsEncryptionByDefaultSyncOverride = disableEbsEncryptionByDefaultSyncOverride {
            return try disableEbsEncryptionByDefaultSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The DisableFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The DisableFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    public func disableFastSnapshotRestoresAsync(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws {
        if let disableFastSnapshotRestoresAsyncOverride = disableFastSnapshotRestoresAsyncOverride {
            return try disableFastSnapshotRestoresAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisableFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableFastSnapshotRestoresSync(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult {
        if let disableFastSnapshotRestoresSyncOverride = disableFastSnapshotRestoresSyncOverride {
            return try disableFastSnapshotRestoresSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The DisableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The DisableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    public func disableTransitGatewayRouteTablePropagationAsync(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult, ElasticComputeCloudError>) -> ()) throws {
        if let disableTransitGatewayRouteTablePropagationAsyncOverride = disableTransitGatewayRouteTablePropagationAsyncOverride {
            return try disableTransitGatewayRouteTablePropagationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableTransitGatewayRouteTablePropagationSync(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult {
        if let disableTransitGatewayRouteTablePropagationSyncOverride = disableTransitGatewayRouteTablePropagationSyncOverride {
            return try disableTransitGatewayRouteTablePropagationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disableVgwRoutePropagationAsync(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let disableVgwRoutePropagationAsyncOverride = disableVgwRoutePropagationAsyncOverride {
            return try disableVgwRoutePropagationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DisableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func disableVgwRoutePropagationSync(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) throws {
        if let disableVgwRoutePropagationSyncOverride = disableVgwRoutePropagationSyncOverride {
            return try disableVgwRoutePropagationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkAsync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws {
        if let disableVpcClassicLinkAsyncOverride = disableVpcClassicLinkAsyncOverride {
            return try disableVpcClassicLinkAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkSync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult {
        if let disableVpcClassicLinkSyncOverride = disableVpcClassicLinkSyncOverride {
            return try disableVpcClassicLinkSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkDnsSupportAsync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws {
        if let disableVpcClassicLinkDnsSupportAsyncOverride = disableVpcClassicLinkDnsSupportAsyncOverride {
            return try disableVpcClassicLinkDnsSupportAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkDnsSupportSync(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult {
        if let disableVpcClassicLinkDnsSupportSyncOverride = disableVpcClassicLinkDnsSupportSyncOverride {
            return try disableVpcClassicLinkDnsSupportSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disassociateAddressAsync(
            input: ElasticComputeCloudModel.DisassociateAddressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let disassociateAddressAsyncOverride = disassociateAddressAsyncOverride {
            return try disassociateAddressAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DisassociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    public func disassociateAddressSync(
            input: ElasticComputeCloudModel.DisassociateAddressRequest) throws {
        if let disassociateAddressSyncOverride = disassociateAddressSyncOverride {
            return try disassociateAddressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The DisassociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    public func disassociateClientVpnTargetNetworkAsync(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateClientVpnTargetNetworkAsyncOverride = disassociateClientVpnTargetNetworkAsyncOverride {
            return try disassociateClientVpnTargetNetworkAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateClientVpnTargetNetworkSync(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult {
        if let disassociateClientVpnTargetNetworkSyncOverride = disassociateClientVpnTargetNetworkSyncOverride {
            return try disassociateClientVpnTargetNetworkSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
         - completion: The DisassociateEnclaveCertificateIamRoleResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateEnclaveCertificateIamRoleResult
           object will be validated before being returned to caller.
     */
    public func disassociateEnclaveCertificateIamRoleAsync(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateEnclaveCertificateIamRoleAsyncOverride = disassociateEnclaveCertificateIamRoleAsyncOverride {
            return try disassociateEnclaveCertificateIamRoleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateEnclaveCertificateIamRoleSync(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) throws -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult {
        if let disassociateEnclaveCertificateIamRoleSyncOverride = disassociateEnclaveCertificateIamRoleSyncOverride {
            return try disassociateEnclaveCertificateIamRoleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The DisassociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    public func disassociateIamInstanceProfileAsync(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateIamInstanceProfileAsyncOverride = disassociateIamInstanceProfileAsyncOverride {
            return try disassociateIamInstanceProfileAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateIamInstanceProfileSync(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult {
        if let disassociateIamInstanceProfileSyncOverride = disassociateIamInstanceProfileSyncOverride {
            return try disassociateIamInstanceProfileSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func disassociateRouteTableAsync(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let disassociateRouteTableAsyncOverride = disassociateRouteTableAsyncOverride {
            return try disassociateRouteTableAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DisassociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    public func disassociateRouteTableSync(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest) throws {
        if let disassociateRouteTableSyncOverride = disassociateRouteTableSyncOverride {
            return try disassociateRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func disassociateSubnetCidrBlockAsync(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateSubnetCidrBlockAsyncOverride = disassociateSubnetCidrBlockAsyncOverride {
            return try disassociateSubnetCidrBlockAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateSubnetCidrBlockSync(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult {
        if let disassociateSubnetCidrBlockSyncOverride = disassociateSubnetCidrBlockSyncOverride {
            return try disassociateSubnetCidrBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayMulticastDomainResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayMulticastDomainResult
           object will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayMulticastDomainAsync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateTransitGatewayMulticastDomainAsyncOverride = disassociateTransitGatewayMulticastDomainAsyncOverride {
            return try disassociateTransitGatewayMulticastDomainAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayMulticastDomainSync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult {
        if let disassociateTransitGatewayMulticastDomainSyncOverride = disassociateTransitGatewayMulticastDomainSyncOverride {
            return try disassociateTransitGatewayMulticastDomainSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayRouteTableAsync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateTransitGatewayRouteTableAsyncOverride = disassociateTransitGatewayRouteTableAsyncOverride {
            return try disassociateTransitGatewayRouteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayRouteTableSync(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult {
        if let disassociateTransitGatewayRouteTableSyncOverride = disassociateTransitGatewayRouteTableSyncOverride {
            return try disassociateTransitGatewayRouteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    public func disassociateVpcCidrBlockAsync(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult, ElasticComputeCloudError>) -> ()) throws {
        if let disassociateVpcCidrBlockAsyncOverride = disassociateVpcCidrBlockAsyncOverride {
            return try disassociateVpcCidrBlockAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateVpcCidrBlockSync(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult {
        if let disassociateVpcCidrBlockSyncOverride = disassociateVpcCidrBlockSyncOverride {
            return try disassociateVpcCidrBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The EnableEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The EnableEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    public func enableEbsEncryptionByDefaultAsync(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws {
        if let enableEbsEncryptionByDefaultAsyncOverride = enableEbsEncryptionByDefaultAsyncOverride {
            return try enableEbsEncryptionByDefaultAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the EnableEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableEbsEncryptionByDefaultSync(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult {
        if let enableEbsEncryptionByDefaultSyncOverride = enableEbsEncryptionByDefaultSyncOverride {
            return try enableEbsEncryptionByDefaultSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableFastSnapshotRestores operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
         - completion: The EnableFastSnapshotRestoresResult object or an error will be passed to this 
           callback when the operation is complete. The EnableFastSnapshotRestoresResult
           object will be validated before being returned to caller.
     */
    public func enableFastSnapshotRestoresAsync(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult, ElasticComputeCloudError>) -> ()) throws {
        if let enableFastSnapshotRestoresAsyncOverride = enableFastSnapshotRestoresAsyncOverride {
            return try enableFastSnapshotRestoresAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the EnableFastSnapshotRestores operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableFastSnapshotRestoresSync(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult {
        if let enableFastSnapshotRestoresSyncOverride = enableFastSnapshotRestoresSyncOverride {
            return try enableFastSnapshotRestoresSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The EnableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The EnableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    public func enableTransitGatewayRouteTablePropagationAsync(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult, ElasticComputeCloudError>) -> ()) throws {
        if let enableTransitGatewayRouteTablePropagationAsyncOverride = enableTransitGatewayRouteTablePropagationAsyncOverride {
            return try enableTransitGatewayRouteTablePropagationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableTransitGatewayRouteTablePropagationSync(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult {
        if let enableTransitGatewayRouteTablePropagationSyncOverride = enableTransitGatewayRouteTablePropagationSyncOverride {
            return try enableTransitGatewayRouteTablePropagationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableVgwRoutePropagationAsync(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let enableVgwRoutePropagationAsyncOverride = enableVgwRoutePropagationAsyncOverride {
            return try enableVgwRoutePropagationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the EnableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func enableVgwRoutePropagationSync(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) throws {
        if let enableVgwRoutePropagationSyncOverride = enableVgwRoutePropagationSyncOverride {
            return try enableVgwRoutePropagationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVolumeIO operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func enableVolumeIOAsync(
            input: ElasticComputeCloudModel.EnableVolumeIORequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let enableVolumeIOAsyncOverride = enableVolumeIOAsyncOverride {
            return try enableVolumeIOAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the EnableVolumeIO operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    public func enableVolumeIOSync(
            input: ElasticComputeCloudModel.EnableVolumeIORequest) throws {
        if let enableVolumeIOSyncOverride = enableVolumeIOSyncOverride {
            return try enableVolumeIOSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkAsync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkResult, ElasticComputeCloudError>) -> ()) throws {
        if let enableVpcClassicLinkAsyncOverride = enableVpcClassicLinkAsyncOverride {
            return try enableVpcClassicLinkAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the EnableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkSync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult {
        if let enableVpcClassicLinkSyncOverride = enableVpcClassicLinkSyncOverride {
            return try enableVpcClassicLinkSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkDnsSupportAsync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult, ElasticComputeCloudError>) -> ()) throws {
        if let enableVpcClassicLinkDnsSupportAsyncOverride = enableVpcClassicLinkDnsSupportAsyncOverride {
            return try enableVpcClassicLinkDnsSupportAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkDnsSupportSync(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult {
        if let enableVpcClassicLinkDnsSupportSyncOverride = enableVpcClassicLinkDnsSupportSyncOverride {
            return try enableVpcClassicLinkDnsSupportSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ExportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    public func exportClientVpnClientCertificateRevocationListAsync(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult, ElasticComputeCloudError>) -> ()) throws {
        if let exportClientVpnClientCertificateRevocationListAsyncOverride = exportClientVpnClientCertificateRevocationListAsyncOverride {
            return try exportClientVpnClientCertificateRevocationListAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportClientVpnClientCertificateRevocationListSync(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult {
        if let exportClientVpnClientCertificateRevocationListSyncOverride = exportClientVpnClientCertificateRevocationListSyncOverride {
            return try exportClientVpnClientCertificateRevocationListSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportClientVpnClientConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
         - completion: The ExportClientVpnClientConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientConfigurationResult
           object will be validated before being returned to caller.
     */
    public func exportClientVpnClientConfigurationAsync(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult, ElasticComputeCloudError>) -> ()) throws {
        if let exportClientVpnClientConfigurationAsyncOverride = exportClientVpnClientConfigurationAsyncOverride {
            return try exportClientVpnClientConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExportClientVpnClientConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportClientVpnClientConfigurationSync(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult {
        if let exportClientVpnClientConfigurationSyncOverride = exportClientVpnClientConfigurationSyncOverride {
            return try exportClientVpnClientConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
         - completion: The ExportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ExportImageResult
           object will be validated before being returned to caller.
     */
    public func exportImageAsync(
            input: ElasticComputeCloudModel.ExportImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let exportImageAsyncOverride = exportImageAsyncOverride {
            return try exportImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: The ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportImageSync(
            input: ElasticComputeCloudModel.ExportImageRequest) throws -> ElasticComputeCloudModel.ExportImageResult {
        if let exportImageSyncOverride = exportImageSyncOverride {
            return try exportImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The ExportTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The ExportTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    public func exportTransitGatewayRoutesAsync(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws {
        if let exportTransitGatewayRoutesAsyncOverride = exportTransitGatewayRoutesAsyncOverride {
            return try exportTransitGatewayRoutesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExportTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportTransitGatewayRoutesSync(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult {
        if let exportTransitGatewayRoutesSyncOverride = exportTransitGatewayRoutesSyncOverride {
            return try exportTransitGatewayRoutesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
         - completion: The GetAssociatedEnclaveCertificateIamRolesResult object or an error will be passed to this 
           callback when the operation is complete. The GetAssociatedEnclaveCertificateIamRolesResult
           object will be validated before being returned to caller.
     */
    public func getAssociatedEnclaveCertificateIamRolesAsync(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult, ElasticComputeCloudError>) -> ()) throws {
        if let getAssociatedEnclaveCertificateIamRolesAsyncOverride = getAssociatedEnclaveCertificateIamRolesAsyncOverride {
            return try getAssociatedEnclaveCertificateIamRolesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: The GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAssociatedEnclaveCertificateIamRolesSync(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) throws -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult {
        if let getAssociatedEnclaveCertificateIamRolesSyncOverride = getAssociatedEnclaveCertificateIamRolesSyncOverride {
            return try getAssociatedEnclaveCertificateIamRolesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
         - completion: The GetAssociatedIpv6PoolCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The GetAssociatedIpv6PoolCidrsResult
           object will be validated before being returned to caller.
     */
    public func getAssociatedIpv6PoolCidrsAsync(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult, ElasticComputeCloudError>) -> ()) throws {
        if let getAssociatedIpv6PoolCidrsAsyncOverride = getAssociatedIpv6PoolCidrsAsyncOverride {
            return try getAssociatedIpv6PoolCidrsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: The GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAssociatedIpv6PoolCidrsSync(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult {
        if let getAssociatedIpv6PoolCidrsSyncOverride = getAssociatedIpv6PoolCidrsSyncOverride {
            return try getAssociatedIpv6PoolCidrsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetCapacityReservationUsage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
         - completion: The GetCapacityReservationUsageResult object or an error will be passed to this 
           callback when the operation is complete. The GetCapacityReservationUsageResult
           object will be validated before being returned to caller.
     */
    public func getCapacityReservationUsageAsync(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetCapacityReservationUsageResult, ElasticComputeCloudError>) -> ()) throws {
        if let getCapacityReservationUsageAsyncOverride = getCapacityReservationUsageAsyncOverride {
            return try getCapacityReservationUsageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetCapacityReservationUsage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: The GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCapacityReservationUsageSync(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult {
        if let getCapacityReservationUsageSyncOverride = getCapacityReservationUsageSyncOverride {
            return try getCapacityReservationUsageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetCoipPoolUsage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
         - completion: The GetCoipPoolUsageResult object or an error will be passed to this 
           callback when the operation is complete. The GetCoipPoolUsageResult
           object will be validated before being returned to caller.
     */
    public func getCoipPoolUsageAsync(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetCoipPoolUsageResult, ElasticComputeCloudError>) -> ()) throws {
        if let getCoipPoolUsageAsyncOverride = getCoipPoolUsageAsyncOverride {
            return try getCoipPoolUsageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetCoipPoolUsage operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: The GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCoipPoolUsageSync(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult {
        if let getCoipPoolUsageSyncOverride = getCoipPoolUsageSyncOverride {
            return try getCoipPoolUsageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetConsoleOutput operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
         - completion: The GetConsoleOutputResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleOutputResult
           object will be validated before being returned to caller.
     */
    public func getConsoleOutputAsync(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleOutputResult, ElasticComputeCloudError>) -> ()) throws {
        if let getConsoleOutputAsyncOverride = getConsoleOutputAsyncOverride {
            return try getConsoleOutputAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetConsoleOutput operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleOutputSync(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest) throws -> ElasticComputeCloudModel.GetConsoleOutputResult {
        if let getConsoleOutputSyncOverride = getConsoleOutputSyncOverride {
            return try getConsoleOutputSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetConsoleScreenshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
         - completion: The GetConsoleScreenshotResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleScreenshotResult
           object will be validated before being returned to caller.
     */
    public func getConsoleScreenshotAsync(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetConsoleScreenshotResult, ElasticComputeCloudError>) -> ()) throws {
        if let getConsoleScreenshotAsyncOverride = getConsoleScreenshotAsyncOverride {
            return try getConsoleScreenshotAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetConsoleScreenshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleScreenshotSync(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult {
        if let getConsoleScreenshotSyncOverride = getConsoleScreenshotSyncOverride {
            return try getConsoleScreenshotSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDefaultCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
         - completion: The GetDefaultCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The GetDefaultCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    public func getDefaultCreditSpecificationAsync(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws {
        if let getDefaultCreditSpecificationAsyncOverride = getDefaultCreditSpecificationAsyncOverride {
            return try getDefaultCreditSpecificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetDefaultCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getDefaultCreditSpecificationSync(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult {
        if let getDefaultCreditSpecificationSyncOverride = getDefaultCreditSpecificationSyncOverride {
            return try getDefaultCreditSpecificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The GetEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The GetEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    public func getEbsDefaultKmsKeyIdAsync(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws {
        if let getEbsDefaultKmsKeyIdAsyncOverride = getEbsDefaultKmsKeyIdAsyncOverride {
            return try getEbsDefaultKmsKeyIdAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getEbsDefaultKmsKeyIdSync(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult {
        if let getEbsDefaultKmsKeyIdSyncOverride = getEbsDefaultKmsKeyIdSyncOverride {
            return try getEbsDefaultKmsKeyIdSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetEbsEncryptionByDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
         - completion: The GetEbsEncryptionByDefaultResult object or an error will be passed to this 
           callback when the operation is complete. The GetEbsEncryptionByDefaultResult
           object will be validated before being returned to caller.
     */
    public func getEbsEncryptionByDefaultAsync(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult, ElasticComputeCloudError>) -> ()) throws {
        if let getEbsEncryptionByDefaultAsyncOverride = getEbsEncryptionByDefaultAsyncOverride {
            return try getEbsEncryptionByDefaultAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetEbsEncryptionByDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getEbsEncryptionByDefaultSync(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult {
        if let getEbsEncryptionByDefaultSyncOverride = getEbsEncryptionByDefaultSyncOverride {
            return try getEbsEncryptionByDefaultSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetGroupsForCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
         - completion: The GetGroupsForCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The GetGroupsForCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func getGroupsForCapacityReservationAsync(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetGroupsForCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws {
        if let getGroupsForCapacityReservationAsyncOverride = getGroupsForCapacityReservationAsyncOverride {
            return try getGroupsForCapacityReservationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetGroupsForCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: The GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getGroupsForCapacityReservationSync(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) throws -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult {
        if let getGroupsForCapacityReservationSyncOverride = getGroupsForCapacityReservationSyncOverride {
            return try getGroupsForCapacityReservationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
         - completion: The GetHostReservationPurchasePreviewResult object or an error will be passed to this 
           callback when the operation is complete. The GetHostReservationPurchasePreviewResult
           object will be validated before being returned to caller.
     */
    public func getHostReservationPurchasePreviewAsync(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult, ElasticComputeCloudError>) -> ()) throws {
        if let getHostReservationPurchasePreviewAsyncOverride = getHostReservationPurchasePreviewAsyncOverride {
            return try getHostReservationPurchasePreviewAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getHostReservationPurchasePreviewSync(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult {
        if let getHostReservationPurchasePreviewSyncOverride = getHostReservationPurchasePreviewSyncOverride {
            return try getHostReservationPurchasePreviewSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetLaunchTemplateData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
         - completion: The GetLaunchTemplateDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetLaunchTemplateDataResult
           object will be validated before being returned to caller.
     */
    public func getLaunchTemplateDataAsync(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetLaunchTemplateDataResult, ElasticComputeCloudError>) -> ()) throws {
        if let getLaunchTemplateDataAsyncOverride = getLaunchTemplateDataAsyncOverride {
            return try getLaunchTemplateDataAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetLaunchTemplateData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getLaunchTemplateDataSync(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult {
        if let getLaunchTemplateDataSyncOverride = getLaunchTemplateDataSyncOverride {
            return try getLaunchTemplateDataSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetManagedPrefixListAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
         - completion: The GetManagedPrefixListAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetManagedPrefixListAssociationsResult
           object will be validated before being returned to caller.
     */
    public func getManagedPrefixListAssociationsAsync(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let getManagedPrefixListAssociationsAsyncOverride = getManagedPrefixListAssociationsAsyncOverride {
            return try getManagedPrefixListAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetManagedPrefixListAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getManagedPrefixListAssociationsSync(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) throws -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult {
        if let getManagedPrefixListAssociationsSyncOverride = getManagedPrefixListAssociationsSyncOverride {
            return try getManagedPrefixListAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetManagedPrefixListEntries operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
         - completion: The GetManagedPrefixListEntriesResult object or an error will be passed to this 
           callback when the operation is complete. The GetManagedPrefixListEntriesResult
           object will be validated before being returned to caller.
     */
    public func getManagedPrefixListEntriesAsync(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetManagedPrefixListEntriesResult, ElasticComputeCloudError>) -> ()) throws {
        if let getManagedPrefixListEntriesAsyncOverride = getManagedPrefixListEntriesAsyncOverride {
            return try getManagedPrefixListEntriesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetManagedPrefixListEntries operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getManagedPrefixListEntriesSync(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) throws -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult {
        if let getManagedPrefixListEntriesSyncOverride = getManagedPrefixListEntriesSyncOverride {
            return try getManagedPrefixListEntriesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetPasswordData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
         - completion: The GetPasswordDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetPasswordDataResult
           object will be validated before being returned to caller.
     */
    public func getPasswordDataAsync(
            input: ElasticComputeCloudModel.GetPasswordDataRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetPasswordDataResult, ElasticComputeCloudError>) -> ()) throws {
        if let getPasswordDataAsyncOverride = getPasswordDataAsyncOverride {
            return try getPasswordDataAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetPasswordData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPasswordDataSync(
            input: ElasticComputeCloudModel.GetPasswordDataRequest) throws -> ElasticComputeCloudModel.GetPasswordDataResult {
        if let getPasswordDataSyncOverride = getPasswordDataSyncOverride {
            return try getPasswordDataSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The GetReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The GetReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    public func getReservedInstancesExchangeQuoteAsync(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult, ElasticComputeCloudError>) -> ()) throws {
        if let getReservedInstancesExchangeQuoteAsyncOverride = getReservedInstancesExchangeQuoteAsyncOverride {
            return try getReservedInstancesExchangeQuoteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getReservedInstancesExchangeQuoteSync(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult {
        if let getReservedInstancesExchangeQuoteSyncOverride = getReservedInstancesExchangeQuoteSyncOverride {
            return try getReservedInstancesExchangeQuoteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayAttachmentPropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayAttachmentPropagationsResult
           object will be validated before being returned to caller.
     */
    public func getTransitGatewayAttachmentPropagationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let getTransitGatewayAttachmentPropagationsAsyncOverride = getTransitGatewayAttachmentPropagationsAsyncOverride {
            return try getTransitGatewayAttachmentPropagationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayAttachmentPropagationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult {
        if let getTransitGatewayAttachmentPropagationsSyncOverride = getTransitGatewayAttachmentPropagationsSyncOverride {
            return try getTransitGatewayAttachmentPropagationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    public func getTransitGatewayMulticastDomainAssociationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let getTransitGatewayMulticastDomainAssociationsAsyncOverride = getTransitGatewayMulticastDomainAssociationsAsyncOverride {
            return try getTransitGatewayMulticastDomainAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayMulticastDomainAssociationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult {
        if let getTransitGatewayMulticastDomainAssociationsSyncOverride = getTransitGatewayMulticastDomainAssociationsSyncOverride {
            return try getTransitGatewayMulticastDomainAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
         - completion: The GetTransitGatewayPrefixListReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayPrefixListReferencesResult
           object will be validated before being returned to caller.
     */
    public func getTransitGatewayPrefixListReferencesAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult, ElasticComputeCloudError>) -> ()) throws {
        if let getTransitGatewayPrefixListReferencesAsyncOverride = getTransitGatewayPrefixListReferencesAsyncOverride {
            return try getTransitGatewayPrefixListReferencesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayPrefixListReferencesSync(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult {
        if let getTransitGatewayPrefixListReferencesSyncOverride = getTransitGatewayPrefixListReferencesSyncOverride {
            return try getTransitGatewayPrefixListReferencesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTableAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTableAssociationsResult
           object will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTableAssociationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let getTransitGatewayRouteTableAssociationsAsyncOverride = getTransitGatewayRouteTableAssociationsAsyncOverride {
            return try getTransitGatewayRouteTableAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTableAssociationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult {
        if let getTransitGatewayRouteTableAssociationsSyncOverride = getTransitGatewayRouteTableAssociationsSyncOverride {
            return try getTransitGatewayRouteTableAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTablePropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTablePropagationsResult
           object will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTablePropagationsAsync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let getTransitGatewayRouteTablePropagationsAsyncOverride = getTransitGatewayRouteTablePropagationsAsyncOverride {
            return try getTransitGatewayRouteTablePropagationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTablePropagationsSync(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult {
        if let getTransitGatewayRouteTablePropagationsSyncOverride = getTransitGatewayRouteTablePropagationsSyncOverride {
            return try getTransitGatewayRouteTablePropagationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ImportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ImportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    public func importClientVpnClientCertificateRevocationListAsync(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult, ElasticComputeCloudError>) -> ()) throws {
        if let importClientVpnClientCertificateRevocationListAsyncOverride = importClientVpnClientCertificateRevocationListAsyncOverride {
            return try importClientVpnClientCertificateRevocationListAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importClientVpnClientCertificateRevocationListSync(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult {
        if let importClientVpnClientCertificateRevocationListSyncOverride = importClientVpnClientCertificateRevocationListSyncOverride {
            return try importClientVpnClientCertificateRevocationListSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
         - completion: The ImportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ImportImageResult
           object will be validated before being returned to caller.
     */
    public func importImageAsync(
            input: ElasticComputeCloudModel.ImportImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let importImageAsyncOverride = importImageAsyncOverride {
            return try importImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importImageSync(
            input: ElasticComputeCloudModel.ImportImageRequest) throws -> ElasticComputeCloudModel.ImportImageResult {
        if let importImageSyncOverride = importImageSyncOverride {
            return try importImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
         - completion: The ImportInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ImportInstanceResult
           object will be validated before being returned to caller.
     */
    public func importInstanceAsync(
            input: ElasticComputeCloudModel.ImportInstanceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportInstanceResult, ElasticComputeCloudError>) -> ()) throws {
        if let importInstanceAsyncOverride = importInstanceAsyncOverride {
            return try importInstanceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importInstanceSync(
            input: ElasticComputeCloudModel.ImportInstanceRequest) throws -> ElasticComputeCloudModel.ImportInstanceResult {
        if let importInstanceSyncOverride = importInstanceSyncOverride {
            return try importInstanceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
         - completion: The ImportKeyPairResult object or an error will be passed to this 
           callback when the operation is complete. The ImportKeyPairResult
           object will be validated before being returned to caller.
     */
    public func importKeyPairAsync(
            input: ElasticComputeCloudModel.ImportKeyPairRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportKeyPairResult, ElasticComputeCloudError>) -> ()) throws {
        if let importKeyPairAsyncOverride = importKeyPairAsyncOverride {
            return try importKeyPairAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importKeyPairSync(
            input: ElasticComputeCloudModel.ImportKeyPairRequest) throws -> ElasticComputeCloudModel.ImportKeyPairResult {
        if let importKeyPairSyncOverride = importKeyPairSyncOverride {
            return try importKeyPairSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
         - completion: The ImportSnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The ImportSnapshotResult
           object will be validated before being returned to caller.
     */
    public func importSnapshotAsync(
            input: ElasticComputeCloudModel.ImportSnapshotRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportSnapshotResult, ElasticComputeCloudError>) -> ()) throws {
        if let importSnapshotAsyncOverride = importSnapshotAsyncOverride {
            return try importSnapshotAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importSnapshotSync(
            input: ElasticComputeCloudModel.ImportSnapshotRequest) throws -> ElasticComputeCloudModel.ImportSnapshotResult {
        if let importSnapshotSyncOverride = importSnapshotSyncOverride {
            return try importSnapshotSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
         - completion: The ImportVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ImportVolumeResult
           object will be validated before being returned to caller.
     */
    public func importVolumeAsync(
            input: ElasticComputeCloudModel.ImportVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ImportVolumeResult, ElasticComputeCloudError>) -> ()) throws {
        if let importVolumeAsyncOverride = importVolumeAsyncOverride {
            return try importVolumeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importVolumeSync(
            input: ElasticComputeCloudModel.ImportVolumeRequest) throws -> ElasticComputeCloudModel.ImportVolumeResult {
        if let importVolumeSyncOverride = importVolumeSyncOverride {
            return try importVolumeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyAddressAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
         - completion: The ModifyAddressAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyAddressAttributeResult
           object will be validated before being returned to caller.
     */
    public func modifyAddressAttributeAsync(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyAddressAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyAddressAttributeAsyncOverride = modifyAddressAttributeAsyncOverride {
            return try modifyAddressAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyAddressAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: The ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyAddressAttributeSync(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) throws -> ElasticComputeCloudModel.ModifyAddressAttributeResult {
        if let modifyAddressAttributeSyncOverride = modifyAddressAttributeSyncOverride {
            return try modifyAddressAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyAvailabilityZoneGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
         - completion: The ModifyAvailabilityZoneGroupResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyAvailabilityZoneGroupResult
           object will be validated before being returned to caller.
     */
    public func modifyAvailabilityZoneGroupAsync(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyAvailabilityZoneGroupAsyncOverride = modifyAvailabilityZoneGroupAsyncOverride {
            return try modifyAvailabilityZoneGroupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyAvailabilityZoneGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: The ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyAvailabilityZoneGroupSync(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) throws -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult {
        if let modifyAvailabilityZoneGroupSyncOverride = modifyAvailabilityZoneGroupSyncOverride {
            return try modifyAvailabilityZoneGroupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
         - completion: The ModifyCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyCapacityReservationResult
           object will be validated before being returned to caller.
     */
    public func modifyCapacityReservationAsync(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyCapacityReservationResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyCapacityReservationAsyncOverride = modifyCapacityReservationAsyncOverride {
            return try modifyCapacityReservationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyCapacityReservationSync(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult {
        if let modifyCapacityReservationSyncOverride = modifyCapacityReservationSyncOverride {
            return try modifyCapacityReservationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
         - completion: The ModifyClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    public func modifyClientVpnEndpointAsync(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyClientVpnEndpointResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyClientVpnEndpointAsyncOverride = modifyClientVpnEndpointAsyncOverride {
            return try modifyClientVpnEndpointAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyClientVpnEndpointSync(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult {
        if let modifyClientVpnEndpointSyncOverride = modifyClientVpnEndpointSyncOverride {
            return try modifyClientVpnEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyDefaultCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyDefaultCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyDefaultCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    public func modifyDefaultCreditSpecificationAsync(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyDefaultCreditSpecificationAsyncOverride = modifyDefaultCreditSpecificationAsyncOverride {
            return try modifyDefaultCreditSpecificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyDefaultCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyDefaultCreditSpecificationSync(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult {
        if let modifyDefaultCreditSpecificationSyncOverride = modifyDefaultCreditSpecificationSyncOverride {
            return try modifyDefaultCreditSpecificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The ModifyEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    public func modifyEbsDefaultKmsKeyIdAsync(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyEbsDefaultKmsKeyIdAsyncOverride = modifyEbsDefaultKmsKeyIdAsyncOverride {
            return try modifyEbsDefaultKmsKeyIdAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyEbsDefaultKmsKeyIdSync(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult {
        if let modifyEbsDefaultKmsKeyIdSyncOverride = modifyEbsDefaultKmsKeyIdSyncOverride {
            return try modifyEbsDefaultKmsKeyIdSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
         - completion: The ModifyFleetResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFleetResult
           object will be validated before being returned to caller.
     */
    public func modifyFleetAsync(
            input: ElasticComputeCloudModel.ModifyFleetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyFleetResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyFleetAsyncOverride = modifyFleetAsyncOverride {
            return try modifyFleetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFleetSync(
            input: ElasticComputeCloudModel.ModifyFleetRequest) throws -> ElasticComputeCloudModel.ModifyFleetResult {
        if let modifyFleetSyncOverride = modifyFleetSyncOverride {
            return try modifyFleetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ModifyFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    public func modifyFpgaImageAttributeAsync(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyFpgaImageAttributeAsyncOverride = modifyFpgaImageAttributeAsyncOverride {
            return try modifyFpgaImageAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFpgaImageAttributeSync(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult {
        if let modifyFpgaImageAttributeSyncOverride = modifyFpgaImageAttributeSyncOverride {
            return try modifyFpgaImageAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
         - completion: The ModifyHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyHostsResult
           object will be validated before being returned to caller.
     */
    public func modifyHostsAsync(
            input: ElasticComputeCloudModel.ModifyHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyHostsResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyHostsAsyncOverride = modifyHostsAsyncOverride {
            return try modifyHostsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyHostsSync(
            input: ElasticComputeCloudModel.ModifyHostsRequest) throws -> ElasticComputeCloudModel.ModifyHostsResult {
        if let modifyHostsSyncOverride = modifyHostsSyncOverride {
            return try modifyHostsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyIdFormatAsync(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyIdFormatAsyncOverride = modifyIdFormatAsyncOverride {
            return try modifyIdFormatAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    public func modifyIdFormatSync(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest) throws {
        if let modifyIdFormatSyncOverride = modifyIdFormatSyncOverride {
            return try modifyIdFormatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyIdentityIdFormatAsync(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyIdentityIdFormatAsyncOverride = modifyIdentityIdFormatAsyncOverride {
            return try modifyIdentityIdFormatAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    public func modifyIdentityIdFormatSync(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) throws {
        if let modifyIdentityIdFormatSyncOverride = modifyIdentityIdFormatSyncOverride {
            return try modifyIdentityIdFormatSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyImageAttributeAsync(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyImageAttributeAsyncOverride = modifyImageAttributeAsyncOverride {
            return try modifyImageAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    public func modifyImageAttributeSync(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest) throws {
        if let modifyImageAttributeSyncOverride = modifyImageAttributeSyncOverride {
            return try modifyImageAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyInstanceAttributeAsync(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyInstanceAttributeAsyncOverride = modifyInstanceAttributeAsyncOverride {
            return try modifyInstanceAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    public func modifyInstanceAttributeSync(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) throws {
        if let modifyInstanceAttributeSyncOverride = modifyInstanceAttributeSyncOverride {
            return try modifyInstanceAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
         - completion: The ModifyInstanceCapacityReservationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCapacityReservationAttributesResult
           object will be validated before being returned to caller.
     */
    public func modifyInstanceCapacityReservationAttributesAsync(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyInstanceCapacityReservationAttributesAsyncOverride = modifyInstanceCapacityReservationAttributesAsyncOverride {
            return try modifyInstanceCapacityReservationAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCapacityReservationAttributesSync(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult {
        if let modifyInstanceCapacityReservationAttributesSyncOverride = modifyInstanceCapacityReservationAttributesSyncOverride {
            return try modifyInstanceCapacityReservationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyInstanceCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    public func modifyInstanceCreditSpecificationAsync(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyInstanceCreditSpecificationAsyncOverride = modifyInstanceCreditSpecificationAsyncOverride {
            return try modifyInstanceCreditSpecificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCreditSpecificationSync(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult {
        if let modifyInstanceCreditSpecificationSyncOverride = modifyInstanceCreditSpecificationSyncOverride {
            return try modifyInstanceCreditSpecificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceEventStartTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
         - completion: The ModifyInstanceEventStartTimeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceEventStartTimeResult
           object will be validated before being returned to caller.
     */
    public func modifyInstanceEventStartTimeAsync(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyInstanceEventStartTimeAsyncOverride = modifyInstanceEventStartTimeAsyncOverride {
            return try modifyInstanceEventStartTimeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyInstanceEventStartTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceEventStartTimeSync(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult {
        if let modifyInstanceEventStartTimeSyncOverride = modifyInstanceEventStartTimeSyncOverride {
            return try modifyInstanceEventStartTimeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstanceMetadataOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
         - completion: The ModifyInstanceMetadataOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceMetadataOptionsResult
           object will be validated before being returned to caller.
     */
    public func modifyInstanceMetadataOptionsAsync(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyInstanceMetadataOptionsAsyncOverride = modifyInstanceMetadataOptionsAsyncOverride {
            return try modifyInstanceMetadataOptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyInstanceMetadataOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceMetadataOptionsSync(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult {
        if let modifyInstanceMetadataOptionsSyncOverride = modifyInstanceMetadataOptionsSyncOverride {
            return try modifyInstanceMetadataOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyInstancePlacement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
         - completion: The ModifyInstancePlacementResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstancePlacementResult
           object will be validated before being returned to caller.
     */
    public func modifyInstancePlacementAsync(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyInstancePlacementResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyInstancePlacementAsyncOverride = modifyInstancePlacementAsyncOverride {
            return try modifyInstancePlacementAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyInstancePlacement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstancePlacementSync(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult {
        if let modifyInstancePlacementSyncOverride = modifyInstancePlacementSyncOverride {
            return try modifyInstancePlacementSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
         - completion: The ModifyLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    public func modifyLaunchTemplateAsync(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyLaunchTemplateResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyLaunchTemplateAsyncOverride = modifyLaunchTemplateAsyncOverride {
            return try modifyLaunchTemplateAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyLaunchTemplateSync(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult {
        if let modifyLaunchTemplateSyncOverride = modifyLaunchTemplateSyncOverride {
            return try modifyLaunchTemplateSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyManagedPrefixList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
         - completion: The ModifyManagedPrefixListResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyManagedPrefixListResult
           object will be validated before being returned to caller.
     */
    public func modifyManagedPrefixListAsync(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyManagedPrefixListResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyManagedPrefixListAsyncOverride = modifyManagedPrefixListAsyncOverride {
            return try modifyManagedPrefixListAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyManagedPrefixList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: The ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyManagedPrefixListSync(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) throws -> ElasticComputeCloudModel.ModifyManagedPrefixListResult {
        if let modifyManagedPrefixListSyncOverride = modifyManagedPrefixListSyncOverride {
            return try modifyManagedPrefixListSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyNetworkInterfaceAttributeAsync(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyNetworkInterfaceAttributeAsyncOverride = modifyNetworkInterfaceAttributeAsyncOverride {
            return try modifyNetworkInterfaceAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func modifyNetworkInterfaceAttributeSync(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) throws {
        if let modifyNetworkInterfaceAttributeSyncOverride = modifyNetworkInterfaceAttributeSyncOverride {
            return try modifyNetworkInterfaceAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
         - completion: The ModifyReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyReservedInstancesResult
           object will be validated before being returned to caller.
     */
    public func modifyReservedInstancesAsync(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyReservedInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyReservedInstancesAsyncOverride = modifyReservedInstancesAsyncOverride {
            return try modifyReservedInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyReservedInstancesSync(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult {
        if let modifyReservedInstancesSyncOverride = modifyReservedInstancesSyncOverride {
            return try modifyReservedInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifySnapshotAttributeAsync(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifySnapshotAttributeAsyncOverride = modifySnapshotAttributeAsyncOverride {
            return try modifySnapshotAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifySnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    public func modifySnapshotAttributeSync(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) throws {
        if let modifySnapshotAttributeSyncOverride = modifySnapshotAttributeSyncOverride {
            return try modifySnapshotAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
         - completion: The ModifySpotFleetRequestResponse object or an error will be passed to this 
           callback when the operation is complete. The ModifySpotFleetRequestResponse
           object will be validated before being returned to caller.
     */
    public func modifySpotFleetRequestAsync(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifySpotFleetRequestResponse, ElasticComputeCloudError>) -> ()) throws {
        if let modifySpotFleetRequestAsyncOverride = modifySpotFleetRequestAsyncOverride {
            return try modifySpotFleetRequestAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifySpotFleetRequest operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifySpotFleetRequestSync(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse {
        if let modifySpotFleetRequestSyncOverride = modifySpotFleetRequestSyncOverride {
            return try modifySpotFleetRequestSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifySubnetAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifySubnetAttributeAsync(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifySubnetAttributeAsyncOverride = modifySubnetAttributeAsyncOverride {
            return try modifySubnetAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifySubnetAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    public func modifySubnetAttributeSync(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) throws {
        if let modifySubnetAttributeSyncOverride = modifySubnetAttributeSyncOverride {
            return try modifySubnetAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorFilterNetworkServicesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorFilterNetworkServicesResult
           object will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterNetworkServicesAsync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyTrafficMirrorFilterNetworkServicesAsyncOverride = modifyTrafficMirrorFilterNetworkServicesAsyncOverride {
            return try modifyTrafficMirrorFilterNetworkServicesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterNetworkServicesSync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult {
        if let modifyTrafficMirrorFilterNetworkServicesSyncOverride = modifyTrafficMirrorFilterNetworkServicesSyncOverride {
            return try modifyTrafficMirrorFilterNetworkServicesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorFilterRuleResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorFilterRuleResult
           object will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterRuleAsync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyTrafficMirrorFilterRuleAsyncOverride = modifyTrafficMirrorFilterRuleAsyncOverride {
            return try modifyTrafficMirrorFilterRuleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterRuleSync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult {
        if let modifyTrafficMirrorFilterRuleSyncOverride = modifyTrafficMirrorFilterRuleSyncOverride {
            return try modifyTrafficMirrorFilterRuleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTrafficMirrorSession operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
         - completion: The ModifyTrafficMirrorSessionResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTrafficMirrorSessionResult
           object will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorSessionAsync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyTrafficMirrorSessionAsyncOverride = modifyTrafficMirrorSessionAsyncOverride {
            return try modifyTrafficMirrorSessionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyTrafficMirrorSession operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorSessionSync(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult {
        if let modifyTrafficMirrorSessionSyncOverride = modifyTrafficMirrorSessionSyncOverride {
            return try modifyTrafficMirrorSessionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayResult
           object will be validated before being returned to caller.
     */
    public func modifyTransitGatewayAsync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyTransitGatewayAsyncOverride = modifyTransitGatewayAsyncOverride {
            return try modifyTransitGatewayAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewaySync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayResult {
        if let modifyTransitGatewaySyncOverride = modifyTransitGatewaySyncOverride {
            return try modifyTransitGatewaySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayPrefixListReferenceResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayPrefixListReferenceResult
           object will be validated before being returned to caller.
     */
    public func modifyTransitGatewayPrefixListReferenceAsync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyTransitGatewayPrefixListReferenceAsyncOverride = modifyTransitGatewayPrefixListReferenceAsyncOverride {
            return try modifyTransitGatewayPrefixListReferenceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewayPrefixListReferenceSync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult {
        if let modifyTransitGatewayPrefixListReferenceSyncOverride = modifyTransitGatewayPrefixListReferenceSyncOverride {
            return try modifyTransitGatewayPrefixListReferenceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    public func modifyTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyTransitGatewayVpcAttachmentAsyncOverride = modifyTransitGatewayVpcAttachmentAsyncOverride {
            return try modifyTransitGatewayVpcAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult {
        if let modifyTransitGatewayVpcAttachmentSyncOverride = modifyTransitGatewayVpcAttachmentSyncOverride {
            return try modifyTransitGatewayVpcAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
         - completion: The ModifyVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVolumeResult
           object will be validated before being returned to caller.
     */
    public func modifyVolumeAsync(
            input: ElasticComputeCloudModel.ModifyVolumeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVolumeResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVolumeAsyncOverride = modifyVolumeAsyncOverride {
            return try modifyVolumeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVolumeSync(
            input: ElasticComputeCloudModel.ModifyVolumeRequest) throws -> ElasticComputeCloudModel.ModifyVolumeResult {
        if let modifyVolumeSyncOverride = modifyVolumeSyncOverride {
            return try modifyVolumeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyVolumeAttributeAsync(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyVolumeAttributeAsyncOverride = modifyVolumeAttributeAsyncOverride {
            return try modifyVolumeAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    public func modifyVolumeAttributeSync(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) throws {
        if let modifyVolumeAttributeSyncOverride = modifyVolumeAttributeSyncOverride {
            return try modifyVolumeAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func modifyVpcAttributeAsync(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let modifyVpcAttributeAsyncOverride = modifyVpcAttributeAsyncOverride {
            return try modifyVpcAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ModifyVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    public func modifyVpcAttributeSync(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) throws {
        if let modifyVpcAttributeSyncOverride = modifyVpcAttributeSyncOverride {
            return try modifyVpcAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpcEndpointAsyncOverride = modifyVpcEndpointAsyncOverride {
            return try modifyVpcEndpointAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult {
        if let modifyVpcEndpointSyncOverride = modifyVpcEndpointSyncOverride {
            return try modifyVpcEndpointSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointConnectionNotificationAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpcEndpointConnectionNotificationAsyncOverride = modifyVpcEndpointConnectionNotificationAsyncOverride {
            return try modifyVpcEndpointConnectionNotificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointConnectionNotificationSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult {
        if let modifyVpcEndpointConnectionNotificationSyncOverride = modifyVpcEndpointConnectionNotificationSyncOverride {
            return try modifyVpcEndpointConnectionNotificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServiceConfigurationAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpcEndpointServiceConfigurationAsyncOverride = modifyVpcEndpointServiceConfigurationAsyncOverride {
            return try modifyVpcEndpointServiceConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServiceConfigurationSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult {
        if let modifyVpcEndpointServiceConfigurationSyncOverride = modifyVpcEndpointServiceConfigurationSyncOverride {
            return try modifyVpcEndpointServiceConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePermissionsAsync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpcEndpointServicePermissionsAsyncOverride = modifyVpcEndpointServicePermissionsAsyncOverride {
            return try modifyVpcEndpointServicePermissionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePermissionsSync(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult {
        if let modifyVpcEndpointServicePermissionsSyncOverride = modifyVpcEndpointServicePermissionsSyncOverride {
            return try modifyVpcEndpointServicePermissionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpcPeeringConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcPeeringConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcPeeringConnectionOptionsAsync(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpcPeeringConnectionOptionsAsyncOverride = modifyVpcPeeringConnectionOptionsAsyncOverride {
            return try modifyVpcPeeringConnectionOptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcPeeringConnectionOptionsSync(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult {
        if let modifyVpcPeeringConnectionOptionsSyncOverride = modifyVpcPeeringConnectionOptionsSyncOverride {
            return try modifyVpcPeeringConnectionOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpcTenancy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
         - completion: The ModifyVpcTenancyResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcTenancyResult
           object will be validated before being returned to caller.
     */
    public func modifyVpcTenancyAsync(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpcTenancyResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpcTenancyAsyncOverride = modifyVpcTenancyAsyncOverride {
            return try modifyVpcTenancyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpcTenancy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcTenancySync(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult {
        if let modifyVpcTenancySyncOverride = modifyVpcTenancySyncOverride {
            return try modifyVpcTenancySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
         - completion: The ModifyVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnConnectionResult
           object will be validated before being returned to caller.
     */
    public func modifyVpnConnectionAsync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpnConnectionAsyncOverride = modifyVpnConnectionAsyncOverride {
            return try modifyVpnConnectionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnConnectionSync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult {
        if let modifyVpnConnectionSyncOverride = modifyVpnConnectionSyncOverride {
            return try modifyVpnConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpnConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    public func modifyVpnConnectionOptionsAsync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpnConnectionOptionsAsyncOverride = modifyVpnConnectionOptionsAsyncOverride {
            return try modifyVpnConnectionOptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpnConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnConnectionOptionsSync(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult {
        if let modifyVpnConnectionOptionsSyncOverride = modifyVpnConnectionOptionsSyncOverride {
            return try modifyVpnConnectionOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnTunnelCertificate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
         - completion: The ModifyVpnTunnelCertificateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnTunnelCertificateResult
           object will be validated before being returned to caller.
     */
    public func modifyVpnTunnelCertificateAsync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpnTunnelCertificateAsyncOverride = modifyVpnTunnelCertificateAsyncOverride {
            return try modifyVpnTunnelCertificateAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpnTunnelCertificate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnTunnelCertificateSync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult {
        if let modifyVpnTunnelCertificateSyncOverride = modifyVpnTunnelCertificateSyncOverride {
            return try modifyVpnTunnelCertificateSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ModifyVpnTunnelOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
         - completion: The ModifyVpnTunnelOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpnTunnelOptionsResult
           object will be validated before being returned to caller.
     */
    public func modifyVpnTunnelOptionsAsync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let modifyVpnTunnelOptionsAsyncOverride = modifyVpnTunnelOptionsAsyncOverride {
            return try modifyVpnTunnelOptionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ModifyVpnTunnelOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnTunnelOptionsSync(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult {
        if let modifyVpnTunnelOptionsSyncOverride = modifyVpnTunnelOptionsSyncOverride {
            return try modifyVpnTunnelOptionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the MonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
         - completion: The MonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The MonitorInstancesResult
           object will be validated before being returned to caller.
     */
    public func monitorInstancesAsync(
            input: ElasticComputeCloudModel.MonitorInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.MonitorInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let monitorInstancesAsyncOverride = monitorInstancesAsyncOverride {
            return try monitorInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the MonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func monitorInstancesSync(
            input: ElasticComputeCloudModel.MonitorInstancesRequest) throws -> ElasticComputeCloudModel.MonitorInstancesResult {
        if let monitorInstancesSyncOverride = monitorInstancesSyncOverride {
            return try monitorInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the MoveAddressToVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
         - completion: The MoveAddressToVpcResult object or an error will be passed to this 
           callback when the operation is complete. The MoveAddressToVpcResult
           object will be validated before being returned to caller.
     */
    public func moveAddressToVpcAsync(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.MoveAddressToVpcResult, ElasticComputeCloudError>) -> ()) throws {
        if let moveAddressToVpcAsyncOverride = moveAddressToVpcAsyncOverride {
            return try moveAddressToVpcAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the MoveAddressToVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func moveAddressToVpcSync(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult {
        if let moveAddressToVpcSyncOverride = moveAddressToVpcSyncOverride {
            return try moveAddressToVpcSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ProvisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
         - completion: The ProvisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The ProvisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func provisionByoipCidrAsync(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ProvisionByoipCidrResult, ElasticComputeCloudError>) -> ()) throws {
        if let provisionByoipCidrAsyncOverride = provisionByoipCidrAsyncOverride {
            return try provisionByoipCidrAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ProvisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func provisionByoipCidrSync(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult {
        if let provisionByoipCidrSyncOverride = provisionByoipCidrSyncOverride {
            return try provisionByoipCidrSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseHostReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
         - completion: The PurchaseHostReservationResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseHostReservationResult
           object will be validated before being returned to caller.
     */
    public func purchaseHostReservationAsync(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseHostReservationResult, ElasticComputeCloudError>) -> ()) throws {
        if let purchaseHostReservationAsyncOverride = purchaseHostReservationAsyncOverride {
            return try purchaseHostReservationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PurchaseHostReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseHostReservationSync(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult {
        if let purchaseHostReservationSyncOverride = purchaseHostReservationSyncOverride {
            return try purchaseHostReservationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
         - completion: The PurchaseReservedInstancesOfferingResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedInstancesOfferingResult
           object will be validated before being returned to caller.
     */
    public func purchaseReservedInstancesOfferingAsync(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult, ElasticComputeCloudError>) -> ()) throws {
        if let purchaseReservedInstancesOfferingAsyncOverride = purchaseReservedInstancesOfferingAsyncOverride {
            return try purchaseReservedInstancesOfferingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseReservedInstancesOfferingSync(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult {
        if let purchaseReservedInstancesOfferingSyncOverride = purchaseReservedInstancesOfferingSyncOverride {
            return try purchaseReservedInstancesOfferingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
         - completion: The PurchaseScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    public func purchaseScheduledInstancesAsync(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.PurchaseScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let purchaseScheduledInstancesAsyncOverride = purchaseScheduledInstancesAsyncOverride {
            return try purchaseScheduledInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PurchaseScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseScheduledInstancesSync(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult {
        if let purchaseScheduledInstancesSyncOverride = purchaseScheduledInstancesSyncOverride {
            return try purchaseScheduledInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RebootInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func rebootInstancesAsync(
            input: ElasticComputeCloudModel.RebootInstancesRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let rebootInstancesAsyncOverride = rebootInstancesAsyncOverride {
            return try rebootInstancesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the RebootInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    public func rebootInstancesSync(
            input: ElasticComputeCloudModel.RebootInstancesRequest) throws {
        if let rebootInstancesSyncOverride = rebootInstancesSyncOverride {
            return try rebootInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
         - completion: The RegisterImageResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterImageResult
           object will be validated before being returned to caller.
     */
    public func registerImageAsync(
            input: ElasticComputeCloudModel.RegisterImageRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterImageResult, ElasticComputeCloudError>) -> ()) throws {
        if let registerImageAsyncOverride = registerImageAsyncOverride {
            return try registerImageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerImageSync(
            input: ElasticComputeCloudModel.RegisterImageRequest) throws -> ElasticComputeCloudModel.RegisterImageResult {
        if let registerImageSyncOverride = registerImageSyncOverride {
            return try registerImageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
         - completion: The RegisterInstanceEventNotificationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterInstanceEventNotificationAttributesResult
           object will be validated before being returned to caller.
     */
    public func registerInstanceEventNotificationAttributesAsync(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult, ElasticComputeCloudError>) -> ()) throws {
        if let registerInstanceEventNotificationAttributesAsyncOverride = registerInstanceEventNotificationAttributesAsyncOverride {
            return try registerInstanceEventNotificationAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerInstanceEventNotificationAttributesSync(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) throws -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult {
        if let registerInstanceEventNotificationAttributesSyncOverride = registerInstanceEventNotificationAttributesSyncOverride {
            return try registerInstanceEventNotificationAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
         - completion: The RegisterTransitGatewayMulticastGroupMembersResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterTransitGatewayMulticastGroupMembersResult
           object will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupMembersAsync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult, ElasticComputeCloudError>) -> ()) throws {
        if let registerTransitGatewayMulticastGroupMembersAsyncOverride = registerTransitGatewayMulticastGroupMembersAsyncOverride {
            return try registerTransitGatewayMulticastGroupMembersAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupMembersSync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult {
        if let registerTransitGatewayMulticastGroupMembersSyncOverride = registerTransitGatewayMulticastGroupMembersSyncOverride {
            return try registerTransitGatewayMulticastGroupMembersSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
         - completion: The RegisterTransitGatewayMulticastGroupSourcesResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterTransitGatewayMulticastGroupSourcesResult
           object will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupSourcesAsync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult, ElasticComputeCloudError>) -> ()) throws {
        if let registerTransitGatewayMulticastGroupSourcesAsyncOverride = registerTransitGatewayMulticastGroupSourcesAsyncOverride {
            return try registerTransitGatewayMulticastGroupSourcesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupSourcesSync(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult {
        if let registerTransitGatewayMulticastGroupSourcesSyncOverride = registerTransitGatewayMulticastGroupSourcesSyncOverride {
            return try registerTransitGatewayMulticastGroupSourcesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
         - completion: The RejectTransitGatewayMulticastDomainAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayMulticastDomainAssociationsResult
           object will be validated before being returned to caller.
     */
    public func rejectTransitGatewayMulticastDomainAssociationsAsync(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult, ElasticComputeCloudError>) -> ()) throws {
        if let rejectTransitGatewayMulticastDomainAssociationsAsyncOverride = rejectTransitGatewayMulticastDomainAssociationsAsyncOverride {
            return try rejectTransitGatewayMulticastDomainAssociationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayMulticastDomainAssociationsSync(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult {
        if let rejectTransitGatewayMulticastDomainAssociationsSyncOverride = rejectTransitGatewayMulticastDomainAssociationsSyncOverride {
            return try rejectTransitGatewayMulticastDomainAssociationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayPeeringAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayPeeringAttachmentResult
           object will be validated before being returned to caller.
     */
    public func rejectTransitGatewayPeeringAttachmentAsync(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let rejectTransitGatewayPeeringAttachmentAsyncOverride = rejectTransitGatewayPeeringAttachmentAsyncOverride {
            return try rejectTransitGatewayPeeringAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayPeeringAttachmentSync(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult {
        if let rejectTransitGatewayPeeringAttachmentSyncOverride = rejectTransitGatewayPeeringAttachmentSyncOverride {
            return try rejectTransitGatewayPeeringAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    public func rejectTransitGatewayVpcAttachmentAsync(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult, ElasticComputeCloudError>) -> ()) throws {
        if let rejectTransitGatewayVpcAttachmentAsyncOverride = rejectTransitGatewayVpcAttachmentAsyncOverride {
            return try rejectTransitGatewayVpcAttachmentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayVpcAttachmentSync(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult {
        if let rejectTransitGatewayVpcAttachmentSyncOverride = rejectTransitGatewayVpcAttachmentSyncOverride {
            return try rejectTransitGatewayVpcAttachmentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The RejectVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    public func rejectVpcEndpointConnectionsAsync(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let rejectVpcEndpointConnectionsAsyncOverride = rejectVpcEndpointConnectionsAsyncOverride {
            return try rejectVpcEndpointConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RejectVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcEndpointConnectionsSync(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult {
        if let rejectVpcEndpointConnectionsSyncOverride = rejectVpcEndpointConnectionsSyncOverride {
            return try rejectVpcEndpointConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The RejectVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    public func rejectVpcPeeringConnectionAsync(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult, ElasticComputeCloudError>) -> ()) throws {
        if let rejectVpcPeeringConnectionAsyncOverride = rejectVpcPeeringConnectionAsyncOverride {
            return try rejectVpcPeeringConnectionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RejectVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcPeeringConnectionSync(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult {
        if let rejectVpcPeeringConnectionSyncOverride = rejectVpcPeeringConnectionSyncOverride {
            return try rejectVpcPeeringConnectionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReleaseAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func releaseAddressAsync(
            input: ElasticComputeCloudModel.ReleaseAddressRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let releaseAddressAsyncOverride = releaseAddressAsyncOverride {
            return try releaseAddressAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ReleaseAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    public func releaseAddressSync(
            input: ElasticComputeCloudModel.ReleaseAddressRequest) throws {
        if let releaseAddressSyncOverride = releaseAddressSyncOverride {
            return try releaseAddressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReleaseHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
         - completion: The ReleaseHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ReleaseHostsResult
           object will be validated before being returned to caller.
     */
    public func releaseHostsAsync(
            input: ElasticComputeCloudModel.ReleaseHostsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReleaseHostsResult, ElasticComputeCloudError>) -> ()) throws {
        if let releaseHostsAsyncOverride = releaseHostsAsyncOverride {
            return try releaseHostsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ReleaseHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func releaseHostsSync(
            input: ElasticComputeCloudModel.ReleaseHostsRequest) throws -> ElasticComputeCloudModel.ReleaseHostsResult {
        if let releaseHostsSyncOverride = releaseHostsSyncOverride {
            return try releaseHostsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
         - completion: The ReplaceIamInstanceProfileAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceIamInstanceProfileAssociationResult
           object will be validated before being returned to caller.
     */
    public func replaceIamInstanceProfileAssociationAsync(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult, ElasticComputeCloudError>) -> ()) throws {
        if let replaceIamInstanceProfileAssociationAsyncOverride = replaceIamInstanceProfileAssociationAsyncOverride {
            return try replaceIamInstanceProfileAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceIamInstanceProfileAssociationSync(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult {
        if let replaceIamInstanceProfileAssociationSyncOverride = replaceIamInstanceProfileAssociationSyncOverride {
            return try replaceIamInstanceProfileAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
         - completion: The ReplaceNetworkAclAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceNetworkAclAssociationResult
           object will be validated before being returned to caller.
     */
    public func replaceNetworkAclAssociationAsync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult, ElasticComputeCloudError>) -> ()) throws {
        if let replaceNetworkAclAssociationAsyncOverride = replaceNetworkAclAssociationAsyncOverride {
            return try replaceNetworkAclAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceNetworkAclAssociationSync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult {
        if let replaceNetworkAclAssociationSyncOverride = replaceNetworkAclAssociationSyncOverride {
            return try replaceNetworkAclAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func replaceNetworkAclEntryAsync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let replaceNetworkAclEntryAsyncOverride = replaceNetworkAclEntryAsyncOverride {
            return try replaceNetworkAclEntryAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    public func replaceNetworkAclEntrySync(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) throws {
        if let replaceNetworkAclEntrySyncOverride = replaceNetworkAclEntrySyncOverride {
            return try replaceNetworkAclEntrySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func replaceRouteAsync(
            input: ElasticComputeCloudModel.ReplaceRouteRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let replaceRouteAsyncOverride = replaceRouteAsyncOverride {
            return try replaceRouteAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ReplaceRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    public func replaceRouteSync(
            input: ElasticComputeCloudModel.ReplaceRouteRequest) throws {
        if let replaceRouteSyncOverride = replaceRouteSyncOverride {
            return try replaceRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
         - completion: The ReplaceRouteTableAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceRouteTableAssociationResult
           object will be validated before being returned to caller.
     */
    public func replaceRouteTableAssociationAsync(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult, ElasticComputeCloudError>) -> ()) throws {
        if let replaceRouteTableAssociationAsyncOverride = replaceRouteTableAssociationAsyncOverride {
            return try replaceRouteTableAssociationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceRouteTableAssociationSync(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult {
        if let replaceRouteTableAssociationSyncOverride = replaceRouteTableAssociationSyncOverride {
            return try replaceRouteTableAssociationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReplaceTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
         - completion: The ReplaceTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    public func replaceTransitGatewayRouteAsync(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult, ElasticComputeCloudError>) -> ()) throws {
        if let replaceTransitGatewayRouteAsyncOverride = replaceTransitGatewayRouteAsyncOverride {
            return try replaceTransitGatewayRouteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ReplaceTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceTransitGatewayRouteSync(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult {
        if let replaceTransitGatewayRouteSyncOverride = replaceTransitGatewayRouteSyncOverride {
            return try replaceTransitGatewayRouteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ReportInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func reportInstanceStatusAsync(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let reportInstanceStatusAsyncOverride = reportInstanceStatusAsyncOverride {
            return try reportInstanceStatusAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ReportInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    public func reportInstanceStatusSync(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest) throws {
        if let reportInstanceStatusSyncOverride = reportInstanceStatusSyncOverride {
            return try reportInstanceStatusSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RequestSpotFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
         - completion: The RequestSpotFleetResponse object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotFleetResponse
           object will be validated before being returned to caller.
     */
    public func requestSpotFleetAsync(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotFleetResponse, ElasticComputeCloudError>) -> ()) throws {
        if let requestSpotFleetAsyncOverride = requestSpotFleetAsyncOverride {
            return try requestSpotFleetAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RequestSpotFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotFleetSync(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse {
        if let requestSpotFleetSyncOverride = requestSpotFleetSyncOverride {
            return try requestSpotFleetSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RequestSpotInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
         - completion: The RequestSpotInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotInstancesResult
           object will be validated before being returned to caller.
     */
    public func requestSpotInstancesAsync(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RequestSpotInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let requestSpotInstancesAsyncOverride = requestSpotInstancesAsyncOverride {
            return try requestSpotInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RequestSpotInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotInstancesSync(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult {
        if let requestSpotInstancesSyncOverride = requestSpotInstancesSyncOverride {
            return try requestSpotInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetAddressAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
         - completion: The ResetAddressAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetAddressAttributeResult
           object will be validated before being returned to caller.
     */
    public func resetAddressAttributeAsync(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ResetAddressAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let resetAddressAttributeAsyncOverride = resetAddressAttributeAsyncOverride {
            return try resetAddressAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetAddressAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: The ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetAddressAttributeSync(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest) throws -> ElasticComputeCloudModel.ResetAddressAttributeResult {
        if let resetAddressAttributeSyncOverride = resetAddressAttributeSyncOverride {
            return try resetAddressAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
         - completion: The ResetEbsDefaultKmsKeyIdResult object or an error will be passed to this 
           callback when the operation is complete. The ResetEbsDefaultKmsKeyIdResult
           object will be validated before being returned to caller.
     */
    public func resetEbsDefaultKmsKeyIdAsync(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult, ElasticComputeCloudError>) -> ()) throws {
        if let resetEbsDefaultKmsKeyIdAsyncOverride = resetEbsDefaultKmsKeyIdAsyncOverride {
            return try resetEbsDefaultKmsKeyIdAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetEbsDefaultKmsKeyIdSync(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult {
        if let resetEbsDefaultKmsKeyIdSyncOverride = resetEbsDefaultKmsKeyIdSyncOverride {
            return try resetEbsDefaultKmsKeyIdSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ResetFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    public func resetFpgaImageAttributeAsync(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.ResetFpgaImageAttributeResult, ElasticComputeCloudError>) -> ()) throws {
        if let resetFpgaImageAttributeAsyncOverride = resetFpgaImageAttributeAsyncOverride {
            return try resetFpgaImageAttributeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ResetFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetFpgaImageAttributeSync(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult {
        if let resetFpgaImageAttributeSyncOverride = resetFpgaImageAttributeSyncOverride {
            return try resetFpgaImageAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetImageAttributeAsync(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let resetImageAttributeAsyncOverride = resetImageAttributeAsyncOverride {
            return try resetImageAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ResetImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    public func resetImageAttributeSync(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest) throws {
        if let resetImageAttributeSyncOverride = resetImageAttributeSyncOverride {
            return try resetImageAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetInstanceAttributeAsync(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let resetInstanceAttributeAsyncOverride = resetInstanceAttributeAsyncOverride {
            return try resetInstanceAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ResetInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    public func resetInstanceAttributeSync(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) throws {
        if let resetInstanceAttributeSyncOverride = resetInstanceAttributeSyncOverride {
            return try resetInstanceAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetNetworkInterfaceAttributeAsync(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let resetNetworkInterfaceAttributeAsyncOverride = resetNetworkInterfaceAttributeAsyncOverride {
            return try resetNetworkInterfaceAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func resetNetworkInterfaceAttributeSync(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) throws {
        if let resetNetworkInterfaceAttributeSyncOverride = resetNetworkInterfaceAttributeSyncOverride {
            return try resetNetworkInterfaceAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func resetSnapshotAttributeAsync(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let resetSnapshotAttributeAsyncOverride = resetSnapshotAttributeAsyncOverride {
            return try resetSnapshotAttributeAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the ResetSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    public func resetSnapshotAttributeSync(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) throws {
        if let resetSnapshotAttributeSyncOverride = resetSnapshotAttributeSyncOverride {
            return try resetSnapshotAttributeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreAddressToClassic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
         - completion: The RestoreAddressToClassicResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreAddressToClassicResult
           object will be validated before being returned to caller.
     */
    public func restoreAddressToClassicAsync(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RestoreAddressToClassicResult, ElasticComputeCloudError>) -> ()) throws {
        if let restoreAddressToClassicAsyncOverride = restoreAddressToClassicAsyncOverride {
            return try restoreAddressToClassicAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreAddressToClassic operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreAddressToClassicSync(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult {
        if let restoreAddressToClassicSyncOverride = restoreAddressToClassicSyncOverride {
            return try restoreAddressToClassicSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreManagedPrefixListVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
         - completion: The RestoreManagedPrefixListVersionResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreManagedPrefixListVersionResult
           object will be validated before being returned to caller.
     */
    public func restoreManagedPrefixListVersionAsync(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult, ElasticComputeCloudError>) -> ()) throws {
        if let restoreManagedPrefixListVersionAsyncOverride = restoreManagedPrefixListVersionAsyncOverride {
            return try restoreManagedPrefixListVersionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreManagedPrefixListVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: The RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreManagedPrefixListVersionSync(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) throws -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult {
        if let restoreManagedPrefixListVersionSyncOverride = restoreManagedPrefixListVersionSyncOverride {
            return try restoreManagedPrefixListVersionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
         - completion: The RevokeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    public func revokeClientVpnIngressAsync(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeClientVpnIngressResult, ElasticComputeCloudError>) -> ()) throws {
        if let revokeClientVpnIngressAsyncOverride = revokeClientVpnIngressAsyncOverride {
            return try revokeClientVpnIngressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RevokeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeClientVpnIngressSync(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult {
        if let revokeClientVpnIngressSyncOverride = revokeClientVpnIngressSyncOverride {
            return try revokeClientVpnIngressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
         - completion: The RevokeSecurityGroupEgressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeSecurityGroupEgressResult
           object will be validated before being returned to caller.
     */
    public func revokeSecurityGroupEgressAsync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeSecurityGroupEgressResult, ElasticComputeCloudError>) -> ()) throws {
        if let revokeSecurityGroupEgressAsyncOverride = revokeSecurityGroupEgressAsyncOverride {
            return try revokeSecurityGroupEgressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeSecurityGroupEgressSync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) throws -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult {
        if let revokeSecurityGroupEgressSyncOverride = revokeSecurityGroupEgressSyncOverride {
            return try revokeSecurityGroupEgressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
         - completion: The RevokeSecurityGroupIngressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeSecurityGroupIngressResult
           object will be validated before being returned to caller.
     */
    public func revokeSecurityGroupIngressAsync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RevokeSecurityGroupIngressResult, ElasticComputeCloudError>) -> ()) throws {
        if let revokeSecurityGroupIngressAsyncOverride = revokeSecurityGroupIngressAsyncOverride {
            return try revokeSecurityGroupIngressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeSecurityGroupIngressSync(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) throws -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult {
        if let revokeSecurityGroupIngressSyncOverride = revokeSecurityGroupIngressSyncOverride {
            return try revokeSecurityGroupIngressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RunInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
         - completion: The Reservation object or an error will be passed to this 
           callback when the operation is complete. The Reservation
           object will be validated before being returned to caller.
     */
    public func runInstancesAsync(
            input: ElasticComputeCloudModel.RunInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.Reservation, ElasticComputeCloudError>) -> ()) throws {
        if let runInstancesAsyncOverride = runInstancesAsyncOverride {
            return try runInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RunInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runInstancesSync(
            input: ElasticComputeCloudModel.RunInstancesRequest) throws -> ElasticComputeCloudModel.Reservation {
        if let runInstancesSyncOverride = runInstancesSyncOverride {
            return try runInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RunScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
         - completion: The RunScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RunScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    public func runScheduledInstancesAsync(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.RunScheduledInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let runScheduledInstancesAsyncOverride = runScheduledInstancesAsyncOverride {
            return try runScheduledInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RunScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runScheduledInstancesSync(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult {
        if let runScheduledInstancesSyncOverride = runScheduledInstancesSyncOverride {
            return try runScheduledInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SearchLocalGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchLocalGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchLocalGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    public func searchLocalGatewayRoutesAsync(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws {
        if let searchLocalGatewayRoutesAsyncOverride = searchLocalGatewayRoutesAsyncOverride {
            return try searchLocalGatewayRoutesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SearchLocalGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchLocalGatewayRoutesSync(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult {
        if let searchLocalGatewayRoutesSyncOverride = searchLocalGatewayRoutesSyncOverride {
            return try searchLocalGatewayRoutesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
         - completion: The SearchTransitGatewayMulticastGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayMulticastGroupsResult
           object will be validated before being returned to caller.
     */
    public func searchTransitGatewayMulticastGroupsAsync(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult, ElasticComputeCloudError>) -> ()) throws {
        if let searchTransitGatewayMulticastGroupsAsyncOverride = searchTransitGatewayMulticastGroupsAsyncOverride {
            return try searchTransitGatewayMulticastGroupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchTransitGatewayMulticastGroupsSync(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult {
        if let searchTransitGatewayMulticastGroupsSyncOverride = searchTransitGatewayMulticastGroupsSyncOverride {
            return try searchTransitGatewayMulticastGroupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SearchTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    public func searchTransitGatewayRoutesAsync(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult, ElasticComputeCloudError>) -> ()) throws {
        if let searchTransitGatewayRoutesAsyncOverride = searchTransitGatewayRoutesAsyncOverride {
            return try searchTransitGatewayRoutesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SearchTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchTransitGatewayRoutesSync(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult {
        if let searchTransitGatewayRoutesSyncOverride = searchTransitGatewayRoutesSyncOverride {
            return try searchTransitGatewayRoutesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SendDiagnosticInterrupt operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func sendDiagnosticInterruptAsync(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let sendDiagnosticInterruptAsyncOverride = sendDiagnosticInterruptAsyncOverride {
            return try sendDiagnosticInterruptAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the SendDiagnosticInterrupt operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    public func sendDiagnosticInterruptSync(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) throws {
        if let sendDiagnosticInterruptSyncOverride = sendDiagnosticInterruptSyncOverride {
            return try sendDiagnosticInterruptSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
         - completion: The StartInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StartInstancesResult
           object will be validated before being returned to caller.
     */
    public func startInstancesAsync(
            input: ElasticComputeCloudModel.StartInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StartInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let startInstancesAsyncOverride = startInstancesAsyncOverride {
            return try startInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startInstancesSync(
            input: ElasticComputeCloudModel.StartInstancesRequest) throws -> ElasticComputeCloudModel.StartInstancesResult {
        if let startInstancesSyncOverride = startInstancesSyncOverride {
            return try startInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartNetworkInsightsAnalysis operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
         - completion: The StartNetworkInsightsAnalysisResult object or an error will be passed to this 
           callback when the operation is complete. The StartNetworkInsightsAnalysisResult
           object will be validated before being returned to caller.
     */
    public func startNetworkInsightsAnalysisAsync(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult, ElasticComputeCloudError>) -> ()) throws {
        if let startNetworkInsightsAnalysisAsyncOverride = startNetworkInsightsAnalysisAsyncOverride {
            return try startNetworkInsightsAnalysisAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartNetworkInsightsAnalysis operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startNetworkInsightsAnalysisSync(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) throws -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult {
        if let startNetworkInsightsAnalysisSyncOverride = startNetworkInsightsAnalysisSyncOverride {
            return try startNetworkInsightsAnalysisSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
         - completion: The StartVpcEndpointServicePrivateDnsVerificationResult object or an error will be passed to this 
           callback when the operation is complete. The StartVpcEndpointServicePrivateDnsVerificationResult
           object will be validated before being returned to caller.
     */
    public func startVpcEndpointServicePrivateDnsVerificationAsync(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult, ElasticComputeCloudError>) -> ()) throws {
        if let startVpcEndpointServicePrivateDnsVerificationAsyncOverride = startVpcEndpointServicePrivateDnsVerificationAsyncOverride {
            return try startVpcEndpointServicePrivateDnsVerificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: The StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startVpcEndpointServicePrivateDnsVerificationSync(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult {
        if let startVpcEndpointServicePrivateDnsVerificationSyncOverride = startVpcEndpointServicePrivateDnsVerificationSyncOverride {
            return try startVpcEndpointServicePrivateDnsVerificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the StopInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
         - completion: The StopInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StopInstancesResult
           object will be validated before being returned to caller.
     */
    public func stopInstancesAsync(
            input: ElasticComputeCloudModel.StopInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.StopInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let stopInstancesAsyncOverride = stopInstancesAsyncOverride {
            return try stopInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the StopInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func stopInstancesSync(
            input: ElasticComputeCloudModel.StopInstancesRequest) throws -> ElasticComputeCloudModel.StopInstancesResult {
        if let stopInstancesSyncOverride = stopInstancesSyncOverride {
            return try stopInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TerminateClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
         - completion: The TerminateClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    public func terminateClientVpnConnectionsAsync(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult, ElasticComputeCloudError>) -> ()) throws {
        if let terminateClientVpnConnectionsAsyncOverride = terminateClientVpnConnectionsAsyncOverride {
            return try terminateClientVpnConnectionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the TerminateClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateClientVpnConnectionsSync(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult {
        if let terminateClientVpnConnectionsSyncOverride = terminateClientVpnConnectionsSyncOverride {
            return try terminateClientVpnConnectionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TerminateInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
         - completion: The TerminateInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateInstancesResult
           object will be validated before being returned to caller.
     */
    public func terminateInstancesAsync(
            input: ElasticComputeCloudModel.TerminateInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.TerminateInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let terminateInstancesAsyncOverride = terminateInstancesAsyncOverride {
            return try terminateInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the TerminateInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateInstancesSync(
            input: ElasticComputeCloudModel.TerminateInstancesRequest) throws -> ElasticComputeCloudModel.TerminateInstancesResult {
        if let terminateInstancesSyncOverride = terminateInstancesSyncOverride {
            return try terminateInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
         - completion: The UnassignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The UnassignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    public func unassignIpv6AddressesAsync(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UnassignIpv6AddressesResult, ElasticComputeCloudError>) -> ()) throws {
        if let unassignIpv6AddressesAsyncOverride = unassignIpv6AddressesAsyncOverride {
            return try unassignIpv6AddressesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UnassignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unassignIpv6AddressesSync(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult {
        if let unassignIpv6AddressesSyncOverride = unassignIpv6AddressesSyncOverride {
            return try unassignIpv6AddressesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func unassignPrivateIpAddressesAsync(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, 
            completion: @escaping (ElasticComputeCloudError?) -> ()) throws {
        if let unassignPrivateIpAddressesAsyncOverride = unassignPrivateIpAddressesAsyncOverride {
            return try unassignPrivateIpAddressesAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    public func unassignPrivateIpAddressesSync(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) throws {
        if let unassignPrivateIpAddressesSyncOverride = unassignPrivateIpAddressesSyncOverride {
            return try unassignPrivateIpAddressesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UnmonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
         - completion: The UnmonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The UnmonitorInstancesResult
           object will be validated before being returned to caller.
     */
    public func unmonitorInstancesAsync(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UnmonitorInstancesResult, ElasticComputeCloudError>) -> ()) throws {
        if let unmonitorInstancesAsyncOverride = unmonitorInstancesAsyncOverride {
            return try unmonitorInstancesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UnmonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unmonitorInstancesSync(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult {
        if let unmonitorInstancesSyncOverride = unmonitorInstancesSyncOverride {
            return try unmonitorInstancesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsEgressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsEgressResult
           object will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsEgressAsync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult, ElasticComputeCloudError>) -> ()) throws {
        if let updateSecurityGroupRuleDescriptionsEgressAsyncOverride = updateSecurityGroupRuleDescriptionsEgressAsyncOverride {
            return try updateSecurityGroupRuleDescriptionsEgressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsEgressSync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult {
        if let updateSecurityGroupRuleDescriptionsEgressSyncOverride = updateSecurityGroupRuleDescriptionsEgressSyncOverride {
            return try updateSecurityGroupRuleDescriptionsEgressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsIngressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsIngressResult
           object will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsIngressAsync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult, ElasticComputeCloudError>) -> ()) throws {
        if let updateSecurityGroupRuleDescriptionsIngressAsyncOverride = updateSecurityGroupRuleDescriptionsIngressAsyncOverride {
            return try updateSecurityGroupRuleDescriptionsIngressAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsIngressSync(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult {
        if let updateSecurityGroupRuleDescriptionsIngressSyncOverride = updateSecurityGroupRuleDescriptionsIngressSyncOverride {
            return try updateSecurityGroupRuleDescriptionsIngressSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the WithdrawByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
         - completion: The WithdrawByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The WithdrawByoipCidrResult
           object will be validated before being returned to caller.
     */
    public func withdrawByoipCidrAsync(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, 
            completion: @escaping (Result<ElasticComputeCloudModel.WithdrawByoipCidrResult, ElasticComputeCloudError>) -> ()) throws {
        if let withdrawByoipCidrAsyncOverride = withdrawByoipCidrAsyncOverride {
            return try withdrawByoipCidrAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the WithdrawByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func withdrawByoipCidrSync(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult {
        if let withdrawByoipCidrSyncOverride = withdrawByoipCidrSyncOverride {
            return try withdrawByoipCidrSyncOverride(input)
        }

        throw error
    }
}
