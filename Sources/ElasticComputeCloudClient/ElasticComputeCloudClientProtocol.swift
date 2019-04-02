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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// ElasticComputeCloudClientProtocol.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeHTTPClient

/**
 Client Protocol for the ElasticComputeCloud service.
 */
public protocol ElasticComputeCloudClientProtocol {
    typealias AcceptReservedInstancesExchangeQuoteSyncType = (_ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult
    typealias AcceptReservedInstancesExchangeQuoteAsyncType = (_ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult>) -> ()) throws -> ()
    typealias AcceptTransitGatewayVpcAttachmentSyncType = (_ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult
    typealias AcceptTransitGatewayVpcAttachmentAsyncType = (_ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult>) -> ()) throws -> ()
    typealias AcceptVpcEndpointConnectionsSyncType = (_ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult
    typealias AcceptVpcEndpointConnectionsAsyncType = (_ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult>) -> ()) throws -> ()
    typealias AcceptVpcPeeringConnectionSyncType = (_ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult
    typealias AcceptVpcPeeringConnectionAsyncType = (_ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult>) -> ()) throws -> ()
    typealias AdvertiseByoipCidrSyncType = (_ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult
    typealias AdvertiseByoipCidrAsyncType = (_ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AdvertiseByoipCidrResult>) -> ()) throws -> ()
    typealias AllocateAddressSyncType = (_ input: ElasticComputeCloudModel.AllocateAddressRequest) throws -> ElasticComputeCloudModel.AllocateAddressResult
    typealias AllocateAddressAsyncType = (_ input: ElasticComputeCloudModel.AllocateAddressRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AllocateAddressResult>) -> ()) throws -> ()
    typealias AllocateHostsSyncType = (_ input: ElasticComputeCloudModel.AllocateHostsRequest) throws -> ElasticComputeCloudModel.AllocateHostsResult
    typealias AllocateHostsAsyncType = (_ input: ElasticComputeCloudModel.AllocateHostsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AllocateHostsResult>) -> ()) throws -> ()
    typealias ApplySecurityGroupsToClientVpnTargetNetworkSyncType = (_ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult
    typealias ApplySecurityGroupsToClientVpnTargetNetworkAsyncType = (_ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult>) -> ()) throws -> ()
    typealias AssignIpv6AddressesSyncType = (_ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult
    typealias AssignIpv6AddressesAsyncType = (_ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssignIpv6AddressesResult>) -> ()) throws -> ()
    typealias AssignPrivateIpAddressesSyncType = (_ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) throws -> ()
    typealias AssignPrivateIpAddressesAsyncType = (_ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AssociateAddressSyncType = (_ input: ElasticComputeCloudModel.AssociateAddressRequest) throws -> ElasticComputeCloudModel.AssociateAddressResult
    typealias AssociateAddressAsyncType = (_ input: ElasticComputeCloudModel.AssociateAddressRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateAddressResult>) -> ()) throws -> ()
    typealias AssociateClientVpnTargetNetworkSyncType = (_ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult
    typealias AssociateClientVpnTargetNetworkAsyncType = (_ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult>) -> ()) throws -> ()
    typealias AssociateDhcpOptionsSyncType = (_ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) throws -> ()
    typealias AssociateDhcpOptionsAsyncType = (_ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AssociateIamInstanceProfileSyncType = (_ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult
    typealias AssociateIamInstanceProfileAsyncType = (_ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateIamInstanceProfileResult>) -> ()) throws -> ()
    typealias AssociateRouteTableSyncType = (_ input: ElasticComputeCloudModel.AssociateRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateRouteTableResult
    typealias AssociateRouteTableAsyncType = (_ input: ElasticComputeCloudModel.AssociateRouteTableRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateRouteTableResult>) -> ()) throws -> ()
    typealias AssociateSubnetCidrBlockSyncType = (_ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult
    typealias AssociateSubnetCidrBlockAsyncType = (_ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult>) -> ()) throws -> ()
    typealias AssociateTransitGatewayRouteTableSyncType = (_ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult
    typealias AssociateTransitGatewayRouteTableAsyncType = (_ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult>) -> ()) throws -> ()
    typealias AssociateVpcCidrBlockSyncType = (_ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult
    typealias AssociateVpcCidrBlockAsyncType = (_ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateVpcCidrBlockResult>) -> ()) throws -> ()
    typealias AttachClassicLinkVpcSyncType = (_ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult
    typealias AttachClassicLinkVpcAsyncType = (_ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachClassicLinkVpcResult>) -> ()) throws -> ()
    typealias AttachInternetGatewaySyncType = (_ input: ElasticComputeCloudModel.AttachInternetGatewayRequest) throws -> ()
    typealias AttachInternetGatewayAsyncType = (_ input: ElasticComputeCloudModel.AttachInternetGatewayRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AttachNetworkInterfaceSyncType = (_ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult
    typealias AttachNetworkInterfaceAsyncType = (_ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachNetworkInterfaceResult>) -> ()) throws -> ()
    typealias AttachVolumeSyncType = (_ input: ElasticComputeCloudModel.AttachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias AttachVolumeAsyncType = (_ input: ElasticComputeCloudModel.AttachVolumeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.VolumeAttachment>) -> ()) throws -> ()
    typealias AttachVpnGatewaySyncType = (_ input: ElasticComputeCloudModel.AttachVpnGatewayRequest) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult
    typealias AttachVpnGatewayAsyncType = (_ input: ElasticComputeCloudModel.AttachVpnGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachVpnGatewayResult>) -> ()) throws -> ()
    typealias AuthorizeClientVpnIngressSyncType = (_ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult
    typealias AuthorizeClientVpnIngressAsyncType = (_ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult>) -> ()) throws -> ()
    typealias AuthorizeSecurityGroupEgressSyncType = (_ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) throws -> ()
    typealias AuthorizeSecurityGroupEgressAsyncType = (_ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias AuthorizeSecurityGroupIngressSyncType = (_ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) throws -> ()
    typealias AuthorizeSecurityGroupIngressAsyncType = (_ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias BundleInstanceSyncType = (_ input: ElasticComputeCloudModel.BundleInstanceRequest) throws -> ElasticComputeCloudModel.BundleInstanceResult
    typealias BundleInstanceAsyncType = (_ input: ElasticComputeCloudModel.BundleInstanceRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.BundleInstanceResult>) -> ()) throws -> ()
    typealias CancelBundleTaskSyncType = (_ input: ElasticComputeCloudModel.CancelBundleTaskRequest) throws -> ElasticComputeCloudModel.CancelBundleTaskResult
    typealias CancelBundleTaskAsyncType = (_ input: ElasticComputeCloudModel.CancelBundleTaskRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelBundleTaskResult>) -> ()) throws -> ()
    typealias CancelCapacityReservationSyncType = (_ input: ElasticComputeCloudModel.CancelCapacityReservationRequest) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult
    typealias CancelCapacityReservationAsyncType = (_ input: ElasticComputeCloudModel.CancelCapacityReservationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelCapacityReservationResult>) -> ()) throws -> ()
    typealias CancelConversionTaskSyncType = (_ input: ElasticComputeCloudModel.CancelConversionRequest) throws -> ()
    typealias CancelConversionTaskAsyncType = (_ input: ElasticComputeCloudModel.CancelConversionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CancelExportTaskSyncType = (_ input: ElasticComputeCloudModel.CancelExportTaskRequest) throws -> ()
    typealias CancelExportTaskAsyncType = (_ input: ElasticComputeCloudModel.CancelExportTaskRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CancelImportTaskSyncType = (_ input: ElasticComputeCloudModel.CancelImportTaskRequest) throws -> ElasticComputeCloudModel.CancelImportTaskResult
    typealias CancelImportTaskAsyncType = (_ input: ElasticComputeCloudModel.CancelImportTaskRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelImportTaskResult>) -> ()) throws -> ()
    typealias CancelReservedInstancesListingSyncType = (_ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult
    typealias CancelReservedInstancesListingAsyncType = (_ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelReservedInstancesListingResult>) -> ()) throws -> ()
    typealias CancelSpotFleetRequestsSyncType = (_ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse
    typealias CancelSpotFleetRequestsAsyncType = (_ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse>) -> ()) throws -> ()
    typealias CancelSpotInstanceRequestsSyncType = (_ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult
    typealias CancelSpotInstanceRequestsAsyncType = (_ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult>) -> ()) throws -> ()
    typealias ConfirmProductInstanceSyncType = (_ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult
    typealias ConfirmProductInstanceAsyncType = (_ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ConfirmProductInstanceResult>) -> ()) throws -> ()
    typealias CopyFpgaImageSyncType = (_ input: ElasticComputeCloudModel.CopyFpgaImageRequest) throws -> ElasticComputeCloudModel.CopyFpgaImageResult
    typealias CopyFpgaImageAsyncType = (_ input: ElasticComputeCloudModel.CopyFpgaImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopyFpgaImageResult>) -> ()) throws -> ()
    typealias CopyImageSyncType = (_ input: ElasticComputeCloudModel.CopyImageRequest) throws -> ElasticComputeCloudModel.CopyImageResult
    typealias CopyImageAsyncType = (_ input: ElasticComputeCloudModel.CopyImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopyImageResult>) -> ()) throws -> ()
    typealias CopySnapshotSyncType = (_ input: ElasticComputeCloudModel.CopySnapshotRequest) throws -> ElasticComputeCloudModel.CopySnapshotResult
    typealias CopySnapshotAsyncType = (_ input: ElasticComputeCloudModel.CopySnapshotRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopySnapshotResult>) -> ()) throws -> ()
    typealias CreateCapacityReservationSyncType = (_ input: ElasticComputeCloudModel.CreateCapacityReservationRequest) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult
    typealias CreateCapacityReservationAsyncType = (_ input: ElasticComputeCloudModel.CreateCapacityReservationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateCapacityReservationResult>) -> ()) throws -> ()
    typealias CreateClientVpnEndpointSyncType = (_ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult
    typealias CreateClientVpnEndpointAsyncType = (_ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateClientVpnEndpointResult>) -> ()) throws -> ()
    typealias CreateClientVpnRouteSyncType = (_ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult
    typealias CreateClientVpnRouteAsyncType = (_ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateClientVpnRouteResult>) -> ()) throws -> ()
    typealias CreateCustomerGatewaySyncType = (_ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult
    typealias CreateCustomerGatewayAsyncType = (_ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateCustomerGatewayResult>) -> ()) throws -> ()
    typealias CreateDefaultSubnetSyncType = (_ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult
    typealias CreateDefaultSubnetAsyncType = (_ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDefaultSubnetResult>) -> ()) throws -> ()
    typealias CreateDefaultVpcSyncType = (_ input: ElasticComputeCloudModel.CreateDefaultVpcRequest) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult
    typealias CreateDefaultVpcAsyncType = (_ input: ElasticComputeCloudModel.CreateDefaultVpcRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDefaultVpcResult>) -> ()) throws -> ()
    typealias CreateDhcpOptionsSyncType = (_ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult
    typealias CreateDhcpOptionsAsyncType = (_ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDhcpOptionsResult>) -> ()) throws -> ()
    typealias CreateEgressOnlyInternetGatewaySyncType = (_ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult
    typealias CreateEgressOnlyInternetGatewayAsyncType = (_ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult>) -> ()) throws -> ()
    typealias CreateFleetSyncType = (_ input: ElasticComputeCloudModel.CreateFleetRequest) throws -> ElasticComputeCloudModel.CreateFleetResult
    typealias CreateFleetAsyncType = (_ input: ElasticComputeCloudModel.CreateFleetRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFleetResult>) -> ()) throws -> ()
    typealias CreateFlowLogsSyncType = (_ input: ElasticComputeCloudModel.CreateFlowLogsRequest) throws -> ElasticComputeCloudModel.CreateFlowLogsResult
    typealias CreateFlowLogsAsyncType = (_ input: ElasticComputeCloudModel.CreateFlowLogsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFlowLogsResult>) -> ()) throws -> ()
    typealias CreateFpgaImageSyncType = (_ input: ElasticComputeCloudModel.CreateFpgaImageRequest) throws -> ElasticComputeCloudModel.CreateFpgaImageResult
    typealias CreateFpgaImageAsyncType = (_ input: ElasticComputeCloudModel.CreateFpgaImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFpgaImageResult>) -> ()) throws -> ()
    typealias CreateImageSyncType = (_ input: ElasticComputeCloudModel.CreateImageRequest) throws -> ElasticComputeCloudModel.CreateImageResult
    typealias CreateImageAsyncType = (_ input: ElasticComputeCloudModel.CreateImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateImageResult>) -> ()) throws -> ()
    typealias CreateInstanceExportTaskSyncType = (_ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult
    typealias CreateInstanceExportTaskAsyncType = (_ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateInstanceExportTaskResult>) -> ()) throws -> ()
    typealias CreateInternetGatewaySyncType = (_ input: ElasticComputeCloudModel.CreateInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult
    typealias CreateInternetGatewayAsyncType = (_ input: ElasticComputeCloudModel.CreateInternetGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateInternetGatewayResult>) -> ()) throws -> ()
    typealias CreateKeyPairSyncType = (_ input: ElasticComputeCloudModel.CreateKeyPairRequest) throws -> ElasticComputeCloudModel.KeyPair
    typealias CreateKeyPairAsyncType = (_ input: ElasticComputeCloudModel.CreateKeyPairRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.KeyPair>) -> ()) throws -> ()
    typealias CreateLaunchTemplateSyncType = (_ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult
    typealias CreateLaunchTemplateAsyncType = (_ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateLaunchTemplateResult>) -> ()) throws -> ()
    typealias CreateLaunchTemplateVersionSyncType = (_ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult
    typealias CreateLaunchTemplateVersionAsyncType = (_ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult>) -> ()) throws -> ()
    typealias CreateNatGatewaySyncType = (_ input: ElasticComputeCloudModel.CreateNatGatewayRequest) throws -> ElasticComputeCloudModel.CreateNatGatewayResult
    typealias CreateNatGatewayAsyncType = (_ input: ElasticComputeCloudModel.CreateNatGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNatGatewayResult>) -> ()) throws -> ()
    typealias CreateNetworkAclSyncType = (_ input: ElasticComputeCloudModel.CreateNetworkAclRequest) throws -> ElasticComputeCloudModel.CreateNetworkAclResult
    typealias CreateNetworkAclAsyncType = (_ input: ElasticComputeCloudModel.CreateNetworkAclRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkAclResult>) -> ()) throws -> ()
    typealias CreateNetworkAclEntrySyncType = (_ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) throws -> ()
    typealias CreateNetworkAclEntryAsyncType = (_ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateNetworkInterfaceSyncType = (_ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult
    typealias CreateNetworkInterfaceAsyncType = (_ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkInterfaceResult>) -> ()) throws -> ()
    typealias CreateNetworkInterfacePermissionSyncType = (_ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult
    typealias CreateNetworkInterfacePermissionAsyncType = (_ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult>) -> ()) throws -> ()
    typealias CreatePlacementGroupSyncType = (_ input: ElasticComputeCloudModel.CreatePlacementGroupRequest) throws -> ()
    typealias CreatePlacementGroupAsyncType = (_ input: ElasticComputeCloudModel.CreatePlacementGroupRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateReservedInstancesListingSyncType = (_ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult
    typealias CreateReservedInstancesListingAsyncType = (_ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateReservedInstancesListingResult>) -> ()) throws -> ()
    typealias CreateRouteSyncType = (_ input: ElasticComputeCloudModel.CreateRouteRequest) throws -> ElasticComputeCloudModel.CreateRouteResult
    typealias CreateRouteAsyncType = (_ input: ElasticComputeCloudModel.CreateRouteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateRouteResult>) -> ()) throws -> ()
    typealias CreateRouteTableSyncType = (_ input: ElasticComputeCloudModel.CreateRouteTableRequest) throws -> ElasticComputeCloudModel.CreateRouteTableResult
    typealias CreateRouteTableAsyncType = (_ input: ElasticComputeCloudModel.CreateRouteTableRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateRouteTableResult>) -> ()) throws -> ()
    typealias CreateSecurityGroupSyncType = (_ input: ElasticComputeCloudModel.CreateSecurityGroupRequest) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult
    typealias CreateSecurityGroupAsyncType = (_ input: ElasticComputeCloudModel.CreateSecurityGroupRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSecurityGroupResult>) -> ()) throws -> ()
    typealias CreateSnapshotSyncType = (_ input: ElasticComputeCloudModel.CreateSnapshotRequest) throws -> ElasticComputeCloudModel.Snapshot
    typealias CreateSnapshotAsyncType = (_ input: ElasticComputeCloudModel.CreateSnapshotRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.Snapshot>) -> ()) throws -> ()
    typealias CreateSpotDatafeedSubscriptionSyncType = (_ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult
    typealias CreateSpotDatafeedSubscriptionAsyncType = (_ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult>) -> ()) throws -> ()
    typealias CreateSubnetSyncType = (_ input: ElasticComputeCloudModel.CreateSubnetRequest) throws -> ElasticComputeCloudModel.CreateSubnetResult
    typealias CreateSubnetAsyncType = (_ input: ElasticComputeCloudModel.CreateSubnetRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSubnetResult>) -> ()) throws -> ()
    typealias CreateTagsSyncType = (_ input: ElasticComputeCloudModel.CreateTagsRequest) throws -> ()
    typealias CreateTagsAsyncType = (_ input: ElasticComputeCloudModel.CreateTagsRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateTransitGatewaySyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult
    typealias CreateTransitGatewayAsyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayResult>) -> ()) throws -> ()
    typealias CreateTransitGatewayRouteSyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult
    typealias CreateTransitGatewayRouteAsyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayRouteResult>) -> ()) throws -> ()
    typealias CreateTransitGatewayRouteTableSyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult
    typealias CreateTransitGatewayRouteTableAsyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult>) -> ()) throws -> ()
    typealias CreateTransitGatewayVpcAttachmentSyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult
    typealias CreateTransitGatewayVpcAttachmentAsyncType = (_ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult>) -> ()) throws -> ()
    typealias CreateVolumeSyncType = (_ input: ElasticComputeCloudModel.CreateVolumeRequest) throws -> ElasticComputeCloudModel.Volume
    typealias CreateVolumeAsyncType = (_ input: ElasticComputeCloudModel.CreateVolumeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.Volume>) -> ()) throws -> ()
    typealias CreateVpcSyncType = (_ input: ElasticComputeCloudModel.CreateVpcRequest) throws -> ElasticComputeCloudModel.CreateVpcResult
    typealias CreateVpcAsyncType = (_ input: ElasticComputeCloudModel.CreateVpcRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcResult>) -> ()) throws -> ()
    typealias CreateVpcEndpointSyncType = (_ input: ElasticComputeCloudModel.CreateVpcEndpointRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult
    typealias CreateVpcEndpointAsyncType = (_ input: ElasticComputeCloudModel.CreateVpcEndpointRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointResult>) -> ()) throws -> ()
    typealias CreateVpcEndpointConnectionNotificationSyncType = (_ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult
    typealias CreateVpcEndpointConnectionNotificationAsyncType = (_ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult>) -> ()) throws -> ()
    typealias CreateVpcEndpointServiceConfigurationSyncType = (_ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult
    typealias CreateVpcEndpointServiceConfigurationAsyncType = (_ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult>) -> ()) throws -> ()
    typealias CreateVpcPeeringConnectionSyncType = (_ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult
    typealias CreateVpcPeeringConnectionAsyncType = (_ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult>) -> ()) throws -> ()
    typealias CreateVpnConnectionSyncType = (_ input: ElasticComputeCloudModel.CreateVpnConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult
    typealias CreateVpnConnectionAsyncType = (_ input: ElasticComputeCloudModel.CreateVpnConnectionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpnConnectionResult>) -> ()) throws -> ()
    typealias CreateVpnConnectionRouteSyncType = (_ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) throws -> ()
    typealias CreateVpnConnectionRouteAsyncType = (_ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias CreateVpnGatewaySyncType = (_ input: ElasticComputeCloudModel.CreateVpnGatewayRequest) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult
    typealias CreateVpnGatewayAsyncType = (_ input: ElasticComputeCloudModel.CreateVpnGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpnGatewayResult>) -> ()) throws -> ()
    typealias DeleteClientVpnEndpointSyncType = (_ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult
    typealias DeleteClientVpnEndpointAsyncType = (_ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteClientVpnEndpointResult>) -> ()) throws -> ()
    typealias DeleteClientVpnRouteSyncType = (_ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult
    typealias DeleteClientVpnRouteAsyncType = (_ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteClientVpnRouteResult>) -> ()) throws -> ()
    typealias DeleteCustomerGatewaySyncType = (_ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) throws -> ()
    typealias DeleteCustomerGatewayAsyncType = (_ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteDhcpOptionsSyncType = (_ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) throws -> ()
    typealias DeleteDhcpOptionsAsyncType = (_ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteEgressOnlyInternetGatewaySyncType = (_ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult
    typealias DeleteEgressOnlyInternetGatewayAsyncType = (_ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult>) -> ()) throws -> ()
    typealias DeleteFleetsSyncType = (_ input: ElasticComputeCloudModel.DeleteFleetsRequest) throws -> ElasticComputeCloudModel.DeleteFleetsResult
    typealias DeleteFleetsAsyncType = (_ input: ElasticComputeCloudModel.DeleteFleetsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFleetsResult>) -> ()) throws -> ()
    typealias DeleteFlowLogsSyncType = (_ input: ElasticComputeCloudModel.DeleteFlowLogsRequest) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult
    typealias DeleteFlowLogsAsyncType = (_ input: ElasticComputeCloudModel.DeleteFlowLogsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFlowLogsResult>) -> ()) throws -> ()
    typealias DeleteFpgaImageSyncType = (_ input: ElasticComputeCloudModel.DeleteFpgaImageRequest) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult
    typealias DeleteFpgaImageAsyncType = (_ input: ElasticComputeCloudModel.DeleteFpgaImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFpgaImageResult>) -> ()) throws -> ()
    typealias DeleteInternetGatewaySyncType = (_ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) throws -> ()
    typealias DeleteInternetGatewayAsyncType = (_ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteKeyPairSyncType = (_ input: ElasticComputeCloudModel.DeleteKeyPairRequest) throws -> ()
    typealias DeleteKeyPairAsyncType = (_ input: ElasticComputeCloudModel.DeleteKeyPairRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteLaunchTemplateSyncType = (_ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult
    typealias DeleteLaunchTemplateAsyncType = (_ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteLaunchTemplateResult>) -> ()) throws -> ()
    typealias DeleteLaunchTemplateVersionsSyncType = (_ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult
    typealias DeleteLaunchTemplateVersionsAsyncType = (_ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult>) -> ()) throws -> ()
    typealias DeleteNatGatewaySyncType = (_ input: ElasticComputeCloudModel.DeleteNatGatewayRequest) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult
    typealias DeleteNatGatewayAsyncType = (_ input: ElasticComputeCloudModel.DeleteNatGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteNatGatewayResult>) -> ()) throws -> ()
    typealias DeleteNetworkAclSyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkAclRequest) throws -> ()
    typealias DeleteNetworkAclAsyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkAclRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteNetworkAclEntrySyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) throws -> ()
    typealias DeleteNetworkAclEntryAsyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteNetworkInterfaceSyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) throws -> ()
    typealias DeleteNetworkInterfaceAsyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteNetworkInterfacePermissionSyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult
    typealias DeleteNetworkInterfacePermissionAsyncType = (_ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult>) -> ()) throws -> ()
    typealias DeletePlacementGroupSyncType = (_ input: ElasticComputeCloudModel.DeletePlacementGroupRequest) throws -> ()
    typealias DeletePlacementGroupAsyncType = (_ input: ElasticComputeCloudModel.DeletePlacementGroupRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteRouteSyncType = (_ input: ElasticComputeCloudModel.DeleteRouteRequest) throws -> ()
    typealias DeleteRouteAsyncType = (_ input: ElasticComputeCloudModel.DeleteRouteRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteRouteTableSyncType = (_ input: ElasticComputeCloudModel.DeleteRouteTableRequest) throws -> ()
    typealias DeleteRouteTableAsyncType = (_ input: ElasticComputeCloudModel.DeleteRouteTableRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSecurityGroupSyncType = (_ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) throws -> ()
    typealias DeleteSecurityGroupAsyncType = (_ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSnapshotSyncType = (_ input: ElasticComputeCloudModel.DeleteSnapshotRequest) throws -> ()
    typealias DeleteSnapshotAsyncType = (_ input: ElasticComputeCloudModel.DeleteSnapshotRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSpotDatafeedSubscriptionSyncType = (_ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) throws -> ()
    typealias DeleteSpotDatafeedSubscriptionAsyncType = (_ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteSubnetSyncType = (_ input: ElasticComputeCloudModel.DeleteSubnetRequest) throws -> ()
    typealias DeleteSubnetAsyncType = (_ input: ElasticComputeCloudModel.DeleteSubnetRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTagsSyncType = (_ input: ElasticComputeCloudModel.DeleteTagsRequest) throws -> ()
    typealias DeleteTagsAsyncType = (_ input: ElasticComputeCloudModel.DeleteTagsRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteTransitGatewaySyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult
    typealias DeleteTransitGatewayAsyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayResult>) -> ()) throws -> ()
    typealias DeleteTransitGatewayRouteSyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult
    typealias DeleteTransitGatewayRouteAsyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult>) -> ()) throws -> ()
    typealias DeleteTransitGatewayRouteTableSyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult
    typealias DeleteTransitGatewayRouteTableAsyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult>) -> ()) throws -> ()
    typealias DeleteTransitGatewayVpcAttachmentSyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult
    typealias DeleteTransitGatewayVpcAttachmentAsyncType = (_ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult>) -> ()) throws -> ()
    typealias DeleteVolumeSyncType = (_ input: ElasticComputeCloudModel.DeleteVolumeRequest) throws -> ()
    typealias DeleteVolumeAsyncType = (_ input: ElasticComputeCloudModel.DeleteVolumeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpcSyncType = (_ input: ElasticComputeCloudModel.DeleteVpcRequest) throws -> ()
    typealias DeleteVpcAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpcRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpcEndpointConnectionNotificationsSyncType = (_ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult
    typealias DeleteVpcEndpointConnectionNotificationsAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult>) -> ()) throws -> ()
    typealias DeleteVpcEndpointServiceConfigurationsSyncType = (_ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult
    typealias DeleteVpcEndpointServiceConfigurationsAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult>) -> ()) throws -> ()
    typealias DeleteVpcEndpointsSyncType = (_ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult
    typealias DeleteVpcEndpointsAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointsResult>) -> ()) throws -> ()
    typealias DeleteVpcPeeringConnectionSyncType = (_ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult
    typealias DeleteVpcPeeringConnectionAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult>) -> ()) throws -> ()
    typealias DeleteVpnConnectionSyncType = (_ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) throws -> ()
    typealias DeleteVpnConnectionAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpnConnectionRouteSyncType = (_ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) throws -> ()
    typealias DeleteVpnConnectionRouteAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteVpnGatewaySyncType = (_ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) throws -> ()
    typealias DeleteVpnGatewayAsyncType = (_ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeprovisionByoipCidrSyncType = (_ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult
    typealias DeprovisionByoipCidrAsyncType = (_ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeprovisionByoipCidrResult>) -> ()) throws -> ()
    typealias DeregisterImageSyncType = (_ input: ElasticComputeCloudModel.DeregisterImageRequest) throws -> ()
    typealias DeregisterImageAsyncType = (_ input: ElasticComputeCloudModel.DeregisterImageRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DescribeAccountAttributesSyncType = (_ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult
    typealias DescribeAccountAttributesAsyncType = (_ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAccountAttributesResult>) -> ()) throws -> ()
    typealias DescribeAddressesSyncType = (_ input: ElasticComputeCloudModel.DescribeAddressesRequest) throws -> ElasticComputeCloudModel.DescribeAddressesResult
    typealias DescribeAddressesAsyncType = (_ input: ElasticComputeCloudModel.DescribeAddressesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAddressesResult>) -> ()) throws -> ()
    typealias DescribeAggregateIdFormatSyncType = (_ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult
    typealias DescribeAggregateIdFormatAsyncType = (_ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAggregateIdFormatResult>) -> ()) throws -> ()
    typealias DescribeAvailabilityZonesSyncType = (_ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult
    typealias DescribeAvailabilityZonesAsyncType = (_ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAvailabilityZonesResult>) -> ()) throws -> ()
    typealias DescribeBundleTasksSyncType = (_ input: ElasticComputeCloudModel.DescribeBundleTasksRequest) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult
    typealias DescribeBundleTasksAsyncType = (_ input: ElasticComputeCloudModel.DescribeBundleTasksRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeBundleTasksResult>) -> ()) throws -> ()
    typealias DescribeByoipCidrsSyncType = (_ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult
    typealias DescribeByoipCidrsAsyncType = (_ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeByoipCidrsResult>) -> ()) throws -> ()
    typealias DescribeCapacityReservationsSyncType = (_ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult
    typealias DescribeCapacityReservationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeCapacityReservationsResult>) -> ()) throws -> ()
    typealias DescribeClassicLinkInstancesSyncType = (_ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult
    typealias DescribeClassicLinkInstancesAsyncType = (_ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult>) -> ()) throws -> ()
    typealias DescribeClientVpnAuthorizationRulesSyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult
    typealias DescribeClientVpnAuthorizationRulesAsyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult>) -> ()) throws -> ()
    typealias DescribeClientVpnConnectionsSyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult
    typealias DescribeClientVpnConnectionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult>) -> ()) throws -> ()
    typealias DescribeClientVpnEndpointsSyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult
    typealias DescribeClientVpnEndpointsAsyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult>) -> ()) throws -> ()
    typealias DescribeClientVpnRoutesSyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult
    typealias DescribeClientVpnRoutesAsyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnRoutesResult>) -> ()) throws -> ()
    typealias DescribeClientVpnTargetNetworksSyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult
    typealias DescribeClientVpnTargetNetworksAsyncType = (_ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult>) -> ()) throws -> ()
    typealias DescribeConversionTasksSyncType = (_ input: ElasticComputeCloudModel.DescribeConversionTasksRequest) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult
    typealias DescribeConversionTasksAsyncType = (_ input: ElasticComputeCloudModel.DescribeConversionTasksRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeConversionTasksResult>) -> ()) throws -> ()
    typealias DescribeCustomerGatewaysSyncType = (_ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult
    typealias DescribeCustomerGatewaysAsyncType = (_ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeCustomerGatewaysResult>) -> ()) throws -> ()
    typealias DescribeDhcpOptionsSyncType = (_ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult
    typealias DescribeDhcpOptionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeDhcpOptionsResult>) -> ()) throws -> ()
    typealias DescribeEgressOnlyInternetGatewaysSyncType = (_ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult
    typealias DescribeEgressOnlyInternetGatewaysAsyncType = (_ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult>) -> ()) throws -> ()
    typealias DescribeElasticGpusSyncType = (_ input: ElasticComputeCloudModel.DescribeElasticGpusRequest) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult
    typealias DescribeElasticGpusAsyncType = (_ input: ElasticComputeCloudModel.DescribeElasticGpusRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeElasticGpusResult>) -> ()) throws -> ()
    typealias DescribeExportTasksSyncType = (_ input: ElasticComputeCloudModel.DescribeExportTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportTasksResult
    typealias DescribeExportTasksAsyncType = (_ input: ElasticComputeCloudModel.DescribeExportTasksRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeExportTasksResult>) -> ()) throws -> ()
    typealias DescribeFleetHistorySyncType = (_ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult
    typealias DescribeFleetHistoryAsyncType = (_ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetHistoryResult>) -> ()) throws -> ()
    typealias DescribeFleetInstancesSyncType = (_ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult
    typealias DescribeFleetInstancesAsyncType = (_ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetInstancesResult>) -> ()) throws -> ()
    typealias DescribeFleetsSyncType = (_ input: ElasticComputeCloudModel.DescribeFleetsRequest) throws -> ElasticComputeCloudModel.DescribeFleetsResult
    typealias DescribeFleetsAsyncType = (_ input: ElasticComputeCloudModel.DescribeFleetsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetsResult>) -> ()) throws -> ()
    typealias DescribeFlowLogsSyncType = (_ input: ElasticComputeCloudModel.DescribeFlowLogsRequest) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult
    typealias DescribeFlowLogsAsyncType = (_ input: ElasticComputeCloudModel.DescribeFlowLogsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFlowLogsResult>) -> ()) throws -> ()
    typealias DescribeFpgaImageAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult
    typealias DescribeFpgaImageAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult>) -> ()) throws -> ()
    typealias DescribeFpgaImagesSyncType = (_ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult
    typealias DescribeFpgaImagesAsyncType = (_ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFpgaImagesResult>) -> ()) throws -> ()
    typealias DescribeHostReservationOfferingsSyncType = (_ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult
    typealias DescribeHostReservationOfferingsAsyncType = (_ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult>) -> ()) throws -> ()
    typealias DescribeHostReservationsSyncType = (_ input: ElasticComputeCloudModel.DescribeHostReservationsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult
    typealias DescribeHostReservationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeHostReservationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostReservationsResult>) -> ()) throws -> ()
    typealias DescribeHostsSyncType = (_ input: ElasticComputeCloudModel.DescribeHostsRequest) throws -> ElasticComputeCloudModel.DescribeHostsResult
    typealias DescribeHostsAsyncType = (_ input: ElasticComputeCloudModel.DescribeHostsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostsResult>) -> ()) throws -> ()
    typealias DescribeIamInstanceProfileAssociationsSyncType = (_ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult
    typealias DescribeIamInstanceProfileAssociationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult>) -> ()) throws -> ()
    typealias DescribeIdFormatSyncType = (_ input: ElasticComputeCloudModel.DescribeIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdFormatResult
    typealias DescribeIdFormatAsyncType = (_ input: ElasticComputeCloudModel.DescribeIdFormatRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIdFormatResult>) -> ()) throws -> ()
    typealias DescribeIdentityIdFormatSyncType = (_ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult
    typealias DescribeIdentityIdFormatAsyncType = (_ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIdentityIdFormatResult>) -> ()) throws -> ()
    typealias DescribeImageAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeImageAttributeRequest) throws -> ElasticComputeCloudModel.ImageAttribute
    typealias DescribeImageAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeImageAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImageAttribute>) -> ()) throws -> ()
    typealias DescribeImagesSyncType = (_ input: ElasticComputeCloudModel.DescribeImagesRequest) throws -> ElasticComputeCloudModel.DescribeImagesResult
    typealias DescribeImagesAsyncType = (_ input: ElasticComputeCloudModel.DescribeImagesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImagesResult>) -> ()) throws -> ()
    typealias DescribeImportImageTasksSyncType = (_ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult
    typealias DescribeImportImageTasksAsyncType = (_ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImportImageTasksResult>) -> ()) throws -> ()
    typealias DescribeImportSnapshotTasksSyncType = (_ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult
    typealias DescribeImportSnapshotTasksAsyncType = (_ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult>) -> ()) throws -> ()
    typealias DescribeInstanceAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) throws -> ElasticComputeCloudModel.InstanceAttribute
    typealias DescribeInstanceAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.InstanceAttribute>) -> ()) throws -> ()
    typealias DescribeInstanceCreditSpecificationsSyncType = (_ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult
    typealias DescribeInstanceCreditSpecificationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult>) -> ()) throws -> ()
    typealias DescribeInstanceStatusSyncType = (_ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult
    typealias DescribeInstanceStatusAsyncType = (_ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstanceStatusResult>) -> ()) throws -> ()
    typealias DescribeInstancesSyncType = (_ input: ElasticComputeCloudModel.DescribeInstancesRequest) throws -> ElasticComputeCloudModel.DescribeInstancesResult
    typealias DescribeInstancesAsyncType = (_ input: ElasticComputeCloudModel.DescribeInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstancesResult>) -> ()) throws -> ()
    typealias DescribeInternetGatewaysSyncType = (_ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult
    typealias DescribeInternetGatewaysAsyncType = (_ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInternetGatewaysResult>) -> ()) throws -> ()
    typealias DescribeKeyPairsSyncType = (_ input: ElasticComputeCloudModel.DescribeKeyPairsRequest) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult
    typealias DescribeKeyPairsAsyncType = (_ input: ElasticComputeCloudModel.DescribeKeyPairsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeKeyPairsResult>) -> ()) throws -> ()
    typealias DescribeLaunchTemplateVersionsSyncType = (_ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult
    typealias DescribeLaunchTemplateVersionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult>) -> ()) throws -> ()
    typealias DescribeLaunchTemplatesSyncType = (_ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult
    typealias DescribeLaunchTemplatesAsyncType = (_ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeLaunchTemplatesResult>) -> ()) throws -> ()
    typealias DescribeMovingAddressesSyncType = (_ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult
    typealias DescribeMovingAddressesAsyncType = (_ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeMovingAddressesResult>) -> ()) throws -> ()
    typealias DescribeNatGatewaysSyncType = (_ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult
    typealias DescribeNatGatewaysAsyncType = (_ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNatGatewaysResult>) -> ()) throws -> ()
    typealias DescribeNetworkAclsSyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult
    typealias DescribeNetworkAclsAsyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkAclsResult>) -> ()) throws -> ()
    typealias DescribeNetworkInterfaceAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult
    typealias DescribeNetworkInterfaceAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult>) -> ()) throws -> ()
    typealias DescribeNetworkInterfacePermissionsSyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult
    typealias DescribeNetworkInterfacePermissionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult>) -> ()) throws -> ()
    typealias DescribeNetworkInterfacesSyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult
    typealias DescribeNetworkInterfacesAsyncType = (_ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfacesResult>) -> ()) throws -> ()
    typealias DescribePlacementGroupsSyncType = (_ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult
    typealias DescribePlacementGroupsAsyncType = (_ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePlacementGroupsResult>) -> ()) throws -> ()
    typealias DescribePrefixListsSyncType = (_ input: ElasticComputeCloudModel.DescribePrefixListsRequest) throws -> ElasticComputeCloudModel.DescribePrefixListsResult
    typealias DescribePrefixListsAsyncType = (_ input: ElasticComputeCloudModel.DescribePrefixListsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePrefixListsResult>) -> ()) throws -> ()
    typealias DescribePrincipalIdFormatSyncType = (_ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult
    typealias DescribePrincipalIdFormatAsyncType = (_ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePrincipalIdFormatResult>) -> ()) throws -> ()
    typealias DescribePublicIpv4PoolsSyncType = (_ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult
    typealias DescribePublicIpv4PoolsAsyncType = (_ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult>) -> ()) throws -> ()
    typealias DescribeRegionsSyncType = (_ input: ElasticComputeCloudModel.DescribeRegionsRequest) throws -> ElasticComputeCloudModel.DescribeRegionsResult
    typealias DescribeRegionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeRegionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeRegionsResult>) -> ()) throws -> ()
    typealias DescribeReservedInstancesSyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult
    typealias DescribeReservedInstancesAsyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesResult>) -> ()) throws -> ()
    typealias DescribeReservedInstancesListingsSyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult
    typealias DescribeReservedInstancesListingsAsyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult>) -> ()) throws -> ()
    typealias DescribeReservedInstancesModificationsSyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult
    typealias DescribeReservedInstancesModificationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult>) -> ()) throws -> ()
    typealias DescribeReservedInstancesOfferingsSyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult
    typealias DescribeReservedInstancesOfferingsAsyncType = (_ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult>) -> ()) throws -> ()
    typealias DescribeRouteTablesSyncType = (_ input: ElasticComputeCloudModel.DescribeRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult
    typealias DescribeRouteTablesAsyncType = (_ input: ElasticComputeCloudModel.DescribeRouteTablesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeRouteTablesResult>) -> ()) throws -> ()
    typealias DescribeScheduledInstanceAvailabilitySyncType = (_ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult
    typealias DescribeScheduledInstanceAvailabilityAsyncType = (_ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult>) -> ()) throws -> ()
    typealias DescribeScheduledInstancesSyncType = (_ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult
    typealias DescribeScheduledInstancesAsyncType = (_ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeScheduledInstancesResult>) -> ()) throws -> ()
    typealias DescribeSecurityGroupReferencesSyncType = (_ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult
    typealias DescribeSecurityGroupReferencesAsyncType = (_ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult>) -> ()) throws -> ()
    typealias DescribeSecurityGroupsSyncType = (_ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult
    typealias DescribeSecurityGroupsAsyncType = (_ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSecurityGroupsResult>) -> ()) throws -> ()
    typealias DescribeSnapshotAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult
    typealias DescribeSnapshotAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSnapshotAttributeResult>) -> ()) throws -> ()
    typealias DescribeSnapshotsSyncType = (_ input: ElasticComputeCloudModel.DescribeSnapshotsRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult
    typealias DescribeSnapshotsAsyncType = (_ input: ElasticComputeCloudModel.DescribeSnapshotsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSnapshotsResult>) -> ()) throws -> ()
    typealias DescribeSpotDatafeedSubscriptionSyncType = (_ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult
    typealias DescribeSpotDatafeedSubscriptionAsyncType = (_ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult>) -> ()) throws -> ()
    typealias DescribeSpotFleetInstancesSyncType = (_ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse
    typealias DescribeSpotFleetInstancesAsyncType = (_ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse>) -> ()) throws -> ()
    typealias DescribeSpotFleetRequestHistorySyncType = (_ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse
    typealias DescribeSpotFleetRequestHistoryAsyncType = (_ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse>) -> ()) throws -> ()
    typealias DescribeSpotFleetRequestsSyncType = (_ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse
    typealias DescribeSpotFleetRequestsAsyncType = (_ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse>) -> ()) throws -> ()
    typealias DescribeSpotInstanceRequestsSyncType = (_ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult
    typealias DescribeSpotInstanceRequestsAsyncType = (_ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult>) -> ()) throws -> ()
    typealias DescribeSpotPriceHistorySyncType = (_ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult
    typealias DescribeSpotPriceHistoryAsyncType = (_ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult>) -> ()) throws -> ()
    typealias DescribeStaleSecurityGroupsSyncType = (_ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult
    typealias DescribeStaleSecurityGroupsAsyncType = (_ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult>) -> ()) throws -> ()
    typealias DescribeSubnetsSyncType = (_ input: ElasticComputeCloudModel.DescribeSubnetsRequest) throws -> ElasticComputeCloudModel.DescribeSubnetsResult
    typealias DescribeSubnetsAsyncType = (_ input: ElasticComputeCloudModel.DescribeSubnetsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSubnetsResult>) -> ()) throws -> ()
    typealias DescribeTagsSyncType = (_ input: ElasticComputeCloudModel.DescribeTagsRequest) throws -> ElasticComputeCloudModel.DescribeTagsResult
    typealias DescribeTagsAsyncType = (_ input: ElasticComputeCloudModel.DescribeTagsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTagsResult>) -> ()) throws -> ()
    typealias DescribeTransitGatewayAttachmentsSyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult
    typealias DescribeTransitGatewayAttachmentsAsyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult>) -> ()) throws -> ()
    typealias DescribeTransitGatewayRouteTablesSyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult
    typealias DescribeTransitGatewayRouteTablesAsyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult>) -> ()) throws -> ()
    typealias DescribeTransitGatewayVpcAttachmentsSyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult
    typealias DescribeTransitGatewayVpcAttachmentsAsyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult>) -> ()) throws -> ()
    typealias DescribeTransitGatewaysSyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult
    typealias DescribeTransitGatewaysAsyncType = (_ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewaysResult>) -> ()) throws -> ()
    typealias DescribeVolumeAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult
    typealias DescribeVolumeAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumeAttributeResult>) -> ()) throws -> ()
    typealias DescribeVolumeStatusSyncType = (_ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult
    typealias DescribeVolumeStatusAsyncType = (_ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumeStatusResult>) -> ()) throws -> ()
    typealias DescribeVolumesSyncType = (_ input: ElasticComputeCloudModel.DescribeVolumesRequest) throws -> ElasticComputeCloudModel.DescribeVolumesResult
    typealias DescribeVolumesAsyncType = (_ input: ElasticComputeCloudModel.DescribeVolumesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumesResult>) -> ()) throws -> ()
    typealias DescribeVolumesModificationsSyncType = (_ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult
    typealias DescribeVolumesModificationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumesModificationsResult>) -> ()) throws -> ()
    typealias DescribeVpcAttributeSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult
    typealias DescribeVpcAttributeAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcAttributeResult>) -> ()) throws -> ()
    typealias DescribeVpcClassicLinkSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult
    typealias DescribeVpcClassicLinkAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcClassicLinkResult>) -> ()) throws -> ()
    typealias DescribeVpcClassicLinkDnsSupportSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult
    typealias DescribeVpcClassicLinkDnsSupportAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult>) -> ()) throws -> ()
    typealias DescribeVpcEndpointConnectionNotificationsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult
    typealias DescribeVpcEndpointConnectionNotificationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult>) -> ()) throws -> ()
    typealias DescribeVpcEndpointConnectionsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult
    typealias DescribeVpcEndpointConnectionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServiceConfigurationsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult
    typealias DescribeVpcEndpointServiceConfigurationsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServicePermissionsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult
    typealias DescribeVpcEndpointServicePermissionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult>) -> ()) throws -> ()
    typealias DescribeVpcEndpointServicesSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult
    typealias DescribeVpcEndpointServicesAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult>) -> ()) throws -> ()
    typealias DescribeVpcEndpointsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult
    typealias DescribeVpcEndpointsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointsResult>) -> ()) throws -> ()
    typealias DescribeVpcPeeringConnectionsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult
    typealias DescribeVpcPeeringConnectionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult>) -> ()) throws -> ()
    typealias DescribeVpcsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpcsRequest) throws -> ElasticComputeCloudModel.DescribeVpcsResult
    typealias DescribeVpcsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpcsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcsResult>) -> ()) throws -> ()
    typealias DescribeVpnConnectionsSyncType = (_ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult
    typealias DescribeVpnConnectionsAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpnConnectionsResult>) -> ()) throws -> ()
    typealias DescribeVpnGatewaysSyncType = (_ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult
    typealias DescribeVpnGatewaysAsyncType = (_ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpnGatewaysResult>) -> ()) throws -> ()
    typealias DetachClassicLinkVpcSyncType = (_ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult
    typealias DetachClassicLinkVpcAsyncType = (_ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DetachClassicLinkVpcResult>) -> ()) throws -> ()
    typealias DetachInternetGatewaySyncType = (_ input: ElasticComputeCloudModel.DetachInternetGatewayRequest) throws -> ()
    typealias DetachInternetGatewayAsyncType = (_ input: ElasticComputeCloudModel.DetachInternetGatewayRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DetachNetworkInterfaceSyncType = (_ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) throws -> ()
    typealias DetachNetworkInterfaceAsyncType = (_ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DetachVolumeSyncType = (_ input: ElasticComputeCloudModel.DetachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment
    typealias DetachVolumeAsyncType = (_ input: ElasticComputeCloudModel.DetachVolumeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.VolumeAttachment>) -> ()) throws -> ()
    typealias DetachVpnGatewaySyncType = (_ input: ElasticComputeCloudModel.DetachVpnGatewayRequest) throws -> ()
    typealias DetachVpnGatewayAsyncType = (_ input: ElasticComputeCloudModel.DetachVpnGatewayRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisableTransitGatewayRouteTablePropagationSyncType = (_ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult
    typealias DisableTransitGatewayRouteTablePropagationAsyncType = (_ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult>) -> ()) throws -> ()
    typealias DisableVgwRoutePropagationSyncType = (_ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) throws -> ()
    typealias DisableVgwRoutePropagationAsyncType = (_ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisableVpcClassicLinkSyncType = (_ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult
    typealias DisableVpcClassicLinkAsyncType = (_ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableVpcClassicLinkResult>) -> ()) throws -> ()
    typealias DisableVpcClassicLinkDnsSupportSyncType = (_ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult
    typealias DisableVpcClassicLinkDnsSupportAsyncType = (_ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult>) -> ()) throws -> ()
    typealias DisassociateAddressSyncType = (_ input: ElasticComputeCloudModel.DisassociateAddressRequest) throws -> ()
    typealias DisassociateAddressAsyncType = (_ input: ElasticComputeCloudModel.DisassociateAddressRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisassociateClientVpnTargetNetworkSyncType = (_ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult
    typealias DisassociateClientVpnTargetNetworkAsyncType = (_ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult>) -> ()) throws -> ()
    typealias DisassociateIamInstanceProfileSyncType = (_ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult
    typealias DisassociateIamInstanceProfileAsyncType = (_ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult>) -> ()) throws -> ()
    typealias DisassociateRouteTableSyncType = (_ input: ElasticComputeCloudModel.DisassociateRouteTableRequest) throws -> ()
    typealias DisassociateRouteTableAsyncType = (_ input: ElasticComputeCloudModel.DisassociateRouteTableRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DisassociateSubnetCidrBlockSyncType = (_ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult
    typealias DisassociateSubnetCidrBlockAsyncType = (_ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult>) -> ()) throws -> ()
    typealias DisassociateTransitGatewayRouteTableSyncType = (_ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult
    typealias DisassociateTransitGatewayRouteTableAsyncType = (_ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult>) -> ()) throws -> ()
    typealias DisassociateVpcCidrBlockSyncType = (_ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult
    typealias DisassociateVpcCidrBlockAsyncType = (_ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult>) -> ()) throws -> ()
    typealias EnableTransitGatewayRouteTablePropagationSyncType = (_ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult
    typealias EnableTransitGatewayRouteTablePropagationAsyncType = (_ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult>) -> ()) throws -> ()
    typealias EnableVgwRoutePropagationSyncType = (_ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) throws -> ()
    typealias EnableVgwRoutePropagationAsyncType = (_ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableVolumeIOSyncType = (_ input: ElasticComputeCloudModel.EnableVolumeIORequest) throws -> ()
    typealias EnableVolumeIOAsyncType = (_ input: ElasticComputeCloudModel.EnableVolumeIORequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias EnableVpcClassicLinkSyncType = (_ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult
    typealias EnableVpcClassicLinkAsyncType = (_ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableVpcClassicLinkResult>) -> ()) throws -> ()
    typealias EnableVpcClassicLinkDnsSupportSyncType = (_ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult
    typealias EnableVpcClassicLinkDnsSupportAsyncType = (_ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult>) -> ()) throws -> ()
    typealias ExportClientVpnClientCertificateRevocationListSyncType = (_ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult
    typealias ExportClientVpnClientCertificateRevocationListAsyncType = (_ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult>) -> ()) throws -> ()
    typealias ExportClientVpnClientConfigurationSyncType = (_ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult
    typealias ExportClientVpnClientConfigurationAsyncType = (_ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult>) -> ()) throws -> ()
    typealias ExportTransitGatewayRoutesSyncType = (_ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult
    typealias ExportTransitGatewayRoutesAsyncType = (_ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult>) -> ()) throws -> ()
    typealias GetConsoleOutputSyncType = (_ input: ElasticComputeCloudModel.GetConsoleOutputRequest) throws -> ElasticComputeCloudModel.GetConsoleOutputResult
    typealias GetConsoleOutputAsyncType = (_ input: ElasticComputeCloudModel.GetConsoleOutputRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetConsoleOutputResult>) -> ()) throws -> ()
    typealias GetConsoleScreenshotSyncType = (_ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult
    typealias GetConsoleScreenshotAsyncType = (_ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetConsoleScreenshotResult>) -> ()) throws -> ()
    typealias GetHostReservationPurchasePreviewSyncType = (_ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult
    typealias GetHostReservationPurchasePreviewAsyncType = (_ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult>) -> ()) throws -> ()
    typealias GetLaunchTemplateDataSyncType = (_ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult
    typealias GetLaunchTemplateDataAsyncType = (_ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetLaunchTemplateDataResult>) -> ()) throws -> ()
    typealias GetPasswordDataSyncType = (_ input: ElasticComputeCloudModel.GetPasswordDataRequest) throws -> ElasticComputeCloudModel.GetPasswordDataResult
    typealias GetPasswordDataAsyncType = (_ input: ElasticComputeCloudModel.GetPasswordDataRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetPasswordDataResult>) -> ()) throws -> ()
    typealias GetReservedInstancesExchangeQuoteSyncType = (_ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult
    typealias GetReservedInstancesExchangeQuoteAsyncType = (_ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult>) -> ()) throws -> ()
    typealias GetTransitGatewayAttachmentPropagationsSyncType = (_ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult
    typealias GetTransitGatewayAttachmentPropagationsAsyncType = (_ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult>) -> ()) throws -> ()
    typealias GetTransitGatewayRouteTableAssociationsSyncType = (_ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult
    typealias GetTransitGatewayRouteTableAssociationsAsyncType = (_ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult>) -> ()) throws -> ()
    typealias GetTransitGatewayRouteTablePropagationsSyncType = (_ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult
    typealias GetTransitGatewayRouteTablePropagationsAsyncType = (_ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult>) -> ()) throws -> ()
    typealias ImportClientVpnClientCertificateRevocationListSyncType = (_ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult
    typealias ImportClientVpnClientCertificateRevocationListAsyncType = (_ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult>) -> ()) throws -> ()
    typealias ImportImageSyncType = (_ input: ElasticComputeCloudModel.ImportImageRequest) throws -> ElasticComputeCloudModel.ImportImageResult
    typealias ImportImageAsyncType = (_ input: ElasticComputeCloudModel.ImportImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportImageResult>) -> ()) throws -> ()
    typealias ImportInstanceSyncType = (_ input: ElasticComputeCloudModel.ImportInstanceRequest) throws -> ElasticComputeCloudModel.ImportInstanceResult
    typealias ImportInstanceAsyncType = (_ input: ElasticComputeCloudModel.ImportInstanceRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportInstanceResult>) -> ()) throws -> ()
    typealias ImportKeyPairSyncType = (_ input: ElasticComputeCloudModel.ImportKeyPairRequest) throws -> ElasticComputeCloudModel.ImportKeyPairResult
    typealias ImportKeyPairAsyncType = (_ input: ElasticComputeCloudModel.ImportKeyPairRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportKeyPairResult>) -> ()) throws -> ()
    typealias ImportSnapshotSyncType = (_ input: ElasticComputeCloudModel.ImportSnapshotRequest) throws -> ElasticComputeCloudModel.ImportSnapshotResult
    typealias ImportSnapshotAsyncType = (_ input: ElasticComputeCloudModel.ImportSnapshotRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportSnapshotResult>) -> ()) throws -> ()
    typealias ImportVolumeSyncType = (_ input: ElasticComputeCloudModel.ImportVolumeRequest) throws -> ElasticComputeCloudModel.ImportVolumeResult
    typealias ImportVolumeAsyncType = (_ input: ElasticComputeCloudModel.ImportVolumeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportVolumeResult>) -> ()) throws -> ()
    typealias ModifyCapacityReservationSyncType = (_ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult
    typealias ModifyCapacityReservationAsyncType = (_ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyCapacityReservationResult>) -> ()) throws -> ()
    typealias ModifyClientVpnEndpointSyncType = (_ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult
    typealias ModifyClientVpnEndpointAsyncType = (_ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyClientVpnEndpointResult>) -> ()) throws -> ()
    typealias ModifyFleetSyncType = (_ input: ElasticComputeCloudModel.ModifyFleetRequest) throws -> ElasticComputeCloudModel.ModifyFleetResult
    typealias ModifyFleetAsyncType = (_ input: ElasticComputeCloudModel.ModifyFleetRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyFleetResult>) -> ()) throws -> ()
    typealias ModifyFpgaImageAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult
    typealias ModifyFpgaImageAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult>) -> ()) throws -> ()
    typealias ModifyHostsSyncType = (_ input: ElasticComputeCloudModel.ModifyHostsRequest) throws -> ElasticComputeCloudModel.ModifyHostsResult
    typealias ModifyHostsAsyncType = (_ input: ElasticComputeCloudModel.ModifyHostsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyHostsResult>) -> ()) throws -> ()
    typealias ModifyIdFormatSyncType = (_ input: ElasticComputeCloudModel.ModifyIdFormatRequest) throws -> ()
    typealias ModifyIdFormatAsyncType = (_ input: ElasticComputeCloudModel.ModifyIdFormatRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyIdentityIdFormatSyncType = (_ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) throws -> ()
    typealias ModifyIdentityIdFormatAsyncType = (_ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyImageAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifyImageAttributeRequest) throws -> ()
    typealias ModifyImageAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifyImageAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyInstanceAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) throws -> ()
    typealias ModifyInstanceAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyInstanceCapacityReservationAttributesSyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult
    typealias ModifyInstanceCapacityReservationAttributesAsyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult>) -> ()) throws -> ()
    typealias ModifyInstanceCreditSpecificationSyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult
    typealias ModifyInstanceCreditSpecificationAsyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult>) -> ()) throws -> ()
    typealias ModifyInstanceEventStartTimeSyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult
    typealias ModifyInstanceEventStartTimeAsyncType = (_ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult>) -> ()) throws -> ()
    typealias ModifyInstancePlacementSyncType = (_ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult
    typealias ModifyInstancePlacementAsyncType = (_ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstancePlacementResult>) -> ()) throws -> ()
    typealias ModifyLaunchTemplateSyncType = (_ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult
    typealias ModifyLaunchTemplateAsyncType = (_ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyLaunchTemplateResult>) -> ()) throws -> ()
    typealias ModifyNetworkInterfaceAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) throws -> ()
    typealias ModifyNetworkInterfaceAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyReservedInstancesSyncType = (_ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult
    typealias ModifyReservedInstancesAsyncType = (_ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyReservedInstancesResult>) -> ()) throws -> ()
    typealias ModifySnapshotAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) throws -> ()
    typealias ModifySnapshotAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifySpotFleetRequestSyncType = (_ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse
    typealias ModifySpotFleetRequestAsyncType = (_ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifySpotFleetRequestResponse>) -> ()) throws -> ()
    typealias ModifySubnetAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) throws -> ()
    typealias ModifySubnetAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyTransitGatewayVpcAttachmentSyncType = (_ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult
    typealias ModifyTransitGatewayVpcAttachmentAsyncType = (_ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult>) -> ()) throws -> ()
    typealias ModifyVolumeSyncType = (_ input: ElasticComputeCloudModel.ModifyVolumeRequest) throws -> ElasticComputeCloudModel.ModifyVolumeResult
    typealias ModifyVolumeAsyncType = (_ input: ElasticComputeCloudModel.ModifyVolumeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVolumeResult>) -> ()) throws -> ()
    typealias ModifyVolumeAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) throws -> ()
    typealias ModifyVolumeAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyVpcAttributeSyncType = (_ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) throws -> ()
    typealias ModifyVpcAttributeAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ModifyVpcEndpointSyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult
    typealias ModifyVpcEndpointAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointResult>) -> ()) throws -> ()
    typealias ModifyVpcEndpointConnectionNotificationSyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult
    typealias ModifyVpcEndpointConnectionNotificationAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult>) -> ()) throws -> ()
    typealias ModifyVpcEndpointServiceConfigurationSyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult
    typealias ModifyVpcEndpointServiceConfigurationAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult>) -> ()) throws -> ()
    typealias ModifyVpcEndpointServicePermissionsSyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult
    typealias ModifyVpcEndpointServicePermissionsAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult>) -> ()) throws -> ()
    typealias ModifyVpcPeeringConnectionOptionsSyncType = (_ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult
    typealias ModifyVpcPeeringConnectionOptionsAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult>) -> ()) throws -> ()
    typealias ModifyVpcTenancySyncType = (_ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult
    typealias ModifyVpcTenancyAsyncType = (_ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcTenancyResult>) -> ()) throws -> ()
    typealias MonitorInstancesSyncType = (_ input: ElasticComputeCloudModel.MonitorInstancesRequest) throws -> ElasticComputeCloudModel.MonitorInstancesResult
    typealias MonitorInstancesAsyncType = (_ input: ElasticComputeCloudModel.MonitorInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.MonitorInstancesResult>) -> ()) throws -> ()
    typealias MoveAddressToVpcSyncType = (_ input: ElasticComputeCloudModel.MoveAddressToVpcRequest) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult
    typealias MoveAddressToVpcAsyncType = (_ input: ElasticComputeCloudModel.MoveAddressToVpcRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.MoveAddressToVpcResult>) -> ()) throws -> ()
    typealias ProvisionByoipCidrSyncType = (_ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult
    typealias ProvisionByoipCidrAsyncType = (_ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ProvisionByoipCidrResult>) -> ()) throws -> ()
    typealias PurchaseHostReservationSyncType = (_ input: ElasticComputeCloudModel.PurchaseHostReservationRequest) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult
    typealias PurchaseHostReservationAsyncType = (_ input: ElasticComputeCloudModel.PurchaseHostReservationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseHostReservationResult>) -> ()) throws -> ()
    typealias PurchaseReservedInstancesOfferingSyncType = (_ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult
    typealias PurchaseReservedInstancesOfferingAsyncType = (_ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult>) -> ()) throws -> ()
    typealias PurchaseScheduledInstancesSyncType = (_ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult
    typealias PurchaseScheduledInstancesAsyncType = (_ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseScheduledInstancesResult>) -> ()) throws -> ()
    typealias RebootInstancesSyncType = (_ input: ElasticComputeCloudModel.RebootInstancesRequest) throws -> ()
    typealias RebootInstancesAsyncType = (_ input: ElasticComputeCloudModel.RebootInstancesRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RegisterImageSyncType = (_ input: ElasticComputeCloudModel.RegisterImageRequest) throws -> ElasticComputeCloudModel.RegisterImageResult
    typealias RegisterImageAsyncType = (_ input: ElasticComputeCloudModel.RegisterImageRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RegisterImageResult>) -> ()) throws -> ()
    typealias RejectTransitGatewayVpcAttachmentSyncType = (_ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult
    typealias RejectTransitGatewayVpcAttachmentAsyncType = (_ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult>) -> ()) throws -> ()
    typealias RejectVpcEndpointConnectionsSyncType = (_ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult
    typealias RejectVpcEndpointConnectionsAsyncType = (_ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult>) -> ()) throws -> ()
    typealias RejectVpcPeeringConnectionSyncType = (_ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult
    typealias RejectVpcPeeringConnectionAsyncType = (_ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult>) -> ()) throws -> ()
    typealias ReleaseAddressSyncType = (_ input: ElasticComputeCloudModel.ReleaseAddressRequest) throws -> ()
    typealias ReleaseAddressAsyncType = (_ input: ElasticComputeCloudModel.ReleaseAddressRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReleaseHostsSyncType = (_ input: ElasticComputeCloudModel.ReleaseHostsRequest) throws -> ElasticComputeCloudModel.ReleaseHostsResult
    typealias ReleaseHostsAsyncType = (_ input: ElasticComputeCloudModel.ReleaseHostsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReleaseHostsResult>) -> ()) throws -> ()
    typealias ReplaceIamInstanceProfileAssociationSyncType = (_ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult
    typealias ReplaceIamInstanceProfileAssociationAsyncType = (_ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult>) -> ()) throws -> ()
    typealias ReplaceNetworkAclAssociationSyncType = (_ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult
    typealias ReplaceNetworkAclAssociationAsyncType = (_ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult>) -> ()) throws -> ()
    typealias ReplaceNetworkAclEntrySyncType = (_ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) throws -> ()
    typealias ReplaceNetworkAclEntryAsyncType = (_ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReplaceRouteSyncType = (_ input: ElasticComputeCloudModel.ReplaceRouteRequest) throws -> ()
    typealias ReplaceRouteAsyncType = (_ input: ElasticComputeCloudModel.ReplaceRouteRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReplaceRouteTableAssociationSyncType = (_ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult
    typealias ReplaceRouteTableAssociationAsyncType = (_ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult>) -> ()) throws -> ()
    typealias ReplaceTransitGatewayRouteSyncType = (_ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult
    typealias ReplaceTransitGatewayRouteAsyncType = (_ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult>) -> ()) throws -> ()
    typealias ReportInstanceStatusSyncType = (_ input: ElasticComputeCloudModel.ReportInstanceStatusRequest) throws -> ()
    typealias ReportInstanceStatusAsyncType = (_ input: ElasticComputeCloudModel.ReportInstanceStatusRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RequestSpotFleetSyncType = (_ input: ElasticComputeCloudModel.RequestSpotFleetRequest) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse
    typealias RequestSpotFleetAsyncType = (_ input: ElasticComputeCloudModel.RequestSpotFleetRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RequestSpotFleetResponse>) -> ()) throws -> ()
    typealias RequestSpotInstancesSyncType = (_ input: ElasticComputeCloudModel.RequestSpotInstancesRequest) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult
    typealias RequestSpotInstancesAsyncType = (_ input: ElasticComputeCloudModel.RequestSpotInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RequestSpotInstancesResult>) -> ()) throws -> ()
    typealias ResetFpgaImageAttributeSyncType = (_ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult
    typealias ResetFpgaImageAttributeAsyncType = (_ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.ResetFpgaImageAttributeResult>) -> ()) throws -> ()
    typealias ResetImageAttributeSyncType = (_ input: ElasticComputeCloudModel.ResetImageAttributeRequest) throws -> ()
    typealias ResetImageAttributeAsyncType = (_ input: ElasticComputeCloudModel.ResetImageAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetInstanceAttributeSyncType = (_ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) throws -> ()
    typealias ResetInstanceAttributeAsyncType = (_ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetNetworkInterfaceAttributeSyncType = (_ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) throws -> ()
    typealias ResetNetworkInterfaceAttributeAsyncType = (_ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ResetSnapshotAttributeSyncType = (_ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) throws -> ()
    typealias ResetSnapshotAttributeAsyncType = (_ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RestoreAddressToClassicSyncType = (_ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult
    typealias RestoreAddressToClassicAsyncType = (_ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RestoreAddressToClassicResult>) -> ()) throws -> ()
    typealias RevokeClientVpnIngressSyncType = (_ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult
    typealias RevokeClientVpnIngressAsyncType = (_ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RevokeClientVpnIngressResult>) -> ()) throws -> ()
    typealias RevokeSecurityGroupEgressSyncType = (_ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) throws -> ()
    typealias RevokeSecurityGroupEgressAsyncType = (_ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RevokeSecurityGroupIngressSyncType = (_ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) throws -> ()
    typealias RevokeSecurityGroupIngressAsyncType = (_ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RunInstancesSyncType = (_ input: ElasticComputeCloudModel.RunInstancesRequest) throws -> ElasticComputeCloudModel.Reservation
    typealias RunInstancesAsyncType = (_ input: ElasticComputeCloudModel.RunInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.Reservation>) -> ()) throws -> ()
    typealias RunScheduledInstancesSyncType = (_ input: ElasticComputeCloudModel.RunScheduledInstancesRequest) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult
    typealias RunScheduledInstancesAsyncType = (_ input: ElasticComputeCloudModel.RunScheduledInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.RunScheduledInstancesResult>) -> ()) throws -> ()
    typealias SearchTransitGatewayRoutesSyncType = (_ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult
    typealias SearchTransitGatewayRoutesAsyncType = (_ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult>) -> ()) throws -> ()
    typealias StartInstancesSyncType = (_ input: ElasticComputeCloudModel.StartInstancesRequest) throws -> ElasticComputeCloudModel.StartInstancesResult
    typealias StartInstancesAsyncType = (_ input: ElasticComputeCloudModel.StartInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.StartInstancesResult>) -> ()) throws -> ()
    typealias StopInstancesSyncType = (_ input: ElasticComputeCloudModel.StopInstancesRequest) throws -> ElasticComputeCloudModel.StopInstancesResult
    typealias StopInstancesAsyncType = (_ input: ElasticComputeCloudModel.StopInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.StopInstancesResult>) -> ()) throws -> ()
    typealias TerminateClientVpnConnectionsSyncType = (_ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult
    typealias TerminateClientVpnConnectionsAsyncType = (_ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult>) -> ()) throws -> ()
    typealias TerminateInstancesSyncType = (_ input: ElasticComputeCloudModel.TerminateInstancesRequest) throws -> ElasticComputeCloudModel.TerminateInstancesResult
    typealias TerminateInstancesAsyncType = (_ input: ElasticComputeCloudModel.TerminateInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.TerminateInstancesResult>) -> ()) throws -> ()
    typealias UnassignIpv6AddressesSyncType = (_ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult
    typealias UnassignIpv6AddressesAsyncType = (_ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.UnassignIpv6AddressesResult>) -> ()) throws -> ()
    typealias UnassignPrivateIpAddressesSyncType = (_ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) throws -> ()
    typealias UnassignPrivateIpAddressesAsyncType = (_ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UnmonitorInstancesSyncType = (_ input: ElasticComputeCloudModel.UnmonitorInstancesRequest) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult
    typealias UnmonitorInstancesAsyncType = (_ input: ElasticComputeCloudModel.UnmonitorInstancesRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.UnmonitorInstancesResult>) -> ()) throws -> ()
    typealias UpdateSecurityGroupRuleDescriptionsEgressSyncType = (_ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult
    typealias UpdateSecurityGroupRuleDescriptionsEgressAsyncType = (_ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult>) -> ()) throws -> ()
    typealias UpdateSecurityGroupRuleDescriptionsIngressSyncType = (_ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult
    typealias UpdateSecurityGroupRuleDescriptionsIngressAsyncType = (_ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult>) -> ()) throws -> ()
    typealias WithdrawByoipCidrSyncType = (_ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
    typealias WithdrawByoipCidrAsyncType = (_ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, _ completion: @escaping (HTTPResult<ElasticComputeCloudModel.WithdrawByoipCidrResult>) -> ()) throws -> ()

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The AcceptReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuoteAsync(input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult>) -> ()) throws

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuoteSync(input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The AcceptTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachmentAsync(input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult>) -> ()) throws

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachmentSync(input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The AcceptVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnectionsAsync(input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult>) -> ()) throws

    /**
     Invokes the AcceptVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnectionsSync(input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The AcceptVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The AcceptVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult>) -> ()) throws

    /**
     Invokes the AcceptVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnectionSync(input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
         - completion: The AdvertiseByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The AdvertiseByoipCidrResult
           object will be validated before being returned to caller.
     */
    func advertiseByoipCidrAsync(input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AdvertiseByoipCidrResult>) -> ()) throws

    /**
     Invokes the AdvertiseByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: The AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func advertiseByoipCidrSync(input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) throws -> ElasticComputeCloudModel.AdvertiseByoipCidrResult

    /**
     Invokes the AllocateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
         - completion: The AllocateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateAddressResult
           object will be validated before being returned to caller.
     */
    func allocateAddressAsync(input: ElasticComputeCloudModel.AllocateAddressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AllocateAddressResult>) -> ()) throws

    /**
     Invokes the AllocateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: The AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateAddressSync(input: ElasticComputeCloudModel.AllocateAddressRequest) throws -> ElasticComputeCloudModel.AllocateAddressResult

    /**
     Invokes the AllocateHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
         - completion: The AllocateHostsResult object or an error will be passed to this 
           callback when the operation is complete. The AllocateHostsResult
           object will be validated before being returned to caller.
     */
    func allocateHostsAsync(input: ElasticComputeCloudModel.AllocateHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AllocateHostsResult>) -> ()) throws

    /**
     Invokes the AllocateHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: The AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateHostsSync(input: ElasticComputeCloudModel.AllocateHostsRequest) throws -> ElasticComputeCloudModel.AllocateHostsResult

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The ApplySecurityGroupsToClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The ApplySecurityGroupsToClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetworkAsync(input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult>) -> ()) throws

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetworkSync(input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult

    /**
     Invokes the AssignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
         - completion: The AssignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The AssignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    func assignIpv6AddressesAsync(input: ElasticComputeCloudModel.AssignIpv6AddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssignIpv6AddressesResult>) -> ()) throws

    /**
     Invokes the AssignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: The AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignIpv6AddressesSync(input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.AssignIpv6AddressesResult

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func assignPrivateIpAddressesAsync(input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AssignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     */
    func assignPrivateIpAddressesSync(input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) throws

    /**
     Invokes the AssociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
         - completion: The AssociateAddressResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateAddressResult
           object will be validated before being returned to caller.
     */
    func associateAddressAsync(input: ElasticComputeCloudModel.AssociateAddressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateAddressResult>) -> ()) throws

    /**
     Invokes the AssociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: The AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateAddressSync(input: ElasticComputeCloudModel.AssociateAddressRequest) throws -> ElasticComputeCloudModel.AssociateAddressResult

    /**
     Invokes the AssociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The AssociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetworkAsync(input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult>) -> ()) throws

    /**
     Invokes the AssociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetworkSync(input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult

    /**
     Invokes the AssociateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func associateDhcpOptionsAsync(input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AssociateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    func associateDhcpOptionsSync(input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) throws

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The AssociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    func associateIamInstanceProfileAsync(input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateIamInstanceProfileResult>) -> ()) throws

    /**
     Invokes the AssociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIamInstanceProfileSync(input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.AssociateIamInstanceProfileResult

    /**
     Invokes the AssociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
         - completion: The AssociateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateRouteTableResult
           object will be validated before being returned to caller.
     */
    func associateRouteTableAsync(input: ElasticComputeCloudModel.AssociateRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateRouteTableResult>) -> ()) throws

    /**
     Invokes the AssociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: The AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateRouteTableSync(input: ElasticComputeCloudModel.AssociateRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateRouteTableResult

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The AssociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    func associateSubnetCidrBlockAsync(input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult>) -> ()) throws

    /**
     Invokes the AssociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateSubnetCidrBlockSync(input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateSubnetCidrBlockResult

    /**
     Invokes the AssociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The AssociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTableAsync(input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult>) -> ()) throws

    /**
     Invokes the AssociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTableSync(input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The AssociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The AssociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    func associateVpcCidrBlockAsync(input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AssociateVpcCidrBlockResult>) -> ()) throws

    /**
     Invokes the AssociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateVpcCidrBlockSync(input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.AssociateVpcCidrBlockResult

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
         - completion: The AttachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The AttachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    func attachClassicLinkVpcAsync(input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachClassicLinkVpcResult>) -> ()) throws

    /**
     Invokes the AttachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachClassicLinkVpcSync(input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.AttachClassicLinkVpcResult

    /**
     Invokes the AttachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func attachInternetGatewayAsync(input: ElasticComputeCloudModel.AttachInternetGatewayRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AttachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    func attachInternetGatewaySync(input: ElasticComputeCloudModel.AttachInternetGatewayRequest) throws

    /**
     Invokes the AttachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
         - completion: The AttachNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The AttachNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    func attachNetworkInterfaceAsync(input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachNetworkInterfaceResult>) -> ()) throws

    /**
     Invokes the AttachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: The AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachNetworkInterfaceSync(input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.AttachNetworkInterfaceResult

    /**
     Invokes the AttachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    func attachVolumeAsync(input: ElasticComputeCloudModel.AttachVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.VolumeAttachment>) -> ()) throws

    /**
     Invokes the AttachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVolumeSync(input: ElasticComputeCloudModel.AttachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the AttachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
         - completion: The AttachVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The AttachVpnGatewayResult
           object will be validated before being returned to caller.
     */
    func attachVpnGatewayAsync(input: ElasticComputeCloudModel.AttachVpnGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AttachVpnGatewayResult>) -> ()) throws

    /**
     Invokes the AttachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: The AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVpnGatewaySync(input: ElasticComputeCloudModel.AttachVpnGatewayRequest) throws -> ElasticComputeCloudModel.AttachVpnGatewayResult

    /**
     Invokes the AuthorizeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
         - completion: The AuthorizeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The AuthorizeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    func authorizeClientVpnIngressAsync(input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult>) -> ()) throws

    /**
     Invokes the AuthorizeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: The AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeClientVpnIngressSync(input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.AuthorizeClientVpnIngressResult

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func authorizeSecurityGroupEgressAsync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AuthorizeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupEgressSync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) throws

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func authorizeSecurityGroupIngressAsync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AuthorizeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupIngressSync(input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) throws

    /**
     Invokes the BundleInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
         - completion: The BundleInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The BundleInstanceResult
           object will be validated before being returned to caller.
     */
    func bundleInstanceAsync(input: ElasticComputeCloudModel.BundleInstanceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.BundleInstanceResult>) -> ()) throws

    /**
     Invokes the BundleInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: The BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func bundleInstanceSync(input: ElasticComputeCloudModel.BundleInstanceRequest) throws -> ElasticComputeCloudModel.BundleInstanceResult

    /**
     Invokes the CancelBundleTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
         - completion: The CancelBundleTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelBundleTaskResult
           object will be validated before being returned to caller.
     */
    func cancelBundleTaskAsync(input: ElasticComputeCloudModel.CancelBundleTaskRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelBundleTaskResult>) -> ()) throws

    /**
     Invokes the CancelBundleTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: The CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelBundleTaskSync(input: ElasticComputeCloudModel.CancelBundleTaskRequest) throws -> ElasticComputeCloudModel.CancelBundleTaskResult

    /**
     Invokes the CancelCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
         - completion: The CancelCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CancelCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func cancelCapacityReservationAsync(input: ElasticComputeCloudModel.CancelCapacityReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelCapacityReservationResult>) -> ()) throws

    /**
     Invokes the CancelCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: The CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservationSync(input: ElasticComputeCloudModel.CancelCapacityReservationRequest) throws -> ElasticComputeCloudModel.CancelCapacityReservationResult

    /**
     Invokes the CancelConversionTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func cancelConversionTaskAsync(input: ElasticComputeCloudModel.CancelConversionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CancelConversionTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    func cancelConversionTaskSync(input: ElasticComputeCloudModel.CancelConversionRequest) throws

    /**
     Invokes the CancelExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func cancelExportTaskAsync(input: ElasticComputeCloudModel.CancelExportTaskRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CancelExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    func cancelExportTaskSync(input: ElasticComputeCloudModel.CancelExportTaskRequest) throws

    /**
     Invokes the CancelImportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
         - completion: The CancelImportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CancelImportTaskResult
           object will be validated before being returned to caller.
     */
    func cancelImportTaskAsync(input: ElasticComputeCloudModel.CancelImportTaskRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelImportTaskResult>) -> ()) throws

    /**
     Invokes the CancelImportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: The CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImportTaskSync(input: ElasticComputeCloudModel.CancelImportTaskRequest) throws -> ElasticComputeCloudModel.CancelImportTaskResult

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
         - completion: The CancelReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CancelReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    func cancelReservedInstancesListingAsync(input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelReservedInstancesListingResult>) -> ()) throws

    /**
     Invokes the CancelReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelReservedInstancesListingSync(input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CancelReservedInstancesListingResult

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
         - completion: The CancelSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    func cancelSpotFleetRequestsAsync(input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse>) -> ()) throws

    /**
     Invokes the CancelSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotFleetRequestsSync(input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotFleetRequestsResponse

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The CancelSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The CancelSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequestsAsync(input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult>) -> ()) throws

    /**
     Invokes the CancelSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequestsSync(input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.CancelSpotInstanceRequestsResult

    /**
     Invokes the ConfirmProductInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
         - completion: The ConfirmProductInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ConfirmProductInstanceResult
           object will be validated before being returned to caller.
     */
    func confirmProductInstanceAsync(input: ElasticComputeCloudModel.ConfirmProductInstanceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ConfirmProductInstanceResult>) -> ()) throws

    /**
     Invokes the ConfirmProductInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: The ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func confirmProductInstanceSync(input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) throws -> ElasticComputeCloudModel.ConfirmProductInstanceResult

    /**
     Invokes the CopyFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
         - completion: The CopyFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyFpgaImageResult
           object will be validated before being returned to caller.
     */
    func copyFpgaImageAsync(input: ElasticComputeCloudModel.CopyFpgaImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopyFpgaImageResult>) -> ()) throws

    /**
     Invokes the CopyFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: The CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyFpgaImageSync(input: ElasticComputeCloudModel.CopyFpgaImageRequest) throws -> ElasticComputeCloudModel.CopyFpgaImageResult

    /**
     Invokes the CopyImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
         - completion: The CopyImageResult object or an error will be passed to this 
           callback when the operation is complete. The CopyImageResult
           object will be validated before being returned to caller.
     */
    func copyImageAsync(input: ElasticComputeCloudModel.CopyImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopyImageResult>) -> ()) throws

    /**
     Invokes the CopyImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: The CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyImageSync(input: ElasticComputeCloudModel.CopyImageRequest) throws -> ElasticComputeCloudModel.CopyImageResult

    /**
     Invokes the CopySnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
         - completion: The CopySnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The CopySnapshotResult
           object will be validated before being returned to caller.
     */
    func copySnapshotAsync(input: ElasticComputeCloudModel.CopySnapshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CopySnapshotResult>) -> ()) throws

    /**
     Invokes the CopySnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: The CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copySnapshotSync(input: ElasticComputeCloudModel.CopySnapshotRequest) throws -> ElasticComputeCloudModel.CopySnapshotResult

    /**
     Invokes the CreateCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
         - completion: The CreateCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func createCapacityReservationAsync(input: ElasticComputeCloudModel.CreateCapacityReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateCapacityReservationResult>) -> ()) throws

    /**
     Invokes the CreateCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: The CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservationSync(input: ElasticComputeCloudModel.CreateCapacityReservationRequest) throws -> ElasticComputeCloudModel.CreateCapacityReservationResult

    /**
     Invokes the CreateClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
         - completion: The CreateClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func createClientVpnEndpointAsync(input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateClientVpnEndpointResult>) -> ()) throws

    /**
     Invokes the CreateClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: The CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnEndpointSync(input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.CreateClientVpnEndpointResult

    /**
     Invokes the CreateClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
         - completion: The CreateClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    func createClientVpnRouteAsync(input: ElasticComputeCloudModel.CreateClientVpnRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateClientVpnRouteResult>) -> ()) throws

    /**
     Invokes the CreateClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: The CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnRouteSync(input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) throws -> ElasticComputeCloudModel.CreateClientVpnRouteResult

    /**
     Invokes the CreateCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
         - completion: The CreateCustomerGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomerGatewayResult
           object will be validated before being returned to caller.
     */
    func createCustomerGatewayAsync(input: ElasticComputeCloudModel.CreateCustomerGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateCustomerGatewayResult>) -> ()) throws

    /**
     Invokes the CreateCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: The CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCustomerGatewaySync(input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) throws -> ElasticComputeCloudModel.CreateCustomerGatewayResult

    /**
     Invokes the CreateDefaultSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
         - completion: The CreateDefaultSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultSubnetResult
           object will be validated before being returned to caller.
     */
    func createDefaultSubnetAsync(input: ElasticComputeCloudModel.CreateDefaultSubnetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDefaultSubnetResult>) -> ()) throws

    /**
     Invokes the CreateDefaultSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: The CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultSubnetSync(input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) throws -> ElasticComputeCloudModel.CreateDefaultSubnetResult

    /**
     Invokes the CreateDefaultVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
         - completion: The CreateDefaultVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDefaultVpcResult
           object will be validated before being returned to caller.
     */
    func createDefaultVpcAsync(input: ElasticComputeCloudModel.CreateDefaultVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDefaultVpcResult>) -> ()) throws

    /**
     Invokes the CreateDefaultVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: The CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultVpcSync(input: ElasticComputeCloudModel.CreateDefaultVpcRequest) throws -> ElasticComputeCloudModel.CreateDefaultVpcResult

    /**
     Invokes the CreateDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
         - completion: The CreateDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    func createDhcpOptionsAsync(input: ElasticComputeCloudModel.CreateDhcpOptionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateDhcpOptionsResult>) -> ()) throws

    /**
     Invokes the CreateDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: The CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDhcpOptionsSync(input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) throws -> ElasticComputeCloudModel.CreateDhcpOptionsResult

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The CreateEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGatewayAsync(input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult>) -> ()) throws

    /**
     Invokes the CreateEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGatewaySync(input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult

    /**
     Invokes the CreateFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
         - completion: The CreateFleetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFleetResult
           object will be validated before being returned to caller.
     */
    func createFleetAsync(input: ElasticComputeCloudModel.CreateFleetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFleetResult>) -> ()) throws

    /**
     Invokes the CreateFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: The CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFleetSync(input: ElasticComputeCloudModel.CreateFleetRequest) throws -> ElasticComputeCloudModel.CreateFleetResult

    /**
     Invokes the CreateFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
         - completion: The CreateFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFlowLogsResult
           object will be validated before being returned to caller.
     */
    func createFlowLogsAsync(input: ElasticComputeCloudModel.CreateFlowLogsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFlowLogsResult>) -> ()) throws

    /**
     Invokes the CreateFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: The CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFlowLogsSync(input: ElasticComputeCloudModel.CreateFlowLogsRequest) throws -> ElasticComputeCloudModel.CreateFlowLogsResult

    /**
     Invokes the CreateFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
         - completion: The CreateFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateFpgaImageResult
           object will be validated before being returned to caller.
     */
    func createFpgaImageAsync(input: ElasticComputeCloudModel.CreateFpgaImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateFpgaImageResult>) -> ()) throws

    /**
     Invokes the CreateFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: The CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFpgaImageSync(input: ElasticComputeCloudModel.CreateFpgaImageRequest) throws -> ElasticComputeCloudModel.CreateFpgaImageResult

    /**
     Invokes the CreateImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
         - completion: The CreateImageResult object or an error will be passed to this 
           callback when the operation is complete. The CreateImageResult
           object will be validated before being returned to caller.
     */
    func createImageAsync(input: ElasticComputeCloudModel.CreateImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateImageResult>) -> ()) throws

    /**
     Invokes the CreateImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: The CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createImageSync(input: ElasticComputeCloudModel.CreateImageRequest) throws -> ElasticComputeCloudModel.CreateImageResult

    /**
     Invokes the CreateInstanceExportTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
         - completion: The CreateInstanceExportTaskResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInstanceExportTaskResult
           object will be validated before being returned to caller.
     */
    func createInstanceExportTaskAsync(input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateInstanceExportTaskResult>) -> ()) throws

    /**
     Invokes the CreateInstanceExportTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: The CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceExportTaskSync(input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) throws -> ElasticComputeCloudModel.CreateInstanceExportTaskResult

    /**
     Invokes the CreateInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
         - completion: The CreateInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func createInternetGatewayAsync(input: ElasticComputeCloudModel.CreateInternetGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateInternetGatewayResult>) -> ()) throws

    /**
     Invokes the CreateInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: The CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInternetGatewaySync(input: ElasticComputeCloudModel.CreateInternetGatewayRequest) throws -> ElasticComputeCloudModel.CreateInternetGatewayResult

    /**
     Invokes the CreateKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
         - completion: The KeyPair object or an error will be passed to this 
           callback when the operation is complete. The KeyPair
           object will be validated before being returned to caller.
     */
    func createKeyPairAsync(input: ElasticComputeCloudModel.CreateKeyPairRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.KeyPair>) -> ()) throws

    /**
     Invokes the CreateKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: The KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createKeyPairSync(input: ElasticComputeCloudModel.CreateKeyPairRequest) throws -> ElasticComputeCloudModel.KeyPair

    /**
     Invokes the CreateLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func createLaunchTemplateAsync(input: ElasticComputeCloudModel.CreateLaunchTemplateRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateLaunchTemplateResult>) -> ()) throws

    /**
     Invokes the CreateLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateSync(input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateResult

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
         - completion: The CreateLaunchTemplateVersionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateLaunchTemplateVersionResult
           object will be validated before being returned to caller.
     */
    func createLaunchTemplateVersionAsync(input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult>) -> ()) throws

    /**
     Invokes the CreateLaunchTemplateVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: The CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateVersionSync(input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) throws -> ElasticComputeCloudModel.CreateLaunchTemplateVersionResult

    /**
     Invokes the CreateNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
         - completion: The CreateNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNatGatewayResult
           object will be validated before being returned to caller.
     */
    func createNatGatewayAsync(input: ElasticComputeCloudModel.CreateNatGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNatGatewayResult>) -> ()) throws

    /**
     Invokes the CreateNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: The CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNatGatewaySync(input: ElasticComputeCloudModel.CreateNatGatewayRequest) throws -> ElasticComputeCloudModel.CreateNatGatewayResult

    /**
     Invokes the CreateNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
         - completion: The CreateNetworkAclResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkAclResult
           object will be validated before being returned to caller.
     */
    func createNetworkAclAsync(input: ElasticComputeCloudModel.CreateNetworkAclRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkAclResult>) -> ()) throws

    /**
     Invokes the CreateNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: The CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkAclSync(input: ElasticComputeCloudModel.CreateNetworkAclRequest) throws -> ElasticComputeCloudModel.CreateNetworkAclResult

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createNetworkAclEntryAsync(input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    func createNetworkAclEntrySync(input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) throws

    /**
     Invokes the CreateNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
         - completion: The CreateNetworkInterfaceResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfaceResult
           object will be validated before being returned to caller.
     */
    func createNetworkInterfaceAsync(input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkInterfaceResult>) -> ()) throws

    /**
     Invokes the CreateNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfaceSync(input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfaceResult

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The CreateNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    func createNetworkInterfacePermissionAsync(input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult>) -> ()) throws

    /**
     Invokes the CreateNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfacePermissionSync(input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult

    /**
     Invokes the CreatePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createPlacementGroupAsync(input: ElasticComputeCloudModel.CreatePlacementGroupRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreatePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     */
    func createPlacementGroupSync(input: ElasticComputeCloudModel.CreatePlacementGroupRequest) throws

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
         - completion: The CreateReservedInstancesListingResult object or an error will be passed to this 
           callback when the operation is complete. The CreateReservedInstancesListingResult
           object will be validated before being returned to caller.
     */
    func createReservedInstancesListingAsync(input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateReservedInstancesListingResult>) -> ()) throws

    /**
     Invokes the CreateReservedInstancesListing operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: The CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReservedInstancesListingSync(input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) throws -> ElasticComputeCloudModel.CreateReservedInstancesListingResult

    /**
     Invokes the CreateRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
         - completion: The CreateRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteResult
           object will be validated before being returned to caller.
     */
    func createRouteAsync(input: ElasticComputeCloudModel.CreateRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateRouteResult>) -> ()) throws

    /**
     Invokes the CreateRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: The CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteSync(input: ElasticComputeCloudModel.CreateRouteRequest) throws -> ElasticComputeCloudModel.CreateRouteResult

    /**
     Invokes the CreateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
         - completion: The CreateRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateRouteTableResult
           object will be validated before being returned to caller.
     */
    func createRouteTableAsync(input: ElasticComputeCloudModel.CreateRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateRouteTableResult>) -> ()) throws

    /**
     Invokes the CreateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: The CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteTableSync(input: ElasticComputeCloudModel.CreateRouteTableRequest) throws -> ElasticComputeCloudModel.CreateRouteTableResult

    /**
     Invokes the CreateSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
         - completion: The CreateSecurityGroupResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSecurityGroupResult
           object will be validated before being returned to caller.
     */
    func createSecurityGroupAsync(input: ElasticComputeCloudModel.CreateSecurityGroupRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSecurityGroupResult>) -> ()) throws

    /**
     Invokes the CreateSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: The CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSecurityGroupSync(input: ElasticComputeCloudModel.CreateSecurityGroupRequest) throws -> ElasticComputeCloudModel.CreateSecurityGroupResult

    /**
     Invokes the CreateSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
         - completion: The Snapshot object or an error will be passed to this 
           callback when the operation is complete. The Snapshot
           object will be validated before being returned to caller.
     */
    func createSnapshotAsync(input: ElasticComputeCloudModel.CreateSnapshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.Snapshot>) -> ()) throws

    /**
     Invokes the CreateSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: The Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshotSync(input: ElasticComputeCloudModel.CreateSnapshotRequest) throws -> ElasticComputeCloudModel.Snapshot

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The CreateSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscriptionAsync(input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult>) -> ()) throws

    /**
     Invokes the CreateSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscriptionSync(input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult

    /**
     Invokes the CreateSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
         - completion: The CreateSubnetResult object or an error will be passed to this 
           callback when the operation is complete. The CreateSubnetResult
           object will be validated before being returned to caller.
     */
    func createSubnetAsync(input: ElasticComputeCloudModel.CreateSubnetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateSubnetResult>) -> ()) throws

    /**
     Invokes the CreateSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: The CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnetSync(input: ElasticComputeCloudModel.CreateSubnetRequest) throws -> ElasticComputeCloudModel.CreateSubnetResult

    /**
     Invokes the CreateTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createTagsAsync(input: ElasticComputeCloudModel.CreateTagsRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    func createTagsSync(input: ElasticComputeCloudModel.CreateTagsRequest) throws

    /**
     Invokes the CreateTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
         - completion: The CreateTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayAsync(input: ElasticComputeCloudModel.CreateTransitGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayResult>) -> ()) throws

    /**
     Invokes the CreateTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewaySync(input: ElasticComputeCloudModel.CreateTransitGatewayRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayResult

    /**
     Invokes the CreateTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayRouteAsync(input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayRouteResult>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteSync(input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteResult

    /**
     Invokes the CreateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The CreateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableAsync(input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTableSync(input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The CreateTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The CreateTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachmentAsync(input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult>) -> ()) throws

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachmentSync(input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult

    /**
     Invokes the CreateVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
         - completion: The Volume object or an error will be passed to this 
           callback when the operation is complete. The Volume
           object will be validated before being returned to caller.
     */
    func createVolumeAsync(input: ElasticComputeCloudModel.CreateVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.Volume>) -> ()) throws

    /**
     Invokes the CreateVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: The Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVolumeSync(input: ElasticComputeCloudModel.CreateVolumeRequest) throws -> ElasticComputeCloudModel.Volume

    /**
     Invokes the CreateVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
         - completion: The CreateVpcResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcResult
           object will be validated before being returned to caller.
     */
    func createVpcAsync(input: ElasticComputeCloudModel.CreateVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcResult>) -> ()) throws

    /**
     Invokes the CreateVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: The CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcSync(input: ElasticComputeCloudModel.CreateVpcRequest) throws -> ElasticComputeCloudModel.CreateVpcResult

    /**
     Invokes the CreateVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
         - completion: The CreateVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointAsync(input: ElasticComputeCloudModel.CreateVpcEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointResult>) -> ()) throws

    /**
     Invokes the CreateVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointSync(input: ElasticComputeCloudModel.CreateVpcEndpointRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointResult

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotificationAsync(input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult>) -> ()) throws

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotificationSync(input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The CreateVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfigurationAsync(input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult>) -> ()) throws

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfigurationSync(input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The CreateVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func createVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult>) -> ()) throws

    /**
     Invokes the CreateVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcPeeringConnectionSync(input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpcPeeringConnectionResult

    /**
     Invokes the CreateVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
         - completion: The CreateVpnConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnConnectionResult
           object will be validated before being returned to caller.
     */
    func createVpnConnectionAsync(input: ElasticComputeCloudModel.CreateVpnConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpnConnectionResult>) -> ()) throws

    /**
     Invokes the CreateVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: The CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnConnectionSync(input: ElasticComputeCloudModel.CreateVpnConnectionRequest) throws -> ElasticComputeCloudModel.CreateVpnConnectionResult

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func createVpnConnectionRouteAsync(input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the CreateVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    func createVpnConnectionRouteSync(input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) throws

    /**
     Invokes the CreateVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
         - completion: The CreateVpnGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The CreateVpnGatewayResult
           object will be validated before being returned to caller.
     */
    func createVpnGatewayAsync(input: ElasticComputeCloudModel.CreateVpnGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.CreateVpnGatewayResult>) -> ()) throws

    /**
     Invokes the CreateVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: The CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnGatewaySync(input: ElasticComputeCloudModel.CreateVpnGatewayRequest) throws -> ElasticComputeCloudModel.CreateVpnGatewayResult

    /**
     Invokes the DeleteClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
         - completion: The DeleteClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func deleteClientVpnEndpointAsync(input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteClientVpnEndpointResult>) -> ()) throws

    /**
     Invokes the DeleteClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: The DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnEndpointSync(input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnEndpointResult

    /**
     Invokes the DeleteClientVpnRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
         - completion: The DeleteClientVpnRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteClientVpnRouteResult
           object will be validated before being returned to caller.
     */
    func deleteClientVpnRouteAsync(input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteClientVpnRouteResult>) -> ()) throws

    /**
     Invokes the DeleteClientVpnRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: The DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnRouteSync(input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) throws -> ElasticComputeCloudModel.DeleteClientVpnRouteResult

    /**
     Invokes the DeleteCustomerGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteCustomerGatewayAsync(input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteCustomerGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    func deleteCustomerGatewaySync(input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) throws

    /**
     Invokes the DeleteDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteDhcpOptionsAsync(input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    func deleteDhcpOptionsSync(input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
         - completion: The DeleteEgressOnlyInternetGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteEgressOnlyInternetGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGatewayAsync(input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult>) -> ()) throws

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: The DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGatewaySync(input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) throws -> ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult

    /**
     Invokes the DeleteFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
         - completion: The DeleteFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFleetsResult
           object will be validated before being returned to caller.
     */
    func deleteFleetsAsync(input: ElasticComputeCloudModel.DeleteFleetsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFleetsResult>) -> ()) throws

    /**
     Invokes the DeleteFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: The DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFleetsSync(input: ElasticComputeCloudModel.DeleteFleetsRequest) throws -> ElasticComputeCloudModel.DeleteFleetsResult

    /**
     Invokes the DeleteFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
         - completion: The DeleteFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFlowLogsResult
           object will be validated before being returned to caller.
     */
    func deleteFlowLogsAsync(input: ElasticComputeCloudModel.DeleteFlowLogsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFlowLogsResult>) -> ()) throws

    /**
     Invokes the DeleteFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: The DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFlowLogsSync(input: ElasticComputeCloudModel.DeleteFlowLogsRequest) throws -> ElasticComputeCloudModel.DeleteFlowLogsResult

    /**
     Invokes the DeleteFpgaImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
         - completion: The DeleteFpgaImageResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteFpgaImageResult
           object will be validated before being returned to caller.
     */
    func deleteFpgaImageAsync(input: ElasticComputeCloudModel.DeleteFpgaImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteFpgaImageResult>) -> ()) throws

    /**
     Invokes the DeleteFpgaImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: The DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFpgaImageSync(input: ElasticComputeCloudModel.DeleteFpgaImageRequest) throws -> ElasticComputeCloudModel.DeleteFpgaImageResult

    /**
     Invokes the DeleteInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteInternetGatewayAsync(input: ElasticComputeCloudModel.DeleteInternetGatewayRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    func deleteInternetGatewaySync(input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) throws

    /**
     Invokes the DeleteKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteKeyPairAsync(input: ElasticComputeCloudModel.DeleteKeyPairRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    func deleteKeyPairSync(input: ElasticComputeCloudModel.DeleteKeyPairRequest) throws

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func deleteLaunchTemplateAsync(input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteLaunchTemplateResult>) -> ()) throws

    /**
     Invokes the DeleteLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateSync(input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateResult

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DeleteLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersionsAsync(input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult>) -> ()) throws

    /**
     Invokes the DeleteLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersionsSync(input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult

    /**
     Invokes the DeleteNatGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
         - completion: The DeleteNatGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNatGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteNatGatewayAsync(input: ElasticComputeCloudModel.DeleteNatGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteNatGatewayResult>) -> ()) throws

    /**
     Invokes the DeleteNatGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: The DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNatGatewaySync(input: ElasticComputeCloudModel.DeleteNatGatewayRequest) throws -> ElasticComputeCloudModel.DeleteNatGatewayResult

    /**
     Invokes the DeleteNetworkAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkAclAsync(input: ElasticComputeCloudModel.DeleteNetworkAclRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteNetworkAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    func deleteNetworkAclSync(input: ElasticComputeCloudModel.DeleteNetworkAclRequest) throws

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkAclEntryAsync(input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    func deleteNetworkAclEntrySync(input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) throws

    /**
     Invokes the DeleteNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteNetworkInterfaceAsync(input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    func deleteNetworkInterfaceSync(input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
         - completion: The DeleteNetworkInterfacePermissionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteNetworkInterfacePermissionResult
           object will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermissionAsync(input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult>) -> ()) throws

    /**
     Invokes the DeleteNetworkInterfacePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: The DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermissionSync(input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) throws -> ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult

    /**
     Invokes the DeletePlacementGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deletePlacementGroupAsync(input: ElasticComputeCloudModel.DeletePlacementGroupRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePlacementGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    func deletePlacementGroupSync(input: ElasticComputeCloudModel.DeletePlacementGroupRequest) throws

    /**
     Invokes the DeleteRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteRouteAsync(input: ElasticComputeCloudModel.DeleteRouteRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    func deleteRouteSync(input: ElasticComputeCloudModel.DeleteRouteRequest) throws

    /**
     Invokes the DeleteRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteRouteTableAsync(input: ElasticComputeCloudModel.DeleteRouteTableRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    func deleteRouteTableSync(input: ElasticComputeCloudModel.DeleteRouteTableRequest) throws

    /**
     Invokes the DeleteSecurityGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSecurityGroupAsync(input: ElasticComputeCloudModel.DeleteSecurityGroupRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSecurityGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    func deleteSecurityGroupSync(input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) throws

    /**
     Invokes the DeleteSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSnapshotAsync(input: ElasticComputeCloudModel.DeleteSnapshotRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    func deleteSnapshotSync(input: ElasticComputeCloudModel.DeleteSnapshotRequest) throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSpotDatafeedSubscriptionAsync(input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    func deleteSpotDatafeedSubscriptionSync(input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) throws

    /**
     Invokes the DeleteSubnet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteSubnetAsync(input: ElasticComputeCloudModel.DeleteSubnetRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteSubnet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    func deleteSubnetSync(input: ElasticComputeCloudModel.DeleteSubnetRequest) throws

    /**
     Invokes the DeleteTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteTagsAsync(input: ElasticComputeCloudModel.DeleteTagsRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    func deleteTagsSync(input: ElasticComputeCloudModel.DeleteTagsRequest) throws

    /**
     Invokes the DeleteTransitGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayAsync(input: ElasticComputeCloudModel.DeleteTransitGatewayRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayResult>) -> ()) throws

    /**
     Invokes the DeleteTransitGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewaySync(input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayResult

    /**
     Invokes the DeleteTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteAsync(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteSync(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteResult

    /**
     Invokes the DeleteTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableAsync(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTableSync(input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The DeleteTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachmentAsync(input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult>) -> ()) throws

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachmentSync(input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult

    /**
     Invokes the DeleteVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVolumeAsync(input: ElasticComputeCloudModel.DeleteVolumeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    func deleteVolumeSync(input: ElasticComputeCloudModel.DeleteVolumeRequest) throws

    /**
     Invokes the DeleteVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpcAsync(input: ElasticComputeCloudModel.DeleteVpcRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    func deleteVpcSync(input: ElasticComputeCloudModel.DeleteVpcRequest) throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotificationsAsync(input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotificationsSync(input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurationsAsync(input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurationsSync(input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
         - completion: The DeleteVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    func deleteVpcEndpointsAsync(input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcEndpointsResult>) -> ()) throws

    /**
     Invokes the DeleteVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: The DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointsSync(input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DeleteVpcEndpointsResult

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The DeleteVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The DeleteVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult>) -> ()) throws

    /**
     Invokes the DeleteVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnectionSync(input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult

    /**
     Invokes the DeleteVpnConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnConnectionAsync(input: ElasticComputeCloudModel.DeleteVpnConnectionRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpnConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    func deleteVpnConnectionSync(input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) throws

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnConnectionRouteAsync(input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpnConnectionRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    func deleteVpnConnectionRouteSync(input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) throws

    /**
     Invokes the DeleteVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteVpnGatewayAsync(input: ElasticComputeCloudModel.DeleteVpnGatewayRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    func deleteVpnGatewaySync(input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) throws

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
         - completion: The DeprovisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The DeprovisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    func deprovisionByoipCidrAsync(input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DeprovisionByoipCidrResult>) -> ()) throws

    /**
     Invokes the DeprovisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: The DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionByoipCidrSync(input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) throws -> ElasticComputeCloudModel.DeprovisionByoipCidrResult

    /**
     Invokes the DeregisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deregisterImageAsync(input: ElasticComputeCloudModel.DeregisterImageRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeregisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    func deregisterImageSync(input: ElasticComputeCloudModel.DeregisterImageRequest) throws

    /**
     Invokes the DescribeAccountAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
         - completion: The DescribeAccountAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountAttributesResult
           object will be validated before being returned to caller.
     */
    func describeAccountAttributesAsync(input: ElasticComputeCloudModel.DescribeAccountAttributesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAccountAttributesResult>) -> ()) throws

    /**
     Invokes the DescribeAccountAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: The DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributesSync(input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) throws -> ElasticComputeCloudModel.DescribeAccountAttributesResult

    /**
     Invokes the DescribeAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
         - completion: The DescribeAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAddressesResult
           object will be validated before being returned to caller.
     */
    func describeAddressesAsync(input: ElasticComputeCloudModel.DescribeAddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAddressesResult>) -> ()) throws

    /**
     Invokes the DescribeAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: The DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesSync(input: ElasticComputeCloudModel.DescribeAddressesRequest) throws -> ElasticComputeCloudModel.DescribeAddressesResult

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
         - completion: The DescribeAggregateIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAggregateIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeAggregateIdFormatAsync(input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAggregateIdFormatResult>) -> ()) throws

    /**
     Invokes the DescribeAggregateIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: The DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAggregateIdFormatSync(input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeAggregateIdFormatResult

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
         - completion: The DescribeAvailabilityZonesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeAvailabilityZonesResult
           object will be validated before being returned to caller.
     */
    func describeAvailabilityZonesAsync(input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeAvailabilityZonesResult>) -> ()) throws

    /**
     Invokes the DescribeAvailabilityZones operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: The DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAvailabilityZonesSync(input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) throws -> ElasticComputeCloudModel.DescribeAvailabilityZonesResult

    /**
     Invokes the DescribeBundleTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
         - completion: The DescribeBundleTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeBundleTasksResult
           object will be validated before being returned to caller.
     */
    func describeBundleTasksAsync(input: ElasticComputeCloudModel.DescribeBundleTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeBundleTasksResult>) -> ()) throws

    /**
     Invokes the DescribeBundleTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: The DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeBundleTasksSync(input: ElasticComputeCloudModel.DescribeBundleTasksRequest) throws -> ElasticComputeCloudModel.DescribeBundleTasksResult

    /**
     Invokes the DescribeByoipCidrs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
         - completion: The DescribeByoipCidrsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeByoipCidrsResult
           object will be validated before being returned to caller.
     */
    func describeByoipCidrsAsync(input: ElasticComputeCloudModel.DescribeByoipCidrsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeByoipCidrsResult>) -> ()) throws

    /**
     Invokes the DescribeByoipCidrs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: The DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeByoipCidrsSync(input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) throws -> ElasticComputeCloudModel.DescribeByoipCidrsResult

    /**
     Invokes the DescribeCapacityReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
         - completion: The DescribeCapacityReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityReservationsResult
           object will be validated before being returned to caller.
     */
    func describeCapacityReservationsAsync(input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeCapacityReservationsResult>) -> ()) throws

    /**
     Invokes the DescribeCapacityReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: The DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservationsSync(input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) throws -> ElasticComputeCloudModel.DescribeCapacityReservationsResult

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
         - completion: The DescribeClassicLinkInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClassicLinkInstancesResult
           object will be validated before being returned to caller.
     */
    func describeClassicLinkInstancesAsync(input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult>) -> ()) throws

    /**
     Invokes the DescribeClassicLinkInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: The DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClassicLinkInstancesSync(input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) throws -> ElasticComputeCloudModel.DescribeClassicLinkInstancesResult

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
         - completion: The DescribeClientVpnAuthorizationRulesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnAuthorizationRulesResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRulesAsync(input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult>) -> ()) throws

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRulesSync(input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult

    /**
     Invokes the DescribeClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnConnectionsAsync(input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult>) -> ()) throws

    /**
     Invokes the DescribeClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnConnectionsSync(input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnConnectionsResult

    /**
     Invokes the DescribeClientVpnEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
         - completion: The DescribeClientVpnEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnEndpointsResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnEndpointsAsync(input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult>) -> ()) throws

    /**
     Invokes the DescribeClientVpnEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: The DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnEndpointsSync(input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnEndpointsResult

    /**
     Invokes the DescribeClientVpnRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
         - completion: The DescribeClientVpnRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnRoutesResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnRoutesAsync(input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnRoutesResult>) -> ()) throws

    /**
     Invokes the DescribeClientVpnRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: The DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnRoutesSync(input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnRoutesResult

    /**
     Invokes the DescribeClientVpnTargetNetworks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
         - completion: The DescribeClientVpnTargetNetworksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeClientVpnTargetNetworksResult
           object will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworksAsync(input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult>) -> ()) throws

    /**
     Invokes the DescribeClientVpnTargetNetworks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: The DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworksSync(input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) throws -> ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult

    /**
     Invokes the DescribeConversionTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
         - completion: The DescribeConversionTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeConversionTasksResult
           object will be validated before being returned to caller.
     */
    func describeConversionTasksAsync(input: ElasticComputeCloudModel.DescribeConversionTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeConversionTasksResult>) -> ()) throws

    /**
     Invokes the DescribeConversionTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: The DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeConversionTasksSync(input: ElasticComputeCloudModel.DescribeConversionTasksRequest) throws -> ElasticComputeCloudModel.DescribeConversionTasksResult

    /**
     Invokes the DescribeCustomerGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
         - completion: The DescribeCustomerGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeCustomerGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeCustomerGatewaysAsync(input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeCustomerGatewaysResult>) -> ()) throws

    /**
     Invokes the DescribeCustomerGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: The DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCustomerGatewaysSync(input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeCustomerGatewaysResult

    /**
     Invokes the DescribeDhcpOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
         - completion: The DescribeDhcpOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeDhcpOptionsResult
           object will be validated before being returned to caller.
     */
    func describeDhcpOptionsAsync(input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeDhcpOptionsResult>) -> ()) throws

    /**
     Invokes the DescribeDhcpOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: The DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDhcpOptionsSync(input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) throws -> ElasticComputeCloudModel.DescribeDhcpOptionsResult

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeEgressOnlyInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeEgressOnlyInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGatewaysAsync(input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult>) -> ()) throws

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGatewaysSync(input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult

    /**
     Invokes the DescribeElasticGpus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
         - completion: The DescribeElasticGpusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeElasticGpusResult
           object will be validated before being returned to caller.
     */
    func describeElasticGpusAsync(input: ElasticComputeCloudModel.DescribeElasticGpusRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeElasticGpusResult>) -> ()) throws

    /**
     Invokes the DescribeElasticGpus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: The DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeElasticGpusSync(input: ElasticComputeCloudModel.DescribeElasticGpusRequest) throws -> ElasticComputeCloudModel.DescribeElasticGpusResult

    /**
     Invokes the DescribeExportTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
         - completion: The DescribeExportTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportTasksResult
           object will be validated before being returned to caller.
     */
    func describeExportTasksAsync(input: ElasticComputeCloudModel.DescribeExportTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeExportTasksResult>) -> ()) throws

    /**
     Invokes the DescribeExportTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: The DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportTasksSync(input: ElasticComputeCloudModel.DescribeExportTasksRequest) throws -> ElasticComputeCloudModel.DescribeExportTasksResult

    /**
     Invokes the DescribeFleetHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
         - completion: The DescribeFleetHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetHistoryResult
           object will be validated before being returned to caller.
     */
    func describeFleetHistoryAsync(input: ElasticComputeCloudModel.DescribeFleetHistoryRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetHistoryResult>) -> ()) throws

    /**
     Invokes the DescribeFleetHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: The DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetHistorySync(input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) throws -> ElasticComputeCloudModel.DescribeFleetHistoryResult

    /**
     Invokes the DescribeFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeFleetInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetInstancesResult
           object will be validated before being returned to caller.
     */
    func describeFleetInstancesAsync(input: ElasticComputeCloudModel.DescribeFleetInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetInstancesResult>) -> ()) throws

    /**
     Invokes the DescribeFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetInstancesSync(input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeFleetInstancesResult

    /**
     Invokes the DescribeFleets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
         - completion: The DescribeFleetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFleetsResult
           object will be validated before being returned to caller.
     */
    func describeFleetsAsync(input: ElasticComputeCloudModel.DescribeFleetsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFleetsResult>) -> ()) throws

    /**
     Invokes the DescribeFleets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: The DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetsSync(input: ElasticComputeCloudModel.DescribeFleetsRequest) throws -> ElasticComputeCloudModel.DescribeFleetsResult

    /**
     Invokes the DescribeFlowLogs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
         - completion: The DescribeFlowLogsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFlowLogsResult
           object will be validated before being returned to caller.
     */
    func describeFlowLogsAsync(input: ElasticComputeCloudModel.DescribeFlowLogsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFlowLogsResult>) -> ()) throws

    /**
     Invokes the DescribeFlowLogs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: The DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFlowLogsSync(input: ElasticComputeCloudModel.DescribeFlowLogsRequest) throws -> ElasticComputeCloudModel.DescribeFlowLogsResult

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
         - completion: The DescribeFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func describeFpgaImageAttributeAsync(input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult>) -> ()) throws

    /**
     Invokes the DescribeFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImageAttributeSync(input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImageAttributeResult

    /**
     Invokes the DescribeFpgaImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
         - completion: The DescribeFpgaImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeFpgaImagesResult
           object will be validated before being returned to caller.
     */
    func describeFpgaImagesAsync(input: ElasticComputeCloudModel.DescribeFpgaImagesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeFpgaImagesResult>) -> ()) throws

    /**
     Invokes the DescribeFpgaImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: The DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImagesSync(input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) throws -> ElasticComputeCloudModel.DescribeFpgaImagesResult

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
         - completion: The DescribeHostReservationOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeHostReservationOfferingsAsync(input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult>) -> ()) throws

    /**
     Invokes the DescribeHostReservationOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationOfferingsSync(input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationOfferingsResult

    /**
     Invokes the DescribeHostReservations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
         - completion: The DescribeHostReservationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostReservationsResult
           object will be validated before being returned to caller.
     */
    func describeHostReservationsAsync(input: ElasticComputeCloudModel.DescribeHostReservationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostReservationsResult>) -> ()) throws

    /**
     Invokes the DescribeHostReservations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: The DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationsSync(input: ElasticComputeCloudModel.DescribeHostReservationsRequest) throws -> ElasticComputeCloudModel.DescribeHostReservationsResult

    /**
     Invokes the DescribeHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
         - completion: The DescribeHostsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeHostsResult
           object will be validated before being returned to caller.
     */
    func describeHostsAsync(input: ElasticComputeCloudModel.DescribeHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeHostsResult>) -> ()) throws

    /**
     Invokes the DescribeHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: The DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostsSync(input: ElasticComputeCloudModel.DescribeHostsRequest) throws -> ElasticComputeCloudModel.DescribeHostsResult

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
         - completion: The DescribeIamInstanceProfileAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIamInstanceProfileAssociationsResult
           object will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociationsAsync(input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult>) -> ()) throws

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: The DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociationsSync(input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) throws -> ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult

    /**
     Invokes the DescribeIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeIdFormatAsync(input: ElasticComputeCloudModel.DescribeIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIdFormatResult>) -> ()) throws

    /**
     Invokes the DescribeIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdFormatSync(input: ElasticComputeCloudModel.DescribeIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdFormatResult

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
         - completion: The DescribeIdentityIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeIdentityIdFormatResult
           object will be validated before being returned to caller.
     */
    func describeIdentityIdFormatAsync(input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeIdentityIdFormatResult>) -> ()) throws

    /**
     Invokes the DescribeIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: The DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdentityIdFormatSync(input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) throws -> ElasticComputeCloudModel.DescribeIdentityIdFormatResult

    /**
     Invokes the DescribeImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
         - completion: The ImageAttribute object or an error will be passed to this 
           callback when the operation is complete. The ImageAttribute
           object will be validated before being returned to caller.
     */
    func describeImageAttributeAsync(input: ElasticComputeCloudModel.DescribeImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImageAttribute>) -> ()) throws

    /**
     Invokes the DescribeImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: The ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImageAttributeSync(input: ElasticComputeCloudModel.DescribeImageAttributeRequest) throws -> ElasticComputeCloudModel.ImageAttribute

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResult
           object will be validated before being returned to caller.
     */
    func describeImagesAsync(input: ElasticComputeCloudModel.DescribeImagesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImagesResult>) -> ()) throws

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImagesSync(input: ElasticComputeCloudModel.DescribeImagesRequest) throws -> ElasticComputeCloudModel.DescribeImagesResult

    /**
     Invokes the DescribeImportImageTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
         - completion: The DescribeImportImageTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportImageTasksResult
           object will be validated before being returned to caller.
     */
    func describeImportImageTasksAsync(input: ElasticComputeCloudModel.DescribeImportImageTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImportImageTasksResult>) -> ()) throws

    /**
     Invokes the DescribeImportImageTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: The DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportImageTasksSync(input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportImageTasksResult

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
         - completion: The DescribeImportSnapshotTasksResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportSnapshotTasksResult
           object will be validated before being returned to caller.
     */
    func describeImportSnapshotTasksAsync(input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult>) -> ()) throws

    /**
     Invokes the DescribeImportSnapshotTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: The DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportSnapshotTasksSync(input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) throws -> ElasticComputeCloudModel.DescribeImportSnapshotTasksResult

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
         - completion: The InstanceAttribute object or an error will be passed to this 
           callback when the operation is complete. The InstanceAttribute
           object will be validated before being returned to caller.
     */
    func describeInstanceAttributeAsync(input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.InstanceAttribute>) -> ()) throws

    /**
     Invokes the DescribeInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: The InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceAttributeSync(input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) throws -> ElasticComputeCloudModel.InstanceAttribute

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
         - completion: The DescribeInstanceCreditSpecificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceCreditSpecificationsResult
           object will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecificationsAsync(input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult>) -> ()) throws

    /**
     Invokes the DescribeInstanceCreditSpecifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: The DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecificationsSync(input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) throws -> ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult

    /**
     Invokes the DescribeInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
         - completion: The DescribeInstanceStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstanceStatusResult
           object will be validated before being returned to caller.
     */
    func describeInstanceStatusAsync(input: ElasticComputeCloudModel.DescribeInstanceStatusRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstanceStatusResult>) -> ()) throws

    /**
     Invokes the DescribeInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: The DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceStatusSync(input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) throws -> ElasticComputeCloudModel.DescribeInstanceStatusResult

    /**
     Invokes the DescribeInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
         - completion: The DescribeInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInstancesResult
           object will be validated before being returned to caller.
     */
    func describeInstancesAsync(input: ElasticComputeCloudModel.DescribeInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInstancesResult>) -> ()) throws

    /**
     Invokes the DescribeInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: The DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstancesSync(input: ElasticComputeCloudModel.DescribeInstancesRequest) throws -> ElasticComputeCloudModel.DescribeInstancesResult

    /**
     Invokes the DescribeInternetGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
         - completion: The DescribeInternetGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeInternetGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeInternetGatewaysAsync(input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeInternetGatewaysResult>) -> ()) throws

    /**
     Invokes the DescribeInternetGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: The DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInternetGatewaysSync(input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeInternetGatewaysResult

    /**
     Invokes the DescribeKeyPairs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
         - completion: The DescribeKeyPairsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeKeyPairsResult
           object will be validated before being returned to caller.
     */
    func describeKeyPairsAsync(input: ElasticComputeCloudModel.DescribeKeyPairsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeKeyPairsResult>) -> ()) throws

    /**
     Invokes the DescribeKeyPairs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: The DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeKeyPairsSync(input: ElasticComputeCloudModel.DescribeKeyPairsRequest) throws -> ElasticComputeCloudModel.DescribeKeyPairsResult

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplateVersionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplateVersionsResult
           object will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersionsAsync(input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult>) -> ()) throws

    /**
     Invokes the DescribeLaunchTemplateVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersionsSync(input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
         - completion: The DescribeLaunchTemplatesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeLaunchTemplatesResult
           object will be validated before being returned to caller.
     */
    func describeLaunchTemplatesAsync(input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeLaunchTemplatesResult>) -> ()) throws

    /**
     Invokes the DescribeLaunchTemplates operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: The DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplatesSync(input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) throws -> ElasticComputeCloudModel.DescribeLaunchTemplatesResult

    /**
     Invokes the DescribeMovingAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
         - completion: The DescribeMovingAddressesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeMovingAddressesResult
           object will be validated before being returned to caller.
     */
    func describeMovingAddressesAsync(input: ElasticComputeCloudModel.DescribeMovingAddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeMovingAddressesResult>) -> ()) throws

    /**
     Invokes the DescribeMovingAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: The DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeMovingAddressesSync(input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) throws -> ElasticComputeCloudModel.DescribeMovingAddressesResult

    /**
     Invokes the DescribeNatGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
         - completion: The DescribeNatGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNatGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeNatGatewaysAsync(input: ElasticComputeCloudModel.DescribeNatGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNatGatewaysResult>) -> ()) throws

    /**
     Invokes the DescribeNatGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: The DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNatGatewaysSync(input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeNatGatewaysResult

    /**
     Invokes the DescribeNetworkAcls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
         - completion: The DescribeNetworkAclsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkAclsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkAclsAsync(input: ElasticComputeCloudModel.DescribeNetworkAclsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkAclsResult>) -> ()) throws

    /**
     Invokes the DescribeNetworkAcls operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: The DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkAclsSync(input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkAclsResult

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfaceAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfaceAttributeResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttributeAsync(input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttributeSync(input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacePermissionsResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissionsAsync(input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfacePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissionsSync(input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
         - completion: The DescribeNetworkInterfacesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeNetworkInterfacesResult
           object will be validated before being returned to caller.
     */
    func describeNetworkInterfacesAsync(input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeNetworkInterfacesResult>) -> ()) throws

    /**
     Invokes the DescribeNetworkInterfaces operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: The DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacesSync(input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) throws -> ElasticComputeCloudModel.DescribeNetworkInterfacesResult

    /**
     Invokes the DescribePlacementGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
         - completion: The DescribePlacementGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePlacementGroupsResult
           object will be validated before being returned to caller.
     */
    func describePlacementGroupsAsync(input: ElasticComputeCloudModel.DescribePlacementGroupsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePlacementGroupsResult>) -> ()) throws

    /**
     Invokes the DescribePlacementGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: The DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePlacementGroupsSync(input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) throws -> ElasticComputeCloudModel.DescribePlacementGroupsResult

    /**
     Invokes the DescribePrefixLists operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
         - completion: The DescribePrefixListsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrefixListsResult
           object will be validated before being returned to caller.
     */
    func describePrefixListsAsync(input: ElasticComputeCloudModel.DescribePrefixListsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePrefixListsResult>) -> ()) throws

    /**
     Invokes the DescribePrefixLists operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: The DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrefixListsSync(input: ElasticComputeCloudModel.DescribePrefixListsRequest) throws -> ElasticComputeCloudModel.DescribePrefixListsResult

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
         - completion: The DescribePrincipalIdFormatResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePrincipalIdFormatResult
           object will be validated before being returned to caller.
     */
    func describePrincipalIdFormatAsync(input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePrincipalIdFormatResult>) -> ()) throws

    /**
     Invokes the DescribePrincipalIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: The DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrincipalIdFormatSync(input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) throws -> ElasticComputeCloudModel.DescribePrincipalIdFormatResult

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
         - completion: The DescribePublicIpv4PoolsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribePublicIpv4PoolsResult
           object will be validated before being returned to caller.
     */
    func describePublicIpv4PoolsAsync(input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult>) -> ()) throws

    /**
     Invokes the DescribePublicIpv4Pools operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: The DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePublicIpv4PoolsSync(input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) throws -> ElasticComputeCloudModel.DescribePublicIpv4PoolsResult

    /**
     Invokes the DescribeRegions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
         - completion: The DescribeRegionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegionsResult
           object will be validated before being returned to caller.
     */
    func describeRegionsAsync(input: ElasticComputeCloudModel.DescribeRegionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeRegionsResult>) -> ()) throws

    /**
     Invokes the DescribeRegions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: The DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRegionsSync(input: ElasticComputeCloudModel.DescribeRegionsRequest) throws -> ElasticComputeCloudModel.DescribeRegionsResult

    /**
     Invokes the DescribeReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesResult>) -> ()) throws

    /**
     Invokes the DescribeReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesSync(input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesResult

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesListingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesListingsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesListingsAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesListings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesListingsSync(input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesListingsResult

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesModificationsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesModificationsAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesModificationsSync(input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
         - completion: The DescribeReservedInstancesOfferingsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeReservedInstancesOfferingsResult
           object will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferingsAsync(input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult>) -> ()) throws

    /**
     Invokes the DescribeReservedInstancesOfferings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: The DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferingsSync(input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) throws -> ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult

    /**
     Invokes the DescribeRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
         - completion: The DescribeRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeRouteTablesAsync(input: ElasticComputeCloudModel.DescribeRouteTablesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeRouteTablesResult>) -> ()) throws

    /**
     Invokes the DescribeRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRouteTablesSync(input: ElasticComputeCloudModel.DescribeRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeRouteTablesResult

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
         - completion: The DescribeScheduledInstanceAvailabilityResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstanceAvailabilityResult
           object will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailabilityAsync(input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult>) -> ()) throws

    /**
     Invokes the DescribeScheduledInstanceAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailabilitySync(input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult

    /**
     Invokes the DescribeScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
         - completion: The DescribeScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func describeScheduledInstancesAsync(input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeScheduledInstancesResult>) -> ()) throws

    /**
     Invokes the DescribeScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: The DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstancesSync(input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) throws -> ElasticComputeCloudModel.DescribeScheduledInstancesResult

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupReferencesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupReferencesResult
           object will be validated before being returned to caller.
     */
    func describeSecurityGroupReferencesAsync(input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult>) -> ()) throws

    /**
     Invokes the DescribeSecurityGroupReferences operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupReferencesSync(input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult

    /**
     Invokes the DescribeSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    func describeSecurityGroupsAsync(input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSecurityGroupsResult>) -> ()) throws

    /**
     Invokes the DescribeSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupsSync(input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeSecurityGroupsResult

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
         - completion: The DescribeSnapshotAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotAttributeResult
           object will be validated before being returned to caller.
     */
    func describeSnapshotAttributeAsync(input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSnapshotAttributeResult>) -> ()) throws

    /**
     Invokes the DescribeSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: The DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotAttributeSync(input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotAttributeResult

    /**
     Invokes the DescribeSnapshots operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
         - completion: The DescribeSnapshotsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSnapshotsResult
           object will be validated before being returned to caller.
     */
    func describeSnapshotsAsync(input: ElasticComputeCloudModel.DescribeSnapshotsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSnapshotsResult>) -> ()) throws

    /**
     Invokes the DescribeSnapshots operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: The DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotsSync(input: ElasticComputeCloudModel.DescribeSnapshotsRequest) throws -> ElasticComputeCloudModel.DescribeSnapshotsResult

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
         - completion: The DescribeSpotDatafeedSubscriptionResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotDatafeedSubscriptionResult
           object will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscriptionAsync(input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult>) -> ()) throws

    /**
     Invokes the DescribeSpotDatafeedSubscription operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: The DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscriptionSync(input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) throws -> ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
         - completion: The DescribeSpotFleetInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetInstancesResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetInstancesAsync(input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetInstancesSync(input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestHistoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestHistoryResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistoryAsync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetRequestHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistorySync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotFleetRequestsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotFleetRequestsResponse
           object will be validated before being returned to caller.
     */
    func describeSpotFleetRequestsAsync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse>) -> ()) throws

    /**
     Invokes the DescribeSpotFleetRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestsSync(input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
         - completion: The DescribeSpotInstanceRequestsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotInstanceRequestsResult
           object will be validated before being returned to caller.
     */
    func describeSpotInstanceRequestsAsync(input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult>) -> ()) throws

    /**
     Invokes the DescribeSpotInstanceRequests operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: The DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotInstanceRequestsSync(input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) throws -> ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
         - completion: The DescribeSpotPriceHistoryResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSpotPriceHistoryResult
           object will be validated before being returned to caller.
     */
    func describeSpotPriceHistoryAsync(input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult>) -> ()) throws

    /**
     Invokes the DescribeSpotPriceHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: The DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotPriceHistorySync(input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) throws -> ElasticComputeCloudModel.DescribeSpotPriceHistoryResult

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
         - completion: The DescribeStaleSecurityGroupsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeStaleSecurityGroupsResult
           object will be validated before being returned to caller.
     */
    func describeStaleSecurityGroupsAsync(input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult>) -> ()) throws

    /**
     Invokes the DescribeStaleSecurityGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: The DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStaleSecurityGroupsSync(input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) throws -> ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult

    /**
     Invokes the DescribeSubnets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
         - completion: The DescribeSubnetsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeSubnetsResult
           object will be validated before being returned to caller.
     */
    func describeSubnetsAsync(input: ElasticComputeCloudModel.DescribeSubnetsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeSubnetsResult>) -> ()) throws

    /**
     Invokes the DescribeSubnets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: The DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSubnetsSync(input: ElasticComputeCloudModel.DescribeSubnetsRequest) throws -> ElasticComputeCloudModel.DescribeSubnetsResult

    /**
     Invokes the DescribeTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
         - completion: The DescribeTagsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTagsResult
           object will be validated before being returned to caller.
     */
    func describeTagsAsync(input: ElasticComputeCloudModel.DescribeTagsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTagsResult>) -> ()) throws

    /**
     Invokes the DescribeTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: The DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTagsSync(input: ElasticComputeCloudModel.DescribeTagsRequest) throws -> ElasticComputeCloudModel.DescribeTagsResult

    /**
     Invokes the DescribeTransitGatewayAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachmentsAsync(input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachmentsSync(input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult

    /**
     Invokes the DescribeTransitGatewayRouteTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayRouteTablesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayRouteTablesResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTablesAsync(input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayRouteTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTablesSync(input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
         - completion: The DescribeTransitGatewayVpcAttachmentsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewayVpcAttachmentsResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachmentsAsync(input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult>) -> ()) throws

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachmentsSync(input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult

    /**
     Invokes the DescribeTransitGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
         - completion: The DescribeTransitGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeTransitGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeTransitGatewaysAsync(input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeTransitGatewaysResult>) -> ()) throws

    /**
     Invokes the DescribeTransitGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: The DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewaysSync(input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeTransitGatewaysResult

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
         - completion: The DescribeVolumeAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeAttributeResult
           object will be validated before being returned to caller.
     */
    func describeVolumeAttributeAsync(input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumeAttributeResult>) -> ()) throws

    /**
     Invokes the DescribeVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: The DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeAttributeSync(input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVolumeAttributeResult

    /**
     Invokes the DescribeVolumeStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
         - completion: The DescribeVolumeStatusResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumeStatusResult
           object will be validated before being returned to caller.
     */
    func describeVolumeStatusAsync(input: ElasticComputeCloudModel.DescribeVolumeStatusRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumeStatusResult>) -> ()) throws

    /**
     Invokes the DescribeVolumeStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: The DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeStatusSync(input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) throws -> ElasticComputeCloudModel.DescribeVolumeStatusResult

    /**
     Invokes the DescribeVolumes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
         - completion: The DescribeVolumesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesResult
           object will be validated before being returned to caller.
     */
    func describeVolumesAsync(input: ElasticComputeCloudModel.DescribeVolumesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumesResult>) -> ()) throws

    /**
     Invokes the DescribeVolumes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: The DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesSync(input: ElasticComputeCloudModel.DescribeVolumesRequest) throws -> ElasticComputeCloudModel.DescribeVolumesResult

    /**
     Invokes the DescribeVolumesModifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
         - completion: The DescribeVolumesModificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVolumesModificationsResult
           object will be validated before being returned to caller.
     */
    func describeVolumesModificationsAsync(input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVolumesModificationsResult>) -> ()) throws

    /**
     Invokes the DescribeVolumesModifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: The DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesModificationsSync(input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) throws -> ElasticComputeCloudModel.DescribeVolumesModificationsResult

    /**
     Invokes the DescribeVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
         - completion: The DescribeVpcAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcAttributeResult
           object will be validated before being returned to caller.
     */
    func describeVpcAttributeAsync(input: ElasticComputeCloudModel.DescribeVpcAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcAttributeResult>) -> ()) throws

    /**
     Invokes the DescribeVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: The DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcAttributeSync(input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) throws -> ElasticComputeCloudModel.DescribeVpcAttributeResult

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func describeVpcClassicLinkAsync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcClassicLinkResult>) -> ()) throws

    /**
     Invokes the DescribeVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkSync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkResult

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DescribeVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupportAsync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult>) -> ()) throws

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupportSync(input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionNotificationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionNotificationsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotificationsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotificationsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServiceConfigurationsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServiceConfigurationsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurationsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurationsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissionsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissionsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointServicesResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointServicesResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointServicesAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpointServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicesSync(input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointServicesResult

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
         - completion: The DescribeVpcEndpointsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcEndpointsResult
           object will be validated before being returned to caller.
     */
    func describeVpcEndpointsAsync(input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcEndpointsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: The DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointsSync(input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) throws -> ElasticComputeCloudModel.DescribeVpcEndpointsResult

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpcPeeringConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcPeeringConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpcPeeringConnectionsAsync(input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcPeeringConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcPeeringConnectionsSync(input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult

    /**
     Invokes the DescribeVpcs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
         - completion: The DescribeVpcsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpcsResult
           object will be validated before being returned to caller.
     */
    func describeVpcsAsync(input: ElasticComputeCloudModel.DescribeVpcsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpcsResult>) -> ()) throws

    /**
     Invokes the DescribeVpcs operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: The DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcsSync(input: ElasticComputeCloudModel.DescribeVpcsRequest) throws -> ElasticComputeCloudModel.DescribeVpcsResult

    /**
     Invokes the DescribeVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
         - completion: The DescribeVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func describeVpnConnectionsAsync(input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpnConnectionsResult>) -> ()) throws

    /**
     Invokes the DescribeVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: The DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnConnectionsSync(input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) throws -> ElasticComputeCloudModel.DescribeVpnConnectionsResult

    /**
     Invokes the DescribeVpnGateways operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
         - completion: The DescribeVpnGatewaysResult object or an error will be passed to this 
           callback when the operation is complete. The DescribeVpnGatewaysResult
           object will be validated before being returned to caller.
     */
    func describeVpnGatewaysAsync(input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DescribeVpnGatewaysResult>) -> ()) throws

    /**
     Invokes the DescribeVpnGateways operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: The DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnGatewaysSync(input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) throws -> ElasticComputeCloudModel.DescribeVpnGatewaysResult

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
         - completion: The DetachClassicLinkVpcResult object or an error will be passed to this 
           callback when the operation is complete. The DetachClassicLinkVpcResult
           object will be validated before being returned to caller.
     */
    func detachClassicLinkVpcAsync(input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DetachClassicLinkVpcResult>) -> ()) throws

    /**
     Invokes the DetachClassicLinkVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: The DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachClassicLinkVpcSync(input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) throws -> ElasticComputeCloudModel.DetachClassicLinkVpcResult

    /**
     Invokes the DetachInternetGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachInternetGatewayAsync(input: ElasticComputeCloudModel.DetachInternetGatewayRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachInternetGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    func detachInternetGatewaySync(input: ElasticComputeCloudModel.DetachInternetGatewayRequest) throws

    /**
     Invokes the DetachNetworkInterface operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachNetworkInterfaceAsync(input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachNetworkInterface operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    func detachNetworkInterfaceSync(input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) throws

    /**
     Invokes the DetachVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
         - completion: The VolumeAttachment object or an error will be passed to this 
           callback when the operation is complete. The VolumeAttachment
           object will be validated before being returned to caller.
     */
    func detachVolumeAsync(input: ElasticComputeCloudModel.DetachVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.VolumeAttachment>) -> ()) throws

    /**
     Invokes the DetachVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: The VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVolumeSync(input: ElasticComputeCloudModel.DetachVolumeRequest) throws -> ElasticComputeCloudModel.VolumeAttachment

    /**
     Invokes the DetachVpnGateway operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func detachVpnGatewayAsync(input: ElasticComputeCloudModel.DetachVpnGatewayRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DetachVpnGateway operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    func detachVpnGatewaySync(input: ElasticComputeCloudModel.DetachVpnGatewayRequest) throws

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The DisableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The DisableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagationAsync(input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult>) -> ()) throws

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagationSync(input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disableVgwRoutePropagationAsync(input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    func disableVgwRoutePropagationSync(input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) throws

    /**
     Invokes the DisableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func disableVpcClassicLinkAsync(input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableVpcClassicLinkResult>) -> ()) throws

    /**
     Invokes the DisableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkSync(input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkResult

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The DisableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The DisableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupportAsync(input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult>) -> ()) throws

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupportSync(input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult

    /**
     Invokes the DisassociateAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disassociateAddressAsync(input: ElasticComputeCloudModel.DisassociateAddressRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisassociateAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    func disassociateAddressSync(input: ElasticComputeCloudModel.DisassociateAddressRequest) throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
         - completion: The DisassociateClientVpnTargetNetworkResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateClientVpnTargetNetworkResult
           object will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetworkAsync(input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult>) -> ()) throws

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: The DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetworkSync(input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) throws -> ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
         - completion: The DisassociateIamInstanceProfileResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateIamInstanceProfileResult
           object will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfileAsync(input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult>) -> ()) throws

    /**
     Invokes the DisassociateIamInstanceProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: The DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfileSync(input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) throws -> ElasticComputeCloudModel.DisassociateIamInstanceProfileResult

    /**
     Invokes the DisassociateRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func disassociateRouteTableAsync(input: ElasticComputeCloudModel.DisassociateRouteTableRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DisassociateRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    func disassociateRouteTableSync(input: ElasticComputeCloudModel.DisassociateRouteTableRequest) throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateSubnetCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateSubnetCidrBlockResult
           object will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlockAsync(input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult>) -> ()) throws

    /**
     Invokes the DisassociateSubnetCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlockSync(input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
         - completion: The DisassociateTransitGatewayRouteTableResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateTransitGatewayRouteTableResult
           object will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTableAsync(input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult>) -> ()) throws

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: The DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTableSync(input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) throws -> ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
         - completion: The DisassociateVpcCidrBlockResult object or an error will be passed to this 
           callback when the operation is complete. The DisassociateVpcCidrBlockResult
           object will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlockAsync(input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult>) -> ()) throws

    /**
     Invokes the DisassociateVpcCidrBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: The DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlockSync(input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) throws -> ElasticComputeCloudModel.DisassociateVpcCidrBlockResult

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
         - completion: The EnableTransitGatewayRouteTablePropagationResult object or an error will be passed to this 
           callback when the operation is complete. The EnableTransitGatewayRouteTablePropagationResult
           object will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagationAsync(input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult>) -> ()) throws

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: The EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagationSync(input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) throws -> ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableVgwRoutePropagationAsync(input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableVgwRoutePropagation operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    func enableVgwRoutePropagationSync(input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) throws

    /**
     Invokes the EnableVolumeIO operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func enableVolumeIOAsync(input: ElasticComputeCloudModel.EnableVolumeIORequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the EnableVolumeIO operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    func enableVolumeIOSync(input: ElasticComputeCloudModel.EnableVolumeIORequest) throws

    /**
     Invokes the EnableVpcClassicLink operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkResult
           object will be validated before being returned to caller.
     */
    func enableVpcClassicLinkAsync(input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableVpcClassicLinkResult>) -> ()) throws

    /**
     Invokes the EnableVpcClassicLink operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkSync(input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkResult

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
         - completion: The EnableVpcClassicLinkDnsSupportResult object or an error will be passed to this 
           callback when the operation is complete. The EnableVpcClassicLinkDnsSupportResult
           object will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupportAsync(input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult>) -> ()) throws

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: The EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupportSync(input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) throws -> ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ExportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationListAsync(input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult>) -> ()) throws

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationListSync(input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ExportClientVpnClientConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
         - completion: The ExportClientVpnClientConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ExportClientVpnClientConfigurationResult
           object will be validated before being returned to caller.
     */
    func exportClientVpnClientConfigurationAsync(input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult>) -> ()) throws

    /**
     Invokes the ExportClientVpnClientConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: The ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientConfigurationSync(input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) throws -> ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult

    /**
     Invokes the ExportTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The ExportTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The ExportTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutesAsync(input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult>) -> ()) throws

    /**
     Invokes the ExportTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutesSync(input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.ExportTransitGatewayRoutesResult

    /**
     Invokes the GetConsoleOutput operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
         - completion: The GetConsoleOutputResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleOutputResult
           object will be validated before being returned to caller.
     */
    func getConsoleOutputAsync(input: ElasticComputeCloudModel.GetConsoleOutputRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetConsoleOutputResult>) -> ()) throws

    /**
     Invokes the GetConsoleOutput operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: The GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleOutputSync(input: ElasticComputeCloudModel.GetConsoleOutputRequest) throws -> ElasticComputeCloudModel.GetConsoleOutputResult

    /**
     Invokes the GetConsoleScreenshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
         - completion: The GetConsoleScreenshotResult object or an error will be passed to this 
           callback when the operation is complete. The GetConsoleScreenshotResult
           object will be validated before being returned to caller.
     */
    func getConsoleScreenshotAsync(input: ElasticComputeCloudModel.GetConsoleScreenshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetConsoleScreenshotResult>) -> ()) throws

    /**
     Invokes the GetConsoleScreenshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: The GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleScreenshotSync(input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) throws -> ElasticComputeCloudModel.GetConsoleScreenshotResult

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
         - completion: The GetHostReservationPurchasePreviewResult object or an error will be passed to this 
           callback when the operation is complete. The GetHostReservationPurchasePreviewResult
           object will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreviewAsync(input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult>) -> ()) throws

    /**
     Invokes the GetHostReservationPurchasePreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: The GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreviewSync(input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) throws -> ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult

    /**
     Invokes the GetLaunchTemplateData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
         - completion: The GetLaunchTemplateDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetLaunchTemplateDataResult
           object will be validated before being returned to caller.
     */
    func getLaunchTemplateDataAsync(input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetLaunchTemplateDataResult>) -> ()) throws

    /**
     Invokes the GetLaunchTemplateData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: The GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getLaunchTemplateDataSync(input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) throws -> ElasticComputeCloudModel.GetLaunchTemplateDataResult

    /**
     Invokes the GetPasswordData operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
         - completion: The GetPasswordDataResult object or an error will be passed to this 
           callback when the operation is complete. The GetPasswordDataResult
           object will be validated before being returned to caller.
     */
    func getPasswordDataAsync(input: ElasticComputeCloudModel.GetPasswordDataRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetPasswordDataResult>) -> ()) throws

    /**
     Invokes the GetPasswordData operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: The GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPasswordDataSync(input: ElasticComputeCloudModel.GetPasswordDataRequest) throws -> ElasticComputeCloudModel.GetPasswordDataResult

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
         - completion: The GetReservedInstancesExchangeQuoteResult object or an error will be passed to this 
           callback when the operation is complete. The GetReservedInstancesExchangeQuoteResult
           object will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuoteAsync(input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult>) -> ()) throws

    /**
     Invokes the GetReservedInstancesExchangeQuote operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: The GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuoteSync(input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) throws -> ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayAttachmentPropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayAttachmentPropagationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagationsAsync(input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult>) -> ()) throws

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagationsSync(input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTableAssociationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTableAssociationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociationsAsync(input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult>) -> ()) throws

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociationsSync(input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
         - completion: The GetTransitGatewayRouteTablePropagationsResult object or an error will be passed to this 
           callback when the operation is complete. The GetTransitGatewayRouteTablePropagationsResult
           object will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagationsAsync(input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult>) -> ()) throws

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: The GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagationsSync(input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) throws -> ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
         - completion: The ImportClientVpnClientCertificateRevocationListResult object or an error will be passed to this 
           callback when the operation is complete. The ImportClientVpnClientCertificateRevocationListResult
           object will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationListAsync(input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult>) -> ()) throws

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: The ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationListSync(input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) throws -> ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult

    /**
     Invokes the ImportImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
         - completion: The ImportImageResult object or an error will be passed to this 
           callback when the operation is complete. The ImportImageResult
           object will be validated before being returned to caller.
     */
    func importImageAsync(input: ElasticComputeCloudModel.ImportImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportImageResult>) -> ()) throws

    /**
     Invokes the ImportImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: The ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importImageSync(input: ElasticComputeCloudModel.ImportImageRequest) throws -> ElasticComputeCloudModel.ImportImageResult

    /**
     Invokes the ImportInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
         - completion: The ImportInstanceResult object or an error will be passed to this 
           callback when the operation is complete. The ImportInstanceResult
           object will be validated before being returned to caller.
     */
    func importInstanceAsync(input: ElasticComputeCloudModel.ImportInstanceRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportInstanceResult>) -> ()) throws

    /**
     Invokes the ImportInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: The ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importInstanceSync(input: ElasticComputeCloudModel.ImportInstanceRequest) throws -> ElasticComputeCloudModel.ImportInstanceResult

    /**
     Invokes the ImportKeyPair operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
         - completion: The ImportKeyPairResult object or an error will be passed to this 
           callback when the operation is complete. The ImportKeyPairResult
           object will be validated before being returned to caller.
     */
    func importKeyPairAsync(input: ElasticComputeCloudModel.ImportKeyPairRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportKeyPairResult>) -> ()) throws

    /**
     Invokes the ImportKeyPair operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: The ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importKeyPairSync(input: ElasticComputeCloudModel.ImportKeyPairRequest) throws -> ElasticComputeCloudModel.ImportKeyPairResult

    /**
     Invokes the ImportSnapshot operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
         - completion: The ImportSnapshotResult object or an error will be passed to this 
           callback when the operation is complete. The ImportSnapshotResult
           object will be validated before being returned to caller.
     */
    func importSnapshotAsync(input: ElasticComputeCloudModel.ImportSnapshotRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportSnapshotResult>) -> ()) throws

    /**
     Invokes the ImportSnapshot operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: The ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importSnapshotSync(input: ElasticComputeCloudModel.ImportSnapshotRequest) throws -> ElasticComputeCloudModel.ImportSnapshotResult

    /**
     Invokes the ImportVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
         - completion: The ImportVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ImportVolumeResult
           object will be validated before being returned to caller.
     */
    func importVolumeAsync(input: ElasticComputeCloudModel.ImportVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ImportVolumeResult>) -> ()) throws

    /**
     Invokes the ImportVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: The ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importVolumeSync(input: ElasticComputeCloudModel.ImportVolumeRequest) throws -> ElasticComputeCloudModel.ImportVolumeResult

    /**
     Invokes the ModifyCapacityReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
         - completion: The ModifyCapacityReservationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyCapacityReservationResult
           object will be validated before being returned to caller.
     */
    func modifyCapacityReservationAsync(input: ElasticComputeCloudModel.ModifyCapacityReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyCapacityReservationResult>) -> ()) throws

    /**
     Invokes the ModifyCapacityReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: The ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservationSync(input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) throws -> ElasticComputeCloudModel.ModifyCapacityReservationResult

    /**
     Invokes the ModifyClientVpnEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
         - completion: The ModifyClientVpnEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyClientVpnEndpointResult
           object will be validated before being returned to caller.
     */
    func modifyClientVpnEndpointAsync(input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyClientVpnEndpointResult>) -> ()) throws

    /**
     Invokes the ModifyClientVpnEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: The ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyClientVpnEndpointSync(input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) throws -> ElasticComputeCloudModel.ModifyClientVpnEndpointResult

    /**
     Invokes the ModifyFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
         - completion: The ModifyFleetResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFleetResult
           object will be validated before being returned to caller.
     */
    func modifyFleetAsync(input: ElasticComputeCloudModel.ModifyFleetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyFleetResult>) -> ()) throws

    /**
     Invokes the ModifyFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: The ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFleetSync(input: ElasticComputeCloudModel.ModifyFleetRequest) throws -> ElasticComputeCloudModel.ModifyFleetResult

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ModifyFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func modifyFpgaImageAttributeAsync(input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult>) -> ()) throws

    /**
     Invokes the ModifyFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFpgaImageAttributeSync(input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ModifyFpgaImageAttributeResult

    /**
     Invokes the ModifyHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
         - completion: The ModifyHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyHostsResult
           object will be validated before being returned to caller.
     */
    func modifyHostsAsync(input: ElasticComputeCloudModel.ModifyHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyHostsResult>) -> ()) throws

    /**
     Invokes the ModifyHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: The ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyHostsSync(input: ElasticComputeCloudModel.ModifyHostsRequest) throws -> ElasticComputeCloudModel.ModifyHostsResult

    /**
     Invokes the ModifyIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyIdFormatAsync(input: ElasticComputeCloudModel.ModifyIdFormatRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    func modifyIdFormatSync(input: ElasticComputeCloudModel.ModifyIdFormatRequest) throws

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyIdentityIdFormatAsync(input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyIdentityIdFormat operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    func modifyIdentityIdFormatSync(input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) throws

    /**
     Invokes the ModifyImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyImageAttributeAsync(input: ElasticComputeCloudModel.ModifyImageAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    func modifyImageAttributeSync(input: ElasticComputeCloudModel.ModifyImageAttributeRequest) throws

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyInstanceAttributeAsync(input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    func modifyInstanceAttributeSync(input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
         - completion: The ModifyInstanceCapacityReservationAttributesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCapacityReservationAttributesResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributesAsync(input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult>) -> ()) throws

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: The ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributesSync(input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
         - completion: The ModifyInstanceCreditSpecificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceCreditSpecificationResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecificationAsync(input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult>) -> ()) throws

    /**
     Invokes the ModifyInstanceCreditSpecification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: The ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecificationSync(input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) throws -> ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult

    /**
     Invokes the ModifyInstanceEventStartTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
         - completion: The ModifyInstanceEventStartTimeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstanceEventStartTimeResult
           object will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTimeAsync(input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult>) -> ()) throws

    /**
     Invokes the ModifyInstanceEventStartTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: The ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTimeSync(input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) throws -> ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult

    /**
     Invokes the ModifyInstancePlacement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
         - completion: The ModifyInstancePlacementResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyInstancePlacementResult
           object will be validated before being returned to caller.
     */
    func modifyInstancePlacementAsync(input: ElasticComputeCloudModel.ModifyInstancePlacementRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyInstancePlacementResult>) -> ()) throws

    /**
     Invokes the ModifyInstancePlacement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: The ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstancePlacementSync(input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) throws -> ElasticComputeCloudModel.ModifyInstancePlacementResult

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
         - completion: The ModifyLaunchTemplateResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyLaunchTemplateResult
           object will be validated before being returned to caller.
     */
    func modifyLaunchTemplateAsync(input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyLaunchTemplateResult>) -> ()) throws

    /**
     Invokes the ModifyLaunchTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: The ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLaunchTemplateSync(input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) throws -> ElasticComputeCloudModel.ModifyLaunchTemplateResult

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyNetworkInterfaceAttributeAsync(input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func modifyNetworkInterfaceAttributeSync(input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) throws

    /**
     Invokes the ModifyReservedInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
         - completion: The ModifyReservedInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyReservedInstancesResult
           object will be validated before being returned to caller.
     */
    func modifyReservedInstancesAsync(input: ElasticComputeCloudModel.ModifyReservedInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyReservedInstancesResult>) -> ()) throws

    /**
     Invokes the ModifyReservedInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: The ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyReservedInstancesSync(input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) throws -> ElasticComputeCloudModel.ModifyReservedInstancesResult

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifySnapshotAttributeAsync(input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifySnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    func modifySnapshotAttributeSync(input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) throws

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
         - completion: The ModifySpotFleetRequestResponse object or an error will be passed to this 
           callback when the operation is complete. The ModifySpotFleetRequestResponse
           object will be validated before being returned to caller.
     */
    func modifySpotFleetRequestAsync(input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifySpotFleetRequestResponse>) -> ()) throws

    /**
     Invokes the ModifySpotFleetRequest operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: The ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySpotFleetRequestSync(input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) throws -> ElasticComputeCloudModel.ModifySpotFleetRequestResponse

    /**
     Invokes the ModifySubnetAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifySubnetAttributeAsync(input: ElasticComputeCloudModel.ModifySubnetAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifySubnetAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    func modifySubnetAttributeSync(input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) throws

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The ModifyTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachmentAsync(input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult>) -> ()) throws

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachmentSync(input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult

    /**
     Invokes the ModifyVolume operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
         - completion: The ModifyVolumeResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVolumeResult
           object will be validated before being returned to caller.
     */
    func modifyVolumeAsync(input: ElasticComputeCloudModel.ModifyVolumeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVolumeResult>) -> ()) throws

    /**
     Invokes the ModifyVolume operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: The ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVolumeSync(input: ElasticComputeCloudModel.ModifyVolumeRequest) throws -> ElasticComputeCloudModel.ModifyVolumeResult

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyVolumeAttributeAsync(input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyVolumeAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    func modifyVolumeAttributeSync(input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) throws

    /**
     Invokes the ModifyVpcAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func modifyVpcAttributeAsync(input: ElasticComputeCloudModel.ModifyVpcAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ModifyVpcAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    func modifyVpcAttributeSync(input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) throws

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointResult>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointSync(input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointResult

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointConnectionNotificationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointConnectionNotificationResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotificationAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotificationSync(input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServiceConfigurationResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServiceConfigurationResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfigurationAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfigurationSync(input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
         - completion: The ModifyVpcEndpointServicePermissionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcEndpointServicePermissionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissionsAsync(input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult>) -> ()) throws

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: The ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissionsSync(input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
         - completion: The ModifyVpcPeeringConnectionOptionsResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcPeeringConnectionOptionsResult
           object will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptionsAsync(input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult>) -> ()) throws

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: The ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptionsSync(input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) throws -> ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult

    /**
     Invokes the ModifyVpcTenancy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
         - completion: The ModifyVpcTenancyResult object or an error will be passed to this 
           callback when the operation is complete. The ModifyVpcTenancyResult
           object will be validated before being returned to caller.
     */
    func modifyVpcTenancyAsync(input: ElasticComputeCloudModel.ModifyVpcTenancyRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ModifyVpcTenancyResult>) -> ()) throws

    /**
     Invokes the ModifyVpcTenancy operation waiting for the response before returning.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: The ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcTenancySync(input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) throws -> ElasticComputeCloudModel.ModifyVpcTenancyResult

    /**
     Invokes the MonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
         - completion: The MonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The MonitorInstancesResult
           object will be validated before being returned to caller.
     */
    func monitorInstancesAsync(input: ElasticComputeCloudModel.MonitorInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.MonitorInstancesResult>) -> ()) throws

    /**
     Invokes the MonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: The MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func monitorInstancesSync(input: ElasticComputeCloudModel.MonitorInstancesRequest) throws -> ElasticComputeCloudModel.MonitorInstancesResult

    /**
     Invokes the MoveAddressToVpc operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
         - completion: The MoveAddressToVpcResult object or an error will be passed to this 
           callback when the operation is complete. The MoveAddressToVpcResult
           object will be validated before being returned to caller.
     */
    func moveAddressToVpcAsync(input: ElasticComputeCloudModel.MoveAddressToVpcRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.MoveAddressToVpcResult>) -> ()) throws

    /**
     Invokes the MoveAddressToVpc operation waiting for the response before returning.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: The MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveAddressToVpcSync(input: ElasticComputeCloudModel.MoveAddressToVpcRequest) throws -> ElasticComputeCloudModel.MoveAddressToVpcResult

    /**
     Invokes the ProvisionByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
         - completion: The ProvisionByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The ProvisionByoipCidrResult
           object will be validated before being returned to caller.
     */
    func provisionByoipCidrAsync(input: ElasticComputeCloudModel.ProvisionByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ProvisionByoipCidrResult>) -> ()) throws

    /**
     Invokes the ProvisionByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: The ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionByoipCidrSync(input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) throws -> ElasticComputeCloudModel.ProvisionByoipCidrResult

    /**
     Invokes the PurchaseHostReservation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
         - completion: The PurchaseHostReservationResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseHostReservationResult
           object will be validated before being returned to caller.
     */
    func purchaseHostReservationAsync(input: ElasticComputeCloudModel.PurchaseHostReservationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseHostReservationResult>) -> ()) throws

    /**
     Invokes the PurchaseHostReservation operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: The PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseHostReservationSync(input: ElasticComputeCloudModel.PurchaseHostReservationRequest) throws -> ElasticComputeCloudModel.PurchaseHostReservationResult

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
         - completion: The PurchaseReservedInstancesOfferingResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseReservedInstancesOfferingResult
           object will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOfferingAsync(input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult>) -> ()) throws

    /**
     Invokes the PurchaseReservedInstancesOffering operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: The PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOfferingSync(input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) throws -> ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
         - completion: The PurchaseScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The PurchaseScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func purchaseScheduledInstancesAsync(input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.PurchaseScheduledInstancesResult>) -> ()) throws

    /**
     Invokes the PurchaseScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: The PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseScheduledInstancesSync(input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) throws -> ElasticComputeCloudModel.PurchaseScheduledInstancesResult

    /**
     Invokes the RebootInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func rebootInstancesAsync(input: ElasticComputeCloudModel.RebootInstancesRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RebootInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    func rebootInstancesSync(input: ElasticComputeCloudModel.RebootInstancesRequest) throws

    /**
     Invokes the RegisterImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
         - completion: The RegisterImageResult object or an error will be passed to this 
           callback when the operation is complete. The RegisterImageResult
           object will be validated before being returned to caller.
     */
    func registerImageAsync(input: ElasticComputeCloudModel.RegisterImageRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RegisterImageResult>) -> ()) throws

    /**
     Invokes the RegisterImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: The RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerImageSync(input: ElasticComputeCloudModel.RegisterImageRequest) throws -> ElasticComputeCloudModel.RegisterImageResult

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
         - completion: The RejectTransitGatewayVpcAttachmentResult object or an error will be passed to this 
           callback when the operation is complete. The RejectTransitGatewayVpcAttachmentResult
           object will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachmentAsync(input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult>) -> ()) throws

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: The RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachmentSync(input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) throws -> ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
         - completion: The RejectVpcEndpointConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcEndpointConnectionsResult
           object will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnectionsAsync(input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult>) -> ()) throws

    /**
     Invokes the RejectVpcEndpointConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: The RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnectionsSync(input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) throws -> ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
         - completion: The RejectVpcPeeringConnectionResult object or an error will be passed to this 
           callback when the operation is complete. The RejectVpcPeeringConnectionResult
           object will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnectionAsync(input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult>) -> ()) throws

    /**
     Invokes the RejectVpcPeeringConnection operation waiting for the response before returning.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: The RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnectionSync(input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) throws -> ElasticComputeCloudModel.RejectVpcPeeringConnectionResult

    /**
     Invokes the ReleaseAddress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func releaseAddressAsync(input: ElasticComputeCloudModel.ReleaseAddressRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReleaseAddress operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    func releaseAddressSync(input: ElasticComputeCloudModel.ReleaseAddressRequest) throws

    /**
     Invokes the ReleaseHosts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
         - completion: The ReleaseHostsResult object or an error will be passed to this 
           callback when the operation is complete. The ReleaseHostsResult
           object will be validated before being returned to caller.
     */
    func releaseHostsAsync(input: ElasticComputeCloudModel.ReleaseHostsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReleaseHostsResult>) -> ()) throws

    /**
     Invokes the ReleaseHosts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: The ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseHostsSync(input: ElasticComputeCloudModel.ReleaseHostsRequest) throws -> ElasticComputeCloudModel.ReleaseHostsResult

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
         - completion: The ReplaceIamInstanceProfileAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceIamInstanceProfileAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociationAsync(input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult>) -> ()) throws

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: The ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociationSync(input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
         - completion: The ReplaceNetworkAclAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceNetworkAclAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociationAsync(input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult>) -> ()) throws

    /**
     Invokes the ReplaceNetworkAclAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: The ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociationSync(input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func replaceNetworkAclEntryAsync(input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReplaceNetworkAclEntry operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    func replaceNetworkAclEntrySync(input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) throws

    /**
     Invokes the ReplaceRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func replaceRouteAsync(input: ElasticComputeCloudModel.ReplaceRouteRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReplaceRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    func replaceRouteSync(input: ElasticComputeCloudModel.ReplaceRouteRequest) throws

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
         - completion: The ReplaceRouteTableAssociationResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceRouteTableAssociationResult
           object will be validated before being returned to caller.
     */
    func replaceRouteTableAssociationAsync(input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult>) -> ()) throws

    /**
     Invokes the ReplaceRouteTableAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: The ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceRouteTableAssociationSync(input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) throws -> ElasticComputeCloudModel.ReplaceRouteTableAssociationResult

    /**
     Invokes the ReplaceTransitGatewayRoute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
         - completion: The ReplaceTransitGatewayRouteResult object or an error will be passed to this 
           callback when the operation is complete. The ReplaceTransitGatewayRouteResult
           object will be validated before being returned to caller.
     */
    func replaceTransitGatewayRouteAsync(input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult>) -> ()) throws

    /**
     Invokes the ReplaceTransitGatewayRoute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: The ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceTransitGatewayRouteSync(input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) throws -> ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult

    /**
     Invokes the ReportInstanceStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func reportInstanceStatusAsync(input: ElasticComputeCloudModel.ReportInstanceStatusRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ReportInstanceStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    func reportInstanceStatusSync(input: ElasticComputeCloudModel.ReportInstanceStatusRequest) throws

    /**
     Invokes the RequestSpotFleet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
         - completion: The RequestSpotFleetResponse object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotFleetResponse
           object will be validated before being returned to caller.
     */
    func requestSpotFleetAsync(input: ElasticComputeCloudModel.RequestSpotFleetRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RequestSpotFleetResponse>) -> ()) throws

    /**
     Invokes the RequestSpotFleet operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: The RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotFleetSync(input: ElasticComputeCloudModel.RequestSpotFleetRequest) throws -> ElasticComputeCloudModel.RequestSpotFleetResponse

    /**
     Invokes the RequestSpotInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
         - completion: The RequestSpotInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RequestSpotInstancesResult
           object will be validated before being returned to caller.
     */
    func requestSpotInstancesAsync(input: ElasticComputeCloudModel.RequestSpotInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RequestSpotInstancesResult>) -> ()) throws

    /**
     Invokes the RequestSpotInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: The RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotInstancesSync(input: ElasticComputeCloudModel.RequestSpotInstancesRequest) throws -> ElasticComputeCloudModel.RequestSpotInstancesResult

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
         - completion: The ResetFpgaImageAttributeResult object or an error will be passed to this 
           callback when the operation is complete. The ResetFpgaImageAttributeResult
           object will be validated before being returned to caller.
     */
    func resetFpgaImageAttributeAsync(input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.ResetFpgaImageAttributeResult>) -> ()) throws

    /**
     Invokes the ResetFpgaImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: The ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetFpgaImageAttributeSync(input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) throws -> ElasticComputeCloudModel.ResetFpgaImageAttributeResult

    /**
     Invokes the ResetImageAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetImageAttributeAsync(input: ElasticComputeCloudModel.ResetImageAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetImageAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    func resetImageAttributeSync(input: ElasticComputeCloudModel.ResetImageAttributeRequest) throws

    /**
     Invokes the ResetInstanceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetInstanceAttributeAsync(input: ElasticComputeCloudModel.ResetInstanceAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetInstanceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    func resetInstanceAttributeSync(input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetNetworkInterfaceAttributeAsync(input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetNetworkInterfaceAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func resetNetworkInterfaceAttributeSync(input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) throws

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func resetSnapshotAttributeAsync(input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ResetSnapshotAttribute operation waiting for the response before returning.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    func resetSnapshotAttributeSync(input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) throws

    /**
     Invokes the RestoreAddressToClassic operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
         - completion: The RestoreAddressToClassicResult object or an error will be passed to this 
           callback when the operation is complete. The RestoreAddressToClassicResult
           object will be validated before being returned to caller.
     */
    func restoreAddressToClassicAsync(input: ElasticComputeCloudModel.RestoreAddressToClassicRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RestoreAddressToClassicResult>) -> ()) throws

    /**
     Invokes the RestoreAddressToClassic operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: The RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreAddressToClassicSync(input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) throws -> ElasticComputeCloudModel.RestoreAddressToClassicResult

    /**
     Invokes the RevokeClientVpnIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
         - completion: The RevokeClientVpnIngressResult object or an error will be passed to this 
           callback when the operation is complete. The RevokeClientVpnIngressResult
           object will be validated before being returned to caller.
     */
    func revokeClientVpnIngressAsync(input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RevokeClientVpnIngressResult>) -> ()) throws

    /**
     Invokes the RevokeClientVpnIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: The RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeClientVpnIngressSync(input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) throws -> ElasticComputeCloudModel.RevokeClientVpnIngressResult

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func revokeSecurityGroupEgressAsync(input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RevokeSecurityGroupEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     */
    func revokeSecurityGroupEgressSync(input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) throws

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func revokeSecurityGroupIngressAsync(input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RevokeSecurityGroupIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     */
    func revokeSecurityGroupIngressSync(input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) throws

    /**
     Invokes the RunInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
         - completion: The Reservation object or an error will be passed to this 
           callback when the operation is complete. The Reservation
           object will be validated before being returned to caller.
     */
    func runInstancesAsync(input: ElasticComputeCloudModel.RunInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.Reservation>) -> ()) throws

    /**
     Invokes the RunInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: The Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runInstancesSync(input: ElasticComputeCloudModel.RunInstancesRequest) throws -> ElasticComputeCloudModel.Reservation

    /**
     Invokes the RunScheduledInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
         - completion: The RunScheduledInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The RunScheduledInstancesResult
           object will be validated before being returned to caller.
     */
    func runScheduledInstancesAsync(input: ElasticComputeCloudModel.RunScheduledInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.RunScheduledInstancesResult>) -> ()) throws

    /**
     Invokes the RunScheduledInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: The RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runScheduledInstancesSync(input: ElasticComputeCloudModel.RunScheduledInstancesRequest) throws -> ElasticComputeCloudModel.RunScheduledInstancesResult

    /**
     Invokes the SearchTransitGatewayRoutes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
         - completion: The SearchTransitGatewayRoutesResult object or an error will be passed to this 
           callback when the operation is complete. The SearchTransitGatewayRoutesResult
           object will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutesAsync(input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult>) -> ()) throws

    /**
     Invokes the SearchTransitGatewayRoutes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: The SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutesSync(input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) throws -> ElasticComputeCloudModel.SearchTransitGatewayRoutesResult

    /**
     Invokes the StartInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
         - completion: The StartInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StartInstancesResult
           object will be validated before being returned to caller.
     */
    func startInstancesAsync(input: ElasticComputeCloudModel.StartInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.StartInstancesResult>) -> ()) throws

    /**
     Invokes the StartInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: The StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startInstancesSync(input: ElasticComputeCloudModel.StartInstancesRequest) throws -> ElasticComputeCloudModel.StartInstancesResult

    /**
     Invokes the StopInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
         - completion: The StopInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The StopInstancesResult
           object will be validated before being returned to caller.
     */
    func stopInstancesAsync(input: ElasticComputeCloudModel.StopInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.StopInstancesResult>) -> ()) throws

    /**
     Invokes the StopInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: The StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func stopInstancesSync(input: ElasticComputeCloudModel.StopInstancesRequest) throws -> ElasticComputeCloudModel.StopInstancesResult

    /**
     Invokes the TerminateClientVpnConnections operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
         - completion: The TerminateClientVpnConnectionsResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateClientVpnConnectionsResult
           object will be validated before being returned to caller.
     */
    func terminateClientVpnConnectionsAsync(input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult>) -> ()) throws

    /**
     Invokes the TerminateClientVpnConnections operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: The TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateClientVpnConnectionsSync(input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) throws -> ElasticComputeCloudModel.TerminateClientVpnConnectionsResult

    /**
     Invokes the TerminateInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
         - completion: The TerminateInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The TerminateInstancesResult
           object will be validated before being returned to caller.
     */
    func terminateInstancesAsync(input: ElasticComputeCloudModel.TerminateInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.TerminateInstancesResult>) -> ()) throws

    /**
     Invokes the TerminateInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: The TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateInstancesSync(input: ElasticComputeCloudModel.TerminateInstancesRequest) throws -> ElasticComputeCloudModel.TerminateInstancesResult

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
         - completion: The UnassignIpv6AddressesResult object or an error will be passed to this 
           callback when the operation is complete. The UnassignIpv6AddressesResult
           object will be validated before being returned to caller.
     */
    func unassignIpv6AddressesAsync(input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UnassignIpv6AddressesResult>) -> ()) throws

    /**
     Invokes the UnassignIpv6Addresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: The UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignIpv6AddressesSync(input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) throws -> ElasticComputeCloudModel.UnassignIpv6AddressesResult

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func unassignPrivateIpAddressesAsync(input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest, completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UnassignPrivateIpAddresses operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    func unassignPrivateIpAddressesSync(input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) throws

    /**
     Invokes the UnmonitorInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
         - completion: The UnmonitorInstancesResult object or an error will be passed to this 
           callback when the operation is complete. The UnmonitorInstancesResult
           object will be validated before being returned to caller.
     */
    func unmonitorInstancesAsync(input: ElasticComputeCloudModel.UnmonitorInstancesRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UnmonitorInstancesResult>) -> ()) throws

    /**
     Invokes the UnmonitorInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: The UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unmonitorInstancesSync(input: ElasticComputeCloudModel.UnmonitorInstancesRequest) throws -> ElasticComputeCloudModel.UnmonitorInstancesResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsEgressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsEgressResult
           object will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgressAsync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult>) -> ()) throws

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgressSync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
         - completion: The UpdateSecurityGroupRuleDescriptionsIngressResult object or an error will be passed to this 
           callback when the operation is complete. The UpdateSecurityGroupRuleDescriptionsIngressResult
           object will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngressAsync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult>) -> ()) throws

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: The UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngressSync(input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) throws -> ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult

    /**
     Invokes the WithdrawByoipCidr operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
         - completion: The WithdrawByoipCidrResult object or an error will be passed to this 
           callback when the operation is complete. The WithdrawByoipCidrResult
           object will be validated before being returned to caller.
     */
    func withdrawByoipCidrAsync(input: ElasticComputeCloudModel.WithdrawByoipCidrRequest, completion: @escaping (HTTPResult<ElasticComputeCloudModel.WithdrawByoipCidrResult>) -> ()) throws

    /**
     Invokes the WithdrawByoipCidr operation waiting for the response before returning.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: The WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func withdrawByoipCidrSync(input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) throws -> ElasticComputeCloudModel.WithdrawByoipCidrResult
}
