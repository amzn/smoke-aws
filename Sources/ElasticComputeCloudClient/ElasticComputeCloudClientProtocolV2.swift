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
// ElasticComputeCloudClientProtocolV2.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ElasticComputeCloud service.
 */
public protocol ElasticComputeCloudClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AcceptAddressTransferFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptAddressTransferRequest) async throws -> ElasticComputeCloudModel.AcceptAddressTransferResult
    typealias AcceptReservedInstancesExchangeQuoteFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) async throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult
    typealias AcceptTransitGatewayMulticastDomainAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult
    typealias AcceptTransitGatewayPeeringAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult
    typealias AcceptTransitGatewayVpcAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult
    typealias AcceptVpcEndpointConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult
    typealias AcceptVpcPeeringConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult
    typealias AdvertiseByoipCidrFunctionType = (
            _ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) async throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult
    typealias AllocateAddressFunctionType = (
            _ input: ElasticComputeCloudModel.AllocateAddressRequest) async throws -> ElasticComputeCloudModel.AllocateAddressResult
    typealias AllocateHostsFunctionType = (
            _ input: ElasticComputeCloudModel.AllocateHostsRequest) async throws -> ElasticComputeCloudModel.AllocateHostsResult
    typealias AllocateIpamPoolCidrFunctionType = (
            _ input: ElasticComputeCloudModel.AllocateIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.AllocateIpamPoolCidrResult
    typealias ApplySecurityGroupsToClientVpnTargetNetworkFunctionType = (
            _ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult
    typealias AssignIpv6AddressesFunctionType = (
            _ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) async throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult
    typealias AssignPrivateIpAddressesFunctionType = (
            _ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) async throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult
    typealias AssignPrivateNatGatewayAddressFunctionType = (
            _ input: ElasticComputeCloudModel.AssignPrivateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.AssignPrivateNatGatewayAddressResult
    typealias AssociateAddressFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateAddressRequest) async throws -> ElasticComputeCloudModel.AssociateAddressResult
    typealias AssociateClientVpnTargetNetworkFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult
    typealias AssociateDhcpOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) async throws -> ()
    typealias AssociateEnclaveCertificateIamRoleFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) async throws -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult
    typealias AssociateIamInstanceProfileFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) async throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult
    typealias AssociateInstanceEventWindowFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.AssociateInstanceEventWindowResult
    typealias AssociateIpamResourceDiscoveryFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.AssociateIpamResourceDiscoveryResult
    typealias AssociateNatGatewayAddressFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.AssociateNatGatewayAddressResult
    typealias AssociateRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateRouteTableRequest) async throws -> ElasticComputeCloudModel.AssociateRouteTableResult
    typealias AssociateSubnetCidrBlockFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) async throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult
    typealias AssociateTransitGatewayMulticastDomainFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult
    typealias AssociateTransitGatewayPolicyTableFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableResult
    typealias AssociateTransitGatewayRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult
    typealias AssociateTrunkInterfaceFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateTrunkInterfaceRequest) async throws -> ElasticComputeCloudModel.AssociateTrunkInterfaceResult
    typealias AssociateVpcCidrBlockFunctionType = (
            _ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) async throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult
    typealias AttachClassicLinkVpcFunctionType = (
            _ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) async throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult
    typealias AttachInternetGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.AttachInternetGatewayRequest) async throws -> ()
    typealias AttachNetworkInterfaceFunctionType = (
            _ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) async throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult
    typealias AttachVerifiedAccessTrustProviderFunctionType = (
            _ input: ElasticComputeCloudModel.AttachVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.AttachVerifiedAccessTrustProviderResult
    typealias AttachVolumeFunctionType = (
            _ input: ElasticComputeCloudModel.AttachVolumeRequest) async throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias AttachVpnGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.AttachVpnGatewayRequest) async throws -> ElasticComputeCloudModel.AttachVpnGatewayResult
    typealias AuthorizeClientVpnIngressFunctionType = (
            _ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) async throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult
    typealias AuthorizeSecurityGroupEgressFunctionType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) async throws -> ElasticComputeCloudModel.AuthorizeSecurityGroupEgressResult
    typealias AuthorizeSecurityGroupIngressFunctionType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) async throws -> ElasticComputeCloudModel.AuthorizeSecurityGroupIngressResult
    typealias BundleInstanceFunctionType = (
            _ input: ElasticComputeCloudModel.BundleInstanceRequest) async throws -> ElasticComputeCloudModel.BundleInstanceResult
    typealias CancelBundleTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CancelBundleTaskRequest) async throws -> ElasticComputeCloudModel.CancelBundleTaskResult
    typealias CancelCapacityReservationFunctionType = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationRequest) async throws -> ElasticComputeCloudModel.CancelCapacityReservationResult
    typealias CancelCapacityReservationFleetsFunctionType = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationFleetsRequest) async throws -> ElasticComputeCloudModel.CancelCapacityReservationFleetsResult
    typealias CancelConversionTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CancelConversionRequest) async throws -> ()
    typealias CancelExportTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CancelExportTaskRequest) async throws -> ()
    typealias CancelImageLaunchPermissionFunctionType = (
            _ input: ElasticComputeCloudModel.CancelImageLaunchPermissionRequest) async throws -> ElasticComputeCloudModel.CancelImageLaunchPermissionResult
    typealias CancelImportTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CancelImportTaskRequest) async throws -> ElasticComputeCloudModel.CancelImportTaskResult
    typealias CancelReservedInstancesListingFunctionType = (
            _ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) async throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult
    typealias CancelSpotFleetRequestsFunctionType = (
            _ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) async throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse
    typealias CancelSpotInstanceRequestsFunctionType = (
            _ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) async throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult
    typealias ConfirmProductInstanceFunctionType = (
            _ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) async throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult
    typealias CopyFpgaImageFunctionType = (
            _ input: ElasticComputeCloudModel.CopyFpgaImageRequest) async throws -> ElasticComputeCloudModel.CopyFpgaImageResult
    typealias CopyImageFunctionType = (
            _ input: ElasticComputeCloudModel.CopyImageRequest) async throws -> ElasticComputeCloudModel.CopyImageResult
    typealias CopySnapshotFunctionType = (
            _ input: ElasticComputeCloudModel.CopySnapshotRequest) async throws -> ElasticComputeCloudModel.CopySnapshotResult
    typealias CreateCapacityReservationFunctionType = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationRequest) async throws -> ElasticComputeCloudModel.CreateCapacityReservationResult
    typealias CreateCapacityReservationFleetFunctionType = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationFleetRequest) async throws -> ElasticComputeCloudModel.CreateCapacityReservationFleetResult
    typealias CreateCarrierGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) async throws -> ElasticComputeCloudModel.CreateCarrierGatewayResult
    typealias CreateClientVpnEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult
    typealias CreateClientVpnRouteFunctionType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) async throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult
    typealias CreateCoipCidrFunctionType = (
            _ input: ElasticComputeCloudModel.CreateCoipCidrRequest) async throws -> ElasticComputeCloudModel.CreateCoipCidrResult
    typealias CreateCoipPoolFunctionType = (
            _ input: ElasticComputeCloudModel.CreateCoipPoolRequest) async throws -> ElasticComputeCloudModel.CreateCoipPoolResult
    typealias CreateCustomerGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) async throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult
    typealias CreateDefaultSubnetFunctionType = (
            _ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) async throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult
    typealias CreateDefaultVpcFunctionType = (
            _ input: ElasticComputeCloudModel.CreateDefaultVpcRequest) async throws -> ElasticComputeCloudModel.CreateDefaultVpcResult
    typealias CreateDhcpOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) async throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult
    typealias CreateEgressOnlyInternetGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) async throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult
    typealias CreateFleetFunctionType = (
            _ input: ElasticComputeCloudModel.CreateFleetRequest) async throws -> ElasticComputeCloudModel.CreateFleetResult
    typealias CreateFlowLogsFunctionType = (
            _ input: ElasticComputeCloudModel.CreateFlowLogsRequest) async throws -> ElasticComputeCloudModel.CreateFlowLogsResult
    typealias CreateFpgaImageFunctionType = (
            _ input: ElasticComputeCloudModel.CreateFpgaImageRequest) async throws -> ElasticComputeCloudModel.CreateFpgaImageResult
    typealias CreateImageFunctionType = (
            _ input: ElasticComputeCloudModel.CreateImageRequest) async throws -> ElasticComputeCloudModel.CreateImageResult
    typealias CreateInstanceConnectEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.CreateInstanceConnectEndpointRequest) async throws -> ElasticComputeCloudModel.CreateInstanceConnectEndpointResult
    typealias CreateInstanceEventWindowFunctionType = (
            _ input: ElasticComputeCloudModel.CreateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.CreateInstanceEventWindowResult
    typealias CreateInstanceExportTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) async throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult
    typealias CreateInternetGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateInternetGatewayRequest) async throws -> ElasticComputeCloudModel.CreateInternetGatewayResult
    typealias CreateIpamFunctionType = (
            _ input: ElasticComputeCloudModel.CreateIpamRequest) async throws -> ElasticComputeCloudModel.CreateIpamResult
    typealias CreateIpamPoolFunctionType = (
            _ input: ElasticComputeCloudModel.CreateIpamPoolRequest) async throws -> ElasticComputeCloudModel.CreateIpamPoolResult
    typealias CreateIpamResourceDiscoveryFunctionType = (
            _ input: ElasticComputeCloudModel.CreateIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.CreateIpamResourceDiscoveryResult
    typealias CreateIpamScopeFunctionType = (
            _ input: ElasticComputeCloudModel.CreateIpamScopeRequest) async throws -> ElasticComputeCloudModel.CreateIpamScopeResult
    typealias CreateKeyPairFunctionType = (
            _ input: ElasticComputeCloudModel.CreateKeyPairRequest) async throws -> ElasticComputeCloudModel.KeyPair
    typealias CreateLaunchTemplateFunctionType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult
    typealias CreateLaunchTemplateVersionFunctionType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) async throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult
    typealias CreateLocalGatewayRouteFunctionType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult
    typealias CreateLocalGatewayRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableResult
    typealias CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
    typealias CreateLocalGatewayRouteTableVpcAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult
    typealias CreateManagedPrefixListFunctionType = (
            _ input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.CreateManagedPrefixListResult
    typealias CreateNatGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNatGatewayRequest) async throws -> ElasticComputeCloudModel.CreateNatGatewayResult
    typealias CreateNetworkAclFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclRequest) async throws -> ElasticComputeCloudModel.CreateNetworkAclResult
    typealias CreateNetworkAclEntryFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) async throws -> ()
    typealias CreateNetworkInsightsAccessScopeFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeResult
    typealias CreateNetworkInsightsPathFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult
    typealias CreateNetworkInterfaceFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult
    typealias CreateNetworkInterfacePermissionFunctionType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult
    typealias CreatePlacementGroupFunctionType = (
            _ input: ElasticComputeCloudModel.CreatePlacementGroupRequest) async throws -> ElasticComputeCloudModel.CreatePlacementGroupResult
    typealias CreatePublicIpv4PoolFunctionType = (
            _ input: ElasticComputeCloudModel.CreatePublicIpv4PoolRequest) async throws -> ElasticComputeCloudModel.CreatePublicIpv4PoolResult
    typealias CreateReplaceRootVolumeTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CreateReplaceRootVolumeTaskRequest) async throws -> ElasticComputeCloudModel.CreateReplaceRootVolumeTaskResult
    typealias CreateReservedInstancesListingFunctionType = (
            _ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) async throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult
    typealias CreateRestoreImageTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CreateRestoreImageTaskRequest) async throws -> ElasticComputeCloudModel.CreateRestoreImageTaskResult
    typealias CreateRouteFunctionType = (
            _ input: ElasticComputeCloudModel.CreateRouteRequest) async throws -> ElasticComputeCloudModel.CreateRouteResult
    typealias CreateRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.CreateRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateRouteTableResult
    typealias CreateSecurityGroupFunctionType = (
            _ input: ElasticComputeCloudModel.CreateSecurityGroupRequest) async throws -> ElasticComputeCloudModel.CreateSecurityGroupResult
    typealias CreateSnapshotFunctionType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotRequest) async throws -> ElasticComputeCloudModel.Snapshot
    typealias CreateSnapshotsFunctionType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotsRequest) async throws -> ElasticComputeCloudModel.CreateSnapshotsResult
    typealias CreateSpotDatafeedSubscriptionFunctionType = (
            _ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) async throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult
    typealias CreateStoreImageTaskFunctionType = (
            _ input: ElasticComputeCloudModel.CreateStoreImageTaskRequest) async throws -> ElasticComputeCloudModel.CreateStoreImageTaskResult
    typealias CreateSubnetFunctionType = (
            _ input: ElasticComputeCloudModel.CreateSubnetRequest) async throws -> ElasticComputeCloudModel.CreateSubnetResult
    typealias CreateSubnetCidrReservationFunctionType = (
            _ input: ElasticComputeCloudModel.CreateSubnetCidrReservationRequest) async throws -> ElasticComputeCloudModel.CreateSubnetCidrReservationResult
    typealias CreateTagsFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTagsRequest) async throws -> ()
    typealias CreateTrafficMirrorFilterFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult
    typealias CreateTrafficMirrorFilterRuleFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult
    typealias CreateTrafficMirrorSessionFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult
    typealias CreateTrafficMirrorTargetFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult
    typealias CreateTransitGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayResult
    typealias CreateTransitGatewayConnectFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult
    typealias CreateTransitGatewayConnectPeerFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult
    typealias CreateTransitGatewayMulticastDomainFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult
    typealias CreateTransitGatewayPeeringAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult
    typealias CreateTransitGatewayPolicyTableFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPolicyTableResult
    typealias CreateTransitGatewayPrefixListReferenceFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult
    typealias CreateTransitGatewayRouteFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult
    typealias CreateTransitGatewayRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult
    typealias CreateTransitGatewayRouteTableAnnouncementFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementResult
    typealias CreateTransitGatewayVpcAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult
    typealias CreateVerifiedAccessEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVerifiedAccessEndpointRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessEndpointResult
    typealias CreateVerifiedAccessGroupFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVerifiedAccessGroupRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessGroupResult
    typealias CreateVerifiedAccessInstanceFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVerifiedAccessInstanceRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessInstanceResult
    typealias CreateVerifiedAccessTrustProviderFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessTrustProviderResult
    typealias CreateVolumeFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVolumeRequest) async throws -> ElasticComputeCloudModel.Volume
    typealias CreateVpcFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpcRequest) async throws -> ElasticComputeCloudModel.CreateVpcResult
    typealias CreateVpcEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointResult
    typealias CreateVpcEndpointConnectionNotificationFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult
    typealias CreateVpcEndpointServiceConfigurationFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult
    typealias CreateVpcPeeringConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult
    typealias CreateVpnConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRequest) async throws -> ElasticComputeCloudModel.CreateVpnConnectionResult
    typealias CreateVpnConnectionRouteFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) async throws -> ()
    typealias CreateVpnGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.CreateVpnGatewayRequest) async throws -> ElasticComputeCloudModel.CreateVpnGatewayResult
    typealias DeleteCarrierGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteCarrierGatewayResult
    typealias DeleteClientVpnEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult
    typealias DeleteClientVpnRouteFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) async throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult
    typealias DeleteCoipCidrFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteCoipCidrRequest) async throws -> ElasticComputeCloudModel.DeleteCoipCidrResult
    typealias DeleteCoipPoolFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteCoipPoolRequest) async throws -> ElasticComputeCloudModel.DeleteCoipPoolResult
    typealias DeleteCustomerGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) async throws -> ()
    typealias DeleteDhcpOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) async throws -> ()
    typealias DeleteEgressOnlyInternetGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult
    typealias DeleteFleetsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteFleetsRequest) async throws -> ElasticComputeCloudModel.DeleteFleetsResult
    typealias DeleteFlowLogsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteFlowLogsRequest) async throws -> ElasticComputeCloudModel.DeleteFlowLogsResult
    typealias DeleteFpgaImageFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteFpgaImageRequest) async throws -> ElasticComputeCloudModel.DeleteFpgaImageResult
    typealias DeleteInstanceConnectEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteInstanceConnectEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteInstanceConnectEndpointResult
    typealias DeleteInstanceEventWindowFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.DeleteInstanceEventWindowResult
    typealias DeleteInternetGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) async throws -> ()
    typealias DeleteIpamFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteIpamRequest) async throws -> ElasticComputeCloudModel.DeleteIpamResult
    typealias DeleteIpamPoolFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteIpamPoolRequest) async throws -> ElasticComputeCloudModel.DeleteIpamPoolResult
    typealias DeleteIpamResourceDiscoveryFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.DeleteIpamResourceDiscoveryResult
    typealias DeleteIpamScopeFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteIpamScopeRequest) async throws -> ElasticComputeCloudModel.DeleteIpamScopeResult
    typealias DeleteKeyPairFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteKeyPairRequest) async throws -> ()
    typealias DeleteLaunchTemplateFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult
    typealias DeleteLaunchTemplateVersionsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) async throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult
    typealias DeleteLocalGatewayRouteFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult
    typealias DeleteLocalGatewayRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableResult
    typealias DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
    typealias DeleteLocalGatewayRouteTableVpcAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult
    typealias DeleteManagedPrefixListFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.DeleteManagedPrefixListResult
    typealias DeleteNatGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNatGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteNatGatewayResult
    typealias DeleteNetworkAclFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclRequest) async throws -> ()
    typealias DeleteNetworkAclEntryFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) async throws -> ()
    typealias DeleteNetworkInsightsAccessScopeFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeResult
    typealias DeleteNetworkInsightsAccessScopeAnalysisFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisResult
    typealias DeleteNetworkInsightsAnalysisFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult
    typealias DeleteNetworkInsightsPathFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult
    typealias DeleteNetworkInterfaceFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) async throws -> ()
    typealias DeleteNetworkInterfacePermissionFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult
    typealias DeletePlacementGroupFunctionType = (
            _ input: ElasticComputeCloudModel.DeletePlacementGroupRequest) async throws -> ()
    typealias DeletePublicIpv4PoolFunctionType = (
            _ input: ElasticComputeCloudModel.DeletePublicIpv4PoolRequest) async throws -> ElasticComputeCloudModel.DeletePublicIpv4PoolResult
    typealias DeleteQueuedReservedInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) async throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult
    typealias DeleteRouteFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteRouteRequest) async throws -> ()
    typealias DeleteRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteRouteTableRequest) async throws -> ()
    typealias DeleteSecurityGroupFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) async throws -> ()
    typealias DeleteSnapshotFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteSnapshotRequest) async throws -> ()
    typealias DeleteSpotDatafeedSubscriptionFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) async throws -> ()
    typealias DeleteSubnetFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteSubnetRequest) async throws -> ()
    typealias DeleteSubnetCidrReservationFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteSubnetCidrReservationRequest) async throws -> ElasticComputeCloudModel.DeleteSubnetCidrReservationResult
    typealias DeleteTagsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTagsRequest) async throws -> ()
    typealias DeleteTrafficMirrorFilterFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult
    typealias DeleteTrafficMirrorFilterRuleFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult
    typealias DeleteTrafficMirrorSessionFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult
    typealias DeleteTrafficMirrorTargetFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult
    typealias DeleteTransitGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult
    typealias DeleteTransitGatewayConnectFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult
    typealias DeleteTransitGatewayConnectPeerFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult
    typealias DeleteTransitGatewayMulticastDomainFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult
    typealias DeleteTransitGatewayPeeringAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult
    typealias DeleteTransitGatewayPolicyTableFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableResult
    typealias DeleteTransitGatewayPrefixListReferenceFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult
    typealias DeleteTransitGatewayRouteFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult
    typealias DeleteTransitGatewayRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult
    typealias DeleteTransitGatewayRouteTableAnnouncementFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementResult
    typealias DeleteTransitGatewayVpcAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult
    typealias DeleteVerifiedAccessEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVerifiedAccessEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessEndpointResult
    typealias DeleteVerifiedAccessGroupFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVerifiedAccessGroupRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessGroupResult
    typealias DeleteVerifiedAccessInstanceFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVerifiedAccessInstanceRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessInstanceResult
    typealias DeleteVerifiedAccessTrustProviderFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessTrustProviderResult
    typealias DeleteVolumeFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVolumeRequest) async throws -> ()
    typealias DeleteVpcFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpcRequest) async throws -> ()
    typealias DeleteVpcEndpointConnectionNotificationsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult
    typealias DeleteVpcEndpointServiceConfigurationsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult
    typealias DeleteVpcEndpointsFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult
    typealias DeleteVpcPeeringConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult
    typealias DeleteVpnConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) async throws -> ()
    typealias DeleteVpnConnectionRouteFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) async throws -> ()
    typealias DeleteVpnGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) async throws -> ()
    typealias DeprovisionByoipCidrFunctionType = (
            _ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult
    typealias DeprovisionIpamPoolCidrFunctionType = (
            _ input: ElasticComputeCloudModel.DeprovisionIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionIpamPoolCidrResult
    typealias DeprovisionPublicIpv4PoolCidrFunctionType = (
            _ input: ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrResult
    typealias DeregisterImageFunctionType = (
            _ input: ElasticComputeCloudModel.DeregisterImageRequest) async throws -> ()
    typealias DeregisterInstanceEventNotificationAttributesFunctionType = (
            _ input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult
    typealias DeregisterTransitGatewayMulticastGroupMembersFunctionType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) async throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult
    typealias DeregisterTransitGatewayMulticastGroupSourcesFunctionType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) async throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult
    typealias DescribeAccountAttributesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) async throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult
    typealias DescribeAddressTransfersFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAddressTransfersRequest) async throws -> ElasticComputeCloudModel.DescribeAddressTransfersResult
    typealias DescribeAddressesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesRequest) async throws -> ElasticComputeCloudModel.DescribeAddressesResult
    typealias DescribeAddressesAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeAddressesAttributeResult
    typealias DescribeAggregateIdFormatFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult
    typealias DescribeAvailabilityZonesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) async throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult
    typealias DescribeAwsNetworkPerformanceMetricSubscriptionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeAwsNetworkPerformanceMetricSubscriptionsRequest) async throws -> ElasticComputeCloudModel.DescribeAwsNetworkPerformanceMetricSubscriptionsResult
    typealias DescribeBundleTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeBundleTasksRequest) async throws -> ElasticComputeCloudModel.DescribeBundleTasksResult
    typealias DescribeByoipCidrsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) async throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult
    typealias DescribeCapacityReservationFleetsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationFleetsRequest) async throws -> ElasticComputeCloudModel.DescribeCapacityReservationFleetsResult
    typealias DescribeCapacityReservationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) async throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult
    typealias DescribeCarrierGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult
    typealias DescribeClassicLinkInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult
    typealias DescribeClientVpnAuthorizationRulesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult
    typealias DescribeClientVpnConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult
    typealias DescribeClientVpnEndpointsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult
    typealias DescribeClientVpnRoutesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult
    typealias DescribeClientVpnTargetNetworksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult
    typealias DescribeCoipPoolsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) async throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult
    typealias DescribeConversionTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeConversionTasksRequest) async throws -> ElasticComputeCloudModel.DescribeConversionTasksResult
    typealias DescribeCustomerGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult
    typealias DescribeDhcpOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) async throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult
    typealias DescribeEgressOnlyInternetGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult
    typealias DescribeElasticGpusFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeElasticGpusRequest) async throws -> ElasticComputeCloudModel.DescribeElasticGpusResult
    typealias DescribeExportImageTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult
    typealias DescribeExportTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeExportTasksRequest) async throws -> ElasticComputeCloudModel.DescribeExportTasksResult
    typealias DescribeFastLaunchImagesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFastLaunchImagesRequest) async throws -> ElasticComputeCloudModel.DescribeFastLaunchImagesResult
    typealias DescribeFastSnapshotRestoresFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult
    typealias DescribeFleetHistoryFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult
    typealias DescribeFleetInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult
    typealias DescribeFleetsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFleetsRequest) async throws -> ElasticComputeCloudModel.DescribeFleetsResult
    typealias DescribeFlowLogsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFlowLogsRequest) async throws -> ElasticComputeCloudModel.DescribeFlowLogsResult
    typealias DescribeFpgaImageAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult
    typealias DescribeFpgaImagesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) async throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult
    typealias DescribeHostReservationOfferingsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult
    typealias DescribeHostReservationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationsRequest) async throws -> ElasticComputeCloudModel.DescribeHostReservationsResult
    typealias DescribeHostsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeHostsRequest) async throws -> ElasticComputeCloudModel.DescribeHostsResult
    typealias DescribeIamInstanceProfileAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult
    typealias DescribeIdFormatFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeIdFormatResult
    typealias DescribeIdentityIdFormatFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult
    typealias DescribeImageAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeImageAttributeRequest) async throws -> ElasticComputeCloudModel.ImageAttribute
    typealias DescribeImagesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeImagesRequest) async throws -> ElasticComputeCloudModel.DescribeImagesResult
    typealias DescribeImportImageTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult
    typealias DescribeImportSnapshotTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) async throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult
    typealias DescribeInstanceAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) async throws -> ElasticComputeCloudModel.InstanceAttribute
    typealias DescribeInstanceConnectEndpointsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceConnectEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceConnectEndpointsResult
    typealias DescribeInstanceCreditSpecificationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult
    typealias DescribeInstanceEventNotificationAttributesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult
    typealias DescribeInstanceEventWindowsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceEventWindowsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceEventWindowsResult
    typealias DescribeInstanceStatusFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult
    typealias DescribeInstanceTypeOfferingsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult
    typealias DescribeInstanceTypesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult
    typealias DescribeInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeInstancesResult
    typealias DescribeInternetGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult
    typealias DescribeIpamPoolsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIpamPoolsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamPoolsResult
    typealias DescribeIpamResourceDiscoveriesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIpamResourceDiscoveriesRequest) async throws -> ElasticComputeCloudModel.DescribeIpamResourceDiscoveriesResult
    typealias DescribeIpamResourceDiscoveryAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIpamResourceDiscoveryAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamResourceDiscoveryAssociationsResult
    typealias DescribeIpamScopesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIpamScopesRequest) async throws -> ElasticComputeCloudModel.DescribeIpamScopesResult
    typealias DescribeIpamsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIpamsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamsResult
    typealias DescribeIpv6PoolsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) async throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult
    typealias DescribeKeyPairsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeKeyPairsRequest) async throws -> ElasticComputeCloudModel.DescribeKeyPairsResult
    typealias DescribeLaunchTemplateVersionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) async throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult
    typealias DescribeLaunchTemplatesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) async throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult
    typealias DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
    typealias DescribeLocalGatewayRouteTableVpcAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult
    typealias DescribeLocalGatewayRouteTablesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult
    typealias DescribeLocalGatewayVirtualInterfaceGroupsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult
    typealias DescribeLocalGatewayVirtualInterfacesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult
    typealias DescribeLocalGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult
    typealias DescribeManagedPrefixListsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) async throws -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult
    typealias DescribeMovingAddressesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) async throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult
    typealias DescribeNatGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult
    typealias DescribeNetworkAclsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult
    typealias DescribeNetworkInsightsAccessScopeAnalysesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesResult
    typealias DescribeNetworkInsightsAccessScopesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesResult
    typealias DescribeNetworkInsightsAnalysesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult
    typealias DescribeNetworkInsightsPathsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult
    typealias DescribeNetworkInterfaceAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult
    typealias DescribeNetworkInterfacePermissionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult
    typealias DescribeNetworkInterfacesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult
    typealias DescribePlacementGroupsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) async throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult
    typealias DescribePrefixListsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribePrefixListsRequest) async throws -> ElasticComputeCloudModel.DescribePrefixListsResult
    typealias DescribePrincipalIdFormatFunctionType = (
            _ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult
    typealias DescribePublicIpv4PoolsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) async throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult
    typealias DescribeRegionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeRegionsRequest) async throws -> ElasticComputeCloudModel.DescribeRegionsResult
    typealias DescribeReplaceRootVolumeTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksRequest) async throws -> ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksResult
    typealias DescribeReservedInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult
    typealias DescribeReservedInstancesListingsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult
    typealias DescribeReservedInstancesModificationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult
    typealias DescribeReservedInstancesOfferingsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult
    typealias DescribeRouteTablesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeRouteTablesResult
    typealias DescribeScheduledInstanceAvailabilityFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) async throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult
    typealias DescribeScheduledInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult
    typealias DescribeSecurityGroupReferencesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult
    typealias DescribeSecurityGroupRulesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupRulesRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupRulesResult
    typealias DescribeSecurityGroupsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult
    typealias DescribeSnapshotAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult
    typealias DescribeSnapshotTierStatusFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotTierStatusRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotTierStatusResult
    typealias DescribeSnapshotsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotsRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotsResult
    typealias DescribeSpotDatafeedSubscriptionFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) async throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult
    typealias DescribeSpotFleetInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse
    typealias DescribeSpotFleetRequestHistoryFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse
    typealias DescribeSpotFleetRequestsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse
    typealias DescribeSpotInstanceRequestsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) async throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult
    typealias DescribeSpotPriceHistoryFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult
    typealias DescribeStaleSecurityGroupsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult
    typealias DescribeStoreImageTasksFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeStoreImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeStoreImageTasksResult
    typealias DescribeSubnetsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeSubnetsRequest) async throws -> ElasticComputeCloudModel.DescribeSubnetsResult
    typealias DescribeTagsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTagsRequest) async throws -> ElasticComputeCloudModel.DescribeTagsResult
    typealias DescribeTrafficMirrorFiltersFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult
    typealias DescribeTrafficMirrorSessionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult
    typealias DescribeTrafficMirrorTargetsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult
    typealias DescribeTransitGatewayAttachmentsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult
    typealias DescribeTransitGatewayConnectPeersFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult
    typealias DescribeTransitGatewayConnectsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult
    typealias DescribeTransitGatewayMulticastDomainsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult
    typealias DescribeTransitGatewayPeeringAttachmentsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult
    typealias DescribeTransitGatewayPolicyTablesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesResult
    typealias DescribeTransitGatewayRouteTableAnnouncementsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsResult
    typealias DescribeTransitGatewayRouteTablesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult
    typealias DescribeTransitGatewayVpcAttachmentsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult
    typealias DescribeTransitGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult
    typealias DescribeTrunkInterfaceAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsResult
    typealias DescribeVerifiedAccessEndpointsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVerifiedAccessEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessEndpointsResult
    typealias DescribeVerifiedAccessGroupsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVerifiedAccessGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessGroupsResult
    typealias DescribeVerifiedAccessInstanceLoggingConfigurationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVerifiedAccessInstanceLoggingConfigurationsRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessInstanceLoggingConfigurationsResult
    typealias DescribeVerifiedAccessInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVerifiedAccessInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessInstancesResult
    typealias DescribeVerifiedAccessTrustProvidersFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVerifiedAccessTrustProvidersRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessTrustProvidersResult
    typealias DescribeVolumeAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult
    typealias DescribeVolumeStatusFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) async throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult
    typealias DescribeVolumesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesRequest) async throws -> ElasticComputeCloudModel.DescribeVolumesResult
    typealias DescribeVolumesModificationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) async throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult
    typealias DescribeVpcAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult
    typealias DescribeVpcClassicLinkFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult
    typealias DescribeVpcClassicLinkDnsSupportFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult
    typealias DescribeVpcEndpointConnectionNotificationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult
    typealias DescribeVpcEndpointConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult
    typealias DescribeVpcEndpointServiceConfigurationsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult
    typealias DescribeVpcEndpointServicePermissionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult
    typealias DescribeVpcEndpointServicesFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult
    typealias DescribeVpcEndpointsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult
    typealias DescribeVpcPeeringConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult
    typealias DescribeVpcsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpcsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcsResult
    typealias DescribeVpnConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult
    typealias DescribeVpnGatewaysFunctionType = (
            _ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult
    typealias DetachClassicLinkVpcFunctionType = (
            _ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) async throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult
    typealias DetachInternetGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DetachInternetGatewayRequest) async throws -> ()
    typealias DetachNetworkInterfaceFunctionType = (
            _ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) async throws -> ()
    typealias DetachVerifiedAccessTrustProviderFunctionType = (
            _ input: ElasticComputeCloudModel.DetachVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.DetachVerifiedAccessTrustProviderResult
    typealias DetachVolumeFunctionType = (
            _ input: ElasticComputeCloudModel.DetachVolumeRequest) async throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias DetachVpnGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.DetachVpnGatewayRequest) async throws -> ()
    typealias DisableAddressTransferFunctionType = (
            _ input: ElasticComputeCloudModel.DisableAddressTransferRequest) async throws -> ElasticComputeCloudModel.DisableAddressTransferResult
    typealias DisableAwsNetworkPerformanceMetricSubscriptionFunctionType = (
            _ input: ElasticComputeCloudModel.DisableAwsNetworkPerformanceMetricSubscriptionRequest) async throws -> ElasticComputeCloudModel.DisableAwsNetworkPerformanceMetricSubscriptionResult
    typealias DisableEbsEncryptionByDefaultFunctionType = (
            _ input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult
    typealias DisableFastLaunchFunctionType = (
            _ input: ElasticComputeCloudModel.DisableFastLaunchRequest) async throws -> ElasticComputeCloudModel.DisableFastLaunchResult
    typealias DisableFastSnapshotRestoresFunctionType = (
            _ input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult
    typealias DisableImageDeprecationFunctionType = (
            _ input: ElasticComputeCloudModel.DisableImageDeprecationRequest) async throws -> ElasticComputeCloudModel.DisableImageDeprecationResult
    typealias DisableIpamOrganizationAdminAccountFunctionType = (
            _ input: ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountRequest) async throws -> ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountResult
    typealias DisableSerialConsoleAccessFunctionType = (
            _ input: ElasticComputeCloudModel.DisableSerialConsoleAccessRequest) async throws -> ElasticComputeCloudModel.DisableSerialConsoleAccessResult
    typealias DisableTransitGatewayRouteTablePropagationFunctionType = (
            _ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) async throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult
    typealias DisableVgwRoutePropagationFunctionType = (
            _ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) async throws -> ()
    typealias DisableVpcClassicLinkFunctionType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult
    typealias DisableVpcClassicLinkDnsSupportFunctionType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult
    typealias DisassociateAddressFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateAddressRequest) async throws -> ()
    typealias DisassociateClientVpnTargetNetworkFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult
    typealias DisassociateEnclaveCertificateIamRoleFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) async throws -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult
    typealias DisassociateIamInstanceProfileFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) async throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult
    typealias DisassociateInstanceEventWindowFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.DisassociateInstanceEventWindowResult
    typealias DisassociateIpamResourceDiscoveryFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.DisassociateIpamResourceDiscoveryResult
    typealias DisassociateNatGatewayAddressFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.DisassociateNatGatewayAddressResult
    typealias DisassociateRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateRouteTableRequest) async throws -> ()
    typealias DisassociateSubnetCidrBlockFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) async throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult
    typealias DisassociateTransitGatewayMulticastDomainFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult
    typealias DisassociateTransitGatewayPolicyTableFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableResult
    typealias DisassociateTransitGatewayRouteTableFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult
    typealias DisassociateTrunkInterfaceFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateTrunkInterfaceRequest) async throws -> ElasticComputeCloudModel.DisassociateTrunkInterfaceResult
    typealias DisassociateVpcCidrBlockFunctionType = (
            _ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) async throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult
    typealias EnableAddressTransferFunctionType = (
            _ input: ElasticComputeCloudModel.EnableAddressTransferRequest) async throws -> ElasticComputeCloudModel.EnableAddressTransferResult
    typealias EnableAwsNetworkPerformanceMetricSubscriptionFunctionType = (
            _ input: ElasticComputeCloudModel.EnableAwsNetworkPerformanceMetricSubscriptionRequest) async throws -> ElasticComputeCloudModel.EnableAwsNetworkPerformanceMetricSubscriptionResult
    typealias EnableEbsEncryptionByDefaultFunctionType = (
            _ input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult
    typealias EnableFastLaunchFunctionType = (
            _ input: ElasticComputeCloudModel.EnableFastLaunchRequest) async throws -> ElasticComputeCloudModel.EnableFastLaunchResult
    typealias EnableFastSnapshotRestoresFunctionType = (
            _ input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult
    typealias EnableImageDeprecationFunctionType = (
            _ input: ElasticComputeCloudModel.EnableImageDeprecationRequest) async throws -> ElasticComputeCloudModel.EnableImageDeprecationResult
    typealias EnableIpamOrganizationAdminAccountFunctionType = (
            _ input: ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountRequest) async throws -> ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountResult
    typealias EnableReachabilityAnalyzerOrganizationSharingFunctionType = (
            _ input: ElasticComputeCloudModel.EnableReachabilityAnalyzerOrganizationSharingRequest) async throws -> ElasticComputeCloudModel.EnableReachabilityAnalyzerOrganizationSharingResult
    typealias EnableSerialConsoleAccessFunctionType = (
            _ input: ElasticComputeCloudModel.EnableSerialConsoleAccessRequest) async throws -> ElasticComputeCloudModel.EnableSerialConsoleAccessResult
    typealias EnableTransitGatewayRouteTablePropagationFunctionType = (
            _ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) async throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult
    typealias EnableVgwRoutePropagationFunctionType = (
            _ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) async throws -> ()
    typealias EnableVolumeIOFunctionType = (
            _ input: ElasticComputeCloudModel.EnableVolumeIORequest) async throws -> ()
    typealias EnableVpcClassicLinkFunctionType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult
    typealias EnableVpcClassicLinkDnsSupportFunctionType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult
    typealias ExportClientVpnClientCertificateRevocationListFunctionType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) async throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult
    typealias ExportClientVpnClientConfigurationFunctionType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) async throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult
    typealias ExportImageFunctionType = (
            _ input: ElasticComputeCloudModel.ExportImageRequest) async throws -> ElasticComputeCloudModel.ExportImageResult
    typealias ExportTransitGatewayRoutesFunctionType = (
            _ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult
    typealias GetAssociatedEnclaveCertificateIamRolesFunctionType = (
            _ input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) async throws -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult
    typealias GetAssociatedIpv6PoolCidrsFunctionType = (
            _ input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) async throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult
    typealias GetAwsNetworkPerformanceDataFunctionType = (
            _ input: ElasticComputeCloudModel.GetAwsNetworkPerformanceDataRequest) async throws -> ElasticComputeCloudModel.GetAwsNetworkPerformanceDataResult
    typealias GetCapacityReservationUsageFunctionType = (
            _ input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) async throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult
    typealias GetCoipPoolUsageFunctionType = (
            _ input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) async throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult
    typealias GetConsoleOutputFunctionType = (
            _ input: ElasticComputeCloudModel.GetConsoleOutputRequest) async throws -> ElasticComputeCloudModel.GetConsoleOutputResult
    typealias GetConsoleScreenshotFunctionType = (
            _ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) async throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult
    typealias GetDefaultCreditSpecificationFunctionType = (
            _ input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult
    typealias GetEbsDefaultKmsKeyIdFunctionType = (
            _ input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult
    typealias GetEbsEncryptionByDefaultFunctionType = (
            _ input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult
    typealias GetFlowLogsIntegrationTemplateFunctionType = (
            _ input: ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateRequest) async throws -> ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateResult
    typealias GetGroupsForCapacityReservationFunctionType = (
            _ input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) async throws -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult
    typealias GetHostReservationPurchasePreviewFunctionType = (
            _ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) async throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult
    typealias GetInstanceTypesFromInstanceRequirementsFunctionType = (
            _ input: ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsRequest) async throws -> ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsResult
    typealias GetInstanceUefiDataFunctionType = (
            _ input: ElasticComputeCloudModel.GetInstanceUefiDataRequest) async throws -> ElasticComputeCloudModel.GetInstanceUefiDataResult
    typealias GetIpamAddressHistoryFunctionType = (
            _ input: ElasticComputeCloudModel.GetIpamAddressHistoryRequest) async throws -> ElasticComputeCloudModel.GetIpamAddressHistoryResult
    typealias GetIpamDiscoveredAccountsFunctionType = (
            _ input: ElasticComputeCloudModel.GetIpamDiscoveredAccountsRequest) async throws -> ElasticComputeCloudModel.GetIpamDiscoveredAccountsResult
    typealias GetIpamDiscoveredResourceCidrsFunctionType = (
            _ input: ElasticComputeCloudModel.GetIpamDiscoveredResourceCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamDiscoveredResourceCidrsResult
    typealias GetIpamPoolAllocationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetIpamPoolAllocationsRequest) async throws -> ElasticComputeCloudModel.GetIpamPoolAllocationsResult
    typealias GetIpamPoolCidrsFunctionType = (
            _ input: ElasticComputeCloudModel.GetIpamPoolCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamPoolCidrsResult
    typealias GetIpamResourceCidrsFunctionType = (
            _ input: ElasticComputeCloudModel.GetIpamResourceCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamResourceCidrsResult
    typealias GetLaunchTemplateDataFunctionType = (
            _ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) async throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult
    typealias GetManagedPrefixListAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) async throws -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult
    typealias GetManagedPrefixListEntriesFunctionType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) async throws -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult
    typealias GetNetworkInsightsAccessScopeAnalysisFindingsFunctionType = (
            _ input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsRequest) async throws -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsResult
    typealias GetNetworkInsightsAccessScopeContentFunctionType = (
            _ input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentRequest) async throws -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentResult
    typealias GetPasswordDataFunctionType = (
            _ input: ElasticComputeCloudModel.GetPasswordDataRequest) async throws -> ElasticComputeCloudModel.GetPasswordDataResult
    typealias GetReservedInstancesExchangeQuoteFunctionType = (
            _ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) async throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult
    typealias GetSerialConsoleAccessStatusFunctionType = (
            _ input: ElasticComputeCloudModel.GetSerialConsoleAccessStatusRequest) async throws -> ElasticComputeCloudModel.GetSerialConsoleAccessStatusResult
    typealias GetSpotPlacementScoresFunctionType = (
            _ input: ElasticComputeCloudModel.GetSpotPlacementScoresRequest) async throws -> ElasticComputeCloudModel.GetSpotPlacementScoresResult
    typealias GetSubnetCidrReservationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetSubnetCidrReservationsRequest) async throws -> ElasticComputeCloudModel.GetSubnetCidrReservationsResult
    typealias GetTransitGatewayAttachmentPropagationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult
    typealias GetTransitGatewayMulticastDomainAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult
    typealias GetTransitGatewayPolicyTableAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsResult
    typealias GetTransitGatewayPolicyTableEntriesFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesResult
    typealias GetTransitGatewayPrefixListReferencesFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult
    typealias GetTransitGatewayRouteTableAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult
    typealias GetTransitGatewayRouteTablePropagationsFunctionType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult
    typealias GetVerifiedAccessEndpointPolicyFunctionType = (
            _ input: ElasticComputeCloudModel.GetVerifiedAccessEndpointPolicyRequest) async throws -> ElasticComputeCloudModel.GetVerifiedAccessEndpointPolicyResult
    typealias GetVerifiedAccessGroupPolicyFunctionType = (
            _ input: ElasticComputeCloudModel.GetVerifiedAccessGroupPolicyRequest) async throws -> ElasticComputeCloudModel.GetVerifiedAccessGroupPolicyResult
    typealias GetVpnConnectionDeviceSampleConfigurationFunctionType = (
            _ input: ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationRequest) async throws -> ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationResult
    typealias GetVpnConnectionDeviceTypesFunctionType = (
            _ input: ElasticComputeCloudModel.GetVpnConnectionDeviceTypesRequest) async throws -> ElasticComputeCloudModel.GetVpnConnectionDeviceTypesResult
    typealias GetVpnTunnelReplacementStatusFunctionType = (
            _ input: ElasticComputeCloudModel.GetVpnTunnelReplacementStatusRequest) async throws -> ElasticComputeCloudModel.GetVpnTunnelReplacementStatusResult
    typealias ImportClientVpnClientCertificateRevocationListFunctionType = (
            _ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) async throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult
    typealias ImportImageFunctionType = (
            _ input: ElasticComputeCloudModel.ImportImageRequest) async throws -> ElasticComputeCloudModel.ImportImageResult
    typealias ImportInstanceFunctionType = (
            _ input: ElasticComputeCloudModel.ImportInstanceRequest) async throws -> ElasticComputeCloudModel.ImportInstanceResult
    typealias ImportKeyPairFunctionType = (
            _ input: ElasticComputeCloudModel.ImportKeyPairRequest) async throws -> ElasticComputeCloudModel.ImportKeyPairResult
    typealias ImportSnapshotFunctionType = (
            _ input: ElasticComputeCloudModel.ImportSnapshotRequest) async throws -> ElasticComputeCloudModel.ImportSnapshotResult
    typealias ImportVolumeFunctionType = (
            _ input: ElasticComputeCloudModel.ImportVolumeRequest) async throws -> ElasticComputeCloudModel.ImportVolumeResult
    typealias ListImagesInRecycleBinFunctionType = (
            _ input: ElasticComputeCloudModel.ListImagesInRecycleBinRequest) async throws -> ElasticComputeCloudModel.ListImagesInRecycleBinResult
    typealias ListSnapshotsInRecycleBinFunctionType = (
            _ input: ElasticComputeCloudModel.ListSnapshotsInRecycleBinRequest) async throws -> ElasticComputeCloudModel.ListSnapshotsInRecycleBinResult
    typealias ModifyAddressAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) async throws -> ElasticComputeCloudModel.ModifyAddressAttributeResult
    typealias ModifyAvailabilityZoneGroupFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) async throws -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult
    typealias ModifyCapacityReservationFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) async throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult
    typealias ModifyCapacityReservationFleetFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationFleetRequest) async throws -> ElasticComputeCloudModel.ModifyCapacityReservationFleetResult
    typealias ModifyClientVpnEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult
    typealias ModifyDefaultCreditSpecificationFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult
    typealias ModifyEbsDefaultKmsKeyIdFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult
    typealias ModifyFleetFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyFleetRequest) async throws -> ElasticComputeCloudModel.ModifyFleetResult
    typealias ModifyFpgaImageAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult
    typealias ModifyHostsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyHostsRequest) async throws -> ElasticComputeCloudModel.ModifyHostsResult
    typealias ModifyIdFormatFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIdFormatRequest) async throws -> ()
    typealias ModifyIdentityIdFormatFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) async throws -> ()
    typealias ModifyImageAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyImageAttributeRequest) async throws -> ()
    typealias ModifyInstanceAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) async throws -> ()
    typealias ModifyInstanceCapacityReservationAttributesFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult
    typealias ModifyInstanceCreditSpecificationFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult
    typealias ModifyInstanceEventStartTimeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult
    typealias ModifyInstanceEventWindowFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceEventWindowResult
    typealias ModifyInstanceMaintenanceOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsResult
    typealias ModifyInstanceMetadataOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult
    typealias ModifyInstancePlacementFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) async throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult
    typealias ModifyIpamFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIpamRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResult
    typealias ModifyIpamPoolFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIpamPoolRequest) async throws -> ElasticComputeCloudModel.ModifyIpamPoolResult
    typealias ModifyIpamResourceCidrFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIpamResourceCidrRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResourceCidrResult
    typealias ModifyIpamResourceDiscoveryFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResourceDiscoveryResult
    typealias ModifyIpamScopeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyIpamScopeRequest) async throws -> ElasticComputeCloudModel.ModifyIpamScopeResult
    typealias ModifyLaunchTemplateFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult
    typealias ModifyLocalGatewayRouteFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.ModifyLocalGatewayRouteResult
    typealias ModifyManagedPrefixListFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.ModifyManagedPrefixListResult
    typealias ModifyNetworkInterfaceAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) async throws -> ()
    typealias ModifyPrivateDnsNameOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsResult
    typealias ModifyReservedInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) async throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult
    typealias ModifySecurityGroupRulesFunctionType = (
            _ input: ElasticComputeCloudModel.ModifySecurityGroupRulesRequest) async throws -> ElasticComputeCloudModel.ModifySecurityGroupRulesResult
    typealias ModifySnapshotAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) async throws -> ()
    typealias ModifySnapshotTierFunctionType = (
            _ input: ElasticComputeCloudModel.ModifySnapshotTierRequest) async throws -> ElasticComputeCloudModel.ModifySnapshotTierResult
    typealias ModifySpotFleetRequestFunctionType = (
            _ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) async throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse
    typealias ModifySubnetAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) async throws -> ()
    typealias ModifyTrafficMirrorFilterNetworkServicesFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult
    typealias ModifyTrafficMirrorFilterRuleFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult
    typealias ModifyTrafficMirrorSessionFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult
    typealias ModifyTransitGatewayFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayResult
    typealias ModifyTransitGatewayPrefixListReferenceFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult
    typealias ModifyTransitGatewayVpcAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult
    typealias ModifyVerifiedAccessEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessEndpointResult
    typealias ModifyVerifiedAccessEndpointPolicyFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessEndpointPolicyRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessEndpointPolicyResult
    typealias ModifyVerifiedAccessGroupFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessGroupRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessGroupResult
    typealias ModifyVerifiedAccessGroupPolicyFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessGroupPolicyRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessGroupPolicyResult
    typealias ModifyVerifiedAccessInstanceFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessInstanceRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessInstanceResult
    typealias ModifyVerifiedAccessInstanceLoggingConfigurationFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessInstanceLoggingConfigurationRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessInstanceLoggingConfigurationResult
    typealias ModifyVerifiedAccessTrustProviderFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessTrustProviderResult
    typealias ModifyVolumeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeRequest) async throws -> ElasticComputeCloudModel.ModifyVolumeResult
    typealias ModifyVolumeAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) async throws -> ()
    typealias ModifyVpcAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) async throws -> ()
    typealias ModifyVpcEndpointFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult
    typealias ModifyVpcEndpointConnectionNotificationFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult
    typealias ModifyVpcEndpointServiceConfigurationFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult
    typealias ModifyVpcEndpointServicePayerResponsibilityFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityResult
    typealias ModifyVpcEndpointServicePermissionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult
    typealias ModifyVpcPeeringConnectionOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult
    typealias ModifyVpcTenancyFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) async throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult
    typealias ModifyVpnConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) async throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult
    typealias ModifyVpnConnectionOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult
    typealias ModifyVpnTunnelCertificateFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) async throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult
    typealias ModifyVpnTunnelOptionsFunctionType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult
    typealias MonitorInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.MonitorInstancesRequest) async throws -> ElasticComputeCloudModel.MonitorInstancesResult
    typealias MoveAddressToVpcFunctionType = (
            _ input: ElasticComputeCloudModel.MoveAddressToVpcRequest) async throws -> ElasticComputeCloudModel.MoveAddressToVpcResult
    typealias MoveByoipCidrToIpamFunctionType = (
            _ input: ElasticComputeCloudModel.MoveByoipCidrToIpamRequest) async throws -> ElasticComputeCloudModel.MoveByoipCidrToIpamResult
    typealias ProvisionByoipCidrFunctionType = (
            _ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult
    typealias ProvisionIpamPoolCidrFunctionType = (
            _ input: ElasticComputeCloudModel.ProvisionIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionIpamPoolCidrResult
    typealias ProvisionPublicIpv4PoolCidrFunctionType = (
            _ input: ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrResult
    typealias PurchaseHostReservationFunctionType = (
            _ input: ElasticComputeCloudModel.PurchaseHostReservationRequest) async throws -> ElasticComputeCloudModel.PurchaseHostReservationResult
    typealias PurchaseReservedInstancesOfferingFunctionType = (
            _ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) async throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult
    typealias PurchaseScheduledInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult
    typealias RebootInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.RebootInstancesRequest) async throws -> ()
    typealias RegisterImageFunctionType = (
            _ input: ElasticComputeCloudModel.RegisterImageRequest) async throws -> ElasticComputeCloudModel.RegisterImageResult
    typealias RegisterInstanceEventNotificationAttributesFunctionType = (
            _ input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult
    typealias RegisterTransitGatewayMulticastGroupMembersFunctionType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) async throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult
    typealias RegisterTransitGatewayMulticastGroupSourcesFunctionType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) async throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult
    typealias RejectTransitGatewayMulticastDomainAssociationsFunctionType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult
    typealias RejectTransitGatewayPeeringAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult
    typealias RejectTransitGatewayVpcAttachmentFunctionType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult
    typealias RejectVpcEndpointConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult
    typealias RejectVpcPeeringConnectionFunctionType = (
            _ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult
    typealias ReleaseAddressFunctionType = (
            _ input: ElasticComputeCloudModel.ReleaseAddressRequest) async throws -> ()
    typealias ReleaseHostsFunctionType = (
            _ input: ElasticComputeCloudModel.ReleaseHostsRequest) async throws -> ElasticComputeCloudModel.ReleaseHostsResult
    typealias ReleaseIpamPoolAllocationFunctionType = (
            _ input: ElasticComputeCloudModel.ReleaseIpamPoolAllocationRequest) async throws -> ElasticComputeCloudModel.ReleaseIpamPoolAllocationResult
    typealias ReplaceIamInstanceProfileAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult
    typealias ReplaceNetworkAclAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult
    typealias ReplaceNetworkAclEntryFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) async throws -> ()
    typealias ReplaceRouteFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteRequest) async throws -> ()
    typealias ReplaceRouteTableAssociationFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult
    typealias ReplaceTransitGatewayRouteFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult
    typealias ReplaceVpnTunnelFunctionType = (
            _ input: ElasticComputeCloudModel.ReplaceVpnTunnelRequest) async throws -> ElasticComputeCloudModel.ReplaceVpnTunnelResult
    typealias ReportInstanceStatusFunctionType = (
            _ input: ElasticComputeCloudModel.ReportInstanceStatusRequest) async throws -> ()
    typealias RequestSpotFleetFunctionType = (
            _ input: ElasticComputeCloudModel.RequestSpotFleetRequest) async throws -> ElasticComputeCloudModel.RequestSpotFleetResponse
    typealias RequestSpotInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.RequestSpotInstancesRequest) async throws -> ElasticComputeCloudModel.RequestSpotInstancesResult
    typealias ResetAddressAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ResetAddressAttributeRequest) async throws -> ElasticComputeCloudModel.ResetAddressAttributeResult
    typealias ResetEbsDefaultKmsKeyIdFunctionType = (
            _ input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult
    typealias ResetFpgaImageAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult
    typealias ResetImageAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ResetImageAttributeRequest) async throws -> ()
    typealias ResetInstanceAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) async throws -> ()
    typealias ResetNetworkInterfaceAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) async throws -> ()
    typealias ResetSnapshotAttributeFunctionType = (
            _ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) async throws -> ()
    typealias RestoreAddressToClassicFunctionType = (
            _ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) async throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult
    typealias RestoreImageFromRecycleBinFunctionType = (
            _ input: ElasticComputeCloudModel.RestoreImageFromRecycleBinRequest) async throws -> ElasticComputeCloudModel.RestoreImageFromRecycleBinResult
    typealias RestoreManagedPrefixListVersionFunctionType = (
            _ input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) async throws -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult
    typealias RestoreSnapshotFromRecycleBinFunctionType = (
            _ input: ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinRequest) async throws -> ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinResult
    typealias RestoreSnapshotTierFunctionType = (
            _ input: ElasticComputeCloudModel.RestoreSnapshotTierRequest) async throws -> ElasticComputeCloudModel.RestoreSnapshotTierResult
    typealias RevokeClientVpnIngressFunctionType = (
            _ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) async throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult
    typealias RevokeSecurityGroupEgressFunctionType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) async throws -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult
    typealias RevokeSecurityGroupIngressFunctionType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) async throws -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult
    typealias RunInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.RunInstancesRequest) async throws -> ElasticComputeCloudModel.Reservation
    typealias RunScheduledInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.RunScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.RunScheduledInstancesResult
    typealias SearchLocalGatewayRoutesFunctionType = (
            _ input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult
    typealias SearchTransitGatewayMulticastGroupsFunctionType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) async throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult
    typealias SearchTransitGatewayRoutesFunctionType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult
    typealias SendDiagnosticInterruptFunctionType = (
            _ input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) async throws -> ()
    typealias StartInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.StartInstancesRequest) async throws -> ElasticComputeCloudModel.StartInstancesResult
    typealias StartNetworkInsightsAccessScopeAnalysisFunctionType = (
            _ input: ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisRequest) async throws -> ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisResult
    typealias StartNetworkInsightsAnalysisFunctionType = (
            _ input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) async throws -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult
    typealias StartVpcEndpointServicePrivateDnsVerificationFunctionType = (
            _ input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) async throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult
    typealias StopInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.StopInstancesRequest) async throws -> ElasticComputeCloudModel.StopInstancesResult
    typealias TerminateClientVpnConnectionsFunctionType = (
            _ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult
    typealias TerminateInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.TerminateInstancesRequest) async throws -> ElasticComputeCloudModel.TerminateInstancesResult
    typealias UnassignIpv6AddressesFunctionType = (
            _ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) async throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult
    typealias UnassignPrivateIpAddressesFunctionType = (
            _ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) async throws -> ()
    typealias UnassignPrivateNatGatewayAddressFunctionType = (
            _ input: ElasticComputeCloudModel.UnassignPrivateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.UnassignPrivateNatGatewayAddressResult
    typealias UnmonitorInstancesFunctionType = (
            _ input: ElasticComputeCloudModel.UnmonitorInstancesRequest) async throws -> ElasticComputeCloudModel.UnmonitorInstancesResult
    typealias UpdateSecurityGroupRuleDescriptionsEgressFunctionType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) async throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult
    typealias UpdateSecurityGroupRuleDescriptionsIngressFunctionType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) async throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult
    typealias WithdrawByoipCidrFunctionType = (
            _ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) async throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult

    /**
     Invokes the AcceptAddressTransfer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptAddressTransferRequest object being passed to this operation.
     - Returns: The AcceptAddressTransferResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptAddressTransfer(
            input: ElasticComputeCloudModel.AcceptAddressTransferRequest) async throws -> ElasticComputeCloudModel.AcceptAddressTransferResult

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) async throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult

    /**
     Invokes the AcceptVpcEndpointConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnections(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult

    /**
     Invokes the AcceptVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnection(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult

    /**
     Invokes the AdvertiseByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func advertiseByoipCidr(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) async throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult

    /**
     Invokes the AllocateAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateAddress(
            input: ElasticComputeCloudModel.AllocateAddressRequest) async throws -> ElasticComputeCloudModel.AllocateAddressResult

    /**
     Invokes the AllocateHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateHosts(
            input: ElasticComputeCloudModel.AllocateHostsRequest) async throws -> ElasticComputeCloudModel.AllocateHostsResult

    /**
     Invokes the AllocateIpamPoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AllocateIpamPoolCidrRequest object being passed to this operation.
     - Returns: The AllocateIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateIpamPoolCidr(
            input: ElasticComputeCloudModel.AllocateIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.AllocateIpamPoolCidrResult

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult

    /**
     Invokes the AssignIpv6Addresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignIpv6Addresses(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) async throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult

    /**
     Invokes the AssignPrivateIpAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: The AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateIpAddresses(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) async throws -> ElasticComputeCloudModel.AssignPrivateIpAddressesResult

    /**
     Invokes the AssignPrivateNatGatewayAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssignPrivateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The AssignPrivateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateNatGatewayAddress(
            input: ElasticComputeCloudModel.AssignPrivateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.AssignPrivateNatGatewayAddressResult

    /**
     Invokes the AssociateAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateAddress(
            input: ElasticComputeCloudModel.AssociateAddressRequest) async throws -> ElasticComputeCloudModel.AssociateAddressResult

    /**
     Invokes the AssociateClientVpnTargetNetwork operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult

    /**
     Invokes the AssociateDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    func associateDhcpOptions(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) async throws

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) async throws -> ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult

    /**
     Invokes the AssociateIamInstanceProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIamInstanceProfile(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) async throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult

    /**
     Invokes the AssociateInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The AssociateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateInstanceEventWindow(
            input: ElasticComputeCloudModel.AssociateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.AssociateInstanceEventWindowResult

    /**
     Invokes the AssociateIpamResourceDiscovery operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The AssociateIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIpamResourceDiscovery(
            input: ElasticComputeCloudModel.AssociateIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.AssociateIpamResourceDiscoveryResult

    /**
     Invokes the AssociateNatGatewayAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The AssociateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateNatGatewayAddress(
            input: ElasticComputeCloudModel.AssociateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.AssociateNatGatewayAddressResult

    /**
     Invokes the AssociateRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateRouteTable(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest) async throws -> ElasticComputeCloudModel.AssociateRouteTableResult

    /**
     Invokes the AssociateSubnetCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateSubnetCidrBlock(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) async throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult

    /**
     Invokes the AssociateTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayPolicyTableResult

    /**
     Invokes the AssociateTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult

    /**
     Invokes the AssociateTrunkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateTrunkInterfaceRequest object being passed to this operation.
     - Returns: The AssociateTrunkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTrunkInterface(
            input: ElasticComputeCloudModel.AssociateTrunkInterfaceRequest) async throws -> ElasticComputeCloudModel.AssociateTrunkInterfaceResult

    /**
     Invokes the AssociateVpcCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateVpcCidrBlock(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) async throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult

    /**
     Invokes the AttachClassicLinkVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachClassicLinkVpc(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) async throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult

    /**
     Invokes the AttachInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    func attachInternetGateway(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest) async throws

    /**
     Invokes the AttachNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachNetworkInterface(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) async throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult

    /**
     Invokes the AttachVerifiedAccessTrustProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The AttachVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVerifiedAccessTrustProvider(
            input: ElasticComputeCloudModel.AttachVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.AttachVerifiedAccessTrustProviderResult

    /**
     Invokes the AttachVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVolume(
            input: ElasticComputeCloudModel.AttachVolumeRequest) async throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the AttachVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVpnGateway(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest) async throws -> ElasticComputeCloudModel.AttachVpnGatewayResult

    /**
     Invokes the AuthorizeClientVpnIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeClientVpnIngress(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) async throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult

    /**
     Invokes the AuthorizeSecurityGroupEgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The AuthorizeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeSecurityGroupEgress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) async throws -> ElasticComputeCloudModel.AuthorizeSecurityGroupEgressResult

    /**
     Invokes the AuthorizeSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The AuthorizeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeSecurityGroupIngress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) async throws -> ElasticComputeCloudModel.AuthorizeSecurityGroupIngressResult

    /**
     Invokes the BundleInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func bundleInstance(
            input: ElasticComputeCloudModel.BundleInstanceRequest) async throws -> ElasticComputeCloudModel.BundleInstanceResult

    /**
     Invokes the CancelBundleTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelBundleTask(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest) async throws -> ElasticComputeCloudModel.CancelBundleTaskResult

    /**
     Invokes the CancelCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservation(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest) async throws -> ElasticComputeCloudModel.CancelCapacityReservationResult

    /**
     Invokes the CancelCapacityReservationFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationFleetsRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservationFleets(
            input: ElasticComputeCloudModel.CancelCapacityReservationFleetsRequest) async throws -> ElasticComputeCloudModel.CancelCapacityReservationFleetsResult

    /**
     Invokes the CancelConversionTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    func cancelConversionTask(
            input: ElasticComputeCloudModel.CancelConversionRequest) async throws

    /**
     Invokes the CancelExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    func cancelExportTask(
            input: ElasticComputeCloudModel.CancelExportTaskRequest) async throws

    /**
     Invokes the CancelImageLaunchPermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelImageLaunchPermissionRequest object being passed to this operation.
     - Returns: The CancelImageLaunchPermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImageLaunchPermission(
            input: ElasticComputeCloudModel.CancelImageLaunchPermissionRequest) async throws -> ElasticComputeCloudModel.CancelImageLaunchPermissionResult

    /**
     Invokes the CancelImportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImportTask(
            input: ElasticComputeCloudModel.CancelImportTaskRequest) async throws -> ElasticComputeCloudModel.CancelImportTaskResult

    /**
     Invokes the CancelReservedInstancesListing operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelReservedInstancesListing(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) async throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult

    /**
     Invokes the CancelSpotFleetRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotFleetRequests(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) async throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse

    /**
     Invokes the CancelSpotInstanceRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequests(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) async throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult

    /**
     Invokes the ConfirmProductInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func confirmProductInstance(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) async throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult

    /**
     Invokes the CopyFpgaImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyFpgaImage(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest) async throws -> ElasticComputeCloudModel.CopyFpgaImageResult

    /**
     Invokes the CopyImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyImage(
            input: ElasticComputeCloudModel.CopyImageRequest) async throws -> ElasticComputeCloudModel.CopyImageResult

    /**
     Invokes the CopySnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copySnapshot(
            input: ElasticComputeCloudModel.CopySnapshotRequest) async throws -> ElasticComputeCloudModel.CopySnapshotResult

    /**
     Invokes the CreateCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservation(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest) async throws -> ElasticComputeCloudModel.CreateCapacityReservationResult

    /**
     Invokes the CreateCapacityReservationFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationFleetRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservationFleet(
            input: ElasticComputeCloudModel.CreateCapacityReservationFleetRequest) async throws -> ElasticComputeCloudModel.CreateCapacityReservationFleetResult

    /**
     Invokes the CreateCarrierGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: The CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCarrierGateway(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) async throws -> ElasticComputeCloudModel.CreateCarrierGatewayResult

    /**
     Invokes the CreateClientVpnEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnEndpoint(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult

    /**
     Invokes the CreateClientVpnRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnRoute(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) async throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult

    /**
     Invokes the CreateCoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCoipCidrRequest object being passed to this operation.
     - Returns: The CreateCoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCoipCidr(
            input: ElasticComputeCloudModel.CreateCoipCidrRequest) async throws -> ElasticComputeCloudModel.CreateCoipCidrResult

    /**
     Invokes the CreateCoipPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCoipPoolRequest object being passed to this operation.
     - Returns: The CreateCoipPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCoipPool(
            input: ElasticComputeCloudModel.CreateCoipPoolRequest) async throws -> ElasticComputeCloudModel.CreateCoipPoolResult

    /**
     Invokes the CreateCustomerGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCustomerGateway(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) async throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult

    /**
     Invokes the CreateDefaultSubnet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultSubnet(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) async throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult

    /**
     Invokes the CreateDefaultVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultVpc(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest) async throws -> ElasticComputeCloudModel.CreateDefaultVpcResult

    /**
     Invokes the CreateDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDhcpOptions(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) async throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult

    /**
     Invokes the CreateEgressOnlyInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) async throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult

    /**
     Invokes the CreateFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFleet(
            input: ElasticComputeCloudModel.CreateFleetRequest) async throws -> ElasticComputeCloudModel.CreateFleetResult

    /**
     Invokes the CreateFlowLogs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFlowLogs(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest) async throws -> ElasticComputeCloudModel.CreateFlowLogsResult

    /**
     Invokes the CreateFpgaImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFpgaImage(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest) async throws -> ElasticComputeCloudModel.CreateFpgaImageResult

    /**
     Invokes the CreateImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createImage(
            input: ElasticComputeCloudModel.CreateImageRequest) async throws -> ElasticComputeCloudModel.CreateImageResult

    /**
     Invokes the CreateInstanceConnectEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInstanceConnectEndpointRequest object being passed to this operation.
     - Returns: The CreateInstanceConnectEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceConnectEndpoint(
            input: ElasticComputeCloudModel.CreateInstanceConnectEndpointRequest) async throws -> ElasticComputeCloudModel.CreateInstanceConnectEndpointResult

    /**
     Invokes the CreateInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The CreateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceEventWindow(
            input: ElasticComputeCloudModel.CreateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.CreateInstanceEventWindowResult

    /**
     Invokes the CreateInstanceExportTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceExportTask(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) async throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult

    /**
     Invokes the CreateInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInternetGateway(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest) async throws -> ElasticComputeCloudModel.CreateInternetGatewayResult

    /**
     Invokes the CreateIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamRequest object being passed to this operation.
     - Returns: The CreateIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpam(
            input: ElasticComputeCloudModel.CreateIpamRequest) async throws -> ElasticComputeCloudModel.CreateIpamResult

    /**
     Invokes the CreateIpamPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamPoolRequest object being passed to this operation.
     - Returns: The CreateIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpamPool(
            input: ElasticComputeCloudModel.CreateIpamPoolRequest) async throws -> ElasticComputeCloudModel.CreateIpamPoolResult

    /**
     Invokes the CreateIpamResourceDiscovery operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The CreateIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpamResourceDiscovery(
            input: ElasticComputeCloudModel.CreateIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.CreateIpamResourceDiscoveryResult

    /**
     Invokes the CreateIpamScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateIpamScopeRequest object being passed to this operation.
     - Returns: The CreateIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createIpamScope(
            input: ElasticComputeCloudModel.CreateIpamScopeRequest) async throws -> ElasticComputeCloudModel.CreateIpamScopeResult

    /**
     Invokes the CreateKeyPair operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createKeyPair(
            input: ElasticComputeCloudModel.CreateKeyPairRequest) async throws -> ElasticComputeCloudModel.KeyPair

    /**
     Invokes the CreateLaunchTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplate(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult

    /**
     Invokes the CreateLaunchTemplateVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateVersion(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) async throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult

    /**
     Invokes the CreateLocalGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRoute(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteResult

    /**
     Invokes the CreateLocalGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTable(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableResult

    /**
     Invokes the CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVirtualInterfaceGroupAssociation(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) async throws -> ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult

    /**
     Invokes the CreateManagedPrefixList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: The CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createManagedPrefixList(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.CreateManagedPrefixListResult

    /**
     Invokes the CreateNatGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNatGateway(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest) async throws -> ElasticComputeCloudModel.CreateNatGatewayResult

    /**
     Invokes the CreateNetworkAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkAcl(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest) async throws -> ElasticComputeCloudModel.CreateNetworkAclResult

    /**
     Invokes the CreateNetworkAclEntry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    func createNetworkAclEntry(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) async throws

    /**
     Invokes the CreateNetworkInsightsAccessScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInsightsAccessScopeRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsAccessScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInsightsAccessScope(
            input: ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInsightsAccessScopeResult

    /**
     Invokes the CreateNetworkInsightsPath operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInsightsPath(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInsightsPathResult

    /**
     Invokes the CreateNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterface(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult

    /**
     Invokes the CreateNetworkInterfacePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfacePermission(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) async throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult

    /**
     Invokes the CreatePlacementGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: The CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createPlacementGroup(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest) async throws -> ElasticComputeCloudModel.CreatePlacementGroupResult

    /**
     Invokes the CreatePublicIpv4Pool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePublicIpv4PoolRequest object being passed to this operation.
     - Returns: The CreatePublicIpv4PoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createPublicIpv4Pool(
            input: ElasticComputeCloudModel.CreatePublicIpv4PoolRequest) async throws -> ElasticComputeCloudModel.CreatePublicIpv4PoolResult

    /**
     Invokes the CreateReplaceRootVolumeTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateReplaceRootVolumeTaskRequest object being passed to this operation.
     - Returns: The CreateReplaceRootVolumeTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReplaceRootVolumeTask(
            input: ElasticComputeCloudModel.CreateReplaceRootVolumeTaskRequest) async throws -> ElasticComputeCloudModel.CreateReplaceRootVolumeTaskResult

    /**
     Invokes the CreateReservedInstancesListing operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReservedInstancesListing(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) async throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult

    /**
     Invokes the CreateRestoreImageTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRestoreImageTaskRequest object being passed to this operation.
     - Returns: The CreateRestoreImageTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRestoreImageTask(
            input: ElasticComputeCloudModel.CreateRestoreImageTaskRequest) async throws -> ElasticComputeCloudModel.CreateRestoreImageTaskResult

    /**
     Invokes the CreateRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRoute(
            input: ElasticComputeCloudModel.CreateRouteRequest) async throws -> ElasticComputeCloudModel.CreateRouteResult

    /**
     Invokes the CreateRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteTable(
            input: ElasticComputeCloudModel.CreateRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateRouteTableResult

    /**
     Invokes the CreateSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSecurityGroup(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest) async throws -> ElasticComputeCloudModel.CreateSecurityGroupResult

    /**
     Invokes the CreateSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshot(
            input: ElasticComputeCloudModel.CreateSnapshotRequest) async throws -> ElasticComputeCloudModel.Snapshot

    /**
     Invokes the CreateSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: The CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshots(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest) async throws -> ElasticComputeCloudModel.CreateSnapshotsResult

    /**
     Invokes the CreateSpotDatafeedSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) async throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult

    /**
     Invokes the CreateStoreImageTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStoreImageTaskRequest object being passed to this operation.
     - Returns: The CreateStoreImageTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createStoreImageTask(
            input: ElasticComputeCloudModel.CreateStoreImageTaskRequest) async throws -> ElasticComputeCloudModel.CreateStoreImageTaskResult

    /**
     Invokes the CreateSubnet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnet(
            input: ElasticComputeCloudModel.CreateSubnetRequest) async throws -> ElasticComputeCloudModel.CreateSubnetResult

    /**
     Invokes the CreateSubnetCidrReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateSubnetCidrReservationRequest object being passed to this operation.
     - Returns: The CreateSubnetCidrReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnetCidrReservation(
            input: ElasticComputeCloudModel.CreateSubnetCidrReservationRequest) async throws -> ElasticComputeCloudModel.CreateSubnetCidrReservationResult

    /**
     Invokes the CreateTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    func createTags(
            input: ElasticComputeCloudModel.CreateTagsRequest) async throws

    /**
     Invokes the CreateTrafficMirrorFilter operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilter(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterResult

    /**
     Invokes the CreateTrafficMirrorFilterRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult

    /**
     Invokes the CreateTrafficMirrorSession operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorSession(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorSessionResult

    /**
     Invokes the CreateTrafficMirrorTarget operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorTarget(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) async throws -> ElasticComputeCloudModel.CreateTrafficMirrorTargetResult

    /**
     Invokes the CreateTransitGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGateway(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayResult

    /**
     Invokes the CreateTransitGatewayConnect operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnect(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectResult

    /**
     Invokes the CreateTransitGatewayConnectPeer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult

    /**
     Invokes the CreateTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.CreateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPolicyTableResult

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult

    /**
     Invokes the CreateTransitGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRoute(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult

    /**
     Invokes the CreateTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult

    /**
     Invokes the CreateTransitGatewayRouteTableAnnouncement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableAnnouncementRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableAnnouncementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableAnnouncement(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableAnnouncementResult

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult

    /**
     Invokes the CreateVerifiedAccessEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVerifiedAccessEndpointRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessEndpoint(
            input: ElasticComputeCloudModel.CreateVerifiedAccessEndpointRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessEndpointResult

    /**
     Invokes the CreateVerifiedAccessGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVerifiedAccessGroupRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessGroup(
            input: ElasticComputeCloudModel.CreateVerifiedAccessGroupRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessGroupResult

    /**
     Invokes the CreateVerifiedAccessInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVerifiedAccessInstanceRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessInstance(
            input: ElasticComputeCloudModel.CreateVerifiedAccessInstanceRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessInstanceResult

    /**
     Invokes the CreateVerifiedAccessTrustProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The CreateVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVerifiedAccessTrustProvider(
            input: ElasticComputeCloudModel.CreateVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.CreateVerifiedAccessTrustProviderResult

    /**
     Invokes the CreateVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVolume(
            input: ElasticComputeCloudModel.CreateVolumeRequest) async throws -> ElasticComputeCloudModel.Volume

    /**
     Invokes the CreateVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpc(
            input: ElasticComputeCloudModel.CreateVpcRequest) async throws -> ElasticComputeCloudModel.CreateVpcResult

    /**
     Invokes the CreateVpcEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpoint(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointResult

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) async throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult

    /**
     Invokes the CreateVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcPeeringConnection(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult

    /**
     Invokes the CreateVpnConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnConnection(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest) async throws -> ElasticComputeCloudModel.CreateVpnConnectionResult

    /**
     Invokes the CreateVpnConnectionRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    func createVpnConnectionRoute(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) async throws

    /**
     Invokes the CreateVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnGateway(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest) async throws -> ElasticComputeCloudModel.CreateVpnGatewayResult

    /**
     Invokes the DeleteCarrierGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: The DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCarrierGateway(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteCarrierGatewayResult

    /**
     Invokes the DeleteClientVpnEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnEndpoint(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult

    /**
     Invokes the DeleteClientVpnRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnRoute(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) async throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult

    /**
     Invokes the DeleteCoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCoipCidrRequest object being passed to this operation.
     - Returns: The DeleteCoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCoipCidr(
            input: ElasticComputeCloudModel.DeleteCoipCidrRequest) async throws -> ElasticComputeCloudModel.DeleteCoipCidrResult

    /**
     Invokes the DeleteCoipPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCoipPoolRequest object being passed to this operation.
     - Returns: The DeleteCoipPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCoipPool(
            input: ElasticComputeCloudModel.DeleteCoipPoolRequest) async throws -> ElasticComputeCloudModel.DeleteCoipPoolResult

    /**
     Invokes the DeleteCustomerGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    func deleteCustomerGateway(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) async throws

    /**
     Invokes the DeleteDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    func deleteDhcpOptions(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) async throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult

    /**
     Invokes the DeleteFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFleets(
            input: ElasticComputeCloudModel.DeleteFleetsRequest) async throws -> ElasticComputeCloudModel.DeleteFleetsResult

    /**
     Invokes the DeleteFlowLogs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFlowLogs(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest) async throws -> ElasticComputeCloudModel.DeleteFlowLogsResult

    /**
     Invokes the DeleteFpgaImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFpgaImage(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest) async throws -> ElasticComputeCloudModel.DeleteFpgaImageResult

    /**
     Invokes the DeleteInstanceConnectEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInstanceConnectEndpointRequest object being passed to this operation.
     - Returns: The DeleteInstanceConnectEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteInstanceConnectEndpoint(
            input: ElasticComputeCloudModel.DeleteInstanceConnectEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteInstanceConnectEndpointResult

    /**
     Invokes the DeleteInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInstanceEventWindowRequest object being passed to this operation.
     - Returns: The DeleteInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteInstanceEventWindow(
            input: ElasticComputeCloudModel.DeleteInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.DeleteInstanceEventWindowResult

    /**
     Invokes the DeleteInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    func deleteInternetGateway(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) async throws

    /**
     Invokes the DeleteIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamRequest object being passed to this operation.
     - Returns: The DeleteIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpam(
            input: ElasticComputeCloudModel.DeleteIpamRequest) async throws -> ElasticComputeCloudModel.DeleteIpamResult

    /**
     Invokes the DeleteIpamPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamPoolRequest object being passed to this operation.
     - Returns: The DeleteIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpamPool(
            input: ElasticComputeCloudModel.DeleteIpamPoolRequest) async throws -> ElasticComputeCloudModel.DeleteIpamPoolResult

    /**
     Invokes the DeleteIpamResourceDiscovery operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The DeleteIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpamResourceDiscovery(
            input: ElasticComputeCloudModel.DeleteIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.DeleteIpamResourceDiscoveryResult

    /**
     Invokes the DeleteIpamScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteIpamScopeRequest object being passed to this operation.
     - Returns: The DeleteIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteIpamScope(
            input: ElasticComputeCloudModel.DeleteIpamScopeRequest) async throws -> ElasticComputeCloudModel.DeleteIpamScopeResult

    /**
     Invokes the DeleteKeyPair operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    func deleteKeyPair(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest) async throws

    /**
     Invokes the DeleteLaunchTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplate(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult

    /**
     Invokes the DeleteLaunchTemplateVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) async throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult

    /**
     Invokes the DeleteLocalGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRoute(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteResult

    /**
     Invokes the DeleteLocalGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTable(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableResult

    /**
     Invokes the DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: The DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) async throws -> ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult

    /**
     Invokes the DeleteManagedPrefixList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: The DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteManagedPrefixList(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.DeleteManagedPrefixListResult

    /**
     Invokes the DeleteNatGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNatGateway(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteNatGatewayResult

    /**
     Invokes the DeleteNetworkAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    func deleteNetworkAcl(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest) async throws

    /**
     Invokes the DeleteNetworkAclEntry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    func deleteNetworkAclEntry(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) async throws

    /**
     Invokes the DeleteNetworkInsightsAccessScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAccessScopeRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAccessScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAccessScope(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeResult

    /**
     Invokes the DeleteNetworkInsightsAccessScopeAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAccessScopeAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAccessScopeAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAccessScopeAnalysis(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAccessScopeAnalysisResult

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult

    /**
     Invokes the DeleteNetworkInsightsPath operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: The DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsPath(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInsightsPathResult

    /**
     Invokes the DeleteNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    func deleteNetworkInterface(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) async throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermission(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) async throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult

    /**
     Invokes the DeletePlacementGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    func deletePlacementGroup(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest) async throws

    /**
     Invokes the DeletePublicIpv4Pool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePublicIpv4PoolRequest object being passed to this operation.
     - Returns: The DeletePublicIpv4PoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deletePublicIpv4Pool(
            input: ElasticComputeCloudModel.DeletePublicIpv4PoolRequest) async throws -> ElasticComputeCloudModel.DeletePublicIpv4PoolResult

    /**
     Invokes the DeleteQueuedReservedInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: The DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstances(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) async throws -> ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult

    /**
     Invokes the DeleteRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    func deleteRoute(
            input: ElasticComputeCloudModel.DeleteRouteRequest) async throws

    /**
     Invokes the DeleteRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    func deleteRouteTable(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest) async throws

    /**
     Invokes the DeleteSecurityGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    func deleteSecurityGroup(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) async throws

    /**
     Invokes the DeleteSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    func deleteSnapshot(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest) async throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    func deleteSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) async throws

    /**
     Invokes the DeleteSubnet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    func deleteSubnet(
            input: ElasticComputeCloudModel.DeleteSubnetRequest) async throws

    /**
     Invokes the DeleteSubnetCidrReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteSubnetCidrReservationRequest object being passed to this operation.
     - Returns: The DeleteSubnetCidrReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteSubnetCidrReservation(
            input: ElasticComputeCloudModel.DeleteSubnetCidrReservationRequest) async throws -> ElasticComputeCloudModel.DeleteSubnetCidrReservationResult

    /**
     Invokes the DeleteTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    func deleteTags(
            input: ElasticComputeCloudModel.DeleteTagsRequest) async throws

    /**
     Invokes the DeleteTrafficMirrorFilter operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilter(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult

    /**
     Invokes the DeleteTrafficMirrorSession operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSession(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult

    /**
     Invokes the DeleteTrafficMirrorTarget operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: The DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTarget(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) async throws -> ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult

    /**
     Invokes the DeleteTransitGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGateway(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult

    /**
     Invokes the DeleteTransitGatewayConnect operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnect(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectResult

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult

    /**
     Invokes the DeleteTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPolicyTableResult

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult

    /**
     Invokes the DeleteTransitGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRoute(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult

    /**
     Invokes the DeleteTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult

    /**
     Invokes the DeleteTransitGatewayRouteTableAnnouncement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableAnnouncementRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableAnnouncementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableAnnouncement(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableAnnouncementResult

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult

    /**
     Invokes the DeleteVerifiedAccessEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVerifiedAccessEndpointRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessEndpoint(
            input: ElasticComputeCloudModel.DeleteVerifiedAccessEndpointRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessEndpointResult

    /**
     Invokes the DeleteVerifiedAccessGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVerifiedAccessGroupRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessGroup(
            input: ElasticComputeCloudModel.DeleteVerifiedAccessGroupRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessGroupResult

    /**
     Invokes the DeleteVerifiedAccessInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVerifiedAccessInstanceRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessInstance(
            input: ElasticComputeCloudModel.DeleteVerifiedAccessInstanceRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessInstanceResult

    /**
     Invokes the DeleteVerifiedAccessTrustProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The DeleteVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVerifiedAccessTrustProvider(
            input: ElasticComputeCloudModel.DeleteVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.DeleteVerifiedAccessTrustProviderResult

    /**
     Invokes the DeleteVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    func deleteVolume(
            input: ElasticComputeCloudModel.DeleteVolumeRequest) async throws

    /**
     Invokes the DeleteVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    func deleteVpc(
            input: ElasticComputeCloudModel.DeleteVpcRequest) async throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DeleteVpcEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpoints(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) async throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult

    /**
     Invokes the DeleteVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnection(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult

    /**
     Invokes the DeleteVpnConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    func deleteVpnConnection(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) async throws

    /**
     Invokes the DeleteVpnConnectionRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    func deleteVpnConnectionRoute(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) async throws

    /**
     Invokes the DeleteVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    func deleteVpnGateway(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) async throws

    /**
     Invokes the DeprovisionByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionByoipCidr(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult

    /**
     Invokes the DeprovisionIpamPoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprovisionIpamPoolCidrRequest object being passed to this operation.
     - Returns: The DeprovisionIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionIpamPoolCidr(
            input: ElasticComputeCloudModel.DeprovisionIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionIpamPoolCidrResult

    /**
     Invokes the DeprovisionPublicIpv4PoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeprovisionPublicIpv4PoolCidrRequest object being passed to this operation.
     - Returns: The DeprovisionPublicIpv4PoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionPublicIpv4PoolCidr(
            input: ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrRequest) async throws -> ElasticComputeCloudModel.DeprovisionPublicIpv4PoolCidrResult

    /**
     Invokes the DeregisterImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    func deregisterImage(
            input: ElasticComputeCloudModel.DeregisterImageRequest) async throws

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) async throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) async throws -> ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult

    /**
     Invokes the DescribeAccountAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributes(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) async throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult

    /**
     Invokes the DescribeAddressTransfers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAddressTransfersRequest object being passed to this operation.
     - Returns: The DescribeAddressTransfersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressTransfers(
            input: ElasticComputeCloudModel.DescribeAddressTransfersRequest) async throws -> ElasticComputeCloudModel.DescribeAddressTransfersResult

    /**
     Invokes the DescribeAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddresses(
            input: ElasticComputeCloudModel.DescribeAddressesRequest) async throws -> ElasticComputeCloudModel.DescribeAddressesResult

    /**
     Invokes the DescribeAddressesAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: The DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesAttribute(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeAddressesAttributeResult

    /**
     Invokes the DescribeAggregateIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAggregateIdFormat(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult

    /**
     Invokes the DescribeAvailabilityZones operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAvailabilityZones(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) async throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult

    /**
     Invokes the DescribeAwsNetworkPerformanceMetricSubscriptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAwsNetworkPerformanceMetricSubscriptionsRequest object being passed to this operation.
     - Returns: The DescribeAwsNetworkPerformanceMetricSubscriptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAwsNetworkPerformanceMetricSubscriptions(
            input: ElasticComputeCloudModel.DescribeAwsNetworkPerformanceMetricSubscriptionsRequest) async throws -> ElasticComputeCloudModel.DescribeAwsNetworkPerformanceMetricSubscriptionsResult

    /**
     Invokes the DescribeBundleTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeBundleTasks(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest) async throws -> ElasticComputeCloudModel.DescribeBundleTasksResult

    /**
     Invokes the DescribeByoipCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeByoipCidrs(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) async throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult

    /**
     Invokes the DescribeCapacityReservationFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationFleetsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservationFleets(
            input: ElasticComputeCloudModel.DescribeCapacityReservationFleetsRequest) async throws -> ElasticComputeCloudModel.DescribeCapacityReservationFleetsResult

    /**
     Invokes the DescribeCapacityReservations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservations(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) async throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult

    /**
     Invokes the DescribeCarrierGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCarrierGateways(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeCarrierGatewaysResult

    /**
     Invokes the DescribeClassicLinkInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClassicLinkInstances(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRules(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult

    /**
     Invokes the DescribeClientVpnConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnConnections(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult

    /**
     Invokes the DescribeClientVpnEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnEndpoints(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult

    /**
     Invokes the DescribeClientVpnRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnRoutes(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult

    /**
     Invokes the DescribeClientVpnTargetNetworks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworks(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) async throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult

    /**
     Invokes the DescribeCoipPools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: The DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCoipPools(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) async throws -> ElasticComputeCloudModel.DescribeCoipPoolsResult

    /**
     Invokes the DescribeConversionTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeConversionTasks(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest) async throws -> ElasticComputeCloudModel.DescribeConversionTasksResult

    /**
     Invokes the DescribeCustomerGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCustomerGateways(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult

    /**
     Invokes the DescribeDhcpOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDhcpOptions(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) async throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGateways(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult

    /**
     Invokes the DescribeElasticGpus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeElasticGpus(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest) async throws -> ElasticComputeCloudModel.DescribeElasticGpusResult

    /**
     Invokes the DescribeExportImageTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportImageTasks(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeExportImageTasksResult

    /**
     Invokes the DescribeExportTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportTasks(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest) async throws -> ElasticComputeCloudModel.DescribeExportTasksResult

    /**
     Invokes the DescribeFastLaunchImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFastLaunchImagesRequest object being passed to this operation.
     - Returns: The DescribeFastLaunchImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastLaunchImages(
            input: ElasticComputeCloudModel.DescribeFastLaunchImagesRequest) async throws -> ElasticComputeCloudModel.DescribeFastLaunchImagesResult

    /**
     Invokes the DescribeFastSnapshotRestores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastSnapshotRestores(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult

    /**
     Invokes the DescribeFleetHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetHistory(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult

    /**
     Invokes the DescribeFleetInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetInstances(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult

    /**
     Invokes the DescribeFleets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleets(
            input: ElasticComputeCloudModel.DescribeFleetsRequest) async throws -> ElasticComputeCloudModel.DescribeFleetsResult

    /**
     Invokes the DescribeFlowLogs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFlowLogs(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest) async throws -> ElasticComputeCloudModel.DescribeFlowLogsResult

    /**
     Invokes the DescribeFpgaImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImageAttribute(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult

    /**
     Invokes the DescribeFpgaImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImages(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) async throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult

    /**
     Invokes the DescribeHostReservationOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationOfferings(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult

    /**
     Invokes the DescribeHostReservations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservations(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest) async throws -> ElasticComputeCloudModel.DescribeHostReservationsResult

    /**
     Invokes the DescribeHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHosts(
            input: ElasticComputeCloudModel.DescribeHostsRequest) async throws -> ElasticComputeCloudModel.DescribeHostsResult

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociations(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult

    /**
     Invokes the DescribeIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdFormat(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeIdFormatResult

    /**
     Invokes the DescribeIdentityIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdentityIdFormat(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult

    /**
     Invokes the DescribeImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImageAttribute(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest) async throws -> ElasticComputeCloudModel.ImageAttribute

    /**
     Invokes the DescribeImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImages(
            input: ElasticComputeCloudModel.DescribeImagesRequest) async throws -> ElasticComputeCloudModel.DescribeImagesResult

    /**
     Invokes the DescribeImportImageTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportImageTasks(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult

    /**
     Invokes the DescribeImportSnapshotTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportSnapshotTasks(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) async throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult

    /**
     Invokes the DescribeInstanceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceAttribute(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) async throws -> ElasticComputeCloudModel.InstanceAttribute

    /**
     Invokes the DescribeInstanceConnectEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceConnectEndpointsRequest object being passed to this operation.
     - Returns: The DescribeInstanceConnectEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceConnectEndpoints(
            input: ElasticComputeCloudModel.DescribeInstanceConnectEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceConnectEndpointsResult

    /**
     Invokes the DescribeInstanceCreditSpecifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecifications(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult

    /**
     Invokes the DescribeInstanceEventWindows operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceEventWindowsRequest object being passed to this operation.
     - Returns: The DescribeInstanceEventWindowsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceEventWindows(
            input: ElasticComputeCloudModel.DescribeInstanceEventWindowsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceEventWindowsResult

    /**
     Invokes the DescribeInstanceStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceStatus(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult

    /**
     Invokes the DescribeInstanceTypeOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferings(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult

    /**
     Invokes the DescribeInstanceTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: The DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypes(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) async throws -> ElasticComputeCloudModel.DescribeInstanceTypesResult

    /**
     Invokes the DescribeInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstances(
            input: ElasticComputeCloudModel.DescribeInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeInstancesResult

    /**
     Invokes the DescribeInternetGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInternetGateways(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult

    /**
     Invokes the DescribeIpamPools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamPoolsRequest object being passed to this operation.
     - Returns: The DescribeIpamPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamPools(
            input: ElasticComputeCloudModel.DescribeIpamPoolsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamPoolsResult

    /**
     Invokes the DescribeIpamResourceDiscoveries operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamResourceDiscoveriesRequest object being passed to this operation.
     - Returns: The DescribeIpamResourceDiscoveriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamResourceDiscoveries(
            input: ElasticComputeCloudModel.DescribeIpamResourceDiscoveriesRequest) async throws -> ElasticComputeCloudModel.DescribeIpamResourceDiscoveriesResult

    /**
     Invokes the DescribeIpamResourceDiscoveryAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamResourceDiscoveryAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIpamResourceDiscoveryAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamResourceDiscoveryAssociations(
            input: ElasticComputeCloudModel.DescribeIpamResourceDiscoveryAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamResourceDiscoveryAssociationsResult

    /**
     Invokes the DescribeIpamScopes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamScopesRequest object being passed to this operation.
     - Returns: The DescribeIpamScopesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpamScopes(
            input: ElasticComputeCloudModel.DescribeIpamScopesRequest) async throws -> ElasticComputeCloudModel.DescribeIpamScopesResult

    /**
     Invokes the DescribeIpams operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpamsRequest object being passed to this operation.
     - Returns: The DescribeIpamsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpams(
            input: ElasticComputeCloudModel.DescribeIpamsRequest) async throws -> ElasticComputeCloudModel.DescribeIpamsResult

    /**
     Invokes the DescribeIpv6Pools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: The DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpv6Pools(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) async throws -> ElasticComputeCloudModel.DescribeIpv6PoolsResult

    /**
     Invokes the DescribeKeyPairs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeKeyPairs(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest) async throws -> ElasticComputeCloudModel.DescribeKeyPairsResult

    /**
     Invokes the DescribeLaunchTemplateVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) async throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult

    /**
     Invokes the DescribeLaunchTemplates operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplates(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) async throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult

    /**
     Invokes the DescribeLocalGatewayRouteTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroups(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaces(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult

    /**
     Invokes the DescribeLocalGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: The DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGateways(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeLocalGatewaysResult

    /**
     Invokes the DescribeManagedPrefixLists operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: The DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeManagedPrefixLists(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) async throws -> ElasticComputeCloudModel.DescribeManagedPrefixListsResult

    /**
     Invokes the DescribeMovingAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeMovingAddresses(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) async throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult

    /**
     Invokes the DescribeNatGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNatGateways(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult

    /**
     Invokes the DescribeNetworkAcls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkAcls(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult

    /**
     Invokes the DescribeNetworkInsightsAccessScopeAnalyses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAccessScopeAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAccessScopeAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAccessScopeAnalyses(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopeAnalysesResult

    /**
     Invokes the DescribeNetworkInsightsAccessScopes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAccessScopesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAccessScopesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAccessScopes(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAccessScopesResult

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAnalyses(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult

    /**
     Invokes the DescribeNetworkInsightsPaths operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsPaths(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult

    /**
     Invokes the DescribeNetworkInterfacePermissions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissions(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult

    /**
     Invokes the DescribeNetworkInterfaces operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaces(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) async throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult

    /**
     Invokes the DescribePlacementGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePlacementGroups(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) async throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult

    /**
     Invokes the DescribePrefixLists operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrefixLists(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest) async throws -> ElasticComputeCloudModel.DescribePrefixListsResult

    /**
     Invokes the DescribePrincipalIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrincipalIdFormat(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) async throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult

    /**
     Invokes the DescribePublicIpv4Pools operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePublicIpv4Pools(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) async throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult

    /**
     Invokes the DescribeRegions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRegions(
            input: ElasticComputeCloudModel.DescribeRegionsRequest) async throws -> ElasticComputeCloudModel.DescribeRegionsResult

    /**
     Invokes the DescribeReplaceRootVolumeTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReplaceRootVolumeTasksRequest object being passed to this operation.
     - Returns: The DescribeReplaceRootVolumeTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReplaceRootVolumeTasks(
            input: ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksRequest) async throws -> ElasticComputeCloudModel.DescribeReplaceRootVolumeTasksResult

    /**
     Invokes the DescribeReservedInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstances(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult

    /**
     Invokes the DescribeReservedInstancesListings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesListings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult

    /**
     Invokes the DescribeReservedInstancesModifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesModifications(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult

    /**
     Invokes the DescribeReservedInstancesOfferings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) async throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult

    /**
     Invokes the DescribeRouteTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRouteTables(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeRouteTablesResult

    /**
     Invokes the DescribeScheduledInstanceAvailability operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailability(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) async throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult

    /**
     Invokes the DescribeScheduledInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstances(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult

    /**
     Invokes the DescribeSecurityGroupReferences operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupReferences(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult

    /**
     Invokes the DescribeSecurityGroupRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupRulesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupRules(
            input: ElasticComputeCloudModel.DescribeSecurityGroupRulesRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupRulesResult

    /**
     Invokes the DescribeSecurityGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroups(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult

    /**
     Invokes the DescribeSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotAttribute(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult

    /**
     Invokes the DescribeSnapshotTierStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSnapshotTierStatusRequest object being passed to this operation.
     - Returns: The DescribeSnapshotTierStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotTierStatus(
            input: ElasticComputeCloudModel.DescribeSnapshotTierStatusRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotTierStatusResult

    /**
     Invokes the DescribeSnapshots operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshots(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest) async throws -> ElasticComputeCloudModel.DescribeSnapshotsResult

    /**
     Invokes the DescribeSpotDatafeedSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) async throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult

    /**
     Invokes the DescribeSpotFleetInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetInstances(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse

    /**
     Invokes the DescribeSpotFleetRequestHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistory(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse

    /**
     Invokes the DescribeSpotFleetRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequests(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) async throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse

    /**
     Invokes the DescribeSpotInstanceRequests operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotInstanceRequests(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) async throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult

    /**
     Invokes the DescribeSpotPriceHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotPriceHistory(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) async throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult

    /**
     Invokes the DescribeStaleSecurityGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStaleSecurityGroups(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult

    /**
     Invokes the DescribeStoreImageTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStoreImageTasksRequest object being passed to this operation.
     - Returns: The DescribeStoreImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStoreImageTasks(
            input: ElasticComputeCloudModel.DescribeStoreImageTasksRequest) async throws -> ElasticComputeCloudModel.DescribeStoreImageTasksResult

    /**
     Invokes the DescribeSubnets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSubnets(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest) async throws -> ElasticComputeCloudModel.DescribeSubnetsResult

    /**
     Invokes the DescribeTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTags(
            input: ElasticComputeCloudModel.DescribeTagsRequest) async throws -> ElasticComputeCloudModel.DescribeTagsResult

    /**
     Invokes the DescribeTrafficMirrorFilters operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorFilters(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult

    /**
     Invokes the DescribeTrafficMirrorSessions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessions(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult

    /**
     Invokes the DescribeTrafficMirrorTargets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: The DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargets(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) async throws -> ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult

    /**
     Invokes the DescribeTransitGatewayAttachments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectPeers(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult

    /**
     Invokes the DescribeTransitGatewayConnects operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnects(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomains(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayPolicyTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayPolicyTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayPolicyTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPolicyTables(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayPolicyTablesResult

    /**
     Invokes the DescribeTransitGatewayRouteTableAnnouncements operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTableAnnouncementsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTableAnnouncementsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTableAnnouncements(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTableAnnouncementsResult

    /**
     Invokes the DescribeTransitGatewayRouteTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult

    /**
     Invokes the DescribeTransitGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGateways(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult

    /**
     Invokes the DescribeTrunkInterfaceAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTrunkInterfaceAssociationsRequest object being passed to this operation.
     - Returns: The DescribeTrunkInterfaceAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrunkInterfaceAssociations(
            input: ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsRequest) async throws -> ElasticComputeCloudModel.DescribeTrunkInterfaceAssociationsResult

    /**
     Invokes the DescribeVerifiedAccessEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVerifiedAccessEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessEndpoints(
            input: ElasticComputeCloudModel.DescribeVerifiedAccessEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessEndpointsResult

    /**
     Invokes the DescribeVerifiedAccessGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVerifiedAccessGroupsRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessGroups(
            input: ElasticComputeCloudModel.DescribeVerifiedAccessGroupsRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessGroupsResult

    /**
     Invokes the DescribeVerifiedAccessInstanceLoggingConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVerifiedAccessInstanceLoggingConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessInstanceLoggingConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessInstanceLoggingConfigurations(
            input: ElasticComputeCloudModel.DescribeVerifiedAccessInstanceLoggingConfigurationsRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessInstanceLoggingConfigurationsResult

    /**
     Invokes the DescribeVerifiedAccessInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVerifiedAccessInstancesRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessInstances(
            input: ElasticComputeCloudModel.DescribeVerifiedAccessInstancesRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessInstancesResult

    /**
     Invokes the DescribeVerifiedAccessTrustProviders operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVerifiedAccessTrustProvidersRequest object being passed to this operation.
     - Returns: The DescribeVerifiedAccessTrustProvidersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVerifiedAccessTrustProviders(
            input: ElasticComputeCloudModel.DescribeVerifiedAccessTrustProvidersRequest) async throws -> ElasticComputeCloudModel.DescribeVerifiedAccessTrustProvidersResult

    /**
     Invokes the DescribeVolumeAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeAttribute(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult

    /**
     Invokes the DescribeVolumeStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeStatus(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) async throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult

    /**
     Invokes the DescribeVolumes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumes(
            input: ElasticComputeCloudModel.DescribeVolumesRequest) async throws -> ElasticComputeCloudModel.DescribeVolumesResult

    /**
     Invokes the DescribeVolumesModifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesModifications(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) async throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult

    /**
     Invokes the DescribeVpcAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcAttribute(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) async throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult

    /**
     Invokes the DescribeVpcClassicLink operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLink(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DescribeVpcEndpointConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnections(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult

    /**
     Invokes the DescribeVpcEndpointServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServices(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult

    /**
     Invokes the DescribeVpcEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpoints(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult

    /**
     Invokes the DescribeVpcPeeringConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcPeeringConnections(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult

    /**
     Invokes the DescribeVpcs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcs(
            input: ElasticComputeCloudModel.DescribeVpcsRequest) async throws -> ElasticComputeCloudModel.DescribeVpcsResult

    /**
     Invokes the DescribeVpnConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnConnections(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult

    /**
     Invokes the DescribeVpnGateways operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnGateways(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) async throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult

    /**
     Invokes the DetachClassicLinkVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachClassicLinkVpc(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) async throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult

    /**
     Invokes the DetachInternetGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    func detachInternetGateway(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest) async throws

    /**
     Invokes the DetachNetworkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    func detachNetworkInterface(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) async throws

    /**
     Invokes the DetachVerifiedAccessTrustProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The DetachVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVerifiedAccessTrustProvider(
            input: ElasticComputeCloudModel.DetachVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.DetachVerifiedAccessTrustProviderResult

    /**
     Invokes the DetachVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVolume(
            input: ElasticComputeCloudModel.DetachVolumeRequest) async throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the DetachVpnGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    func detachVpnGateway(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest) async throws

    /**
     Invokes the DisableAddressTransfer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableAddressTransferRequest object being passed to this operation.
     - Returns: The DisableAddressTransferResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableAddressTransfer(
            input: ElasticComputeCloudModel.DisableAddressTransferRequest) async throws -> ElasticComputeCloudModel.DisableAddressTransferResult

    /**
     Invokes the DisableAwsNetworkPerformanceMetricSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableAwsNetworkPerformanceMetricSubscriptionRequest object being passed to this operation.
     - Returns: The DisableAwsNetworkPerformanceMetricSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableAwsNetworkPerformanceMetricSubscription(
            input: ElasticComputeCloudModel.DisableAwsNetworkPerformanceMetricSubscriptionRequest) async throws -> ElasticComputeCloudModel.DisableAwsNetworkPerformanceMetricSubscriptionResult

    /**
     Invokes the DisableEbsEncryptionByDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult

    /**
     Invokes the DisableFastLaunch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableFastLaunchRequest object being passed to this operation.
     - Returns: The DisableFastLaunchResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastLaunch(
            input: ElasticComputeCloudModel.DisableFastLaunchRequest) async throws -> ElasticComputeCloudModel.DisableFastLaunchResult

    /**
     Invokes the DisableFastSnapshotRestores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastSnapshotRestores(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.DisableFastSnapshotRestoresResult

    /**
     Invokes the DisableImageDeprecation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableImageDeprecationRequest object being passed to this operation.
     - Returns: The DisableImageDeprecationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableImageDeprecation(
            input: ElasticComputeCloudModel.DisableImageDeprecationRequest) async throws -> ElasticComputeCloudModel.DisableImageDeprecationResult

    /**
     Invokes the DisableIpamOrganizationAdminAccount operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableIpamOrganizationAdminAccountRequest object being passed to this operation.
     - Returns: The DisableIpamOrganizationAdminAccountResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableIpamOrganizationAdminAccount(
            input: ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountRequest) async throws -> ElasticComputeCloudModel.DisableIpamOrganizationAdminAccountResult

    /**
     Invokes the DisableSerialConsoleAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableSerialConsoleAccessRequest object being passed to this operation.
     - Returns: The DisableSerialConsoleAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableSerialConsoleAccess(
            input: ElasticComputeCloudModel.DisableSerialConsoleAccessRequest) async throws -> ElasticComputeCloudModel.DisableSerialConsoleAccessResult

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) async throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the DisableVgwRoutePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    func disableVgwRoutePropagation(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) async throws

    /**
     Invokes the DisableVpcClassicLink operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLink(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult

    /**
     Invokes the DisassociateAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    func disassociateAddress(
            input: ElasticComputeCloudModel.DisassociateAddressRequest) async throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) async throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: The DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) async throws -> ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult

    /**
     Invokes the DisassociateIamInstanceProfile operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfile(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) async throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult

    /**
     Invokes the DisassociateInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateInstanceEventWindowRequest object being passed to this operation.
     - Returns: The DisassociateInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateInstanceEventWindow(
            input: ElasticComputeCloudModel.DisassociateInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.DisassociateInstanceEventWindowResult

    /**
     Invokes the DisassociateIpamResourceDiscovery operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The DisassociateIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIpamResourceDiscovery(
            input: ElasticComputeCloudModel.DisassociateIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.DisassociateIpamResourceDiscoveryResult

    /**
     Invokes the DisassociateNatGatewayAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The DisassociateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateNatGatewayAddress(
            input: ElasticComputeCloudModel.DisassociateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.DisassociateNatGatewayAddressResult

    /**
     Invokes the DisassociateRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    func disassociateRouteTable(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest) async throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlock(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) async throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult

    /**
     Invokes the DisassociateTransitGatewayPolicyTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayPolicyTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayPolicyTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayPolicyTable(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayPolicyTableResult

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) async throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult

    /**
     Invokes the DisassociateTrunkInterface operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateTrunkInterfaceRequest object being passed to this operation.
     - Returns: The DisassociateTrunkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTrunkInterface(
            input: ElasticComputeCloudModel.DisassociateTrunkInterfaceRequest) async throws -> ElasticComputeCloudModel.DisassociateTrunkInterfaceResult

    /**
     Invokes the DisassociateVpcCidrBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlock(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) async throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult

    /**
     Invokes the EnableAddressTransfer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableAddressTransferRequest object being passed to this operation.
     - Returns: The EnableAddressTransferResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableAddressTransfer(
            input: ElasticComputeCloudModel.EnableAddressTransferRequest) async throws -> ElasticComputeCloudModel.EnableAddressTransferResult

    /**
     Invokes the EnableAwsNetworkPerformanceMetricSubscription operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableAwsNetworkPerformanceMetricSubscriptionRequest object being passed to this operation.
     - Returns: The EnableAwsNetworkPerformanceMetricSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableAwsNetworkPerformanceMetricSubscription(
            input: ElasticComputeCloudModel.EnableAwsNetworkPerformanceMetricSubscriptionRequest) async throws -> ElasticComputeCloudModel.EnableAwsNetworkPerformanceMetricSubscriptionResult

    /**
     Invokes the EnableEbsEncryptionByDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult

    /**
     Invokes the EnableFastLaunch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableFastLaunchRequest object being passed to this operation.
     - Returns: The EnableFastLaunchResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastLaunch(
            input: ElasticComputeCloudModel.EnableFastLaunchRequest) async throws -> ElasticComputeCloudModel.EnableFastLaunchResult

    /**
     Invokes the EnableFastSnapshotRestores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: The EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastSnapshotRestores(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) async throws -> ElasticComputeCloudModel.EnableFastSnapshotRestoresResult

    /**
     Invokes the EnableImageDeprecation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableImageDeprecationRequest object being passed to this operation.
     - Returns: The EnableImageDeprecationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableImageDeprecation(
            input: ElasticComputeCloudModel.EnableImageDeprecationRequest) async throws -> ElasticComputeCloudModel.EnableImageDeprecationResult

    /**
     Invokes the EnableIpamOrganizationAdminAccount operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableIpamOrganizationAdminAccountRequest object being passed to this operation.
     - Returns: The EnableIpamOrganizationAdminAccountResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableIpamOrganizationAdminAccount(
            input: ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountRequest) async throws -> ElasticComputeCloudModel.EnableIpamOrganizationAdminAccountResult

    /**
     Invokes the EnableReachabilityAnalyzerOrganizationSharing operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableReachabilityAnalyzerOrganizationSharingRequest object being passed to this operation.
     - Returns: The EnableReachabilityAnalyzerOrganizationSharingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableReachabilityAnalyzerOrganizationSharing(
            input: ElasticComputeCloudModel.EnableReachabilityAnalyzerOrganizationSharingRequest) async throws -> ElasticComputeCloudModel.EnableReachabilityAnalyzerOrganizationSharingResult

    /**
     Invokes the EnableSerialConsoleAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableSerialConsoleAccessRequest object being passed to this operation.
     - Returns: The EnableSerialConsoleAccessResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableSerialConsoleAccess(
            input: ElasticComputeCloudModel.EnableSerialConsoleAccessRequest) async throws -> ElasticComputeCloudModel.EnableSerialConsoleAccessResult

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) async throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the EnableVgwRoutePropagation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    func enableVgwRoutePropagation(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) async throws

    /**
     Invokes the EnableVolumeIO operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    func enableVolumeIO(
            input: ElasticComputeCloudModel.EnableVolumeIORequest) async throws

    /**
     Invokes the EnableVpcClassicLink operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLink(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) async throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) async throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) async throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ExportClientVpnClientConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientConfiguration(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) async throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult

    /**
     Invokes the ExportImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: The ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportImage(
            input: ElasticComputeCloudModel.ExportImageRequest) async throws -> ElasticComputeCloudModel.ExportImageResult

    /**
     Invokes the ExportTransitGatewayRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutes(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: The GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedEnclaveCertificateIamRoles(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) async throws -> ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: The GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrs(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) async throws -> ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult

    /**
     Invokes the GetAwsNetworkPerformanceData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAwsNetworkPerformanceDataRequest object being passed to this operation.
     - Returns: The GetAwsNetworkPerformanceDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAwsNetworkPerformanceData(
            input: ElasticComputeCloudModel.GetAwsNetworkPerformanceDataRequest) async throws -> ElasticComputeCloudModel.GetAwsNetworkPerformanceDataResult

    /**
     Invokes the GetCapacityReservationUsage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: The GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCapacityReservationUsage(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) async throws -> ElasticComputeCloudModel.GetCapacityReservationUsageResult

    /**
     Invokes the GetCoipPoolUsage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: The GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCoipPoolUsage(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) async throws -> ElasticComputeCloudModel.GetCoipPoolUsageResult

    /**
     Invokes the GetConsoleOutput operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleOutput(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest) async throws -> ElasticComputeCloudModel.GetConsoleOutputResult

    /**
     Invokes the GetConsoleScreenshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleScreenshot(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) async throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult

    /**
     Invokes the GetDefaultCreditSpecification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getDefaultCreditSpecification(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.GetDefaultCreditSpecificationResult

    /**
     Invokes the GetEbsDefaultKmsKeyId operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult

    /**
     Invokes the GetEbsEncryptionByDefault operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: The GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) async throws -> ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult

    /**
     Invokes the GetFlowLogsIntegrationTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetFlowLogsIntegrationTemplateRequest object being passed to this operation.
     - Returns: The GetFlowLogsIntegrationTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getFlowLogsIntegrationTemplate(
            input: ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateRequest) async throws -> ElasticComputeCloudModel.GetFlowLogsIntegrationTemplateResult

    /**
     Invokes the GetGroupsForCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: The GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getGroupsForCapacityReservation(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) async throws -> ElasticComputeCloudModel.GetGroupsForCapacityReservationResult

    /**
     Invokes the GetHostReservationPurchasePreview operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreview(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) async throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult

    /**
     Invokes the GetInstanceTypesFromInstanceRequirements operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetInstanceTypesFromInstanceRequirementsRequest object being passed to this operation.
     - Returns: The GetInstanceTypesFromInstanceRequirementsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getInstanceTypesFromInstanceRequirements(
            input: ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsRequest) async throws -> ElasticComputeCloudModel.GetInstanceTypesFromInstanceRequirementsResult

    /**
     Invokes the GetInstanceUefiData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetInstanceUefiDataRequest object being passed to this operation.
     - Returns: The GetInstanceUefiDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getInstanceUefiData(
            input: ElasticComputeCloudModel.GetInstanceUefiDataRequest) async throws -> ElasticComputeCloudModel.GetInstanceUefiDataResult

    /**
     Invokes the GetIpamAddressHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamAddressHistoryRequest object being passed to this operation.
     - Returns: The GetIpamAddressHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamAddressHistory(
            input: ElasticComputeCloudModel.GetIpamAddressHistoryRequest) async throws -> ElasticComputeCloudModel.GetIpamAddressHistoryResult

    /**
     Invokes the GetIpamDiscoveredAccounts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamDiscoveredAccountsRequest object being passed to this operation.
     - Returns: The GetIpamDiscoveredAccountsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamDiscoveredAccounts(
            input: ElasticComputeCloudModel.GetIpamDiscoveredAccountsRequest) async throws -> ElasticComputeCloudModel.GetIpamDiscoveredAccountsResult

    /**
     Invokes the GetIpamDiscoveredResourceCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamDiscoveredResourceCidrsRequest object being passed to this operation.
     - Returns: The GetIpamDiscoveredResourceCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamDiscoveredResourceCidrs(
            input: ElasticComputeCloudModel.GetIpamDiscoveredResourceCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamDiscoveredResourceCidrsResult

    /**
     Invokes the GetIpamPoolAllocations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamPoolAllocationsRequest object being passed to this operation.
     - Returns: The GetIpamPoolAllocationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamPoolAllocations(
            input: ElasticComputeCloudModel.GetIpamPoolAllocationsRequest) async throws -> ElasticComputeCloudModel.GetIpamPoolAllocationsResult

    /**
     Invokes the GetIpamPoolCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamPoolCidrsRequest object being passed to this operation.
     - Returns: The GetIpamPoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamPoolCidrs(
            input: ElasticComputeCloudModel.GetIpamPoolCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamPoolCidrsResult

    /**
     Invokes the GetIpamResourceCidrs operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetIpamResourceCidrsRequest object being passed to this operation.
     - Returns: The GetIpamResourceCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getIpamResourceCidrs(
            input: ElasticComputeCloudModel.GetIpamResourceCidrsRequest) async throws -> ElasticComputeCloudModel.GetIpamResourceCidrsResult

    /**
     Invokes the GetLaunchTemplateData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getLaunchTemplateData(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) async throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult

    /**
     Invokes the GetManagedPrefixListAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListAssociations(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) async throws -> ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult

    /**
     Invokes the GetManagedPrefixListEntries operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: The GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListEntries(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) async throws -> ElasticComputeCloudModel.GetManagedPrefixListEntriesResult

    /**
     Invokes the GetNetworkInsightsAccessScopeAnalysisFindings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetNetworkInsightsAccessScopeAnalysisFindingsRequest object being passed to this operation.
     - Returns: The GetNetworkInsightsAccessScopeAnalysisFindingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getNetworkInsightsAccessScopeAnalysisFindings(
            input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsRequest) async throws -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeAnalysisFindingsResult

    /**
     Invokes the GetNetworkInsightsAccessScopeContent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetNetworkInsightsAccessScopeContentRequest object being passed to this operation.
     - Returns: The GetNetworkInsightsAccessScopeContentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getNetworkInsightsAccessScopeContent(
            input: ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentRequest) async throws -> ElasticComputeCloudModel.GetNetworkInsightsAccessScopeContentResult

    /**
     Invokes the GetPasswordData operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPasswordData(
            input: ElasticComputeCloudModel.GetPasswordDataRequest) async throws -> ElasticComputeCloudModel.GetPasswordDataResult

    /**
     Invokes the GetReservedInstancesExchangeQuote operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) async throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult

    /**
     Invokes the GetSerialConsoleAccessStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSerialConsoleAccessStatusRequest object being passed to this operation.
     - Returns: The GetSerialConsoleAccessStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSerialConsoleAccessStatus(
            input: ElasticComputeCloudModel.GetSerialConsoleAccessStatusRequest) async throws -> ElasticComputeCloudModel.GetSerialConsoleAccessStatusResult

    /**
     Invokes the GetSpotPlacementScores operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSpotPlacementScoresRequest object being passed to this operation.
     - Returns: The GetSpotPlacementScoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSpotPlacementScores(
            input: ElasticComputeCloudModel.GetSpotPlacementScoresRequest) async throws -> ElasticComputeCloudModel.GetSpotPlacementScoresResult

    /**
     Invokes the GetSubnetCidrReservations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSubnetCidrReservationsRequest object being passed to this operation.
     - Returns: The GetSubnetCidrReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getSubnetCidrReservations(
            input: ElasticComputeCloudModel.GetSubnetCidrReservationsRequest) async throws -> ElasticComputeCloudModel.GetSubnetCidrReservationsResult

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the GetTransitGatewayPolicyTableAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPolicyTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPolicyTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPolicyTableAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableAssociationsResult

    /**
     Invokes the GetTransitGatewayPolicyTableEntries operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPolicyTableEntriesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPolicyTableEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPolicyTableEntries(
            input: ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPolicyTableEntriesResult

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: The GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPrefixListReferences(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) async throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult

    /**
     Invokes the GetVerifiedAccessEndpointPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVerifiedAccessEndpointPolicyRequest object being passed to this operation.
     - Returns: The GetVerifiedAccessEndpointPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVerifiedAccessEndpointPolicy(
            input: ElasticComputeCloudModel.GetVerifiedAccessEndpointPolicyRequest) async throws -> ElasticComputeCloudModel.GetVerifiedAccessEndpointPolicyResult

    /**
     Invokes the GetVerifiedAccessGroupPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVerifiedAccessGroupPolicyRequest object being passed to this operation.
     - Returns: The GetVerifiedAccessGroupPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVerifiedAccessGroupPolicy(
            input: ElasticComputeCloudModel.GetVerifiedAccessGroupPolicyRequest) async throws -> ElasticComputeCloudModel.GetVerifiedAccessGroupPolicyResult

    /**
     Invokes the GetVpnConnectionDeviceSampleConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVpnConnectionDeviceSampleConfigurationRequest object being passed to this operation.
     - Returns: The GetVpnConnectionDeviceSampleConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVpnConnectionDeviceSampleConfiguration(
            input: ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationRequest) async throws -> ElasticComputeCloudModel.GetVpnConnectionDeviceSampleConfigurationResult

    /**
     Invokes the GetVpnConnectionDeviceTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVpnConnectionDeviceTypesRequest object being passed to this operation.
     - Returns: The GetVpnConnectionDeviceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVpnConnectionDeviceTypes(
            input: ElasticComputeCloudModel.GetVpnConnectionDeviceTypesRequest) async throws -> ElasticComputeCloudModel.GetVpnConnectionDeviceTypesResult

    /**
     Invokes the GetVpnTunnelReplacementStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetVpnTunnelReplacementStatusRequest object being passed to this operation.
     - Returns: The GetVpnTunnelReplacementStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getVpnTunnelReplacementStatus(
            input: ElasticComputeCloudModel.GetVpnTunnelReplacementStatusRequest) async throws -> ElasticComputeCloudModel.GetVpnTunnelReplacementStatusResult

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) async throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ImportImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importImage(
            input: ElasticComputeCloudModel.ImportImageRequest) async throws -> ElasticComputeCloudModel.ImportImageResult

    /**
     Invokes the ImportInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importInstance(
            input: ElasticComputeCloudModel.ImportInstanceRequest) async throws -> ElasticComputeCloudModel.ImportInstanceResult

    /**
     Invokes the ImportKeyPair operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importKeyPair(
            input: ElasticComputeCloudModel.ImportKeyPairRequest) async throws -> ElasticComputeCloudModel.ImportKeyPairResult

    /**
     Invokes the ImportSnapshot operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importSnapshot(
            input: ElasticComputeCloudModel.ImportSnapshotRequest) async throws -> ElasticComputeCloudModel.ImportSnapshotResult

    /**
     Invokes the ImportVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importVolume(
            input: ElasticComputeCloudModel.ImportVolumeRequest) async throws -> ElasticComputeCloudModel.ImportVolumeResult

    /**
     Invokes the ListImagesInRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImagesInRecycleBinRequest object being passed to this operation.
     - Returns: The ListImagesInRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listImagesInRecycleBin(
            input: ElasticComputeCloudModel.ListImagesInRecycleBinRequest) async throws -> ElasticComputeCloudModel.ListImagesInRecycleBinResult

    /**
     Invokes the ListSnapshotsInRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListSnapshotsInRecycleBinRequest object being passed to this operation.
     - Returns: The ListSnapshotsInRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listSnapshotsInRecycleBin(
            input: ElasticComputeCloudModel.ListSnapshotsInRecycleBinRequest) async throws -> ElasticComputeCloudModel.ListSnapshotsInRecycleBinResult

    /**
     Invokes the ModifyAddressAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: The ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAddressAttribute(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) async throws -> ElasticComputeCloudModel.ModifyAddressAttributeResult

    /**
     Invokes the ModifyAvailabilityZoneGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: The ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAvailabilityZoneGroup(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) async throws -> ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult

    /**
     Invokes the ModifyCapacityReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservation(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) async throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult

    /**
     Invokes the ModifyCapacityReservationFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationFleetRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservationFleet(
            input: ElasticComputeCloudModel.ModifyCapacityReservationFleetRequest) async throws -> ElasticComputeCloudModel.ModifyCapacityReservationFleetResult

    /**
     Invokes the ModifyClientVpnEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyClientVpnEndpoint(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult

    /**
     Invokes the ModifyDefaultCreditSpecification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecification(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult

    /**
     Invokes the ModifyFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFleet(
            input: ElasticComputeCloudModel.ModifyFleetRequest) async throws -> ElasticComputeCloudModel.ModifyFleetResult

    /**
     Invokes the ModifyFpgaImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFpgaImageAttribute(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult

    /**
     Invokes the ModifyHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyHosts(
            input: ElasticComputeCloudModel.ModifyHostsRequest) async throws -> ElasticComputeCloudModel.ModifyHostsResult

    /**
     Invokes the ModifyIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    func modifyIdFormat(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest) async throws

    /**
     Invokes the ModifyIdentityIdFormat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    func modifyIdentityIdFormat(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) async throws

    /**
     Invokes the ModifyImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    func modifyImageAttribute(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest) async throws

    /**
     Invokes the ModifyInstanceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    func modifyInstanceAttribute(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) async throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributes(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult

    /**
     Invokes the ModifyInstanceCreditSpecification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecification(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult

    /**
     Invokes the ModifyInstanceEventStartTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTime(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult

    /**
     Invokes the ModifyInstanceEventWindow operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventWindowRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventWindowResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventWindow(
            input: ElasticComputeCloudModel.ModifyInstanceEventWindowRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceEventWindowResult

    /**
     Invokes the ModifyInstanceMaintenanceOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceMaintenanceOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMaintenanceOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMaintenanceOptions(
            input: ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceMaintenanceOptionsResult

    /**
     Invokes the ModifyInstanceMetadataOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: The ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptions(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult

    /**
     Invokes the ModifyInstancePlacement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstancePlacement(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) async throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult

    /**
     Invokes the ModifyIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamRequest object being passed to this operation.
     - Returns: The ModifyIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpam(
            input: ElasticComputeCloudModel.ModifyIpamRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResult

    /**
     Invokes the ModifyIpamPool operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamPoolRequest object being passed to this operation.
     - Returns: The ModifyIpamPoolResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamPool(
            input: ElasticComputeCloudModel.ModifyIpamPoolRequest) async throws -> ElasticComputeCloudModel.ModifyIpamPoolResult

    /**
     Invokes the ModifyIpamResourceCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamResourceCidrRequest object being passed to this operation.
     - Returns: The ModifyIpamResourceCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamResourceCidr(
            input: ElasticComputeCloudModel.ModifyIpamResourceCidrRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResourceCidrResult

    /**
     Invokes the ModifyIpamResourceDiscovery operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamResourceDiscoveryRequest object being passed to this operation.
     - Returns: The ModifyIpamResourceDiscoveryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamResourceDiscovery(
            input: ElasticComputeCloudModel.ModifyIpamResourceDiscoveryRequest) async throws -> ElasticComputeCloudModel.ModifyIpamResourceDiscoveryResult

    /**
     Invokes the ModifyIpamScope operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyIpamScopeRequest object being passed to this operation.
     - Returns: The ModifyIpamScopeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyIpamScope(
            input: ElasticComputeCloudModel.ModifyIpamScopeRequest) async throws -> ElasticComputeCloudModel.ModifyIpamScopeResult

    /**
     Invokes the ModifyLaunchTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLaunchTemplate(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) async throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult

    /**
     Invokes the ModifyLocalGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyLocalGatewayRouteRequest object being passed to this operation.
     - Returns: The ModifyLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLocalGatewayRoute(
            input: ElasticComputeCloudModel.ModifyLocalGatewayRouteRequest) async throws -> ElasticComputeCloudModel.ModifyLocalGatewayRouteResult

    /**
     Invokes the ModifyManagedPrefixList operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: The ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyManagedPrefixList(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) async throws -> ElasticComputeCloudModel.ModifyManagedPrefixListResult

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func modifyNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) async throws

    /**
     Invokes the ModifyPrivateDnsNameOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyPrivateDnsNameOptionsRequest object being passed to this operation.
     - Returns: The ModifyPrivateDnsNameOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyPrivateDnsNameOptions(
            input: ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyPrivateDnsNameOptionsResult

    /**
     Invokes the ModifyReservedInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyReservedInstances(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) async throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult

    /**
     Invokes the ModifySecurityGroupRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySecurityGroupRulesRequest object being passed to this operation.
     - Returns: The ModifySecurityGroupRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySecurityGroupRules(
            input: ElasticComputeCloudModel.ModifySecurityGroupRulesRequest) async throws -> ElasticComputeCloudModel.ModifySecurityGroupRulesResult

    /**
     Invokes the ModifySnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    func modifySnapshotAttribute(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) async throws

    /**
     Invokes the ModifySnapshotTier operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySnapshotTierRequest object being passed to this operation.
     - Returns: The ModifySnapshotTierResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySnapshotTier(
            input: ElasticComputeCloudModel.ModifySnapshotTierRequest) async throws -> ElasticComputeCloudModel.ModifySnapshotTierResult

    /**
     Invokes the ModifySpotFleetRequest operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySpotFleetRequest(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) async throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse

    /**
     Invokes the ModifySubnetAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    func modifySubnetAttribute(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) async throws

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServices(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult

    /**
     Invokes the ModifyTrafficMirrorSession operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: The ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSession(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) async throws -> ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult

    /**
     Invokes the ModifyTransitGateway operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGateway(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayResult

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult

    /**
     Invokes the ModifyVerifiedAccessEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessEndpointRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessEndpoint(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessEndpointResult

    /**
     Invokes the ModifyVerifiedAccessEndpointPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessEndpointPolicyRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessEndpointPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessEndpointPolicy(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessEndpointPolicyRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessEndpointPolicyResult

    /**
     Invokes the ModifyVerifiedAccessGroup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessGroupRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessGroup(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessGroupRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessGroupResult

    /**
     Invokes the ModifyVerifiedAccessGroupPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessGroupPolicyRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessGroupPolicyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessGroupPolicy(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessGroupPolicyRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessGroupPolicyResult

    /**
     Invokes the ModifyVerifiedAccessInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessInstanceRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessInstance(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessInstanceRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessInstanceResult

    /**
     Invokes the ModifyVerifiedAccessInstanceLoggingConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessInstanceLoggingConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessInstanceLoggingConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessInstanceLoggingConfiguration(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessInstanceLoggingConfigurationRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessInstanceLoggingConfigurationResult

    /**
     Invokes the ModifyVerifiedAccessTrustProvider operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVerifiedAccessTrustProviderRequest object being passed to this operation.
     - Returns: The ModifyVerifiedAccessTrustProviderResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVerifiedAccessTrustProvider(
            input: ElasticComputeCloudModel.ModifyVerifiedAccessTrustProviderRequest) async throws -> ElasticComputeCloudModel.ModifyVerifiedAccessTrustProviderResult

    /**
     Invokes the ModifyVolume operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVolume(
            input: ElasticComputeCloudModel.ModifyVolumeRequest) async throws -> ElasticComputeCloudModel.ModifyVolumeResult

    /**
     Invokes the ModifyVolumeAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    func modifyVolumeAttribute(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) async throws

    /**
     Invokes the ModifyVpcAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    func modifyVpcAttribute(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) async throws

    /**
     Invokes the ModifyVpcEndpoint operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpoint(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult

    /**
     Invokes the ModifyVpcEndpointServicePayerResponsibility operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePayerResponsibilityRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePayerResponsibilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePayerResponsibility(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePayerResponsibilityResult

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult

    /**
     Invokes the ModifyVpcTenancy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcTenancy(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) async throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult

    /**
     Invokes the ModifyVpnConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnection(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) async throws -> ElasticComputeCloudModel.ModifyVpnConnectionResult

    /**
     Invokes the ModifyVpnConnectionOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult

    /**
     Invokes the ModifyVpnTunnelCertificate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificate(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) async throws -> ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult

    /**
     Invokes the ModifyVpnTunnelOptions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptions(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) async throws -> ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult

    /**
     Invokes the MonitorInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func monitorInstances(
            input: ElasticComputeCloudModel.MonitorInstancesRequest) async throws -> ElasticComputeCloudModel.MonitorInstancesResult

    /**
     Invokes the MoveAddressToVpc operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveAddressToVpc(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest) async throws -> ElasticComputeCloudModel.MoveAddressToVpcResult

    /**
     Invokes the MoveByoipCidrToIpam operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated MoveByoipCidrToIpamRequest object being passed to this operation.
     - Returns: The MoveByoipCidrToIpamResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveByoipCidrToIpam(
            input: ElasticComputeCloudModel.MoveByoipCidrToIpamRequest) async throws -> ElasticComputeCloudModel.MoveByoipCidrToIpamResult

    /**
     Invokes the ProvisionByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionByoipCidr(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult

    /**
     Invokes the ProvisionIpamPoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ProvisionIpamPoolCidrRequest object being passed to this operation.
     - Returns: The ProvisionIpamPoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionIpamPoolCidr(
            input: ElasticComputeCloudModel.ProvisionIpamPoolCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionIpamPoolCidrResult

    /**
     Invokes the ProvisionPublicIpv4PoolCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ProvisionPublicIpv4PoolCidrRequest object being passed to this operation.
     - Returns: The ProvisionPublicIpv4PoolCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionPublicIpv4PoolCidr(
            input: ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrRequest) async throws -> ElasticComputeCloudModel.ProvisionPublicIpv4PoolCidrResult

    /**
     Invokes the PurchaseHostReservation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseHostReservation(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest) async throws -> ElasticComputeCloudModel.PurchaseHostReservationResult

    /**
     Invokes the PurchaseReservedInstancesOffering operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOffering(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) async throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult

    /**
     Invokes the PurchaseScheduledInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseScheduledInstances(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult

    /**
     Invokes the RebootInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    func rebootInstances(
            input: ElasticComputeCloudModel.RebootInstancesRequest) async throws

    /**
     Invokes the RegisterImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerImage(
            input: ElasticComputeCloudModel.RegisterImageRequest) async throws -> ElasticComputeCloudModel.RegisterImageResult

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: The RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) async throws -> ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) async throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: The RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) async throws -> ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) async throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult

    /**
     Invokes the RejectVpcEndpointConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnections(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) async throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult

    /**
     Invokes the RejectVpcPeeringConnection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnection(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) async throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult

    /**
     Invokes the ReleaseAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    func releaseAddress(
            input: ElasticComputeCloudModel.ReleaseAddressRequest) async throws

    /**
     Invokes the ReleaseHosts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseHosts(
            input: ElasticComputeCloudModel.ReleaseHostsRequest) async throws -> ElasticComputeCloudModel.ReleaseHostsResult

    /**
     Invokes the ReleaseIpamPoolAllocation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReleaseIpamPoolAllocationRequest object being passed to this operation.
     - Returns: The ReleaseIpamPoolAllocationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseIpamPoolAllocation(
            input: ElasticComputeCloudModel.ReleaseIpamPoolAllocationRequest) async throws -> ElasticComputeCloudModel.ReleaseIpamPoolAllocationResult

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociation(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult

    /**
     Invokes the ReplaceNetworkAclAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociation(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult

    /**
     Invokes the ReplaceNetworkAclEntry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    func replaceNetworkAclEntry(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) async throws

    /**
     Invokes the ReplaceRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    func replaceRoute(
            input: ElasticComputeCloudModel.ReplaceRouteRequest) async throws

    /**
     Invokes the ReplaceRouteTableAssociation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceRouteTableAssociation(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) async throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult

    /**
     Invokes the ReplaceTransitGatewayRoute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceTransitGatewayRoute(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) async throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult

    /**
     Invokes the ReplaceVpnTunnel operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReplaceVpnTunnelRequest object being passed to this operation.
     - Returns: The ReplaceVpnTunnelResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceVpnTunnel(
            input: ElasticComputeCloudModel.ReplaceVpnTunnelRequest) async throws -> ElasticComputeCloudModel.ReplaceVpnTunnelResult

    /**
     Invokes the ReportInstanceStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    func reportInstanceStatus(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest) async throws

    /**
     Invokes the RequestSpotFleet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotFleet(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest) async throws -> ElasticComputeCloudModel.RequestSpotFleetResponse

    /**
     Invokes the RequestSpotInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotInstances(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest) async throws -> ElasticComputeCloudModel.RequestSpotInstancesResult

    /**
     Invokes the ResetAddressAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: The ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetAddressAttribute(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest) async throws -> ElasticComputeCloudModel.ResetAddressAttributeResult

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: The ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) async throws -> ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult

    /**
     Invokes the ResetFpgaImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetFpgaImageAttribute(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) async throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult

    /**
     Invokes the ResetImageAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    func resetImageAttribute(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest) async throws

    /**
     Invokes the ResetInstanceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    func resetInstanceAttribute(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) async throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func resetNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) async throws

    /**
     Invokes the ResetSnapshotAttribute operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    func resetSnapshotAttribute(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) async throws

    /**
     Invokes the RestoreAddressToClassic operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreAddressToClassic(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) async throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult

    /**
     Invokes the RestoreImageFromRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreImageFromRecycleBinRequest object being passed to this operation.
     - Returns: The RestoreImageFromRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreImageFromRecycleBin(
            input: ElasticComputeCloudModel.RestoreImageFromRecycleBinRequest) async throws -> ElasticComputeCloudModel.RestoreImageFromRecycleBinResult

    /**
     Invokes the RestoreManagedPrefixListVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: The RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreManagedPrefixListVersion(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) async throws -> ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult

    /**
     Invokes the RestoreSnapshotFromRecycleBin operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreSnapshotFromRecycleBinRequest object being passed to this operation.
     - Returns: The RestoreSnapshotFromRecycleBinResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreSnapshotFromRecycleBin(
            input: ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinRequest) async throws -> ElasticComputeCloudModel.RestoreSnapshotFromRecycleBinResult

    /**
     Invokes the RestoreSnapshotTier operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreSnapshotTierRequest object being passed to this operation.
     - Returns: The RestoreSnapshotTierResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreSnapshotTier(
            input: ElasticComputeCloudModel.RestoreSnapshotTierRequest) async throws -> ElasticComputeCloudModel.RestoreSnapshotTierResult

    /**
     Invokes the RevokeClientVpnIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeClientVpnIngress(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) async throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult

    /**
     Invokes the RevokeSecurityGroupEgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupEgress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) async throws -> ElasticComputeCloudModel.RevokeSecurityGroupEgressResult

    /**
     Invokes the RevokeSecurityGroupIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: The RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupIngress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) async throws -> ElasticComputeCloudModel.RevokeSecurityGroupIngressResult

    /**
     Invokes the RunInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runInstances(
            input: ElasticComputeCloudModel.RunInstancesRequest) async throws -> ElasticComputeCloudModel.Reservation

    /**
     Invokes the RunScheduledInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runScheduledInstances(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest) async throws -> ElasticComputeCloudModel.RunScheduledInstancesResult

    /**
     Invokes the SearchLocalGatewayRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutes(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.SearchLocalGatewayRoutesResult

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroups(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) async throws -> ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult

    /**
     Invokes the SearchTransitGatewayRoutes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutes(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) async throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult

    /**
     Invokes the SendDiagnosticInterrupt operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    func sendDiagnosticInterrupt(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) async throws

    /**
     Invokes the StartInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startInstances(
            input: ElasticComputeCloudModel.StartInstancesRequest) async throws -> ElasticComputeCloudModel.StartInstancesResult

    /**
     Invokes the StartNetworkInsightsAccessScopeAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartNetworkInsightsAccessScopeAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAccessScopeAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startNetworkInsightsAccessScopeAnalysis(
            input: ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisRequest) async throws -> ElasticComputeCloudModel.StartNetworkInsightsAccessScopeAnalysisResult

    /**
     Invokes the StartNetworkInsightsAnalysis operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: The StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) async throws -> ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: The StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerification(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) async throws -> ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult

    /**
     Invokes the StopInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func stopInstances(
            input: ElasticComputeCloudModel.StopInstancesRequest) async throws -> ElasticComputeCloudModel.StopInstancesResult

    /**
     Invokes the TerminateClientVpnConnections operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateClientVpnConnections(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) async throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult

    /**
     Invokes the TerminateInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateInstances(
            input: ElasticComputeCloudModel.TerminateInstancesRequest) async throws -> ElasticComputeCloudModel.TerminateInstancesResult

    /**
     Invokes the UnassignIpv6Addresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignIpv6Addresses(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) async throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult

    /**
     Invokes the UnassignPrivateIpAddresses operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    func unassignPrivateIpAddresses(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) async throws

    /**
     Invokes the UnassignPrivateNatGatewayAddress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnassignPrivateNatGatewayAddressRequest object being passed to this operation.
     - Returns: The UnassignPrivateNatGatewayAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignPrivateNatGatewayAddress(
            input: ElasticComputeCloudModel.UnassignPrivateNatGatewayAddressRequest) async throws -> ElasticComputeCloudModel.UnassignPrivateNatGatewayAddressResult

    /**
     Invokes the UnmonitorInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unmonitorInstances(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest) async throws -> ElasticComputeCloudModel.UnmonitorInstancesResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) async throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) async throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult

    /**
     Invokes the WithdrawByoipCidr operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func withdrawByoipCidr(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) async throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
#endif
}
